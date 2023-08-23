#include "catmull_clark.h"
#include "vertex_triangle_adjacency.h"
#include <utility>
#include <unordered_set>

void catmull_clark(
        const Eigen::MatrixXd & V,
        const Eigen::MatrixXi & F,
        const int num_iters,
        Eigen::MatrixXd & SV,
        Eigen::MatrixXi & SF)
{
    // reference: https://en.wikipedia.org/wiki/Catmull%E2%80%93Clark_subdivision_surface
    // base case
    if (num_iters == 0) return;

    // data structures
    std::vector<std::pair<int, int>> edge; // all edges
    std::vector<std::pair<int, int>> face_edge; // faces neighbouring edge
    std::vector<std::vector<int>> face_vertex; // faces neighbouring vertex
    std::vector<std::unordered_set<int>> vertex_vertex; // vertices neighbouring vertex

    vertex_triangle_adjacency(F, V.rows(), face_vertex);
    vertex_vertex.resize(V.rows());

    std::vector<Eigen::RowVector3d> face_points;
    std::vector<Eigen::RowVector3d> edge_points;

    // traverse each face
    for (int i = 0; i < F.rows(); ++i) {
        int v[3];
        // traverse each col
        for(int j = 0; j < F.cols(); ++j) {
            v[0] = F(i, (j + 3) % 4);
            v[1] = F(i, j);
            v[2] = F(i, (j + 1) % 4);
            auto forward_edge = std::make_pair(v[1], v[2]);
            auto backward_edge = std::make_pair(v[2], v[1]);

            // update neighbor vertices
            vertex_vertex[v[1]].insert(v[0]);
            vertex_vertex[v[1]].insert(v[2]);

            // update edge and face_edge
            auto forward_edge_iter = std::find(edge.begin(), edge.end(), forward_edge);
            auto backward_edge_iter = std::find(edge.begin(), edge.end(), backward_edge);

            if(forward_edge_iter == edge.end() && backward_edge_iter == edge.end()){
                edge.push_back(forward_edge);
                face_edge.emplace_back(i, -1);
            }else{
                long idx = std::min(forward_edge_iter - edge.begin(), backward_edge_iter - edge.begin());
                face_edge[idx] = std::make_pair(face_edge[idx].first, i);
            }
        }
    }

    // resize outputs to get ready to accept data
    SV.resize(V.rows() + F.rows() + edge.size(), 3);
    SF.resize(F.rows() * F.cols(), 4);
    int sv_row = 0, sf_row = 0;

    // traverse each face, add a face point
    int face_point_offset = sv_row;
    for (int i = 0; i < F.rows(); ++i) {
        auto avg = Eigen::RowVector3d(0.0, 0.0, 0.0);

        for (int j = 0; j < F.cols(); ++j)
            avg += V.row(F(i, j));

        avg /= (double) F.cols();
        face_points.push_back(avg);
        SV.row(sv_row++) = avg;
    }

    // traverse each edge, add an edge point
    int edge_point_offset = sv_row;
    for (int i = 0; i < edge.size(); ++i) {
        auto avg = Eigen::RowVector3d(0.0, 0.0, 0.0);
        avg += V.row(edge[i].first) + V.row(edge[i].second);
        avg += face_points[face_edge[i].first] + face_points[face_edge[i].second];
        avg /= 4.0;
        edge_points.push_back(avg);
        SV.row(sv_row++) = avg;
    }

    // traverse each vertex, add barycenter
    int vertex_offset = sv_row;
    for (int i = 0; i < V.rows(); ++i) {
        auto adj_faces = face_vertex[i];
        auto p = V.row(i);

        auto f = Eigen::RowVector3d(0.0, 0.0, 0.0);
        for (int face : adj_faces)
            f += face_points[face];
        f /= (double) adj_faces.size();

        auto r = Eigen::RowVector3d(0.0, 0.0, 0.0);
        for (int v : vertex_vertex[i])
            r += (V.row(v) + p) / 2.0;
        r /= (double) vertex_vertex[i].size();

        // barycenter of triangle
        auto barycenter = (f + 2.0 * r + ((double)adj_faces.size() - 3.0) * p) / (double)adj_faces.size();
        SV.row(sv_row++) = barycenter;
    }

    // define new faces as enclosed by edges
    for (int i = 0; i < F.rows(); ++i) {
        int v[4];

        for (int j = 0; j < F.cols(); ++j) {
            v[0] = vertex_offset + F(i, j);
            auto forward_edge1 = std::make_pair(F(i, j), F(i, (j + 1) % F.cols()));
            auto backward_edge1 = std::make_pair(forward_edge1.second, forward_edge1.first);

            auto forward_edge2 = std::make_pair(F(i, j), F(i, (j + 3) % F.cols()));
            auto backward_edge2 = std::make_pair(forward_edge2.second, forward_edge2.first);

            for (int k = 0; k < edge.size(); ++k) {
                if (edge[k] == forward_edge1 || edge[k] == backward_edge1)
                    v[1] = k;
                if (edge[k] == forward_edge2 || edge[k] == backward_edge2)
                    v[3] = k;
            }

            v[1] += edge_point_offset;
            v[2] = face_point_offset + i;
            v[3] += edge_point_offset;

            SF.row(sf_row++) << v[0], v[1], v[2], v[3];
        }
    }

    // Recursive call
    Eigen::MatrixXd new_SV;
    Eigen::MatrixXi new_SF;
    catmull_clark(SV, SF, num_iters - 1, new_SV, new_SF);
    if (num_iters > 1) {
        SV = new_SV;
        SF = new_SF;
    }
}
