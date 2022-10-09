echo "GENERATING YARP MSG IN ROS"

current_path="$PWD"

sudo cp -a ~/Dev2/yarp/yarp_ros_talker/rosmsgs/* /usr/local/include
search_dir=/usr/local/include
cd $search_dir
for file in "$search_dir"/*.msg
do
  #echo "$entry"
  echo "Creating for: $(basename "$file")"
  sudo yarpidl_rosmsg "$(basename "$file")"
done

for file in "$search_dir"/*.h
do
  #echo "$entry"
  echo "Creating for: $(basename "$file")"
  sudo yarpidl_rosmsg "$(basename "$file")"
done

cd $current_path