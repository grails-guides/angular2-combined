#!/bin/bash
set -e

export EXIT_STATUS=0

curl -O https://raw.githubusercontent.com/grails/grails-guides/master/travis/build-guide
chmod 777 build-guide

sed -i '/\.\/gradlew check/d' ./build-guide

cat ./build-guide

./build-guide || EXIT_STATUS=$?

exit $EXIT_STATUS