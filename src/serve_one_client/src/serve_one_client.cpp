#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher pub_moveTo_;

void drink_ready(const geometry_msgs::Twist::ConstPtr & coord);

int main(int argc, char** argv) {
	ros::init(argc, argv, "serve_one_client");
	ros::NodeHandle nh;

	ros::Subscriber sub_coffee = nh.subscribe("drink_ready", 1000, drink_ready);

	pub_moveTo_ = nh.advertise<geometry_msgs::Twist>("move_to", 10);


    ROS_INFO("omg");
     ros::spin();

    return 0;

}

void drink_ready(const geometry_msgs::Twist::ConstPtr & coord){
	ROS_INFO("the drink is validated/ready");

}