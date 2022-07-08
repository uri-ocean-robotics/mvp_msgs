int32 DOF_X          = 0
int32 DOF_Y          = 1
int32 DOF_Z          = 2
int32 DOF_ROLL       = 3
int32 DOF_PITCH      = 4
int32 DOF_YAW        = 5
int32 DOF_SURGE      = 6
int32 DOF_SWAY       = 7
int32 DOF_HEAVE      = 8
int32 DOF_ROLL_RATE  = 9
int32 DOF_PITCH_RATE = 10
int32 DOF_YAW_RATE   = 11

string name
int32[] dofs

seal_msgs/PIDgains pid_x
seal_msgs/PIDgains pid_y
seal_msgs/PIDgains pid_z

seal_msgs/PIDgains pid_roll
seal_msgs/PIDgains pid_pitch
seal_msgs/PIDgains pid_yaw

seal_msgs/PIDgains pid_surge
seal_msgs/PIDgains pid_sway
seal_msgs/PIDgains pid_heave

seal_msgs/PIDgains pid_roll_rate
seal_msgs/PIDgains pid_pitch_rate
seal_msgs/PIDgains pid_yaw_rate