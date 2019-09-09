int8 NORMAL = 0
int8 COLLISION_IS_PREDICTED = 1
int8 ROBOT_IS_STUCK = 2
int8 WATCHDOG_TIMED_OUT = 3

Header header
int8 status

float64 limit_ratio
bool is_cloud_available
bool has_watchdog_timed_out
