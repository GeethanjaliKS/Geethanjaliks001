if [ $# -eq 1 ]
then
grep $1 /etc/passwd>ud
if [ $? -eq 0 ]
then
echo "user exists"
h=`cut -d ":" -f 6 ud`
echo "home directory $1 and $h"
else
echo "not user directory"
fi
else
echo "enter user name"
fi
