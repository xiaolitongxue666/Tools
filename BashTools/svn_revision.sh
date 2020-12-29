#!/bin/sh

BUILD_VERSION=$(svn info --xml > /tmp/revision && expr substr `head -13 /tmp/revision|grep "revision"` 11 4)
BUILD_DATE=$(date +%Y%m%d_%T)
BUILD_BY="$(whoami)"

echo "BUILD_VERSION = " $BUILD_VERSION
echo "BUILD_DATE = " $BUILD_DATE
echo "BUILD_BY = " $BUILD_BY
