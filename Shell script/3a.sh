#Create a script file called file properties that reads a filename entered and outputs it
properties#
if [ -e $1 ]
then
a=`ls -ld $1`
p=1
for i in $a
do
case $p in
1)echo "permission are is $i";;
2)echo "File links count is $i";;
[6-8])echo "File modification done in %5 %6 @ %7"
esac
p=`expr $p+1`
echo $i
done
else
echo "file doesnt exist"
fi
