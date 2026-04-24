* RAMP PROJECT: Impact Evaluation of Technical Training
* ---------------------------------------------------

* Load the survey data
import delimited "../../01_Data/Raw/RAMP_Impact_Evaluation_Survey.csv", clear

* 1. Calculate the 'Difference' in revenue
gen rev_growth = revenue_post - revenue_pre

* 2. T-Test: Simple check if Treatment is different from Control
ttest rev_growth, by(treatment_group)

* 3. Regression: Measuring the effect of training while controlling for firm age
regress rev_growth treatment_group years_in_business

* 4. Save results for the report
outreg2 using "../../03_Outputs/Tables/Impact_Results.doc", replace
