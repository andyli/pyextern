/* This file is generated, do not edit! */
package numpy.distutils.fcompiler;
@:pythonImport("numpy.distutils.fcompiler.intel") extern class Intel {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var compilers : Dynamic;
	static public var division : Dynamic;
	static public function dummy_fortran_file():Dynamic;
	static public function intel_version_match(type:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Simple matching of version numbers, for use in CCompiler and FCompiler.
		
		Parameters
		----------
		pat : str, optional
		    A regular expression matching version numbers.
		    Default is ``r'[-.\d]+'``.
		ignore : str, optional
		    A regular expression matching patterns to skip.
		    Default is ``''``, in which case nothing is skipped.
		start : str, optional
		    A regular expression matching the start of where to start looking
		    for version numbers.
		    Default is ``''``, in which case searching is started at the
		    beginning of the version string given to `matcher`.
		
		Returns
		-------
		matcher : callable
		    A function that is appropriate to use as the ``.version_match``
		    attribute of a `CCompiler` class. `matcher` takes a single parameter,
		    a version string.
	**/
	static public function simple_version_match(?pat:Dynamic, ?ignore:Dynamic, ?start:Dynamic):Dynamic;
}