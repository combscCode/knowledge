## Bash Tips and Tricks
### Operators
#### | Pipe

Takes the output from the first command and passes it as input to the next command.

Example: `grep "check=0" somefile.txt | wc -l`

This prints the number of lines in your file that match check=0.

#### > Redirect Output
Takes the output from the first command and writes to the file specified. This will clobber any existing file UNLESS you run `set noclobber`.

Example: `grep "captain falcon" somefile.txt > falcon_lines.txt`

This stores the output of your command to a file locally.

#### >> Append Output
Same as above but appends to the end of a file rather than overwriting.

