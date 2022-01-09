#!/bin/bash

### name: pdb_to_gjf_v1.sh
### This script is used to convert pdb to gjf 

set -e


for file in `ls *.pdb`
do	
	### read the file name using basename
	pdb_name=`basename ${file} .pdb` 
	
	### Delete all blank lines, delete the first and last line 
	sed '/^\s*$/d' ${pdb_name}.pdb | sed '1d'|sed '$d' > temp01.txt
	awk '{print $7,$8,$9}' temp01.txt > temp02.txt
	paste -d "  " atom_name.txt temp02.txt >> temp03.txt
	
	
### add title
cat >> temp04.txt << _EOF_
%chk=${pdb_name}.chk
%mem=5GB
%nprocshared = 10
# 6-31g(d,p) m062x pop=NPA

Title card Required

0 1
_EOF_
	
	### output
	cat temp04.txt temp03.txt >> ${pdb_name}.gjf
	rm -r temp??.txt
done


mv *.gjf ./gjf/




