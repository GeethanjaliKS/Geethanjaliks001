for i in $* if [ -f $i ]
do
echo "----$i contents are-------"
cat $i|tr "[a-z]" "[A-Z]"
echo "---------------------"
else
echo "$i file doesnt exist"
fi
done

