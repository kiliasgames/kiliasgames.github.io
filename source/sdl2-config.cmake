# Copyright (C) 2022 Kilias

cmake_minimum_required(VERSION 3.10)

set(SDL2_INCLUDE_DIRS "${CMAKE_CURRENT_LIST_DIR}/include")

if(${CMAKE_SIZEOF_VOID_P} STREQUAL "8")
  set(sdl2_lib_type "x64")
elseif(${CMAKE_SIZEOF_VOID_P} STREQUAL "4")
  set(sdl2_lib_type "x86")
else()
  set(sdl2_lib_type "")
  message(SEND_ERROR "Invalid CMAKE_SIZEOF_VOID_P")
endif()

set(SDL2_LIBRARIES "${CMAKE_CURRENT_LIST_DIR}/lib/${sdl2_lib_type}/SDL2.lib;${CMAKE_CURRENT_LIST_DIR}/lib/${sdl2_lib_type}/SDL2main.lib")