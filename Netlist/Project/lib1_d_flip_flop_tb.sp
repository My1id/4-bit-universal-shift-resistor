*Custom Compiler Version S-2021.09
*Tue Mar  1 10:40:33 2022

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
* Cell             : d_flip_flop_tb
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt d_flip_flop_tb gnd! vdd!
*.PININFO gnd!:B vdd!:B
XI0 In Out1 gnd! vdd! d_flip_flop
RR24 Out1 gnd! 100 $[RP]
.ends d_flip_flop_tb


