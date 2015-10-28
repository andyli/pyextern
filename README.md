# pyextern
[![TravisCI Build Status](https://travis-ci.org/andyli/pyextern.svg?branch=master)](https://travis-ci.org/andyli/pyextern) 
[![Requirements Status](https://requires.io/github/andyli/pyextern/requirements.svg?branch=master)](https://requires.io/github/andyli/pyextern/requirements/?branch=master)

Extern generator for the Haxe Python target.

Libraries and their versions of the generated externs can be found in [requirements.txt](requirements.txt).

## How to generate extern for a Python lib

 1. Install the lib, probably using `pip3`.
 2. Clone the source of the lib and checkout the tag of the installed version.
 3. Use Sphinx to build its documentation in xml format, by something like `sphinx-build -b xml source docs/xml`.
 4. `haxe build.hxml`
 5. `python3 Main.py path/to/docs/xml path/to/output_dir`