


set(Protobuf_INCLUDE_DIR ${CMAKE_SOURCE_DIR}/src/include/protobuf/${ANDROID_ABI}/include)
LIST(APPEND Protobuf_LIBRARIES
        ${CMAKE_SOURCE_DIR}/src/include/protobuf/${ANDROID_ABI}/lib/libprotobuf-lite.a
)

set(Protobuf_FOUND FALSE)
if (Protobuf_INCLUDE_DIR AND Protobuf_LIBRARIES)
    set(Protobuf_FOUND TRUE)
endif()


message("Protobuf_INCLUDE_DIR:" ${Protobuf_INCLUDE_DIR})
message("Protobuf_LIBRARIES:" ${Protobuf_LIBRARIES})


