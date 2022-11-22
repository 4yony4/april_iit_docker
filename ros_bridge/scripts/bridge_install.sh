
current_path="$PWD"
path_to_one="$PWD"/april_bridge

DIR="/Dev/ROS2/april_bridge"

if [ -d "$DIR" ]; then
  ### Take action if $DIR exists ###
  #echo "Installing config files in ${DIR}..."
  exit 1
else
    cd "$path_to_one"
    source dirs_make.sh

    #cd "$path_to_one"
    #source ros_galactic_install.sh

    #cd "$path_to_one"
    #source ros_noetic_install.sh

    cd "$path_to_one"
    source clone_repos.sh

    cd "$path_to_one"
    source april_msgs1_build.sh

    cd "$path_to_one"
    source april_msgs2_build.sh

    cd "$path_to_one"
    source bridge_build.sh
  ###  Control will jump here if $DIR does NOT exists ###
  #echo "Error: ${DIR} not found. Can not continue."
  #exit 1
fi

