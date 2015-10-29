/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.build_clib") extern class Build_clib {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _i : Dynamic;
	static public var _l : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return True if all items in lst are string objects. 
	**/
	static public function all_strings(lst:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return four lists of filenames containing
		C, C++, Fortran, and Fortran 90 module sources,
		respectively.
	**/
	static public function filter_sources(sources:Dynamic):Dynamic;
	static public function get_lib_source_files(lib:Dynamic):Dynamic;
	static public function get_numpy_include_dirs():Dynamic;
	/**
		Return a list of paths matching a pathname pattern.
		
		The pattern may contain simple shell-style wildcards a la
		fnmatch. However, unlike fnmatch, filenames starting with a
		dot are special cases that are not matched by '*' and '?'
		patterns.
		
		If recursive is true, the pattern '**' will match any files and
		zero or more directories and subdirectories.
	**/
	static public function glob(pathname:Dynamic, ?recursive:Dynamic):Dynamic;
	/**
		Return True if sources contains C++ files 
	**/
	static public function has_cxx_sources(sources:Dynamic):Dynamic;
	/**
		Return True if sources contains Fortran files 
	**/
	static public function has_f_sources(sources:Dynamic):Dynamic;
	static public function is_sequence(seq:Dynamic):Dynamic;
	/**
		Return true if 'target' is out-of-date with respect to any file
		listed in 'sources'.  In other words, if 'target' exists and is newer
		than every file in 'sources', return false; otherwise return true.
		'missing' controls what we do when a source file is missing; the
		default ("error") is to blow up with an OSError from inside 'stat()';
		if it is "ignore", we silently drop any missing source files; if it is
		"newer", any missing source files make us assume that 'target' is
		out-of-date (this is handy in "dry-run" mode: it'll make you pretend to
		carry out commands that wouldn't work because inputs are missing, but
		that doesn't matter because you're not actually going to run the
		commands).
	**/
	static public function newer_group(sources:Dynamic, target:Dynamic, ?missing:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}