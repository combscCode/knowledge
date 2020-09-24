## Bash Tips and Tricks
### Operators
#### | Pipe

Takes the output from the first command and passes it as input to the next command.

Example: `grep "check=0" somefile.txt | wc -l`

This prints the number of lines in your file that match check=0.

#### > Redirect Output
The file specified after the > will be treated as output. This will clobber any existing file UNLESS you run `set noclobber`.

Example: `grep "captain falcon" somefile.txt > falcon_lines.txt`

This stores the output of your command to a file locally.

#### >> Append Output
Same as above but appends to the end of a file rather than overwriting.

#### < Redirect Input
Takes the file from the right and treats it as input.
***
Note: In general `foo < bar` is better than `cat bar | foo` because you're not starting up another process.

Note: In general this isn't used much since most commands will take files and treat them as input.
***
Example: `grep "captain falcon" < somefile.txt > falcon_lines.txt`

#### << Heredocs
This is really quite convenient I like these. You can basically write out your own file on the command line and it'll be treated like a redirect input from a file. This must be the last thing in your command unfortunately. Whatever token after the << is, it'll be how you end your document. If you add the - character then leading tabs are stripped to allow for here-docs within scripts to be indented properly. 



Example: 

			grep "captain falcon" > somwhere.txt <<EOF
			some stuff
			captain falcon
			EOF
			
#### >& or &> Duplicating File Descriptors
Bro this is so annoying to understand... PREFERRED VERSION IS &>

Format: `[n]&>word`

Word needs to be a file descriptor or expand to a file descriptor. If n is not there, assumed to be 1. Usually used as such: `2&>1`, which sends STDERR to STDOUT. AS A SPECIAL CASE: If n is ommitted and word is a file then standard output and standard input are redirected to the file. Wow that's really annoying.

Example: `gcc -c -g program.c 2&>1 >compiler.txt`

These are all the same: 

`gcc -c -g program.c 2&>1 >compiler.txt`

`gcc -c -g program.c &> compiler.txt`

`gcc -c -g program.c >& compiler.txt`

#### Weird stuff about redirects
Unary operators: this command is legal `> file1 < file2 cat` and means that we cat file2 into file1. This is because the operators < and > are just unary operators that are parsed by the shell before anything else is done. Please avoid writing scripts like this though bc it's confusing af. It performs the same command if you do `cat < file2 > file1` which at least looks a little nicer.
