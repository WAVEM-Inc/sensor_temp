cmake_minimum_required(VERSION 3.8)
project(sensor_temp)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(rclcpp REQUIRED)
include_directories(
  include
  include/${PROJECT_NAME}
  #${EXTERNAL_INCLUDE_DIRS}
)

set(source_set
  src/main.cpp 
  src/sensor_temp.cpp
)

set(dependencies 
  rclcpp
  sensor_msgs
  std_msgs
)

set(node_name
  sensor_temp_node
)

add_executable(${node_name}
  ${source_set}
)

ament_target_dependencies(${node_name}
  ${dependencies}
)

install(TARGETS
  ${node_name}
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
