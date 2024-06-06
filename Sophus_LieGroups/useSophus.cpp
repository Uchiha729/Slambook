#include<iostream>
#include<cmath>
#include<Eigen/Core>
#include<Eigen/Geometry>
#include"sophus/se3.hpp"

using namespace std;
using namespace Eigen;

// This is a program demonstrates the basic usage of Sophus
int main(int argc, char **argv){

    // Rotation Matrix with 90 degrees along Z axis 
    Matrix3d R = AngleAxisd(M_PI/2 , Vector3d(0,0,1)).toRotationMatrix();
    // or quaternion
    Quaterniond q(R);
    Sophus::SO3d SO3_R(R);// Sophus::SO3d can be constructed from rotation matrix 
    Sophus::SO3d SO3_q(q);// it can also be constructed from quaternion and they are the same
    cout << "SO(3) from matrix:\n" << SO3_q.matrix() << endl;
    cout << "SO(3) from quaternion:\n" << SO3_q.matrix() << endl;
    cout << "they are equal" << endl;

    // Use logarithmic map to get the Lie Algebra
    Vector3d so3 = SO3_R.log();
    cout << "so3 = " << so3.transpose() << endl;
    // hat is from vector to skew-symmetric matrix
    cout << "so3 hat = \n" << Sophus::SO3d::hat(so3) << endl;
    // inversely from matrix to vector
    cout << "so3 hat vee = \n" << Sophus::SO3d::vee(Sophus::SO3d::hat(so3)).transpose() << endl;

    //update by perturbation model
    Vector3d update_so3(1e-4,0,0); // this is a small update
    Sophus::SO3d SO3_updated = Sophus::SO3d::exp(update_so3) * SO3_R;
    cout << "SO3 updated = \n" <<  SO3_updated.matrix() << endl;

    cout << "*******************************" << endl;
    // Similar for SE(3)
    Vector3d t(1,0,0);
    Sophus::SE3d SE3_Rt(R,t); // Translation of 1 unit along x-axis
    Sophus::SE3d SE3_qt(q,t); // Construction SE3 from R,t
    cout << "SE3 from R,t = \n" << SE3_Rt.matrix() << endl;
    cout << "SE3 from q,t = \n" << SE3_qt.matrix() << endl;
    // Lie Algebra is 6d vector, we give a typedef
    typedef Eigen::Matrix<double,6,1> Vector6d;
    Vector6d se3 = SE3_Rt.log();
    cout << "se3 = " << se3.transpose() << endl;
    // The output shows Sophus puts translation in se3 and then the rotation
    // Same as SO(3) we have hat and vee
    cout << "se3 hat = \n" << Sophus::SE3d::hat(se3) << endl;
    cout << "se3 vee = \n" << Sophus::SE3d::vee(Sophus::SE3d::hat(se3)).transpose() << endl;

    // finally the update
    Vector6d update_se3;
    update_se3.setZero();
    update_se3(0,0) = 1e-4d;
    Sophus::SE3d SE3_updated = Sophus::SE3d::exp(update_se3) * SE3_Rt;
    cout << "SE3 updated = \n" << SE3_updated.matrix() << endl;

    return 0;
}