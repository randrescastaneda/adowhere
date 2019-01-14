/*==================================================
project:       return directories where ado-files are placed
Author:        Andres Castaneda 
Dependencies:  The World Bank
----------------------------------------------------
Creation Date:    13 Jan 2019 - 19:32:30
Modification Date:   
Do-file version:    01
References:          
Output:             
==================================================*/

/*==================================================
                        0: Program set up
==================================================*/
program define adowhere, rclass
syntax anything(name=adoname id="name of ado-file")
version 14


/*==================================================
              1: 
==================================================*/
local adoname datalib
cap which `adoname'
if (_rc) {
	noi disp in r "`adoname' is not located in any of your pre-defined ado paths."
	error 
}


/*==================================================
              2: 
==================================================*/

local paths `"`c(adopath)'"'
local paths : subinstr local paths ";" " ", all

local i = 0
foreach path of local paths {
	local ++i
	if ("`path'" == "STATA")    local path "`c(sysdir_stata)'"
	if ("`path'" == "BASE")     local path "`c(sysdir_base)'"
	if ("`path'" == "SITE")     local path "`c(sysdir_site)'"
	if ("`path'" == "PLUS")     local path "`c(sysdir_plus)'"
	if ("`path'" == "PERSONAL") local path "`c(sysdir_personal)'"
	if ("`path'" == "OLDPLACE") local path "`c(sysdir_oldplace)'"
	
	local file ""
	local file: dir "`path'" files "`adoname'.dta"
	if ("`file'" != "") {
		return local path_`i' = "`path'"
	}
}

end

exit
/* End of do-file */
alpha 
><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><><

Notes:
1.
2.
3.


Version Control:


