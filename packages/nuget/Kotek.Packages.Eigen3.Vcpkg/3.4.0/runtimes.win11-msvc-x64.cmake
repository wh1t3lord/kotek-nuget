if($<CONFIG> STREQUAL "Debug")
    set(EIGEN3_CONFIG "Debug")
elseif($<CONFIG> STREQUAL "Release" OR $<CONFIG> STREQUAL "MinSizeRel" OR $<CONFIG> STREQUAL "RelWithDebInfo")
    set(EIGEN3_CONFIG "Release")
endif()

set(EIGEN3_ROOT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(EIGEN3_RUNTIME_ID "win11-msvc-x64")
set(EIGEN3_RUNTIME_PATH "${EIGEN3_ROOT_PATH}/runtimes/win11/msvc/x64/")
set(EIGEN3_INCLUDE_PATH "${EIGEN3_ROOT_PATH}/runtimes/win11/msvc/x64/include/")

target_include_directories(${PROJECT_NAME} PRIVATE ${EIGEN3_INCLUDE_PATH})
