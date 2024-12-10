# Project Fitting

This repository will present the step-by-step necessary components needed to perform curve fitting within FPGA. 
This purely VHDL and simulation based FPGA coding to present important components is being described separately. 

Contains:
### 1. Linear Fitting using Least Squares Method 
Within the  LinearRegression folder, 2 files can be find:
1. [MainFitting.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/LinearRegression/MainFitting.vhd): Main file source for its functionality comprising 3 inputs points.
2. [PerfectFit.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/LinearRegression/PerfectFit.vhd): Simulation file to simulate and analyse the behaviouur of the main file. 

### 2. Read Data File (ReadTxtFile Folder)
Within the ReadTxtFile folder, 3 files can be find:
1. [ReadFile.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/ReadTxtFile/ReadFiles.vhd): Main file source for its functionality reading line data as character.
2. [ReadData.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/ReadTxtFile/ReadData.vhd): Simulation to validate the output is obtained as expected.
   


