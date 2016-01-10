#include <ros/ros.h>
#include <geometry_msgs/Twist.h>
#include <custom_data/Client.h>
#include <custom_data/ClientArray.h>
#include <std_msgs/Int8.h>

using namespace std;
custom_data::ClientArray ca_;
custom_data::ClientArray ca_serving;
custom_data::Client c;
ros::Publisher pubClients_;
ros::Publisher pubClients_toBeServed;

// 0:stand_by, 1:loading_drinks, 2:serving_drinks
int robot_state;

int valid_pressed_;
ros::Publisher pub_goToPoint;
void processCommand(const custom_data::Client::ConstPtr & client);
void valid_pressed(const std_msgs::Int8::ConstPtr & pressed);

void change_state(const std_msgs::Int8::ConstPtr & state);

int main(int argc, char** argv) {
	ros::init(argc, argv, "waiting_list");
	ros::NodeHandle nh;
	valid_pressed_ = 0;
	robot_state = 0;
	//send the list of clients waiting to the browser
	pubClients_= nh.advertise<custom_data::ClientArray>("clients", 10);

	//save the name of the client and his position x y
	ros::Subscriber sub_command = nh.subscribe<custom_data::Client>("command_client", 1000, processCommand);

	//listen when a drink is validated (button "Validate Drink" in the browser)
	ros::Subscriber sub_valid_pressed = nh.subscribe<std_msgs::Int8>("valid_pressed", 1000, valid_pressed);

	//send the validated drinks to be processed
	pubClients_toBeServed = nh.advertise<custom_data::ClientArray>("clients_toServe", 10);

	pub_goToPoint = nh.advertise<geometry_msgs::Twist>("move_to", 10);

	ros::Subscriber sub_changeState = nh.subscribe<std_msgs::Int8>("change_state", 1000, change_state);
	// ROS_INFO("omg");
	// c.client_name = "joseph";
	// ca_.clients.push_back(c);

     ros::spin();
}

void change_state(const std_msgs::Int8::ConstPtr & msg){
	ROS_INFO("changing state ...%d", msg->data);
	robot_state = msg->data;
}

void processCommand(const custom_data::Client::ConstPtr & client){

	ROS_INFO("we have an order ...\n\n");
	// ROS_INFO("started node ...%s",client->client_name.c_str());
	c.client_name = client->client_name;
	c.posx = client->posx;
	c.posy = client->posy;
	ca_.clients.push_back(c);
	pubClients_.publish(ca_);
	for(int i=0; i<ca_.clients.size(); ++i){
		const custom_data::Client &client = ca_.clients[i];
		ROS_INFO("Client %s",client.client_name.c_str());
	}

	if(robot_state==0){
		//go load drink at the cafeteria
		geometry_msgs::Twist twist;
		twist.linear.x = 3.0;
		twist.linear.y = 7.0;
		twist.linear.z = 0.0;
		twist.angular.x = 0.0;
		twist.angular.y = 0.0;
		twist.angular.z = 0.0;
		pub_goToPoint.publish(twist);
		robot_state = 1;
	}

	ROS_INFO("robot state : %d",robot_state);

	
}

void valid_pressed(const std_msgs::Int8::ConstPtr & pressed){
	ROS_INFO("trying to validate a client's command ...\n");
	if(ca_.clients.size()>0){
		ROS_INFO("his command is being removed ...\n");
		if(valid_pressed_ < 4){
			ca_serving.clients.push_back(ca_.clients[0]);
			ca_.clients.erase(ca_.clients.begin());
			valid_pressed_++;
			if(ca_.clients.size()==0){
				//publish
				pubClients_toBeServed.publish(ca_serving);
				ca_serving.clients.clear();
				valid_pressed_=0;
			}
		} 
		
		if(valid_pressed_==4){
			//publish
			pubClients_toBeServed.publish(ca_serving);
			ca_serving.clients.clear();
			valid_pressed_=0;
		}
		pubClients_.publish(ca_);
		// ROS_INFO("the client is ... %s", 
	}
}
