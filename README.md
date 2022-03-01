# 4-bit-universal-shift-resistor
# Table of contents
<ul>
    <li>Abstract</li>
    <li>Reference block diagram</li>
    <li>Crcuit details </li>
    <li>Tools used</li>
    <li>Design</li>
    <li>Symbol</li>
    <li>Test Bench</li>
    <li>Simulation</li>
    <li>Netlist</li>
    <li>Author</li>
    <li>Acknowledgement</li>
    <li>Reference</li>   
</ul>
    
# Abstract
<p>In digital electronics, shift registers are the sequential logic circuits which stores the data temporarily and transfers
data towards its output device for every clock pulse. In both serial
and parallel modes, they are capable of transferring/moving
data to the right/left. Based on input/output mode of operations,
they are categorised as serial-in-parallel-out shift register(SIPO),
serial-in-serial-out shift register(SISO), parallel-in-parallel-out
shift register(PIPO), parallel-in-serial-out shift register(PISO).</p>

# Reference block diagram
<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/Screenshot%20(32).png"  /> 

### Crcuit details 
<p>
    The mode of operation of the Universal Shift Register is
    chosen via the circuit choose pins. It moves the data to the
    left or right and saves it in the register. The Flip-Flop is wired
    with the CLK and Clear pins. M0, M1, M2, M3 are the parallel
    inputs, whereas F0, F1, F2, F3 are the parallel outputs. When
    the input pin is active HIGH, the Universal Shift Register
    loads/reads data in parallel. The input pin is directly connected
    to 41 MUX in this scenario. The global shift register moves
    the data when the input pin (mode) is active LOW. The input
    pin is connected to the 4x1 MUX via a NOT gate in this
    scenario. The universal shift register becomes a bi-directional
    shift register when the input pin (mode) is linked to GND
    (Ground).
</p>

# Tools used 

- Synopsys Custom Compiler:  The Synopsys Custom Compiler™ design environment is a modern solution for full-custom analog, custom digital, and mixed-signal IC design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. This tool was used to design the circuit on a transistor level.
- Synopsys Primewave:  PrimeWave™ Design Environment is a comprehensive and flexible environment for simulation setup and analysis of analog, RF, mixed-signal design, custom-digital and memory designs within the Synopsys Custom Design Platform. This tool helped in various types of simulations of the above designed circuit.
- Synopsys 28nm PDK:  The Synopsys 28nm Process Design Kit(PDK) was used in creation and simulation of the above designed circuit.

# Design &rarr;

### Inverter (NOT Gate)

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NOT_Design.png" />

### NAND Gate

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_Design.png" />

### MUX

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/MUX_Design.png" />

### D-Flip Flop

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/D_Flip_Flop_Design.png" />

### USR

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/USR_Design.png" />

# Symbol &rarr;

### Inverter (NOT Gate)

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NOT_Symbol.png" />

### NAND Gate

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_Symbol.png" />

### MUX

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/MUX_Symbol.png" />

### D-Flip Flop

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/D_Flip_Flop_Symbol.png" />

### USR

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/USR_Symbol.png" />

# Test Bench &rarr;

### Inverter (NOT Gate)

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NOT_TB.png" />

### NAND Gate

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_TB.png" />

### MUX

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/MUX_Design_TB.png" />

### D-Flip Flop

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/D_Flip_Flip_TB.png" />

### USR

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/USR_Design_TB.png" />

# Simulation &rarr;

### Inverter (NOT Gate)

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NOT_Waveform.png" />

### NAND Gate

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_Waveform.png" />

### MUX

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/MUX_Waveform.png" />

### D-Flip Flop

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/D_Flip_Flop_Waveform.png" />

### USR

<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/USR_Waveform.png" />

# Netlist
You can view the circuit netlists [here](https://github.com/Rashmi-kindal/4-bit-universal-shift-resistor/tree/main/Netlist)

# Result

Total transistor count = 108

# Author
<b> <a  target="_blank" href="https://www.linkedin.com/in/rashmi-ranjan-kindal-436744210/" > Rashmi Ranjan Kindal, B.Tech ECE, GIET University, Gunupur</a> </b>

# Acknowledgements

- [Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd.](https://www.linkedin.com/in/kunal-ghosh-vlsisystemdesign-com-28084836/)
- [Synopsys Inc](https://www.synopsys.com/)
- [IIT Hyderabad](https://iith.ac.in/)
- [Analog IC Design Hackathon](https://www.iith.ac.in/events/2022/02/15/Cloud-Based-Analog-IC-Design-Hackathon/)
- [Dr. Shasanka Sekhar Rout, GIET University](https://www.linkedin.com/in/dr-shasanka-sekhar-rout-3a572b111/)

# Reference
Rashid Anwar and Jobbin Abraham Ben, A Novel Design of Reversible
Universal Shift Register ,Vol.3,Issue.3,. IJCSMC, March 2014.

