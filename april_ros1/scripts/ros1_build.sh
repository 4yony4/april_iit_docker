
current_path="$PWD"
path_to_one="$PWD"/april_ros1

cd "$path_to_one"
source dirs_make.sh

cd "$path_to_one"
source clone_repos.sh

cd "$path_to_one"
source yarp_build.sh