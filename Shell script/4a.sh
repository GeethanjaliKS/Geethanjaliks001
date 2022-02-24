#Write a shell script that accept one or more file names as argument and convert all of them
to uppercase, provided they exists in current directory#
for i in $* if [ -f $i ]
do
echo "----$i contents are-------"
cat $i|tr "[a-z]" "[A-Z]"
echo "---------------------"
else
echo "$i file doesnt exist"
fi
done

