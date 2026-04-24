* RAMP PROJECT: Raw Data Audit & Cleaning (Telangana Districts)
* -----------------------------------------------------------

* Load the messy survey data
import delimited "../../01_Data/Raw/TS_MSME-Raw_Survey_Data.csv", clear

* 1. Standardize District Names (Fixes "HYDERABAD" vs "hyderabad")
replace district = trim(itrim(lower(district)))

* 2. Handle Numeric Noise (Remove '$', 'NULL', 'Unknown')
destring revenue_monthly, replace ignore("$ Unknown NULL .")

* 3. Logic Check: Flag 'Speeders' (Surveys < 10 mins)
gen is_speeder = (duration_min < 10)
label var is_speeder "Potential data quality issue: survey too fast"

* 4. Deduplication (Fixes duplicate entries for the same Firm ID)
duplicates drop firm_id, force

* 5. Save the clean version for analysis
save "../../01_Data/Clean_Survey_Data.dta", replace
