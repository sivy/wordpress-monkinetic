#!/bin/sh

#
# post-update.sh for Pushcode
#
# ENVIRONMENT VARIABLES PASSED TO THIS SCRIPT:
#
# $WORKING_DIR: the checkout directory from Pushcode. This is provided
# by Pushcode
#
# setup in the Deploy Directories section of my Environment setup
#
# $BUILD_DIR
# $DEST_DIR
#
# Conveniently, Pushcode checks these dirs before deploying, so I can assume
# that these are set and valid directories
#
cd $BUILD_DIR

# old way
# cp -R $BUILD_DIR/* $DEPLOY_DIR/

# new way
rsync $BUILD_DIR/* $DEPLOY_DIR/ --exclude post-update.sh *.git
