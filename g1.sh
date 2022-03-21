set `date`
y=$3
if [ $y -le 9 ]
then
cal |sed "s/$3/*/"
else
cal |sed "s/$3/**/"
fi
