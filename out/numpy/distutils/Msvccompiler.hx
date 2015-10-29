/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.msvccompiler") extern class Msvccompiler {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function convert_mbcs(s:Dynamic):Dynamic;
	static public function gen_lib_options(compiler:Dynamic, library_dirs:Dynamic, runtime_library_dirs:Dynamic, libraries:Dynamic):Dynamic;
	static public function gen_preprocess_options(macros:Dynamic, include_dirs:Dynamic):Dynamic;
	/**
		Return the processor architecture.
		
		Possible results are "Intel", "Itanium", or "AMD64".
	**/
	static public function get_build_architecture():Dynamic;
	/**
		Return the version of MSVC that was used to build Python.
		
		For Python 2.3 and up, the version number is included in
		sys.version.  For earlier versions, assume the compiler is MSVC 6.
	**/
	static public function get_build_version():Dynamic;
	/**
		Return a list of normalized paths with duplicates removed.
		
		The current order of paths is maintained.
	**/
	static public function normalize_and_reduce_paths(paths:Dynamic):Dynamic;
	static public var platform_bits : Dynamic;
	/**
		Return list of registry keys.
	**/
	static public function read_keys(base:Dynamic, key:Dynamic):Dynamic;
	/**
		Return dict of registry keys and values.
		
		All names are converted to lowercase.
	**/
	static public function read_values(base:Dynamic, key:Dynamic):Dynamic;
}