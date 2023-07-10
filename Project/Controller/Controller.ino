#include <ros/ros.h>
#include <std_msgs/Float64.h>
#include <sensor_msgs/Joy.h>

  ros::Publisher servo1_pub;
  ros::Publisher servo2_pub;
  ros::Publisher servo3_pub;
  ros::Publisher servo4_pub;
  ros::Publisher servo5_pub;
  
void joyCallback(const sensor_msgs::Joy::ConstPtr & joy) {
  double first_joint =joy->axes[0]
  double second_joint = joy->axes[1];
  double third_joint = joy->axes[2];
  double fourth_joint = joy->axes[3];
  double fifth_joint = joy->axes[4];

  std_msgs::Float64 servo1;
  std_msgs::Float64 servo2;
  std_msgs::Float64 servo3;
  std_msgs::Float64 servo4;
  std_msgs::Float64 servo5;

  servo1.data=first_joint;
  servo2.data=second_joint;
  servo3.data=third_joint;
  servo4.data=fourth_joint;
  servo5.data=fifth_joint;

  servo1_pub.publish(servo1);
  servo2_pub.publish(servo2);
  servo3_pub.publish(servo3);
  servo4_pub.publish(servo4);
  servo5_pub.publish(servo5);
  
}
int main (int argc, char **argv) {
  ros::init(argc,argv,"joy_controller_node");
  ros::NodeHandle nh_("~");

  std::string servo1_name;
  std::string servo2_name;
  std::string servo3_name;
  std::string servo4_name;
  std::string servo5_name;

  std::string servo1_string;
  std::string servo2_string;
  std::string servo3_string;
  std::string servo4_string;
  std::string servo5_string;

  nh_.param<std::string>("first_motor_name",servo1_name,"RobotArm_servo1");
  nh_.param<std::string>("second_motor_name",servo2_name,"RobotArm_servo2");
  nh_.param<std::string>("third_motor_name",servo3_name,"RobotArm_servo3");
  nh_.param<std::string>("fourth_motor_name",servo4_name,"RobotArm_servo4");
  nh_.param<std::string>("fifth_motor_name",servo5_name,"RobotArm_servo5");

  servo1_string.append("/vrep/")
  servo1_string.append(servo1_name);
  servo2_string.append("/vrep/")
  servo2_string.append(servo2_name);
  servo3_string.append("/vrep/")
  servo3_string.append(servo3_name);  
  servo4_string.append("/vrep/")
  servo4_string.append(servo4_name);
  servo5_string.append("/vrep/")
  servo5_string.append(servo5_name);

  ros::Subscriber joy_sub;
  joy_sub = nh_.subscribe<sensor_msgs::Joy>("joy",1,joyCallback);

  servo1_pub = nh_.advertise<std_msgs::Float64>(servo1_string,1);
  servo2_pub = nh_.advertise<std_msgs::Float64>(servo2_string,1);
  servo3_pub = nh_.advertise<std_msgs::Float64>(servo3_string,1);
  servo4_pub = nh_.advertise<std_msgs::Float64>(servo4_string,1);
  servo5_pub = nh_.advertise<std_msgs::Float64>(servo5_string,1);

  ros::Rate loop_rate(5);
  while (ros::ok()){
    ros::spinOnce();
    loop_rate.sleep();
  }
}
  
