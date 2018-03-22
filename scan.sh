#!/bin/bash

declare -a terms
while read -r line
do
    terms+=($line)  
done < $1

for i in $(ls)
do
    for term in ${terms[*]}
    do
	grep $term -irn $i >> _log_"$i"_$term
    done
done

mkdir scanlogs
mv _log* scanlogs/

cd scanlogs
for i in $(ls)
do
    wc -l $i >> Report
done

cat Report
