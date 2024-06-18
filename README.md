```markdown
# VHDL Digital Design Projects

Welcome to the collection of VHDL digital design projects. This repository contains 26 projects designed for various digital circuits and systems. All projects are implemented on the 144c5 Krypton board MAXV using Quartus software version 18.1.

## Table of Contents

- [Introduction](#introduction)
- [Projects List](#projects-list)
- [Hardware Requirements](#hardware-requirements)
- [Software Requirements](#software-requirements)
- [Setup Instructions](#setup-instructions)
- [Running the Projects](#running-the-projects)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Introduction

This repository contains a series of projects aimed at showcasing various digital design techniques using VHDL. Each project is designed to run on the 144c5 Krypton board MAXV and has been developed and tested using Quartus software version 18.1.

## Projects List

1. **Project 1: AND Gate Design**
2. **Project 2: ALU Design 1**
3. **Project 3: ALU Design 2**
4. **Project 4: BCD Adder (Structural)**
5. **Project 5: BCD Adder (Behavioral)**
6. **Project 6: Decoder 2X4**
7. **Project 7: Decoder 3X8**
8. **Project 8: Fibonacci (Behavioral)**
9. **Project 9: 4 Bit Adder**
10. **Project 10: 4-bit 4X1 Mux**
11. **Project 11: Full Adder using 3X8 Decoder**
12. **Project 12: Full Adder Design**
13. **Project 13: Half Adder Design**
14. **Project 14: MUX 2X1**
15. **Project 15: MUX 4X1**
16. **Project 16: OR Gate Design**
17. **Project 17: Prime Number Detector**
18. **Project 18: Sequence Detector Project 1**
19. **Project 19: Sequence Detector**
20. **Project 20: Sequence Generator**
21. **Project 21: Test 1 (Multiplier)**
22. **Project 22: Test 2 (Multiplier 3,5)**
23. **Project 23: Project (Traffic Light Detector, generator)**
24. **Project 24: Universal Shifter**
25. **Project 25: XOR Gate Design**

## Hardware Requirements

- **144c5 Krypton board MAXV**

## Software Requirements

- **Quartus software version 18.1**
- **ModelSim (optional for simulation)**

## Setup Instructions

1. **Install Quartus software version 18.1**:
   Download and install Quartus software version 18.1 from the [Intel FPGA website](https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/download.html).

2. **Clone the Repository**:
   Clone this repository to your local machine using the following command:
   ```bash
   git clone https://github.com/pr4jwal-19/IITB-DSD-Tasks.git
   ```

3. **Open Quartus**:
   Launch Quartus software and open the project file (.qpf) for the project you want to run.

## Running the Projects

1. **Open Project**:
   In Quartus, navigate to `File -> Open Project` and select the `.qpf` file of the project you wish to open.

2. **Compile the Project**:
   Click on `Processing -> Start Compilation`. Wait for the compilation process to complete.

3. **Program the FPGA**:
   Connect your 144c5 Krypton board MAXV to your computer. Click on `Tools -> Programmer`. Select the appropriate hardware and click `Start` to program the FPGA.

4. **Run the Design**:
   Once the FPGA is programmed, the design will start running on the board. Refer to the project documentation for specific instructions on testing and usage.

## Project Structure

Each project folder typically contains the following files:

- `project_name.qpf`: Quartus project file.
- `project_name.qsf`: Quartus settings file.
- `project_name.vhd`: VHDL source code.
- `project_name.sdc`: Synopsys Design Constraints file (if applicable).
- `project_name.sof`: SRAM Object File (generated after compilation).
- `README.md`: Project-specific documentation and instructions.

## Contributing

We welcome contributions from the community. If you have improvements or new projects to add, please fork the repository and submit a pull request. Ensure that your contributions are well-documented and tested.


```

This template provides a structured and informative README file. Adjust the content as necessary to better fit your specific projects and preferences.
