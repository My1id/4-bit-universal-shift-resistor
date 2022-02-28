# 4-bit-universal-shift-resistor
# Table of contents
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
<p>
    Synopsys Custom Compiler:  The Synopsys Custom Compiler™ design environment is a modern solution for full-custom analog, custom digital, and mixed-signal IC design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. This tool was used to design the circuit on a transistor level.
  Synopsys Primewave:  PrimeWave™ Design Environment is a comprehensive and flexible environment for simulation setup and analysis of analog, RF, mixed-signal design, custom-digital and memory designs within the Synopsys Custom Design Platform. This tool helped in various types of simulations of the above designed circuit.
  Synopsys 28nm PDK:  The Synopsys 28nm Process Design Kit(PDK) was used in creation and simulation of the above circuit design.
</p>
# Design
<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_Design.png" />

# Symbol
<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NAND_Symbol.png" />

# TB
<img src="https://github.com/My1id/4-bit-universal-shift-resistor/blob/main/Design/NOT_TB.png" />
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
