#!/bin/bash
# This script loops through all linked dotfiles in the home directory and unlinks them

#FIXME: currently doesn't work with directories

for LINK in `find ${HOME} -maxdepth 1 -type l`
do
  SOURCE_FILE=`readlink ${LINK}`
  echo "Unlinking ${LINK} (linked from: ${SOURCE_FILE})"
  unlink ${LINK}
done
