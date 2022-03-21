set `date`
y=$2
if [ $y -le 9 ]
then
cal |sed "s/$2/Feb/"
else
cal |sed "s/$2/Feb/"
fi
