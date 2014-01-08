# Get directory of this script
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Use Xephyr to debug Awesome
Xephyr :1 -ac -br -noreset -screen 1152x720 &
sleep 1
DISPLAY=:1.0 awesome -c ${DIR}/rc.lua
