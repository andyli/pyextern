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
		Build extension module from a Fortran 77 source string with f2py.
		
		Parameters
		----------
		source : str or bytes
		    Fortran source of module / subroutine to compile
		
		    .. versionchanged:: 1.16.0
		       Accept str as well as bytes
		
		modulename : str, optional
		    The name of the compiled python module
		extra_args : str or list, optional
		    Additional parameters passed to f2py
		
		    .. versionchanged:: 1.16.0
		        A list of args may also be provided.
		
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
		
		Returns
		-------
		result : int
		    0 on success
		
		Examples
		--------
		.. include:: compile_session.dat
		    :literal:
	**/
	static public function compile(source:Dynamic, ?modulename:Dynamic, ?extra_args:Dynamic, ?verbose:Dynamic, ?source_fn:Dynamic, ?extension:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function main():Dynamic;
	static public var print_function : Dynamic;
	/**
		Equivalent to running::
		
		    f2py <args>
		
		where ``<args>=string.join(<list>,' ')``, but in Python.  Unless
		``-h`` is used, this function returns a dictionary containing
		information on generated modules and their dependencies on source
		files.  For example, the command ``f2py -m scalar scalar.f`` can be
		executed from Python as follows
		
		You cannot build extension modules with this function, that is,
		using ``-c`` is not allowed. Use ``compile`` command instead
		
		Examples
		--------
		.. include:: run_main_session.dat
		    :literal:
	**/
	static public function run_main(comline_list:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}