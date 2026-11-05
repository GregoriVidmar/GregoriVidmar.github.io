
# Project 3: Stepper Motor Control
## 1. Introduction

The goal of this project was to make a stepper motor controller using VHDL on the Basys 3 board. The motor can rotate clockwise or counterclockwise depending on the direction input. I used an FSM to control the order of the motor outputs and a clock divider to slow down the clock so the motor would move at a slower speed. The main goal was to get the motor working in both directions using the FPGA board.

## 2. Design

The design uses a clock divider and an FSM to control the stepper motor. The clock divider slows down the clock, while the FSM controls the order of the motor outputs. The direction input determines whether the motor rotates clockwise or counterclockwise, and the enable input controls when the motor runs.

<img width="336" height="177" alt="image" src="https://github.com/user-attachments/assets/b9dd9843-7f20-41ac-b9a7-44689ad7910e" />
<img width="525" height="170" alt="image" src="https://github.com/user-attachments/assets/21cf6536-57ba-470d-881f-9570df96e883" />


## 3. Code

The design uses a clock divider and a finite state machine (FSM) to control the stepper motor. The clock divider slows down the clock so the motor moves at a slower speed. The FSM controls the order of the motor outputs. The direction input determines whether the motor rotates clockwise or counterclockwise, and the enable input controls when the motor runs. The top module connects everything together.

- **Design source:**
https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project3/Stepper_Controller.vhd
https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project3/stepper_motor_FSM.vhd
https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project3/clk_div.vhd
  
- **Testbench:**
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project3/steppermotorFSM_tb.vhd
  
- **Constraints (XDC):** 
https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project3/stepper_m.xdc

## 4. Simulation

Present simulation waveforms covering all required test scenarios.








## 5. Hardware

Include and discuss:

- **Elaborated design:** Schematic and explanation
- **Synthesized design:** Schematic and explanation
- **Implementation:** Implementation results and observations
- **Resource utilization:** FPGA resource usage
- **Hardware testing:** Observed behaviour on the Basys3 board compared with expected functionality

Include screenshots, tables, or photographs where appropriate.

## 6. Reflection

Discuss:

- Technical challenges encountered and how they were resolved
- What you learned from the project
- How the work relates to digital design concepts and theory covered in the course
