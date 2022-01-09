# convert pdb to gjf

date: 2022-1-8 19:00:30

update：2022-1-8 19:19:25

## Dependencies

Required:

-  `prod.gro`
- `prod_whole.xtc`
-  `write_pdb.tcl`

## Usage

- Create a folder with an arbitrary name including `prod.gro`, `prod_whole.xtc` and  corresponding `write_pdb.tcl`

- Run  `write_pdb.tcl` 

  ```tcl
  vmd -e write_pdb.tcl
  ```

## Notes

- The output of this script are structure files (.pdb) **containing one molecule** 
- If needed, the **parameters to select snapshot and define moleclue** should be revisted in `write_pdb.tcl` 
- Here, we take **5 ACE_PHE_PHE_NAC** in a vacume box as an example.
