/* This file is generated, do not edit! */
package numpy.f2py;
@:pythonImport("numpy.f2py") extern class F2py_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Build extension module from processing source with f2py.
		
		Parameters
		----------
		source : str
		    Fortran source of module / subroutine to compile
		modulename : str, optional
		    The name of the compiled python module
		extra_args : str, optional
		    Additional parameters passed to f2py
		verbose : bool, optional
		    Print f2py output to screen
		source_fn : str, optional
		    Name of the file where the fortran source is written.
		    The default is to use a temporary file with the extension
		    provided by the `extension` parameter
		extension : {'.f', '.f90'}, optional
		    Filename extension if `source_fn` is not provided.
		    The extension tells which fortran standard is used.
		    The default is `.f`, which implies F77 standard.
		
		    .. versionadded:: 1.11.0
	**/
	static public function compile(source:Dynamic, ?modulename:Dynamic, ?extra_args:Dynamic, ?verbose:Dynamic, ?source_fn:Dynamic, ?extension:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main():Dynamic;
	static public var print_function : Dynamic;
	/**
		Run f2py as if string.join(comline_list,' ') is used as a command line.
		In case of using -h flag, return None.
	**/
	static public function run_main(comline_list:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}