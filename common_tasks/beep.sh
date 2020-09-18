#!/bin/bash
#
cat <<EOF
Lots of times I have long running commands and I don't want to have to keep checking back in to see if it's done. I like to be able to browse reddit with my brain completely turned off. That's why I have the following command in my bashrc.

function beep() {
	printf '\x07'
	date
}

When I wanna run a long command I just do

command; beep

and beep let's me know when it finishes and also prints the time it finished just in case I was interested in that (although I should probably be using something else if the time it took to run is important to me).

here it is in action:
EOF

printf '\x07'
date
