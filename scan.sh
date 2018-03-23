#!/bin/bash

declare -a terms
while read -r line
do
    terms+=($line)  
done < $1

files=$(ls)

for i in $files
do
    for term in ${terms[*]}
    do
	grep $term -irn $i >> "$i"_"$term".scn
    done
done

scanlogs=${2:scanlogs}

mkdir $scanlogs
mv *.scn "$scanlogs"/

cd $scanlogs

echo -ne 'Files\t' >> temp.rpt

for term in ${terms[*]}
do
    echo -ne $term'\t' >> temp.rpt
done

echo 'Total' >> temp.rpt

for f in $files
do
    echo -ne "$f"'\t' >> temp.rpt
    i=0
    for term in ${terms[*]}
    do
	s=$(wc -l < "$f"_"$term".scn)
	echo -ne "$s"'\t' >> temp.rpt
	((i+=s))
    done
    echo $i >> temp.rpt
done

out=${3:Report}

cat temp.rpt | column -t > $out
rm temp.rpt
cat $out
