*Custom Compiler Version S-2021.09
*Tue Mar  1 10:39:57 2022

*.SCALE METER
*.LDD
.GLOBAL gnd!
********************************************************************************
* Library          : lib1
* Cell             : inv
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt inv In Out
*.PININFO In:I Out:O
MM0 Out In gnd! gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM1 Out In net19 net19 p105 w=0.1u l=0.03u nf=1 m=1
.ends inv

********************************************************************************
* Library          : lib1
* Cell             : inv_tb
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt inv_tb
XI0 In Out inv
CC5 Out gnd! 1f $[CP]
.ends inv_tb


