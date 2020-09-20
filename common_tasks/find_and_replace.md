## Find and Replace
To do find and replace in a log file or something this is what you can run instead of opening it up in visual studio code or something like that.

`grep "What you're looking for" your_file`

First grep looking for whatever it is that you're trying to match. Verify that it didn't catch something you don't want to change.

`sed -i 's/find/replace/g' file_to_change`

Note here that -i is in place, it'll clobber your stuff. If you want something less... permanent try this instead:

`sed 's/find/replace/g' input_file > output_file`