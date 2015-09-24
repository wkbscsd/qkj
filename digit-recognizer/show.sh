#!/bin/bash

while read line
do
	echo $line | awk -F, '{printf "\n"$1"\n"; for(i=(NF-783);i<=NF;i++) { $i=$i+0; j=j+1; if($i<=0){printf "o",$i} else { printf ".",$i} if(j==28) {printf "\n" ;j=j-28} } }'
done
