{smcl}
{* *! version 1.0 15 Jan 2019}{...}
{vieweralsosee "" "--"}{...}
{vieweralsosee "Help which" "help adopath"}{...}
{viewerjumpto "Syntax" "adowhere##syntax"}{...}
{viewerjumpto "Description" "adowhere##description"}{...}
{viewerjumpto "Examples" "adowhere##examples"}{...}
{title:Title}
{phang}
{bf:adowhere} {hline 2} list directory paths of ado-files.

{marker syntax}{...}
{title:Syntax}
{p 8 17 2}
{cmdab:adowhere}
{it:adoname}

{marker description}{...}
{title:Description}
{pstd}
{cmd:adowhere} adowhere is a Stata command that returns all the directory paths 
where a particular Stata command is located, for it could be the case that the user has 
the same ado-file placed in different locations. As long as the ado-file belongs to 
the paths over which Stata search for ado-files, adowhere will list the corresponding 
directory. It is a combination between {help which} and {help adopath} with the 
additional feature of listing the directory path in the order that Stata search for them 
and saving the results in the return list. 

Just type adowhere adoname, where adoname stands for the name of the ado-file. 

{marker examples}{...}
{title:Examples}

{pstd}
The {cmd:adowhere} command executes the {cmd:which} command and then 
displays all the paths for {cmd:filename.ado} and the 

        {stata adowhere test}
        C:\Program Files (x86)\Stata15\ado\base\t\test.ado
        *! version 2.3.4  14apr2016
        {cmd: Path 1:}    C:\Program Files (x86)\Stata15\ado\base/t

{pstd}
If we type {cmd:adowhere} {it:adoname}, where {it:adoname} is a built-in command
rather than an ado-file, Stata responds with

        {stata adowhere summarize}
        built-in command:  summarize


{title:Authors}

{p 4 4 4}R.Andres Castaneda, The World Bank{p_end}
{p 6 6 4}Email: {browse "acastanedaa@worldbank.org":  acastanedaa@worldbank.org}{p_end}
{p 6 6 4}GitHub:{browse "https://github.com/randrescastaneda": randrescastaneda }{p_end}

{p 4 4 4}Joao Pedro Wagner De Azevedo, The World Bank{p_end}
{p 6 6 4}Email: {browse "jazevedo@worldbank.org":  jazevedo@worldbank.org}{p_end}
{p 6 6 4}GitHub:{browse "https://github.com/jpazvd": jpazvd}{p_end}
