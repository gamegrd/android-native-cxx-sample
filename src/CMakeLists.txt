project("sample")


set(CMAKE_STATIC_LINKER_FLAGS " --static  -lm  -pthread -fopenmp -lstdc++")

#set(CMAKE_C_FLAGS  "${CMAKE_C_FLAGS}  ")
#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS}  ")

include_directories( ./ )
include_directories( ../class )
include_directories( ../application )
include_directories( ../libop/core )


aux_source_directory(./ C_CXX_FILES)
aux_source_directory(../class C_CXX_FILES)
aux_source_directory(../application C_CXX_FILES)


find_library(android-lib android)
aux_source_directory(${CMAKE_CURRENT_BINARY_DIR} C_CXX_FILES)
include_directories(${CMAKE_CURRENT_BINARY_DIR})

if ("${PROJECT_NAME}" STREQUAL "jni")
    add_library( # Sets the name of the library.
            ${PROJECT_NAME}

            # Sets the library as a shared library.
            SHARED
            # Provides a relative path to your source file(s).
            ${C_CXX_FILES}
            ${PROTO_SRC_FILES}
            )
else()
    add_executable( # Sets the name of the library.
            ${PROJECT_NAME}
            # Provides a relative path to your source file(s).
            ${C_CXX_FILES}
            ${PROTO_SRC_FILES}
            )
endif()

find_library( # Sets the name of the path variable.
        log-lib

        # Specifies the name of the NDK library that
        # you want CMake to locate.
        log
        )




target_link_libraries( # Specifies the target library.
        ${PROJECT_NAME}
        ${log-lib}
        ${android-lib}
)
