if($<CONFIG> STREQUAL "Debug")
    set(DAV1D_CONFIG "Debug")
elseif($<CONFIG> STREQUAL "Release" OR $<CONFIG> STREQUAL "MinSizeRel" OR $<CONFIG> STREQUAL "RelWithDebInfo")
    set(DAV1D_CONFIG "Release")
endif()

set(DAV1D_ROOT_PATH "${CMAKE_CURRENT_SOURCE_DIR}/../..")
set(DAV1D_RUNTIME_ID "win11-msvc-x64")
set(DAV1D_RUNTIME_PATH "${DAV1D_ROOT_PATH}/runtimes/win11/msvc/x64/")
set(DAV1D_INCLUDE_PATH "${DAV1D_ROOT_PATH}/runtimes/win11/msvc/x64/include/")

target_include_directories(${PROJECT_NAME} PRIVATE ${DAV1D_INCLUDE_PATH})
target_link_directories(${PROJECT_NAME} PRIVATE ${DAV1D_RUNTIME_PATH}/lib/${DAV1D_CONFIG})

target_link_libraries(${PROJECT_NAME} PRIVATE dav1d.lib)

add_custom_command(TARGET ${PROJECT_NAME}
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E copy_if_different ${DAV1D_RUNTIME_PATH}/bin/${DAV1D_CONFIG}/dav1d.dll ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/
)
