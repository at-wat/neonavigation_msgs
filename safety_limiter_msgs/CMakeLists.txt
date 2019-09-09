cmake_minimum_required(VERSION 2.8.3)
project(safety_limiter_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
)

catkin_package()

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_message_files(
  FILES
    SafetyLimiterStatus.msg
)
