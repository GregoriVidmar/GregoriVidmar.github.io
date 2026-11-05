
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
I used Vivado to test the stepper motor and make sure everything was working properly. The first test checked if the motor outputs followed the correct sequence when enabled. The outputs changed in the correct order, which was what I expected.

I also tested changing the direction input to make sure the motor could rotate in the opposite direction. I checked the enable input as well to make sure the motor stops when disabled. Everything worked as expected in the simulation.

<img width="1043" height="245" alt="image" src="https://github.com/user-attachments/assets/1768c5c2-9f3d-4497-a327-bb82eaf65d71" /> 

## 5. Hardware

Include and discuss:

- **Elaborated design:**
Shows how the clock divider and stepper motor FSM are connected together and how the inputs and outputs are connected.
<img width="1077" height="405" alt="image" src="https://github.com/user-attachments/assets/b44595bc-a952-4275-8407-574df5b14ae3" />
  
- **Synthesized design:** This shows how the VHDL design was converted into FPGA components. It shows the clock divider and FSM connected together, along with the inputs and motor outputs.
  <img width="1201" height="416" alt="image" src="https://github.com/user-attachments/assets/23ea360b-8674-4f62-893e-d86be36c8d9f" />

- **Implementation:** This shows the final layout of the design after it was implemented on the FPGA. It shows how the different components were placed and connected on the board.
  <img width="351" height="542" alt="image" src="https://github.com/user-attachments/assets/a1d5b951-7621-4c21-a5c7-0a33136ee9f7" />

- **Resource utilization:** The resource utilization report shows how much of the FPGA's resources were used by the design. It used 26 LUTs, 22 registers, 12 slices, and 8 I/O pins. Overall, the design uses a small amount of the available FPGA resources.
<img width="783" height="119" alt="image" src="https://github.com/user-attachments/assets/1b9b2505-4231-42ea-8de0-abc44cd647d2" />
  
- **Hardware testing:** Observed behaviour on the Basys3 board compared with expected functionality

The design was tested on the Basys 3 board to make sure the stepper motor worked correctly. One issue we had was that the board only supplied around 3V, while the motor needed about 5V to operate properly. We had to find an additional power source to provide enough voltage for the motor. After fixing this, the motor was able to run and rotate in both directions as expected.

## 6. Reflection
This project helped me understand how a stepper motor can be controlled using VHDL and an FSM. One of the main challenges was getting enough power for the motor because the Basys 3 board only supplied around 3V, while the motor needed about 5V. We had to find an additional power source to get it working properly. Overall, I learned more about clock dividers, FSMs, and connecting the design to actual hardware.
