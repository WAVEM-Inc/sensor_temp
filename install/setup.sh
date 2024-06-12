# generated from colcon_core/shell/template/prefix_chain.sh.em

# This script extends the environment with the environment of other prefix
# paths which were sourced when this file was generated as well as all packages
# contained in this prefix path.

# since a plain shell script can't determine its own path when being sourced
# either use the provided COLCON_CURRENT_PREFIX
# or fall back to the build time prefix (if it exists)
_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX=/home/nuc-bt/kec_ws/src/sensor/sensor_temp/install
if [ ! -z "$COLCON_CURRENT_PREFIX" ]; then
  _colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX="$COLCON_CURRENT_PREFIX"
elif [ ! -d "$_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX" ]; then
  echo "The build time path \"$_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX\" doesn't exist. Either source a script for a different shell or set the environment variable \"COLCON_CURRENT_PREFIX\" explicitly." 1>&2
  unset _colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX
  return 1
fi

# function to source another script with conditional trace output
# first argument: the path of the script
_colcon_prefix_chain_sh_source_script() {
  if [ -f "$1" ]; then
    if [ -n "$COLCON_TRACE" ]; then
      echo "# . \"$1\""
    fi
    . "$1"
  else
    echo "not found: \"$1\"" 1>&2
  fi
}

# source chained prefixes
# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/opt/ros/humble"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_data_msgs/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_data_manager/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_task_controller/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_interface/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_dummy_data_generator/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/drive/obstacle_detection/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/drive/route_devation/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/drive/gps_navigation/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/drive/controller/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/sensor/gps/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/sensor/imu/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/sensor/lidar/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/service/information/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/service/path_graph_data/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/src/service/sound_player/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="/home/nuc-bt/kec_ws/launch/total_launcher/install"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"


# source this prefix
# setting COLCON_CURRENT_PREFIX avoids relying on the build time prefix of the sourced script
COLCON_CURRENT_PREFIX="$_colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX"
_colcon_prefix_chain_sh_source_script "$COLCON_CURRENT_PREFIX/local_setup.sh"

unset _colcon_prefix_chain_sh_COLCON_CURRENT_PREFIX
unset _colcon_prefix_chain_sh_source_script
unset COLCON_CURRENT_PREFIX
