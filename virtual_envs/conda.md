## Conda!

### Managing Envs

The default environment for conda is base, but you shouldn't put stuff in there, that's a nono.

Create a new env: `conda create -n my_env python=2.whatever`

List envs: `conda info --envs`

Use an env: `conda activate my_env`

Go back to base: `conda activate`

### Managing Packages

Search for a package: `conda search beautifulsoup4`

Install package in currrent env: `conda install beautifulsoup4`

List packages: `conda list`

### Cheat Sheet
https://docs.conda.io/projects/conda/en/latest/user-guide/cheatsheet.html
