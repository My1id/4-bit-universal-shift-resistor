*Custom Compiler Version S-2021.09
*Tue Mar  1 10:39:33 2022

*.SCALE METER
*.LDD
.GLOBAL gnd! vdd!
********************************************************************************
* Library          : lib1
* Cell             : nand
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt nand Ind Out ina inb inc vt_bulk_n_gnd! vt_bulk_p_vdd!
*.PININFO Ind:I Out:O ina:I inb:I inc:I vt_bulk_n_gnd!:B vt_bulk_p_vdd!:B
MM9 Out ina net49 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM6 Out inb net49 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM5 Out inc net49 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM0 Out Ind net49 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM10 net38 Ind gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM4 Out ina net36 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM2 net37 inc net38 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM1 net36 inb net37 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
.ends nand

********************************************************************************
* Library          : lib1
* Cell             : nand_tb
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt nand_tb gnd! vdd!
*.PININFO gnd!:B vdd!:B
XI0 Ind Out Ina Inb Inc gnd! vdd! nand
CC11 Out gnd! 1f $[CP]
.ends nand_tb


