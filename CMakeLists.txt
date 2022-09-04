cmake_minimum_required(VERSION 3.8)

project(mvp_msgs)


find_package(nav_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(std_msgs REQUIRED)
find_package(action_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)


file(GLOB MSG_FILES ${CMAKE_CURRENT_SOURCE_DIR}/**/*.msg)
file(GLOB SRV_FILES ${CMAKE_CURRENT_SOURCE_DIR}/**/*.srv)
file(GLOB ACT_FILES ${CMAKE_CURRENT_SOURCE_DIR}/**/*.action)

set(INTERFACE_FILES "")


foreach(I IN ITEMS ${MSG_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  list(APPEND INTERFACE_FILES msg/${ITEM_NAME})
endforeach()

foreach(I IN ITEMS ${SRV_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  list(APPEND INTERFACE_FILES srv/${ITEM_NAME})
endforeach()

foreach(I IN ITEMS ${ACT_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  list(APPEND INTERFACE_FILES action/${ITEM_NAME})
endforeach()

rosidl_generate_interfaces(${PROJECT_NAME}
  ${INTERFACE_FILES}
  DEPENDENCIES
    geometry_msgs
    std_msgs
    action_msgs
    nav_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
