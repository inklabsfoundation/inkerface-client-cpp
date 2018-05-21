# Install script for directory: /Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/wangh09/CLionProjects/inkerface-client-cpp/cmake-build-debug/ethereum/libethereum.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethereum.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethereum.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libethereum.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ethereum" TYPE FILE FILES
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/AddressState.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/BlockChain.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/BlockInfo.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Client.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Common.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Dagger.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Exceptions.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Instruction.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/MemTrie.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/PeerNetwork.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/RLP.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/State.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/Transaction.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/TransactionQueue.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/TrieCommon.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/TrieDB.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/TrieHash.h"
    "/Users/wangh09/CLionProjects/inkerface-client-cpp/ethereum/vector_ref.h"
    )
endif()

