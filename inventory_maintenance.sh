#!/bin/bash
source ~/.bash_profile
rd nodes list -p Test_Proj --outformat "%hostname" > 2_tmp

while IFS= read -r line
do
cat 2_tmp | grep "$line"
if [ $? -eq 1 ]; then
 echo "$line" >> ~/tempfile
fi

done < ~/baseline
