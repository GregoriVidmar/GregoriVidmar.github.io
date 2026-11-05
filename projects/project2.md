
---
layout: default
title: Project 2
---

# Project 2: Event Counter

## 1. Introduction

The purpose of this project was to make an event counter using VHDL on the Basys3 board. The counter goes from 0 to F and displays the count on a seven-segment display and the LEDs. I used a clock divider to slow down the clock so the counter would change at a rate that is easier to see. The goal was to connect the different VHDL components together and get the counter working on the board.


## 2. Design

The design uses a clock, a button debounce circuit, a counter, and a seven-segment display. The button debounce makes sure that each button press is only counted once. The counter increases by one each time the button is pressed, and the display and LEDs show the current count.
<img width="939" height="490" alt="image" src="https://github.com/user-attachments/assets/9d5d15a9-3e24-4a73-8140-9b005aa6b7be" />

## 3. Code

The design uses a few different VHDL modules that work together to make the counter function properly. The button debounce module makes sure button presses are detected correctly. The counter keeps track of the count and the seven segment decoder converts the count into a value that can be displayed. The main display module connects everything together and controls what appears in the displays and LEDS.

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

Present simulation waveforms covering all required test scenarios.

Vivado was used to test the counter and display to make sure they work correctly.

Test 1: 
The counter was tested to make sure it counts correctly and resets after reaching its limit. It was expected to follow the correct counting sequence as shown above.

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
