#!/bin/bash

source /opt/ros/indigo/setup.bash
source /home/robot/catkin_ws/devel/setup.bash

export ROS_PACKAGE_PATH=/home/robot/ros_ws:$ROS_PACKAGE_PATH


roslaunch usb_cam usb_cam-test.launch &
sleep 2
roslaunch ar_track_alvar pr2_indiv_no_kinect.launch &
sleep 2
roslaunch starline starlinepad.launch
