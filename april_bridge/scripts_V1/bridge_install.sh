
current_path="$PWD"
path_to_one="$PWD"/april_bridge

cd "$path_to_one"
source dirs_make.sh

cd "$path_to_one"
source ros_galactic_install.sh

cd "$path_to_one"
source ros_noetic_install.sh

cd "$path_to_one"
source clone_repos.sh

cd "$path_to_one"
source april_msgs_build.sh

cd "$path_to_one"
source bridge_build.sh