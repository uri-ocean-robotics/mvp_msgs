#
# This message defines meta information for a mechanical scanning imaging sonar (MSIS).
#

# Time of sonar acquisition, sonar coordinate frame ID and seq 
Header header

# size of the rotation step [deg]
float64 step_angle

# a range resolution of the sonar image
uint64 bins

# horizontal beam width [deg]
float32 horizontal_beam

# vertical beam width [deg]
float32 vertical_beam

# minimum measured range [m]
float64 min_range

# maximum measured range [m]
float64 max_range

# minimum rotation of the sonar head [deg]
float32 min_rotation

# maximum rotation of the sonar head [deg]
float32 max_rotation

# gain
float64 gain 