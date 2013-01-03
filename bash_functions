echo "reading ~/.bash_functions"


bkp () { cp $1 $PWD/`date +%Y%m%d-%H%M`_`basename $1`.backup ; }

