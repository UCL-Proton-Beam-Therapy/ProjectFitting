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
3. [input.txt](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/ReadTxtFile/input.txt): Text editor file containing of 5 lines integer read as char.

Note: 

The files above are synthesizeable. However, it is not plausible to render integer value as a single character which has to be processed further to be converted to integer. 

It was found later that FPGA does not support external files during synthesis which resulting in synthesis failed error. Although, by simply changing the variable ``` variable line_content ``` and ``` variable str ``` type to integer, there is no need to use ``` character'pos()``` for conversion. Although it will not synthesizeable but it will come handy in validating the behavioral of a function defined for curve fitting. 
   


