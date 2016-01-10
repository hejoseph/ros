#include <std_msgs/String.h>
#include <ros/ros.h>

ros::Publisher chatter_pub;

void validDrink(const std_msgs::String::ConstPtr & msg);

int main(int argc, char** argv) {

	  ros::init(argc, argv, "valid_drink_node");

  /**
   * NodeHandle is the main access point to communications with the ROS system.
   * The first NodeHandle constructed will fully initialize this node, and the last
   * NodeHandle destructed will close down the node.
   */
  ros::NodeHandle n;
  ROS_INFO("something");
  /**
   * The subscribe() call is how you tell ROS that you want to receive messages
   * on a given topic.  This invokes a call to the ROS
   * master node, which keeps a registry of who is publishing and who
   * is subscribing.  Messages are passed to a callback function, here
   * called chatterCallback.  subscribe() returns a Subscriber object that you
   * must hold on to until you want to unsubscribe.  When all copies of the Subscriber
   * object go out of scope, this callback will automatically be unsubscribed from
   * this topic.
   *
   * The second parameter to the subscribe() function is the size of the message
   * queue.  If messages are arriving faster than they are being processed, this
   * is the number of messages that will be buffered up before beginning to throw
   * away the oldest ones.
   */
  ros::Subscriber sub = n.subscribe("/send_goals_node/validDrink", 1000, validDrink);
  chatter_pub = n.advertise<std_msgs::String>("/send_goals_node/validatedDrink", 1000);
 


  /**
   * ros::spin() will enter a loop, pumping callbacks.  With this version, all
   * callbacks will be called from within this thread (the main one).  ros::spin()
   * will exit when Ctrl-C is pressed, or the node is shutdown by the master.
   */
  ros::spin();

  return 0;

}

void validDrink(const std_msgs::String::ConstPtr & msg1){
  ROS_INFO("in valid drink");
	ros::NodeHandle n;
	// chatter_pub = n.advertise<std_msgs::String>("validatedDrink", 1000);
   	std_msgs::String msg;

    // std::stringstream ss;
    // ss << "yes" << count;
    msg.data = "inside Valid Drink";

    ROS_INFO("%s", msg.data.c_str());

    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    chatter_pub.publish(msg);

    ros::spinOnce();

}