/* This file is generated, do not edit! */
package numpy.f2py;
@:pythonImport("numpy.f2py") extern class F2py_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public function __getattr__(attr:Dynamic):Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		
		full_output : bool, optional
		    If True, return a `subprocess.CompletedProcess` containing
		    the stdout and stderr of the compile process, instead of just
		    the status code.
		
		    .. versionadded:: 1.20.0
		
		
		Returns
		-------
		result : int or `subprocess.CompletedProcess`
		    0 on success, or a `subprocess.CompletedProcess` if
		    ``full_output=True``
		
		Examples
		--------
		.. literalinclude:: ../../source/f2py/code/results/compile_session.dat
		    :language: python
	**/
	static public function compile(source:Dynamic, ?modulename:Dynamic, ?extra_args:Dynamic, ?verbose:Dynamic, ?source_fn:Dynamic, ?extension:Dynamic, ?full_output:Dynamic):Dynamic;
	/**
		Return the directory that contains the fortranobject.c and .h files.
		
		.. note::
		
		    This function is not needed when building an extension with
		    `numpy.distutils` directly from ``.f`` and/or ``.pyf`` files
		    in one go.
		
		Python extension modules built with f2py-generated code need to use
		``fortranobject.c`` as a source file, and include the ``fortranobject.h``
		header. This function can be used to obtain the directory containing
		both of these files.
		
		Returns
		-------
		include_path : str
		    Absolute path to the directory containing ``fortranobject.c`` and
		    ``fortranobject.h``.
		
		Notes
		-----
		.. versionadded:: 1.22.0
		
		Unless the build system you are using has specific support for f2py,
		building a Python extension using a ``.pyf`` signature file is a two-step
		process. For a module ``mymod``:
		
		    - Step 1: run ``python -m numpy.f2py mymod.pyf --quiet``. This
		      generates ``_mymodmodule.c`` and (if needed)
		      ``_fblas-f2pywrappers.f`` files next to ``mymod.pyf``.
		    - Step 2: build your Python extension module. This requires the
		      following source files:
		
		          - ``_mymodmodule.c``
		          - ``_mymod-f2pywrappers.f`` (if it was generated in step 1)
		          - ``fortranobject.c``
		
		See Also
		--------
		numpy.get_include : function that returns the numpy include directory
	**/
	static public function get_include():String;
	static public function main():Dynamic;
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
		.. literalinclude:: ../../source/f2py/code/results/run_main_session.dat
		    :language: python
	**/
	static public function run_main(comline_list:Dynamic):Dynamic;
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?durations:Dynamic, ?tests:Dynamic):Dynamic;
}