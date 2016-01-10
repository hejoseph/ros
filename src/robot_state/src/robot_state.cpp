#include <ros/ros.h>
//uselesss
void change_state(const std_msgs::Int8::ConstPtr & state);

ros::Publisher pub_state;

int main(int argc, char** argv) {
	// ros::init(argc, argv, "robot_state");
	// ros::NodeHandle nh;
	// ros::Subscriber sub_change_state = nh.subscribe<std_msgs::Int8>("change_state", 1000, change_state);
	// pub_state = nh.advertise<custom_data::ClientArray>("service_status", 10);



}

void change_state(const std_msgs::Int8::ConstPtr & state){
	ROS_INFO("changing state ...");
}