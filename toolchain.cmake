# this one is important
SET(CMAKE_SYSTEM_NAME Linux)
#this one not so much
SET(CMAKE_SYSTEM_VERSION 1)

# skip the cmake test compilation
set(CMAKE_C_COMPILER_WORKS 1)
set(CMAKE_CXX_COMPILER_WORKS 1)

# where is the target environment
SET(CMAKE_FIND_ROOT_PATH /opt/dey/2.4-r3/sysroots/cortexa9hf-neon-dey-linux-gnueabi)
SET(CMAKE_SYSROOT /opt/dey/2.4-r3/sysroots/cortexa9hf-neon-dey-linux-gnueabi)

# specify the cross compiler
SET(CMAKE_C_COMPILER
/opt/dey/2.4-r3/sysroots/x86_64-deysdk-linux/usr/bin/arm-dey-linux-gnueabi/arm-dey-linux-gnueabi-gcc)

SET(CMAKE_CXX_COMPILER
/opt/dey/2.4-r3/sysroots/x86_64-deysdk-linux/usr/bin/arm-dey-linux-gnueabi/arm-dey-linux-gnueabi-g++)

# search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# for libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
