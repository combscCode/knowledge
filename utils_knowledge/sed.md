## SED!!!!

Wow what a cool thing, here's a [reference chart](https://www.grymoire.com/Unix/SedChart.pdf)

It's the ultimate Stream EDitor.

### Basic Substitution

`sed 's/pattern to replace/pattern to put in/ > new`

You can pipe input into this and it'll output to new. This version will only replace the first instance of the pattern.

The patterns are regex.

If you wanna reference the matched pattern, you can use the & character.

`sed 's/[0-9][0-9]*/(&)/g'` If you're trying to put parens around all digits, this is how you'd match and do it.