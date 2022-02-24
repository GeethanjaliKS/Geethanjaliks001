set -- `who`
u=$1
set -- `echo $4 | tr":" " "`
h=$1
if [ $h -ge 4 ] && [ $h -lt 12 ]
then
echo -n"GOOD MORNING Mr/Ms.$u"
elif [ $h -ge 12 ] && [ $h -lt 16 ]  
then
echoecho -n"GOOD AFTERNOON Mr/Ms.$u"
elif [ $h -ge 17 ] && [ $h -lt 20 ]
then
echo -n"GOOD EVENING"
else
echo -n"GOOD NIGHT"
fi
