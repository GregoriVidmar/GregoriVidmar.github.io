
# Project 2: Event Counter

## 1. Introduction

The goal of this project was to make an event counter using VHDL on the Basys 3 board. Every time the button is pressed, the counter increases by one and counts from 0 to F before starting over. The current count is shown on the LEDs and seven-segment display. The main goal was to connect all the different VHDL modules together and get everything working properly on the FPGA board.

## 2. Design

The design uses a clock, a button debounce circuit, a counter, and a seven-segment display. The button debounce makes sure that each button press is only counted once. The counter increases by one each time the button is pressed, and the display and LEDs show the current count.
<img width="939" height="490" alt="image" src="https://github.com/user-attachments/assets/9d5d15a9-3e24-4a73-8140-9b005aa6b7be" />

## 3. Code

The design uses a few different VHDL modules that work together to make the counter function properly. The button debounce module makes sure button presses are detected correctly. The counter keeps track of the count and the seven-segment decoder converts the count into a value that can be displayed. The main display module connects everything together and controls what appears in the displays and LEDS.

Provide links to the relevant design files:

- **Design source:**
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project2/button_debounce.vhd
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/project2/count_display.vhd
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/hex_7seg.vhd
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/modMcounter.vhd
  
- **Testbench:**
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/count_display_tb.vhd
  https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/modMcounter_tb.vhd
  
- **Constraints (XDC):** [Link]
https://github.com/GregoriVidmar/GregoriVidmar.github.io/blob/main/projects/lab7.xdc

## 4. Simulation
Vivado was used to test the counter and display to make sure they work correctly.
The counter was tested to make sure it counts correctly and resets after reaching its limit. It was expected to follow the correct counting sequence as shown above.
<img width="1143" height="255" alt="image" src="https://github.com/user-attachments/assets/5863006f-3493-4c57-9ba0-82169b47b984" /> 
The simulation tested the button input and how the counter responds to each press. The expected result was for the counter to increase with each press and update the LEDs and seven-segment display. The waveform shows the button signal changing and the counter increasing as expected. No major discrepancies were observed.

## 5. Hardware
- **Elaborated design:**
<img width="1170" height="402" alt="image" src="https://github.com/user-attachments/assets/1aae577b-fa4d-46f9-b88e-c5ad8a6af720" />
Shows how the different VHDL modules are connected.

- **Synthesized design:**

  <img width="802" height="565" alt="image" src="https://github.com/user-attachments/assets/fc26f527-2e32-4aff-98cb-b1b436efd089" />

Shows how the VHDL design was converted into FPGA components.

- **Implementation:**
<img width="835" height="564" alt="image" src="https://github.com/user-attachments/assets/e0844c98-ad59-4efb-bf0c-28d00d50b2b3" />

Shows the design after FPGA implementation, including the connections to the physical FPGA pins.
  
- **Resource utilization:** FPGA resource usage
<img width="753" height="123" alt="image" src="https://github.com/user-attachments/assets/078fa7ce-c21a-4bb7-b3c0-bdfc9c5d24bd" />

The resource utilization report shows how much of the FPGA's resources were used by the design. It used 33 LUTs, 28 registers, 18 slices, and 18 I/O pins. Overall, the design uses a small amount of the available FPGA resources.
  
- **Hardware testing:** Observed behaviour on the Basys3 board compared with expected functionality
The design was tested on the Basys 3 board using the buttons, LEDs, and seven-segment display. When the button was pressed, the counter increased and the LEDs and display updated with the new count. Everything worked as expected and matched the simulation results.


## 6. Reflection
This project helped me better understand how different VHDL modules work together to create a complete design. I learned more about using Vivado, working with FPGA components, and testing my design through simulation and hardware. One of the main challenges was making sure the XDC file was set up correctly for the button and that the button was connected to the correct FPGA pin. Overall, the project helped improve my understanding of digital design and FPGA programming.
