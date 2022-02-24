echo "enter first file name:"
read file1
if [ -e $file1 ]
then
set -- `ls -ld $file1`
file1perm=$1
else
echo "File doesnot exist"
exit
fi

echo "Enter second file:"
read file2
if [ -e $file2 ]
then
set -- `ls -ld $file2`
file2perm=$1
else
echo "File doesnot exit"
exit
fi

if [ $file1perm = $file2perm ]
then
echo "File permission are identical"
echo "Filepermission is $file1perm"
else
echo "File permission are not identical"
echo "$file1 permission is $file1perm"
echo "$file2 permission is $file2perm"
fi
