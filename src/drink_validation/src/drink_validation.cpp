#include <ros/ros.h>
#include <geometry_msgs/Twist.h>

ros::Publisher pub_client_drink_;

void processClient(const geometry_msgs::Twist::ConstPtr & coord);

int main(int argc, char** argv) {
	ros::init(argc, argv, "drink_validation");
	ros::NodeHandle nh;
	// ros::Subscriber sub_command = nh.subscribe("client", 1000, processClient);
	pub_client_drink_ = nh.advertise<geometry_msgs::Twist>("drink_validated", 10);
	ROS_INFO("omg");
     ros::spin();

    return 0;
}

// void processClient(const geometry_msgs::Twist::ConstPtr & coord){
// 	ROS_INFO("getting the client command / info");
// 	//validate client drink

// }