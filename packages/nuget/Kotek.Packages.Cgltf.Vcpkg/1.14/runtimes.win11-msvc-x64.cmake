if($<CONFIG> STREQUAL "Debug")
    set(CGLTF_CONFIG "Debug")
elseif($<CONFIG> STREQUAL "Release" OR $<CONFIG> STREQUAL "MinSizeRel" OR $<CONFIG> STREQUAL "RelWithDebInfo")
    set(CGLTF_CONFIG "Release")
endif()

set(CGLTF_ROOT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(CGLTF_RUNTIME_ID "win11-msvc-x64")
set(CGLTF_RUNTIME_PATH "${CGLTF_ROOT_PATH}/runtimes/win11/msvc/x64/")
set(CGLTF_INCLUDE_PATH "${CGLTF_ROOT_PATH}/runtimes/win11/msvc/x64/include/")

target_include_directories(${PROJECT_NAME} PRIVATE ${CGLTF_INCLUDE_PATH})
