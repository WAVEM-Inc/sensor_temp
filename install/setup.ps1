# generated from colcon_powershell/shell/template/prefix_chain.ps1.em

# This script extends the environment with the environment of other prefix
# paths which were sourced when this file was generated as well as all packages
# contained in this prefix path.

# function to source another script with conditional trace output
# first argument: the path of the script
function _colcon_prefix_chain_powershell_source_script {
  param (
    $_colcon_prefix_chain_powershell_source_script_param
  )
  # source script with conditional trace output
  if (Test-Path $_colcon_prefix_chain_powershell_source_script_param) {
    if ($env:COLCON_TRACE) {
      echo ". '$_colcon_prefix_chain_powershell_source_script_param'"
    }
    . "$_colcon_prefix_chain_powershell_source_script_param"
  } else {
    Write-Error "not found: '$_colcon_prefix_chain_powershell_source_script_param'"
  }
}

# source chained prefixes
_colcon_prefix_chain_powershell_source_script "/opt/ros/humble\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_data_msgs/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_data_manager/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_task_controller/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/rms/ktp_rms/ktp_interface/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/drive/obstacle_detection/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/drive/route_devation/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/drive/gps_navigation/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/drive/controller/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/sensor/gps/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/sensor/imu/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/sensor/lidar/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/service/information/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/service/path_graph_data/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/src/service/sound_player/install\local_setup.ps1"
_colcon_prefix_chain_powershell_source_script "/home/nuc-bt/kec_ws/launch/total_launcher/install\local_setup.ps1"

# source this prefix
$env:COLCON_CURRENT_PREFIX=(Split-Path $PSCommandPath -Parent)
_colcon_prefix_chain_powershell_source_script "$env:COLCON_CURRENT_PREFIX\local_setup.ps1"
