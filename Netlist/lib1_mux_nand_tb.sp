*Custom Compiler Version S-2021.09
*Tue Mar  1 10:39:46 2022

*.SCALE METER
*.LDD
.GLOBAL gnd! vdd!
********************************************************************************
* Library          : lib1
* Cell             : 3_nand
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt 3_nand Ina Inb Inc Out vt_bulk_n_gnd! vt_bulk_p_vdd!
*.PININFO Ina:I Inb:I Inc:I Out:O vt_bulk_n_gnd!:B vt_bulk_p_vdd!:B
MM2 Out Ina net4 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM1 Out Inb net4 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM0 Out Inc net4 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM5 net16 Inc gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM4 net13 Inb net16 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM3 Out Ina net13 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
.ends 3_nand

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
* Cell             : mux_nand
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt mux_nand I0 I1 I2 I3 Out S0 S1 vt_bulk_n_gnd! vt_bulk_p_vdd!
*.PININFO I0:I I1:I I2:I I3:I Out:O S0:I S1:I vt_bulk_n_gnd!:B vt_bulk_p_vdd!:B
XI3 I3 S0 S1 net21 vt_bulk_n_gnd! vt_bulk_p_vdd! 3_nand
XI2 I2 S1 net27 net20 vt_bulk_n_gnd! vt_bulk_p_vdd! 3_nand
XI1 I1 S0 net4 net19 vt_bulk_n_gnd! vt_bulk_p_vdd! 3_nand
XI0 I0 net27 net4 net18 vt_bulk_n_gnd! vt_bulk_p_vdd! 3_nand
XI4 net21 Out net18 net19 net20 vt_bulk_n_gnd! vt_bulk_p_vdd! nand
XI8 S1 net4 inv
XI7 S0 net27 inv
.ends mux_nand

********************************************************************************
* Library          : lib1
* Cell             : mux_nand_tb
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt mux_nand_tb gnd! vdd!
*.PININFO gnd!:B vdd!:B
XI0 I0 I1 I2 I3 Out S0 S1 gnd! vdd! mux_nand
RR14 Out gnd! 100 $[RP]
.ends mux_nand_tb


