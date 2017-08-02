/* This file is generated, do not edit! */
package theano.sandbox.cuda.nvcc_compiler;
@:pythonImport("theano.sandbox.cuda.nvcc_compiler") extern class Nvcc_compiler_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var absolute_import : Dynamic;
	static public function add_standard_rpath(rpath:Dynamic):Dynamic;
	static public var config : Dynamic;
	static public function decode(x:Dynamic):Dynamic;
	static public function decode_with(x:Dynamic, encoding:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Dynamically load a .so, .pyd, .dll, or .py file.
		
		Parameters
		----------
		fullpath : str
		    A fully-qualified path do a compiled python module.
		suffix : str
		    A suffix to strip from the end of fullpath to get the
		    import name.
		
		Returns
		-------
		object
		    The dynamically loaded module (from __import__).
	**/
	static public function dlimport(fullpath:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Return the platform-dependent extension for compiled modules.
	**/
	static public function get_lib_extension():Dynamic;
	/**
		Return the charset that the user is likely using,
		according to the system configuration.
	**/
	static public function getpreferredencoding(?do_setlocale:Dynamic):Dynamic;
	/**
		Return the MD5 hash of a file.
	**/
	static public function hash_from_file(file_path:Dynamic):Dynamic;
	/**
		Return True iff the nvcc compiler is found.
	**/
	static public function is_nvcc_available():Dynamic;
	/**
		Return 32 for 32bit arch, 64 for 64bit arch.
		
		By "architecture", we mean the size of memory pointers (size_t in C),
		*not* the size of long int, as it can be different.
	**/
	static public function local_bitwidth():Dynamic;
	static public var nvcc_path : Dynamic;
	static public var nvcc_version : Dynamic;
	/**
		Calls subprocess_Popen, returning the output, error and exit code
		in a tuple.
	**/
	static public function output_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public var rpath_defaults : Dynamic;
	static public function std_include_dirs():Dynamic;
	static public function std_lib_dirs():Dynamic;
	static public function std_libs():Dynamic;
}