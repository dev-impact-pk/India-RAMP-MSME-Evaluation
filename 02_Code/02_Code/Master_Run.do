/* PROJECT: India MSME Impact Evaluation (RAMP)
AUTHOR: Pooja
PURPOSE: Executes the full pipeline using separate folders.
*/

clear all
set more off

* 1. Run Data Audit and Cleaning 
* (Points to the 'Cleaning' folder)
do "Cleaning/01_Baseline_Audit.do"

* 2. Run Impact Evaluation Analysis
* (Points to the 'Analysis' folder)
do "05_Impact_Evaluation_Regressions.do"

display "******************************************"
display "PROJECT PIPELINE SUCCESSFULLY EXECUTED"
display "******************************************"
