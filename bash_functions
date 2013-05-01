echo "reading ~/.bash_functions"

# one-liners :)
growl() { echo -e $'\e]9;'${1}'\007' ; return  ; }
bkp () { cp $1 $PWD/`date +%Y%m%d-%H%M`_`basename $1`.backup ; }

