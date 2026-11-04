
---
layout: default
title: Project 1
---

# Project 1: Car Seat Belt Warning System

## 1. Introduction

The purpose of this project was to make a car seat belt warning system using VHDL. The system checks if someone is sitting in the seat and if they have their seat belt on. If an adult is sitting in the seat without wearing their seatbelt, a beeper and red LED turn on to warn the driver.

## 2. Design

The design uses four inputs: door status, key status, seat pressure, and seat belt status. These inputs are used to decide when the warning light should turn on. I started by making a truth table to show the different input combinations and when the warning light should be activated. I then used a Karnaugh map to simplify the Boolean expression. After that, I used the simplified expression to build the logic circuit in VHDL. The warning light turns on when the key is in and the door is open, or when the key is in, someone is sitting in the seat, and the seat belt is not fastened.

Block diagram showing system architecture:
<img width="870" height="376" alt="image" src="https://github.com/user-attachments/assets/011ecd05-9e91-4887-9c7a-5938c06d0d83" />

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
