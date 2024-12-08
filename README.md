# Project Fitting

This repository will present the step-by-step necessary components needed to perform curve fitting within FPGA. 
This purely VHDL and simulation based FPGA coding to present important components is being described separately. 

Contains:
1. Linear Fitting using Least Squares Method (Linear Regression folder)
    1. [MainFitting.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/LinearRegression/MainFitting.vhd): main file source for its functionality comprising 3 inputs points.
    2. [PerfectFit.vhd](https://github.com/UCL-Proton-Beam-Therapy/ProjectFitting/blob/main/LinearRegression/PerfectFit.vhd): simulation file to simulate and analyse the behaviouur of the main file. 
3. Read Data File.
