. /opt/ros/noetic/setup.sh
export ROS_HOSTNAME=ros1
#export ROS_MASTER_URI=http://ros1b:11311
roscore
exec "$@"