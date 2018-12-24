#!/bin/bash - 
#===============================================================================
#
#          FILE: pull_subtree.sh
# 
#         USAGE: ./pull_subtree.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Dilawar Singh (), dilawars@ncbs.res.in
#  ORGANIZATION: NCBS Bangalore
#       CREATED: 05/18/2016 01:11:59 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
set -e
set -x

if [[ `pwd` == *"/FindSimFramework" ]]; then

    git subtree pull --prefix FindSim \
        https://github.com/BhallaLab/FindSim stable --squash
    git subtree pull --prefix FindSimWeb \
        https://github.com/BhallaLab/FindSimWeb master --squash 
    git subtree pull --prefix FindSimLayout \
        https://github.com/BhallaLab/FindSimLayout master --squash

else
    echo "Run this script from top-level git directory."
fi
