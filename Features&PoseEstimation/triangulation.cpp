#include<iostream>
#include<opencv4/opencv2/core/core.hpp>
#include<opencv4/opencv2/calib3d/calib3d.hpp>
#include<opencv4/opencv2/highgui/highgui.hpp>
#include<opencv4/opencv2/features2d/features2d.hpp>
#include<opencv4/opencv2/imgproc.hpp>

using namespace std;
using namespace cv;

void find_feature_matches(
    const Mat &img_1, const Mat &img_2,
    vector<KeyPoint> &keypoints_1, 
    vector<KeyPoint> &keypoints_2,
    vector<DMatch> &matches
);

void pose_estimation_2d2d(
    vector<KeyPoint> &keypoints_1,
    vector<KeyPoint> &keypoints_2,
    vector<DMatch> &matches,
    Mat &R, Mat &t
);

Point2d pixel2cam(const Point2d &p, const Mat &K);

void triangulation(
    const vector<KeyPoint> &keypoints_1,
    const vector<KeyPoint> &keypoints_2,
    const vector<DMatch> &matches,
    const Mat &R, const Mat &t,
    vector<Point3d> &points
);

inline cv::Scalar get_color(float depth) {
  float up_th = 50, low_th = 10, th_range = up_th - low_th;
  if (depth > up_th) depth = up_th;
  if (depth < low_th) depth = low_th;
  return cv::Scalar(255 * depth / th_range, 0, 255 * (1 - depth / th_range));
}

int main(int argc, char **argv){

    if(argc != 3){
        cout << "usage: pose_estimation_2d2d img1 img2" << endl;
        return 1;
    }

    Mat img_1 = imread(argv[1], IMREAD_COLOR);
    Mat img_2 = imread(argv[2], IMREAD_COLOR);
    assert(img_1.data != nullptr && img_2.data != nullptr);

    vector<KeyPoint> keypoints_1, keypoints_2;
    vector<DMatch> matches;
    find_feature_matches(img_1, img_2, keypoints_1, keypoints_2, matches);
    cout << "in total found " << matches.size() << " matched pair of points" << endl;

    Mat R, t;
    pose_estimation_2d2d(keypoints_1, keypoints_2, matches, R, t);

    vector<Point3d> points;
    triangulation(keypoints_1, keypoints_2, matches, R, t, points);

    Mat K = (Mat_<double>(3, 3) << 520.9, 0, 325.1, 0, 521.0, 249.7, 0, 0, 1);
    Mat img1_plot = img_1.clone();
    Mat img2_plot = img_2.clone();
    for (int i = 0; i < matches.size(); i++) {
        // the first image
        float depth1 = points[i].z;
        cout << "depth: " << depth1 << endl;
        Point2d pt1_cam = pixel2cam(keypoints_1[matches[i].queryIdx].pt, K);
        circle(img1_plot, keypoints_1[matches[i].queryIdx].pt, 2, get_color(depth1), 2);

        // the seconf image
        Mat pt2_trans = R * (Mat_<double>(3, 1) << points[i].x, points[i].y, points[i].z) + t;
        float depth2 = pt2_trans.at<double>(2, 0);
        circle(img2_plot, keypoints_2[matches[i].trainIdx].pt, 2, get_color(depth2), 2);
    }
  cv::imshow("img 1", img1_plot);
  cv::imshow("img 2", img2_plot);
  cv::waitKey();
    
    return 0;
}


void find_feature_matches(const Mat &img_1, const Mat &img_2,
    vector<KeyPoint> &keypoints_1, 
    vector<KeyPoint> &keypoints_2,
    vector<DMatch> &matches){

    Mat descriptors_1, descriptors_2;
    Ptr<FeatureDetector> detector = ORB::create();
    Ptr<DescriptorExtractor> descriptor = ORB::create();
    Ptr<DescriptorMatcher> matcher = DescriptorMatcher::create("BruteForce-Hamming");

    detector->detect(img_1, keypoints_1);
    detector->detect(img_2, keypoints_2);

    descriptor->compute(img_1, keypoints_1, descriptors_1);
    descriptor->compute(img_2, keypoints_2, descriptors_2);

    vector<DMatch> match;
    matcher->match(descriptors_1, descriptors_2, match);
    auto min_max = minmax_element(match.begin(), match.end(),
    [](const DMatch &m1, const DMatch &m2){ return m1.distance < m2.distance; });
    double min_dist = min_max.first->distance;
    double max_dist = min_max.second->distance;

    printf("-- Max dist : %f \n", max_dist);
    printf("-- Min dist : %f \n", min_dist);

    for(int i = 0; i < descriptors_1.rows; i++){
        if(match[i].distance <= max(2 * min_dist, 30.0)){
            matches.push_back(match[i]);
        }
    }
}

void pose_estimation_2d2d(vector<KeyPoint> &keypoints_1,
    vector<KeyPoint> &keypoints_2,
    vector<DMatch> &matches,
    Mat &R, Mat &t){

    Mat K = (Mat_<double>(3,3) << 520.9, 9, 325.1, 0, 521.0, 249.7, 0, 0, 1);

    vector<Point2f> points1, points2;

    for(int i=0; i< matches.size(); i++){
        points1.push_back(keypoints_1[matches[i].queryIdx].pt);
        points2.push_back(keypoints_2[matches[i].trainIdx].pt);
    }
    
    Point2d principal_point(325.1, 249.7);
    double focal_length = 521;
    Mat essential_matrix;
    essential_matrix = findEssentialMat(points1, points2, focal_length, principal_point);

    recoverPose(essential_matrix, points1, points2, R, t, focal_length, principal_point);

}

Point2d pixel2cam(const Point2d &p, const Mat &K){
    return Point2d(
        (p.x - K.at<double>(0,2)) / K.at<double>(0,0),
        (p.y - K.at<double>(1,2)) / K.at<double>(1,1)
    );
}

void triangulation(
    const vector<KeyPoint> &keypoints_1,
    const vector<KeyPoint> &keypoints_2,
    const vector<DMatch> &matches,
    const Mat &R, const Mat &t,
    vector<Point3d> &points){

    Mat T1 = (Mat_<float>(3,4) << 
        1,0,0,0,
        0,1,0,0,
        0,0,1,0);

    Mat T2 = (Mat_<float>(3,4) << 
        R.at<double>(0,0), R.at<double>(0,1), R.at<double>(0,2), t.at<double>(0,0),
        R.at<double>(1,0), R.at<double>(1,1), R.at<double>(1,2), t.at<double>(1,0),
        R.at<double>(2,0), R.at<double>(2,1), R.at<double>(2,2), t.at<double>(2,0));

    Mat K = (Mat_<double>(3, 3) << 520.9, 0, 325.1, 0, 521.0, 249.7, 0, 0, 1);
    vector<Point2f> pts_1, pts_2;
    for (DMatch m:matches) {
        // converting pixel coordinates to camera coordinates
        pts_1.push_back(pixel2cam(keypoints_1[m.queryIdx].pt, K));
        pts_2.push_back(pixel2cam(keypoints_2[m.trainIdx].pt, K));
    }

    Mat pts_4d;
    cv::triangulatePoints(T1, T2, pts_1, pts_2, pts_4d);

    // convert to non-homogenous coordinates
    for (int i = 0; i < pts_4d.cols; i++) {
        Mat x = pts_4d.col(i);
        x /= x.at<float>(3, 0); // normalizing the coordinates
        Point3d p(
            x.at<float>(0, 0),
            x.at<float>(1, 0),
            x.at<float>(2, 0)
        );
        points.push_back(p);
  }

}

