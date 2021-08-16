#!/bin/bash
set -e

cd "${0%/*}"

DRIVER_NAME="filemaker" \
DRIVER_GROUP="com.filemaker" \
DRIVER_ARTIFACT="jdbc" \
DRIVER_VERSION="20.65" \
DRIVER_CLASS="com.filemaker.jdbc.Driver" \
DRIVER_BUILD_TIME_CLASSES="com.sun.jna.platform.win32.Win32Exception,com.sun.jna.LastErrorException,com.filemaker.jdbc3.J3Connection" \
DRIVER_OUTPUT_DIR="`cd ../.. && pwd`/$DRIVER_NAME" \
NATIVE_IMAGE_CONFIG="--report-unsupported-elements-at-runtime --allow-incomplete-classpath -H:ReflectionConfigurationFiles=`pwd`/filemaker.json -J-Dfile.encoding=UTF-8" \
  ../wrap-driver.sh
