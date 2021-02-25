touch data3.txt
join -t"|"  data2.txt data1.txt > data3.txt
echo "You have merged the files!!!"
cat data3.txt

for line in `cat data3.txt`
do
	name=`echo ${line}|cut -d'|' -f1`
	sal=`echo ${line}|cut -d'|' -f3`
	city=`echo ${line}|cut -d'|' -f4` 
	course=`echo ${line}|cut -d'|' -f2`
	echo "My name is ${name}, my salary is ${sal} and Im staying in ${city}">${name}_${course}.txt 
done
