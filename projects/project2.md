
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


Include a labelled block diagram showing the system architecture.

## 3. Code

Explain the key sections of your VHDL code and how they implement the required functionality.

Provide links to the relevant design files:

- **Design source:** [Link]
- **Testbench:** [Link]
- **Constraints (XDC):** [Link]

Include relevant code snippets where appropriate.

## 4. Simulation

Present simulation waveforms covering all required test scenarios.

For each scenario, explain:
- What was tested
- Expected behaviour
- Observed results
- Any discrepancies and their resolution

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
