#include"sensor_temp.hpp"

SensorTemp::SensorTemp():Node("obstacle_detection_node"){
	rclcpp::PublisherOptions pub_temp_options;
	pub_temp_ = this->create_publisher<TempMSG>("/sensor/temp/temperature", 1,pub_temp_options);
	rclcpp::PublisherOptions pub_hum_options;
	pub_hum_ = this->create_publisher<HumMSG>("/sensor/temp/humidity", 1,pub_hum_options);
}

int SensorTemp::pub_temp_hum()
{
	current_time_= this->now();
	int fd;
	char temp_buf[32];
	char temp_val[8];
	char hum_val[8];
	char* temp_pars;
	int lp,lp_2;
	int temp_flag=0;
	int pars_point=5;
	memset(temp_buf,0,sizeof(temp_buf));
	memset(temp_val,0,sizeof(temp_val));
	memset(hum_val,0,sizeof(hum_val));
	TempMSG temp;
	HumMSG hum;
	fd=open("/dev/ttyACM0", O_RDWR);
	write(fd, "ATCD\r\n", 6);
	read(fd,temp_buf,sizeof(temp_buf));
	temp_pars=strstr(temp_buf,"ATCD");
	for(lp=0;lp < 32;lp++)
	{
		if(temp_pars == NULL)
		{
			printf("no recieve data\n");
			return -1;
		}
		else if(temp_pars[lp+pars_point] == '\n')
		{
			break;
		}
		else if(temp_pars[lp+pars_point] == ',')
		{
			temp_flag++;
			lp_2=lp+1;
		}
		else
		{
			if(temp_flag ==0)
			{
				temp_val[lp] = temp_pars[lp+pars_point];
			}
			else
			{
				hum_val[lp-lp_2] = temp_pars[lp+pars_point];
			}
		}
	}
	temp.header.frame_id = "base_link";
	hum.header.frame_id = "base_link";
	temp.header.stamp = current_time_;	
	hum.header.stamp = current_time_;	
	temp.temperature=atof(temp_val);
	hum.relative_humidity=atof(hum_val);
	pub_temp_->publish(temp);
	pub_hum_->publish(hum);
	close(fd);
	return 0;
}


