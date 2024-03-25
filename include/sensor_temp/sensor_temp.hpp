#ifndef SENSOR_TEMP_HPP__
#define SENSOR_TEMP_HPP__

#include <iostream>
#include <fstream>
#include <fcntl.h>
#include "rclcpp/rclcpp.hpp"
#include "sensor_msgs/msg/temperature.hpp"
#include "sensor_msgs/msg/relative_humidity.hpp"
#include <unistd.h>
#include <list>
using TempMSG = sensor_msgs::msg::Temperature;
using HumMSG = sensor_msgs::msg::RelativeHumidity;
class SensorTemp : public rclcpp::Node{
	private :
        	rclcpp::Time current_time_;  //!< 현재 시각
		rclcpp::Publisher<TempMSG>::SharedPtr pub_temp_;
		rclcpp::Publisher<HumMSG>::SharedPtr pub_hum_;

	//odom callback
	public :
		int pub_temp_hum();
		SensorTemp();

};
#endif
