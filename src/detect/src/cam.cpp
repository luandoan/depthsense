#include <ros/ros.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include "std_msgs/String.h"
#include "std_msgs/MultiArrayLayout.h"
#include "std_msgs/MultiArrayDimension.h"
#include "std_msgs/Int32MultiArray.h"


using namespace cv;
using namespace std;


static const string OPENCV_WINDOW = "Image window";

class ImageConverter
{
    // declare all ros node handle:
    ros::NodeHandle nh_;
    image_transport::ImageTransport it_;
    image_transport::Subscriber image_sub_;
    image_transport::Publisher image_pub_;
    ros::Publisher pos_pub_;

public:
    // declare variables to be used later:
    int postX;
    int postY;

    ImageConverter()
        : it_(nh_)
    {
        // Subscrive to input video feed and publish output video feed
        image_sub_ = it_.subscribe("/usb_cam/image_raw", 1, 
            &ImageConverter::imageCb, this);
        image_pub_ = it_.advertise("/image_converter/output_video", 1);

        cv::namedWindow(OPENCV_WINDOW);
    }

    ~ImageConverter()
    {
        cv::destroyWindow(OPENCV_WINDOW);
    }

    void imageCb(const sensor_msgs::ImageConstPtr& msg)
    {
        cv_bridge::CvImagePtr cv_ptr;
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
        }
        catch (cv_bridge::Exception& e)
        {
            ROS_ERROR("cv_bridge exception: %s", e.what());
            return;
        }

        Mat imgHSV;

        cvtColor(cv_ptr->image, imgHSV, COLOR_BGR2HSV); //Convert the captured frame from BGR to HSV

        Mat imgThresholded;

        inRange(imgHSV, Scalar(130, 100, 130), Scalar(20, 255, 143), imgThresholded); //Threshold the image
      
        //morphological opening (removes small objects from the foreground)
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 

        //morphological closing (removes small holes from the foreground)
        dilate( imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) ); 
        erode(imgThresholded, imgThresholded, getStructuringElement(MORPH_ELLIPSE, Size(5, 5)) );

        // Use the Hough transform to detect circles in the combined threshold image
	        vector<Vec3f> circles;

        //	std::vector<cv::Vec3f> circles;
        HoughCircles(imgThresholded, circles, CV_HOUGH_GRADIENT, 1, imgThresholded.rows, 200, 13, 0, 40 );

        //  cout << "Number of Circles detected:  " << circles.size() << endl;
        
        for( size_t i = 0; i < circles.size(); i++ )
        {
	        Point center(cvRound(circles[i][0]), cvRound(circles[i][1]));
	        int radius = cvRound(circles[i][2]);
	        // circle center
	        circle( cv_ptr->image, center, 3, Scalar(0,255,0), -1, 8, 0 );
	        // circle outline
	        circle( cv_ptr->image, center, radius, Scalar(0,0,255), 3, 8, 0 );
        	       
            // show coordinates values of circle's center:
            // cout << "Circle found at: " << center.x << " ; " << center.y << endl;
            
            // show message on picture
            ostringstream str;
            str << "Red circle found at: " << center.x << " x " << center.y;
            putText( cv_ptr->image, str.str(), Point(30,30), FONT_HERSHEY_COMPLEX_SMALL, 1, Scalar(255,0,0),1,CV_AA);
            
            // send as rostopic for robot subcribe
            std_msgs::Int32MultiArray array;
            array.data.clear();
            array.data.push_back(center.x);
            array.data.push_back(center.y);
            pos_pub_.publish(array);
        }

        // Update GUI Window
//       imshow(OPENCV_WINDOW, cv_ptr->image);
        waitKey(3);
    
        // Output modified video stream
        image_pub_.publish(cv_ptr->toImageMsg());
    }
};

int main(int argc, char** argv)
{
    ros::init(argc, argv, "image_converter");
    ImageConverter ic;
    ros::spin();
    return 0;  
}
