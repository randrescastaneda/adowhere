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
cap which `adoname'
if (_rc) {
	noi disp in r "ado `adoname' is not located in any path over which Stata " _n /* 
	 */ "searches for ado-files. See {help adopath} for help"
	error 
}


/*==================================================
              2: 
==================================================*/

local paths `"`c(adopath)'"'
local paths : subinstr local paths ";" " ", all
local fl = substr("`adoname'", 1, 1)

local i = 0
foreach path of local paths {
	if ("`path'" == "STATA")    local path "`c(sysdir_stata)'`fl'"
	if ("`path'" == "BASE")     local path "`c(sysdir_base)'`fl'"
	if ("`path'" == "SITE")     local path "`c(sysdir_site)'`fl'"
	if ("`path'" == "PLUS")     local path "`c(sysdir_plus)'`fl'"
	if ("`path'" == "PERSONAL") local path "`c(sysdir_personal)'`fl'"
	if ("`path'" == "OLDPLACE") local path "`c(sysdir_oldplace)'`fl'"
	
	local file ""
	cap local file: dir "`path'" files "`adoname'.ado"
	if (_rc) continue
	if (`"`file'"' != "") {
		local ++i
		noi disp in y "Path `i':" _col(12) in w "`path'"
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


