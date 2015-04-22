#!/bin/bash
BUILD_DIR=${BUILD_DIR:-${HOME}/rabbitmq-public-umbrella}
RMQ_TAG=${RMQ_TAG:-v3_5_1}
if [ ! -d $BUILD_DIR ]; then
    git clone https://github.com/rabbitmq/rabbitmq-public-umbrella.git $BUILD_DIR
    cd $BUILD_DIR
    make co
fi
make BRANCH=rabbitmq_${RMQ_TAG} up_c
rm -rf ${BUILD_DIR}/gun-wrapper
cp -r ${TRAVIS_BUILD_DIR} ${BUILD_DIR}/
export TRAVIS_BUILD_DIR=BUILD_DIR/gun-wrapper
echo "New Travis build dir: ${TRAVIS_BUILD_DIR}"
