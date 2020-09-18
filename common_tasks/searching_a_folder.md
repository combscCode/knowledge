## Searching a Folder
Problem: I'm trying to match some string in some folder.

Example: I'm looking for a specific certificate in a folder with a bunch of certs.

Solutions: 

* `grep -r "some_cert" /path/to/cert/root`
* `grep -rl "some_cert" /path/to/cert/root`
  * If you want just the file names
