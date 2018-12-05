cmake_minimum_required(VERSION 2.8.3)
project(trajectory_tracker_msgs)

find_package(catkin REQUIRED
  COMPONENTS
    message_generation
    geometry_msgs
    std_msgs
)

add_service_files(
  FILES
    ChangePath.srv
)
add_message_files(
  FILES
    PathWithVelocity.msg
    PoseStampedWithVelocity.msg
    TrajectoryServerStatus.msg
    TrajectoryTrackerStatus.msg
)
generate_messages(
  DEPENDENCIES
    geometry_msgs
    std_msgs
)

catkin_package(
  CATKIN_DEPENDS
    message_runtime
    geometry_msgs
    std_msgs
)
