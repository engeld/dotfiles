# ====================================================================
# Autor: Dana Engel (engeld)
# Descr: This .profile-file is read whenever a login-shell is started
# ====================================================================
#echo "reading ~/.profile" # for debugging purposes

# ============ Customize ALL THE PATHS =============
# ZEND
ZEND_BIN_PATH=/usr/local/zend/bin
ZEND_APACHE_BIN_PATH=/usr/local/zend/apache2/bin
ZEND_MYSQL_BIN_PATH=/usr/local/zend/mysql/bin

# BIN
HOME_BIN_PATH=$HOME/usr/bin
LOCAL_BIN_PATH=/usr/local/bin

PATH=$LOCAL_BIN_PATH:$HOME_BIN_PATH:$ZEND_BIN_PATH:$PATH

# SYS
PKG_CONFIG_PATH=$HOME/usr/lib/pkgconfig:$PKG_CONFIG_PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib

# Python
#PYTHONPATH=$PYTHONPATH:~/slippenspythonlib
#PYTHONPATH=$PYTHONPATH:~/usr/lib/python2.5/site-packages

# Java
#CLASSPATH=$CLASSPATH:~/foo/bar.jar

# make system more usable :)
EDITOR=vim

# ============ Exports (aka activate those customs)  =============
export PATH
export PKG_CONFIG_PATH
export LD_LIBRARY_PATH
export LD_RUN_PATH
export EDITOR
