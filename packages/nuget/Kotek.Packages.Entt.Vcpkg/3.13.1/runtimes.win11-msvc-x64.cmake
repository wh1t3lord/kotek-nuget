if($<CONFIG> STREQUAL "Debug")
    set(ENTT_CONFIG "Debug")
elseif($<CONFIG> STREQUAL "Release" OR $<CONFIG> STREQUAL "MinSizeRel" OR $<CONFIG> STREQUAL "RelWithDebInfo")
    set(ENTT_CONFIG "Release")
endif()

set(ENTT_ROOT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(ENTT_RUNTIME_ID "win11-msvc-x64")
set(ENTT_RUNTIME_PATH "${ENTT_ROOT_PATH}/runtimes/win11/msvc/x64/")
set(ENTT_INCLUDE_PATH "${ENTT_ROOT_PATH}/runtimes/win11/msvc/x64/include/")

target_include_directories(${PROJECT_NAME} PRIVATE ${ENTT_INCLUDE_PATH})
