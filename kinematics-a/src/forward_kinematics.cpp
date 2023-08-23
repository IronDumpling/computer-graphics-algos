#include "forward_kinematics.h"
#include "euler_angles_to_transform.h"
#include <functional>

void forward_kinematics(const Skeleton & skeleton,
                        std::vector<Eigen::Affine3d,Eigen::aligned_allocator<Eigen::Affine3d>> & T)
{
  /////////////////////////////////////////////////////////////////////////////

    T.resize(skeleton.size(), Eigen::Affine3d::Identity());
    std::vector<bool> isAssigned = std::vector<bool>(skeleton.size(), false);
    std::function<void(int)> recursive_transform;

    recursive_transform = [&](int idx)->void{
        const auto bone = skeleton[idx];

        // base: root joint or has done
        if(bone.parent_index < 0 || isAssigned[idx])
            return;

        // recursive: find parent
        recursive_transform(bone.parent_index);

        // current: child joint
        T[idx] = T[bone.parent_index] * bone.rest_T * euler_angles_to_transform(bone.xzx) * bone.rest_T.inverse();
        isAssigned[idx] = true;
        return;
    };

    for(int idx = 0; idx < skeleton.size(); idx++){
        recursive_transform(idx);
    }

  /////////////////////////////////////////////////////////////////////////////
}