# ====================================================================
# Autor: Dana Engel (engeld)
# Descr: This .profile-file is read whenever a login-shell is started
#        It contains mostly environment variable related stuff
# ====================================================================
#echo "reading ~/.profile" # for debugging purposes

# ============ Customize ALL THE ENVIRONMENT VARIABLES =============
# ZEND
ZEND_BIN_PATH=/usr/local/zend/bin
ZEND_APACHE_BIN_PATH=/usr/local/zend/apache2/bin
ZEND_MYSQL_BIN_PATH=/usr/local/zend/mysql/bin

# SYS
PKG_CONFIG_PATH=$HOME/usr/lib/pkgconfig:$PKG_CONFIG_PATH
#LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib

# Python
#PYTHONPATH=$PYTHONPATH:~/slippenspythonlib
#PYTHONPATH=$PYTHONPATH:~/usr/lib/python2.5/site-packages

# Java
#CLASSPATH=$CLASSPATH:~/foo/bar.jar
JAVA_HOME=`/usr/libexec/java_home -v 1.7`
#ANT_HOME=
#TOMCAT_HOME=

# BIN
HOME_BIN_PATH=$HOME/usr/bin
LOCAL_BIN_PATH=/usr/local/bin

PATH=$LOCAL_BIN_PATH:$HOME_BIN_PATH:$ZEND_BIN_PATH:$PATH
#MANPATH=

# make system more usable :)
EDITOR=vim
VISUAL=vim
#LESSEDIT=
#PAGER=

# ============ Exports (aka activate those customs env variables)  =============
export PATH
export PKG_CONFIG_PATH
export LD_LIBRARY_PATH
export LD_RUN_PATH
export EDITOR
export VISUAL
export JAVA_HOME
