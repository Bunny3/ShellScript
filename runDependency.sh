#!/bin/sh
echo "Path to folder containing jar"
read Dir
echo $Dir
cd $Dir
result=$(ls | grep jar)
echo "These are the files found in the folder"
for i in $result
do	
	echo $i
done
echo "Path to Dependency Check"
read command
echo $command
command1=$command'/bin/dependency-check.sh'
echo $command1
for i in $result
do	
	$command1 -s $i -out $i.html
done
