#include"sensor_temp.hpp"

static volatile int running = 1;
 static void sigterm(int signo)
 {
 	fprintf(stdout, " SIGNAL %d  in sensor_temp\n", signo);
 	running = 0;
	exit(0);	
 }

int main(int argc, char ** argv){
	signal(SIGTERM, sigterm);
	signal(SIGHUP, sigterm);
	signal(SIGINT, sigterm);
	rclcpp::init(argc, argv);
	SensorTemp temp;

	while(1)
	{
		temp.pub_temp_hum();
		sleep(1);
	}
	rclcpp::shutdown();
	return 0;
}
