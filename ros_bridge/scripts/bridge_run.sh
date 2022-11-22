cd /Dev/ROS2/april_bridge
. install/local_setup.bash
#export ROS_MASTER_URI=http://fd6395acc6b1:11311
ros2 run ros1_bridge dynamic_bridge #--bridge-all-pairs

exec "$@"
