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
  INCLUDE_DIRS include
  CATKIN_DEPENDS
    message_runtime
    geometry_msgs
    std_msgs
)

include_directories(${catkin_INCLUDE_DIRS} include)

if(CATKIN_ENABLE_TESTING)
  set(THREADS_PREFER_PTHREAD_FLAG ON)
  find_package(Threads REQUIRED)

  find_package(roscpp REQUIRED)
  find_package(rosunit REQUIRED)

  catkin_add_gtest(test_convert test/src/test_convert.cpp)
  target_link_libraries(test_convert ${catkin_LIBRARIES} ${CMAKE_THREAD_LIBS_INIT})

  find_package(roslint REQUIRED)
  roslint_cpp()
  roslint_add_test()
endif()

install(DIRECTORY include/${PROJECT_NAME}
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)
