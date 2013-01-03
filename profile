echo "reading ~/.profile"

ZEND_BIN_PATH=/usr/local/zend/bin
ZEND_APACHE_BIN_PATH=/usr/local/zend/apache2/bin
ZEND_MYSQL_BIN_PATH=/usr/local/zend/mysql/bin
HOME_BIN_PATH=$HOME/usr/bin
LOCAL_BIN_PATH=/usr/local/bin

PATH=$LOCAL_BIN_PATH:$HOME_BIN_PATH:ZEND_BIN_PATH:$PATH

PKG_CONFIG_PATH=~/usr/lib/pkgconfig:$PKG_CONFIG_PATH
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:~/usr/lib
LD_RUN_PATH=$LD_RUN_PATH:~/usr/lib

#PYTHONPATH=$PYTHONPATH:~/slippenspythonlib
#PYTHONPATH=$PYTHONPATH:~/usr/lib/python2.5/site-packages

#CLASSPATH=$CLASSPATH:~/foo/bar.jar


export PATH
export PKG_CONFIG_PATH
export LD_LIBRARY_PATH
export LD_RUN_PATH
export PYTHONPATH
export CLASSPATH
