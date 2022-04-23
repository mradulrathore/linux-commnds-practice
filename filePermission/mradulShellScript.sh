#! /bin/bash
echo "--------ls command--------"
ls >> /dev/pts/0
echo "--------ls -l command--------"
ls -l >> /dev/pts/0
echo -n "Enter file name : "
read file
 
# check execute permission
[ -x $file ] && X="Execute = Y" || X="Execute = N"

# check write permission
[ -w $file ] && W="Write = Y" || W="Write = N"
 
# check read permission
[ -r $file ] && R="Read = Y" || R="Read = N"
 
echo "--------$file permissions--------"
echo "$W"
echo "$R"
echo "$X"
chmod +rwx ./$fileName >> /dev/pts/0


