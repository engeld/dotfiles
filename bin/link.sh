#!/bin/bash
#set -x
set -o nounset
set -o errexit


CONF_PATH=`dirname $0`"/../conf/*"
for FILE in `echo ${CONF_PATH}`; do
  if [ -d ${FILE} ]; then
    echo "${FILE} is a directory, not gonna link this one"
  else
    echo "Linking file ${FILE} to ${HOME}/.`basename ${FILE}`"
  fi
done;
