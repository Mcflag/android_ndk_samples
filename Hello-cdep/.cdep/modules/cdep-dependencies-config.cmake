# GENERATED FILE. DO NOT EDIT.

###
### Begin CMakeLibraryFunctions.cmake
###

# Set the flags necessary to reach the given C/C++ compiler level
function (cdepRequireMinimumCxxCompilerStandard target level)
    target_compile_options(${target} PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-std=c++${level}>)
endfunction()

###
### End CMakeLibraryFunctions.cmake
###

###
### Add dependency for CDep module: com.github.ggfan:hello-cdep:1.0.0
###
if(HELLO_CDEP_CDEP_COORDINATE)
  message(FATAL_ERROR "CDep module '${HELLO_CDEP_CDEP_COORDINATE}' was already defined")
endif(HELLO_CDEP_CDEP_COORDINATE)
set(HELLO_CDEP_CDEP_COORDINATE "com.github.ggfan:hello-cdep:1.0.0")
set(HELLO_CDEP_ROOT "C:/Users/pc/.cdep/exploded/com.github.ggfan/hello-cdep/1.0.0/hello-cdep-headers.zip/include")
function(add_cdep_hello_cdep_dependency target)
  # Choose between Android NDK Toolchain and CMake Android Toolchain
  set(cdep_supports_compiler_features TRUE)
  if(NOT CMAKE_SYSTEM_VERSION EQUAL 1)
    set(cdep_determined_android_runtime ${CMAKE_ANDROID_STL_TYPE})
    set(cdep_determined_android_abi ${CMAKE_ANDROID_ARCH_ABI})
    set(cdep_determined_android_platform_level ${CMAKE_SYSTEM_VERSION})
  else()
    set(cdep_determined_android_runtime ${ANDROID_STL})
    set(cdep_determined_android_abi ${ANDROID_ABI})
    set(cdep_determined_android_platform_level ${ANDROID_PLATFORM_LEVEL})
    set(cdep_supports_compiler_features FALSE)
  endif()

  set(cdep_exploded_root "C:/Users/pc/.cdep/exploded")
  set(coordinate_group_id "com.github.ggfan")
  set(coordinate_artifact_id "hello-cdep")
  set(coordinate_version "1.0.0")
  set(exploded_archive_tail "${coordinate_group_id}/${coordinate_artifact_id}/${coordinate_version}")
  set(exploded_archive_folder "${cdep_exploded_root}/${exploded_archive_tail}")

  execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-headers.zip 1458 732ab71b264439b986fbc1dfdc25e6fbbb0e0838dc2cadaa1ebdc29e6a3529a2)
  target_include_directories(${target} PUBLIC "${exploded_archive_folder}/hello-cdep-headers.zip/include")

  if(CMAKE_SYSTEM_NAME STREQUAL "Android")
    if(cdep_determined_android_platform_level GREATER 22)
      if(cdep_determined_android_abi STREQUAL "armeabi")
        execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-armeabi.zip 4039 feddec9a9d420f791748b2607462eb3faaad197af56e4acc5b2c703e545fbd3e)
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-armeabi.zip/lib/armeabi/libgmath.a")
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-armeabi.zip/lib/armeabi/libgperf.a")
      elseif(cdep_determined_android_abi STREQUAL "armeabi-v7a")
        execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-armeabi-v7a.zip 4028 6a6eadf023f90c571086d56754c990f7c0b05446f5b79bede7f48931ed31f981)
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-armeabi-v7a.zip/lib/armeabi-v7a/libgmath.a")
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-armeabi-v7a.zip/lib/armeabi-v7a/libgperf.a")
      elseif(cdep_determined_android_abi STREQUAL "arm64-v8a")
        execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-arm64-v8a.zip 3914 56f0090e0efa6da579e9168fc148b975eb57cc54653da6354ede745553203056)
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-arm64-v8a.zip/lib/arm64-v8a/libgmath.a")
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-arm64-v8a.zip/lib/arm64-v8a/libgperf.a")
      elseif(cdep_determined_android_abi STREQUAL "x86")
        execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-x86.zip 3687 2b2b021262cdbfb52f3eb9c0d1c4af91a2557e332a7a9ee18585ae46e272652d)
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-x86.zip/lib/x86/libgmath.a")
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-x86.zip/lib/x86/libgperf.a")
      elseif(cdep_determined_android_abi STREQUAL "x86_64")
        execute_process(COMMAND "C:/Program Files/Java/jre-10.0.2/bin/java.exe" -classpath "C:/Users/pc/.cdep/bootstrap/downloads/1503477075/cdep-0.8.30.jar" io.cdep.CDep --working-folder "D:/gitproject/ndk_samples/Hello-cdep/." fetch-archive com.github.ggfan:hello-cdep:1.0.0 https://github.com/ggfan/hello-cdep/releases/download/1.0.0/hello-cdep-x86_64.zip 3682 e4faff66e1eb1d76583edecd44a1e4ecd4849747fcae92665d013f10d5b8f990)
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-x86_64.zip/lib/x86_64/libgmath.a")
        target_link_libraries(${target} "${exploded_archive_folder}/hello-cdep-x86_64.zip/lib/x86_64/libgperf.a")
      else()
        message(FATAL_ERROR "Android ABI ${cdep_determined_android_abi} is not supported by com.github.ggfan:hello-cdep:1.0.0 for platform ${cdep_determined_android_platform_level}. Supported: armeabi armeabi-v7a arm64-v8a x86 x86_64  CMAKE_SYSTEM_VERSION=${CMAKE_SYSTEM_VERSION} ANDROID_SYSTEM_VERSION=${ANDROID_SYSTEM_VERSION} CMAKE_ANDROID_STL_TYPE=${CMAKE_ANDROID_STL_TYPE} ANDROID_STL=${ANDROID_STL}")
      endif()
    else()
      message(FATAL_ERROR "Android API level ${cdep_determined_android_platform_level} is not supported by com.github.ggfan:hello-cdep:1.0.0 CMAKE_SYSTEM_VERSION=${CMAKE_SYSTEM_VERSION} ANDROID_SYSTEM_VERSION=${ANDROID_SYSTEM_VERSION} CMAKE_ANDROID_STL_TYPE=${CMAKE_ANDROID_STL_TYPE} ANDROID_STL=${ANDROID_STL}")
    endif()
  else()
    message(FATAL_ERROR "Target platform ${CMAKE_SYSTEM_NAME} is not supported by com.github.ggfan:hello-cdep:1.0.0. Supported: Android CMAKE_SYSTEM_VERSION=${CMAKE_SYSTEM_VERSION} ANDROID_SYSTEM_VERSION=${ANDROID_SYSTEM_VERSION} CMAKE_ANDROID_STL_TYPE=${CMAKE_ANDROID_STL_TYPE} ANDROID_STL=${ANDROID_STL}")
  endif()
endfunction(add_cdep_hello_cdep_dependency)

function(add_all_cdep_dependencies target)
  add_cdep_hello_cdep_dependency(${target})
endfunction(add_all_cdep_dependencies)
