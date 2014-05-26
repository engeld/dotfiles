#!/bin/bash
#set -x

CONF_PATH=`dirname $0`"/../conf/*"
for FILE in `echo ${CONF_PATH}`; do
  echo "Linking file ${FILE} to ${HOME}/.`basename ${FILE}`"
done;
