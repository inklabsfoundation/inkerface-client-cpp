cmake_minimum_required(VERSION 3.10)
project(inkerface-client-cpp)

FIND_PACKAGE(Boost)


# Not really worth caching. We want to reevaluate anyway.
mark_as_advanced(CRYPTOPP_INCLUDE_DIR CRYPTOPP_LIBRARIES)

#link_directories(${CRYPTOPP_LIBRARIES})

INCLUDE_DIRECTORIES( ${Boost_INCLUDE_DIR} )



set(CMAKE_CXX_STANDARD 11)

add_executable(inkerface-client-cpp main.cpp utils.h utils.cpp)

add_subdirectory(secp256k1)
add_subdirectory(ethereum)
include_directories(./secp256k1)
include_directories(cryptopp)
include_directories(ethereum)
link_directories(ethereum)

link_directories(${PROJECT_SOURCE_DIR}/cryptopp)
link_directories(ethereum)
LINK_LIBRARIES("${PROJECT_SOURCE_DIR}/cryptopp/libcryptopp.a")

target_link_libraries(inkerface-client-cpp secp256k1)
#target_link_libraries(inkerface-client-cpp libcryptopp.a)
target_link_libraries(inkerface-client-cpp ethereum)
target_link_libraries(inkerface-client-cpp gmp)

target_link_libraries(inkerface-client-cpp ${Boost_LIBRARIES})