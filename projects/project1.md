
# Project 1: Car Seat Belt Warning System

## 1. Introduction

The purpose of this project was to make a car seat belt warning system using VHDL. The system checks if someone is sitting in the seat and if they have their seat belt on. If an adult is sitting in the seat without wearing their seatbelt, a beeper and red LED turn on to warn the driver.

## 2. Design

The design uses four inputs: door status, key status, seat pressure, and seat belt status. These inputs are used to decide when the warning light should turn on. I started by making a truth table to show the different input combinations and when the warning light should be activated. I then used a Karnaugh map to simplify the Boolean expression. After that, I used the simplified expression to build the logic circuit in VHDL. The warning light turns on when the key is in and the door is open, or when the key is in, someone is sitting in the seat, and the seat belt is not fastened.

Block diagram showing system architecture:
<img width="870" height="376" alt="image" src="https://github.com/user-attachments/assets/011ecd05-9e91-4887-9c7a-5938c06d0d83" />

## 3. Code

The project was created using VHDL in Vivado. I used three files to complete the project.
Design Source: The main VHDL file contains the logic that checks the four inputs and determines when the warning light should turn on.
Testbench: The testbench was used to test different input combinations and check if the warning light was working correctly.
Constraints: The XDC file assigns the inputs and output to the switches and LED pins on the Basys3 board.

Source Files:

- **Design Source:** [car_warnlight.vhd](https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/code/car_warnlight.vhd)
- **Testbench:** [car_warnlight_tb.vhd](https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/code/car_warnlight_tb.vhd)
- **Constraints (XDC):** [car_warnlight.xdc](https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/code/car_warnlight.xdc)

## 4. Simulation
The simulation was used to test different combinations of the four inputs and check if the warning light turned on at the correct times. The waveforms show how the inputs change over time and how the output responds. 
This helped verify that the VHDL logic was working as expected.
<img width="1027" height="218" alt="Simnulation behvarioal" src="https://github.com/user-attachments/assets/d19b56c0-511c-4cdc-8a16-a0894905165e" />


## 5. Hardware

**Elaborated Design:**
This schematic shows the logic gates used to build the warning light circuit. It uses AND and OR gates to combine the four inputs and decide when the warning light should turn on.
<img width="1119" height="462" alt="Elbroated Segin schmatic" src="https://github.com/user-attachments/assets/2f6f826a-120d-4da6-b16c-32912378dc6f" />
**Synthesized Design:**
After synthesizing the VHDL code in Vivado, the logic was converted into FPGA hardware components. The schematic shows the LUT4 and the input and output buffers that are used to implement the warning light circuit.
<img width="1164" height="473" alt="Synthesized Design Schematic" src="https://github.com/user-attachments/assets/f7cb8ace-d18c-4a8c-9388-9363c64e4f1b" /> 

**Resource Utilization:**
The Vivado utilization report shows that the design uses 1 Slice LUT and 1 Slice. It also uses 5 bonded IOBs for the four inputs and one output. This means the design uses very little of the available FPGA resources.
<img width="478" height="70" alt="Utilization Report" src="https://github.com/user-attachments/assets/882160ee-3a1e-48a3-b030-5ff3966642a8" /> 

**Implementation Results and Observations:**
The design was successfully synthesized in Vivado. The resource utilization report shows that the project uses 1 LUT, 1 slice, and 5 bonded IOBs. This shows that the design requires very few FPGA resources.
<img width="355" height="550" alt="Synthesized Design" src="https://github.com/user-attachments/assets/dc4eacfc-fef3-4395-83e6-42441888ea2f" /> 

**Hardware Testing:**
The project was physically tested on the Basys3 FPGA board. I used the switches to change the four inputs and observed the LED output. The warning light turned on when the required conditions were met and turned off when they were not. The physical results matched the expected behaviour.

## 6. Reflection

- I did not run into any major technical challenges during this project. Most of the work was learning how to use Vivado and understanding the different steps involved in creating and implementing a VHDL design.
- I learned how to work with Vivado, write VHDL code, create a testbench, run simulations, and implement my design on the Basys3 board.
- This project used concepts we learned in class, such as truth tables, Boolean expressions, Karnaugh maps, and logic gates. It helped me understand how these concepts are used to create a working digital circuit.
