/* This file is generated, do not edit! */
package importlib._bootstrap_external;
@:pythonImport("importlib._bootstrap_external") extern class _Bootstrap_external_Module {
	static public var BYTECODE_SUFFIXES : Dynamic;
	static public var DEBUG_BYTECODE_SUFFIXES : Dynamic;
	static public var EXTENSION_SUFFIXES : Dynamic;
	static public var MAGIC_NUMBER : Dynamic;
	static public var OPTIMIZED_BYTECODE_SUFFIXES : Dynamic;
	static public var SOURCE_SUFFIXES : Dynamic;
	static public var _CASE_INSENSITIVE_PLATFORMS : Dynamic;
	static public var _OPT : Dynamic;
	static public var _POPULATE : Dynamic;
	static public var _PYCACHE : Dynamic;
	static public var _RAW_MAGIC_NUMBER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __warningregistry__ : Dynamic;
	/**
		Calculate the mode permissions for a bytecode file.
	**/
	static public function _calc_mode(path:Dynamic):Dynamic;
	/**
		Decorator to verify that the module being requested matches the one the
		loader can handle.
		
		The first argument (self) must define _name which the second argument is
		compared against. If the comparison fails then ImportError is raised.
	**/
	static public function _check_name(method:Dynamic):Dynamic;
	/**
		Compile a code object into bytecode for writing out to a byte-compiled
		file.
	**/
	static public function _code_to_bytecode(code:Dynamic, ?mtime:Dynamic, ?source_size:Dynamic):Dynamic;
	/**
		Compile bytecode as returned by _validate_bytecode_header().
	**/
	static public function _compile_bytecode(data:Dynamic, ?name:Dynamic, ?bytecode_path:Dynamic, ?source_path:Dynamic):Dynamic;
	/**
		Try to find a loader for the specified module by delegating to
		self.find_loader().
		
		This method is deprecated in favor of finder.find_spec().
	**/
	static public function _find_module_shim(self:Dynamic, fullname:Dynamic):Dynamic;
	static public function _fix_up_module(ns:Dynamic, name:Dynamic, pathname:Dynamic, ?cpathname:Dynamic):Dynamic;
	static public function _get_cached(filename:Dynamic):Dynamic;
	/**
		Convert a bytecode file path to a source path (if possible).
		
		This function exists purely for backwards-compatibility for
		PyImport_ExecCodeModuleWithFilenames() in the C API.
	**/
	static public function _get_sourcefile(bytecode_path:Dynamic):Dynamic;
	/**
		Returns a list of file-based module loaders.
		
		Each item is a tuple (loader, suffixes).
	**/
	static public function _get_supported_file_loaders():Dynamic;
	/**
		Install the path-based import components.
	**/
	static public function _install(_bootstrap_module:Dynamic):Dynamic;
	static public function _make_relax_case():Dynamic;
	/**
		Test whether the path is the specified mode type.
	**/
	static public function _path_is_mode_type(path:Dynamic, mode:Dynamic):Dynamic;
	/**
		Replacement for os.path.isdir.
	**/
	static public function _path_isdir(path:Dynamic):Dynamic;
	/**
		Replacement for os.path.isfile.
	**/
	static public function _path_isfile(path:Dynamic):Dynamic;
	/**
		Replacement for os.path.join().
	**/
	static public function _path_join(?path_parts:python.VarArgs<Dynamic>):Dynamic;
	/**
		Replacement for os.path.split().
	**/
	static public function _path_split(path:Dynamic):Dynamic;
	/**
		Stat the path.
		
		Made a separate function to make it easier to override in experiments
		(e.g. cache stat results).
	**/
	static public function _path_stat(path:Dynamic):Dynamic;
	/**
		Convert 4 bytes in little-endian to an integer.
	**/
	static public function _r_long(int_bytes:Dynamic):Dynamic;
	/**
		True if filenames must be checked case-insensitively.
	**/
	static public function _relax_case():Dynamic;
	/**
		Setup the path-based importers for importlib by importing needed
		built-in modules and injecting them into the global namespace.
		
		Other components are extracted from the core bootstrap module.
	**/
	static public function _setup(_bootstrap_module:Dynamic):Dynamic;
	/**
		Validate the header of the passed-in bytecode against source_stats (if
		given) and returning the bytecode that can be compiled by compile().
		
		All other arguments are used to enhance error reporting.
		
		ImportError is raised when the magic number is incorrect or the bytecode is
		found to be stale. EOFError is raised when the data is found to be
		truncated.
	**/
	static public function _validate_bytecode_header(data:Dynamic, ?source_stats:Dynamic, ?name:Dynamic, ?path:Dynamic):Dynamic;
	/**
		Print the message to stderr if -v/PYTHONVERBOSE is turned on.
	**/
	static public function _verbose_message(message:Dynamic, ?args:python.VarArgs<Dynamic>, ?verbosity:Dynamic):Dynamic;
	/**
		Convert a 32-bit integer to little-endian.
	**/
	static public function _w_long(x:Dynamic):Dynamic;
	/**
		Best-effort function to write data to a path atomically.
		Be prepared to handle a FileExistsError if concurrent writing of the
		temporary file is attempted.
	**/
	static public function _write_atomic(path:Dynamic, data:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Given the path to a .py file, return the path to its .pyc file.
		
		The .py file does not need to exist; this simply returns the path to the
		.pyc file calculated as if the .py file were imported.
		
		The 'optimization' parameter controls the presumed optimization level of
		the bytecode file. If 'optimization' is not None, the string representation
		of the argument is taken and verified to be alphanumeric (else ValueError
		is raised).
		
		The debug_override parameter is deprecated. If debug_override is not None,
		a True value is the same as setting 'optimization' to the empty string
		while a False value is equivalent to setting 'optimization' to '1'.
		
		If sys.implementation.cache_tag is None then NotImplementedError is raised.
	**/
	static public function cache_from_source(path:Dynamic, ?debug_override:Dynamic, ?optimization:Dynamic):Dynamic;
	/**
		Decode bytes representing source code and return the string.
		
		Universal newline support is used in the decoding.
	**/
	static public function decode_source(source_bytes:Dynamic):Dynamic;
	static public var path_sep : Dynamic;
	static public var path_separators : Dynamic;
	/**
		Given the path to a .pyc. file, return the path to its .py file.
		
		The .pyc file does not need to exist; this simply returns the path to
		the .py file calculated to correspond to the .pyc file.  If path does
		not conform to PEP 3147/488 format, ValueError will be raised. If
		sys.implementation.cache_tag is None then NotImplementedError is raised.
	**/
	static public function source_from_cache(path:Dynamic):Dynamic;
	/**
		Return a module spec based on a file location.
		
		To indicate that the module is a package, set
		submodule_search_locations to a list of directory paths.  An
		empty list is sufficient, though its not otherwise useful to the
		import system.
		
		The loader must take a spec as its only __init__() arg.
	**/
	static public function spec_from_file_location(name:Dynamic, ?location:Dynamic, ?loader:Dynamic, ?submodule_search_locations:Dynamic):Dynamic;
}