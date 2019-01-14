**adowhere** is a Stata command that returns the directory paths where a particular Stata command is located. It could be the case that the user has the same ado-file placed in different locations. As long as the ado-file is belongs to the paths over which stata search for ado-files, **adowhere** will list the corresponding directory. It is a combination between **which** and **adopath** with the additional feature of listing the directory path in the order that Stata search for them. 

Just type **adowhere** *adoname*, where *adoname* stands for the name of the ado-file.

The idea of this ado-file was originated by @jpazvd
