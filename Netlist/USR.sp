*Custom Compiler Version S-2021.09
*Tue Mar  1 10:36:35 2022

*.SCALE METER
*.LDD
.GLOBAL gnd! vdd!
********************************************************************************
* Library          : lib1
* Cell             : d_flip_flop
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt d_flip_flop d q1 vt_bulk_n_gnd! vt_bulk_p_vdd!
*.PININFO d:I q1:O vt_bulk_n_gnd!:B vt_bulk_p_vdd!:B
MM21 net61 d net83 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM7 net63 q2 net82 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM6 net62 q2 net78 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM5 q2 q1 net5 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM4 q1 net62 net12 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM3 net12 d net79 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM2 net12 net86 net79 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM1 net5 d net77 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM0 net5 net86 net77 vt_bulk_p_vdd! p105 w=0.1u l=0.03u nf=1 m=1
MM20 net61 d gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM19 q1 net63 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM18 net44 net86 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM17 q1 d net44 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM16 q2 q1 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM15 net34 net86 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM14 q2 d net34 vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM9 net63 q2 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
MM8 net62 q2 gnd! vt_bulk_n_gnd! n105 w=0.1u l=0.03u nf=1 m=1
.ends d_flip_flop

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
* Library          : lib2
* Cell             : Design
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt Design A0 A1 A2 A3 I0 I1 I2 I3 S0 S1 SL SR vt_bulk_n_gnd! vt_bulk_p_vdd!
*.PININFO A0:I A1:I A2:I A3:I I0:I I1:I I2:I I3:I S0:I S1:I SL:I SR:I
*.PININFO vt_bulk_n_gnd!:B vt_bulk_p_vdd!:B
XI21 net111 A0 vt_bulk_n_gnd! vt_bulk_p_vdd! d_flip_flop
XI11 net109 A1 vt_bulk_n_gnd! vt_bulk_p_vdd! d_flip_flop
XI10 net107 A2 vt_bulk_n_gnd! vt_bulk_p_vdd! d_flip_flop
XI9 net113 A3 vt_bulk_n_gnd! vt_bulk_p_vdd! d_flip_flop
XI16 I3 A2 SR A3 net113 S0 S1 vt_bulk_n_gnd! vt_bulk_p_vdd! mux_nand
XI15 I0 SL A1 A0 net111 S0 S1 vt_bulk_n_gnd! vt_bulk_p_vdd! mux_nand
XI14 I1 A0 A2 A1 net109 S0 S1 vt_bulk_n_gnd! vt_bulk_p_vdd! mux_nand
XI13 I2 A1 A3 A2 net107 S0 S1 vt_bulk_n_gnd! vt_bulk_p_vdd! mux_nand
.ends Design

********************************************************************************
* Library          : lib2
* Cell             : Design_tb
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt Design_tb gnd! vdd!
*.PININFO gnd!:B vdd!:B
XI0 A0 A1 A2 A3 I0 I1 I2 I3 S0 S1 SL SR gnd! vdd! Design
RR12 A3 gnd! 100 $[RP]
RR11 A2 gnd! 100 $[RP]
RR10 A1 gnd! 100 $[RP]
RR9 A0 gnd! 100 $[RP]
.ends Design_tb


