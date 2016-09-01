# pyextern
[![TravisCI Build Status](https://travis-ci.org/andyli/pyextern.svg?branch=master)](https://travis-ci.org/andyli/pyextern) 
[![Requirements Status](https://requires.io/github/andyli/pyextern/requirements.svg?branch=master)](https://requires.io/github/andyli/pyextern/requirements/?branch=master)

Extern generator for the Haxe Python target.

Libraries and their versions of the generated externs can be found in [requirements.txt](requirements.txt).



## How to generate extern for a Python lib

 1. Install the lib, probably using `pip3`.
 2. `haxelib install compiletime`
 3. `haxelib install selecthxml`
 4. `haxe build.hxml`
 5. `pip3 install pandas`
 6. `python3 Main.py moduleName path/to/output_dir`



##Current externs

**[docutils](https://pypi.python.org/pypi/docutils)**
> Docutils is a modular system for processing documentation into useful formats, such as HTML, XML, and LaTeX. For input Docutils supports reStructuredText, an easy-to-read, what-you-see-is-what-you-get plaintext markup syntax.

**[importlib](https://docs.python.org/3/library/importlib.html)**
>The purpose of the importlib package is two-fold. One is to provide the implementation of the import statement (and thus, by extension, the __import__() function) in Python source code. This provides an implementation of import which is portable to any Python interpreter. This also provides an implementation which is easier to comprehend than one implemented in a programming language other than Python.

>Two, the components to implement import are exposed in this package, making it easier for users to create their own custom objects (known generically as an importer) to participate in the import process.

**[inspect](https://docs.python.org/3/library/inspect.html)**
>The inspect module provides several useful functions to help get information about live objects such as modules, classes, methods, functions, tracebacks, frame objects, and code objects. For example, it can help you examine the contents of a class, retrieve the source code of a method, extract and format the argument list for a function, or get all the information you need to display a detailed traceback.

>There are four main kinds of services provided by this module: type checking, getting source code, inspecting classes and functions, and examining the interpreter stack.

**[matplotlib](http://matplotlib.org/)**	
> matplotlib is a python 2D plotting library which produces publication quality figures in a variety of hardcopy formats and interactive environments across platforms. matplotlib can be used in python scripts, the python and ipython shell (ala MATLAB®* or Mathematica®†), web application servers, and six graphical user interface toolkits.

**[numpy](http://www.numpy.org/)**
>NumPy is the fundamental package for scientific computing with Python.

**[pandas](http://pandas.pydata.org/)**
> Python Data Analysis Library

>pandas is an open source, BSD-licensed library providing high-performance, easy-to-use data structures and data analysis tools for the Python programming language.

**[pkgutil](https://docs.python.org/3/library/pkgutil.html)**
> This module provides utilities for the import system, in particular package support.

**[scipy](https://www.scipy.org/)**
> SciPy (pronounced “Sigh Pie”) is a Python-based ecosystem of open-source software for mathematics, science, and engineering.

**[seaborn](https://stanford.edu/~mwaskom/software/seaborn/)**
> Seaborn is a Python visualization library based on matplotlib. It provides a high-level interface for drawing attractive statistical graphics.

**[textwrap](https://docs.python.org/3/library/textwrap.html)**
> The textwrap module provides two convenience functions, wrap() and fill(), as well as TextWrapper, the class that does all the work, and a utility function dedent(). If you’re just wrapping or filling one or two text strings, the convenience functions should be good enough; otherwise, you should use an instance of TextWrapper for efficiency.

