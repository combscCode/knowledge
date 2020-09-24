## Declaring Variables

### Export!
If you are setting variables in a script you're probably going to want to use export. Without export, your variables won't be exported
when you call a script from the command line. If you want a variable to live outside your shell, use export! However, if it's just a temp
variable for you and you alone, don't use export.


### Output of command into a variable
`SOME_VARIABLE=$(some command you want to run)`

whatever the command outputs on stdout will be assigned to SOME\_VARIABLE
