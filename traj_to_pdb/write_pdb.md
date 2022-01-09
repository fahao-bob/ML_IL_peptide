

```tcl
#!/bin/tcl!
# This script is used to generate the pdb of each mol in every snapshot
#                                     author: gy  
#                                     date:   2022-1-8 19:00:18  

### import structure and taj ###
mol new prod.gro
mol addfile prod_whole.xtc waitfor all
set frames [molinfo top get numframes]

### writepdb ###
for {set i 100} {${i} < ${frames} } {incr i} {
	molinfo top set frame ${i}
	put [molinfo top get frame]
	set mol_01 [atomselect top "index 0   to 51 "]
	set mol_02 [atomselect top "index 52  to 103"]
	set mol_03 [atomselect top "index 104 to 155"]
	set mol_04 [atomselect top "index 156 to 207"]
	set mol_05 [atomselect top "index 208 to 259"]
	
	${mol_01} writepdb ./pdb/${i}_mol_01.pdb
	${mol_02} writepdb ./pdb/${i}_mol_02.pdb
	${mol_03} writepdb ./pdb/${i}_mol_03.pdb
	${mol_04} writepdb ./pdb/${i}_mol_04.pdb
	${mol_05} writepdb ./pdb/${i}_mol_05.pdb
}
quit
```

