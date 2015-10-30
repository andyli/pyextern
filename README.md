# pyextern
[![TravisCI Build Status](https://travis-ci.org/andyli/pyextern.svg?branch=master)](https://travis-ci.org/andyli/pyextern) 
[![Requirements Status](https://requires.io/github/andyli/pyextern/requirements.svg?branch=master)](https://requires.io/github/andyli/pyextern/requirements/?branch=master)

Extern generator for the Haxe Python target.

Libraries and their versions of the generated externs can be found in [requirements.txt](requirements.txt).

## How to generate extern for a Python lib

 1. Install the lib, probably using `pip3`.
 2. `haxe build.hxml`
 3. `python3 Main.py moduleName path/to/output_dir`
