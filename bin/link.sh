#!/bin/bash
#set -x

#FIXME: add handling for directories
#TODO: add checks after linking to check if all created links are valid

CONF_PATH="${HOME}/.dotfiles/conf/*"
for FILE in `echo ${CONF_PATH}`; do
  if [ -d ${FILE} ]; then
    echo "${FILE} is a directory, not gonna link this one"
  else
    SYMLINK_TARGET="${HOME}/.`basename ${FILE}`"
    
    if [ -e ${SYMLINK_TARGET} ]; then
      echo "ERROR: could not link ${FILE} to ${SYMLINK_TARGET}. ${SYMLINK_TARGET} already exists"
    else
      echo "Linking file ${FILE} to ${SYMLINK_TARGET}"
      ln -s ${FILE} ${SYMLINK_TARGET}
    fi
   
  fi
done;
