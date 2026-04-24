/* PROJECT: India MSME Impact Evaluation (RAMP)
AUTHOR: Pooja
PURPOSE: Executes the full pipeline from raw data to final analysis.
*/

* 1. Run Data Audit and Cleaning
do "Cleaning/01_Baseline_Audit.do"

* 2. Run National Growth Analysis
do "Analysis/03_National_MSME_Analysis.do"

display "Pipeline successfully executed."
