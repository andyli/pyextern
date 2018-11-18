/* This file is generated, do not edit! */
package theano.gof.cmodule;
@:pythonImport("theano.gof.cmodule") extern class Cmodule_Module {
	static public var METH_NOARGS : Dynamic;
	static public var METH_VARARGS : Dynamic;
	static public var PY3 : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _logger : Dynamic;
	static public var _module_cache : Dynamic;
	/**
		On NFS filesystems, it is impossible to delete a directory with open
		files in it.
		
		So instead, some commands in this file will respond to a
		failed rmtree() by touching a 'delete.me' file.  This file is a message
		for a future process to try deleting the directory.
		
		Parameters:
		----------
		parent
		    Root node to start deleting from
		ignore_nocleanup
		    Delete the tree if flag is TRUE
		level
		    Python Logging level. Set to "DEBUG" by default
		ignore_if_missing
		    If set to True, just return without any issue if parent is NULL
	**/
	static public function _rmtree(parent:Dynamic, ?ignore_nocleanup:Dynamic, ?msg:Dynamic, ?level:Dynamic, ?ignore_if_missing:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Byte literal
	**/
	static public function b(s:Dynamic):Dynamic;
	static public var config : Dynamic;
	/**
		Debug counter to know how often we go through some piece of code.
		
		This is a utility function one may use when debugging.
		
		Example
		-------
		debug_counter('I want to know how often I run this line')
	**/
	static public function debug_counter(name:Dynamic, ?every:Dynamic):Dynamic;
	static public function decode(x:Dynamic):Dynamic;
	static public function decode_iter(itr:Dynamic):Dynamic;
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
		Return a directory where you should put your .so file for dlimport
		to be able to load it, given a basedir which should normally be
		config.compiledir.
	**/
	static public function dlimport_workdir(basedir:Dynamic):Dynamic;
	/**
		Recursively flatten tuple, list and set in a list.
	**/
	static public function flatten(a:Dynamic):Dynamic;
	/**
		Detect if the g++ version used is the llvm one or not.
		
		It don't support all g++ parameters even if it support many of them.
	**/
	static public function gcc_llvm():Dynamic;
	static public function gcc_version():Dynamic;
	static public var gcc_version_str : Dynamic;
	/**
		Return the platform-dependent GCC argument for shared libraries.
	**/
	static public function get_gcc_shared_library_arg():Dynamic;
	/**
		Return the platform-dependent extension for compiled modules.
	**/
	static public function get_lib_extension():Dynamic;
	/**
		Create a new module_cache with the (k, v) pairs in this dictionary
		
		Parameters
		----------
		init_args
		    If not None, the (k, v) pairs in this dictionary will be forwarded to
		    the ModuleCache constructor as keyword arguments.
	**/
	static public function get_module_cache(dirname:Dynamic, ?init_args:Dynamic):Dynamic;
	/**
		Return a SHA256 hash that uniquely identifies a module.
		
		This hash takes into account:
		    1. The C source code of the module (`src_code`).
		    2. The version part of the key.
		    3. The compiler options defined in `key` (command line parameters and
		       libraries to link against).
		    4. The NumPy ABI version.
	**/
	static public function get_module_hash(src_code:Dynamic, key:Dynamic):Dynamic;
	/**
		Return a tuple containing a subset of `key`, to be used to find equal keys.
		
		This tuple should only contain objects whose __eq__ and __hash__ methods
		can be trusted (currently: the version part of the key, as well as the
		SHA256 hash of the config options).
		It is used to reduce the amount of key comparisons one has to go through
		in order to find broken keys (i.e. keys with bad implementations of __eq__
		or __hash__).
	**/
	static public function get_safe_part(key:Dynamic):Dynamic;
	static public function hash_from_code(msg:Dynamic):Dynamic;
	static public function icc_module_compile_str(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var import_time : Dynamic;
	/**
		Return True iff both paths can be considered to point to the same module.
		
		This is the case if and only if at least one of these conditions holds:
		    - They are equal.
		    - Their real paths are equal.
		    - They share the same temporary work directory and module file name.
	**/
	static public function is_same_entry(entry_1:Dynamic, entry_2:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the number of seconds since the epoch of the last access of a
		given file.
	**/
	static public function last_access_time(path:Dynamic):Dynamic;
	/**
		Return 32 for 32bit arch, 64 for 64bit arch.
		
		By "architecture", we mean the size of memory pointers (size_t in C),
		*not* the size of long int, as it can be different.
	**/
	static public function local_bitwidth():Dynamic;
	/**
		Scan the contents of a cache directory and return full path of the
		dynamic lib in it.
	**/
	static public function module_name_from_dir(dirname:Dynamic, ?err:Dynamic, ?files:Dynamic):Dynamic;
	/**
		Calls subprocess_Popen, returning the output, error and exit code
		in a tuple.
	**/
	static public function output_subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	static public function std_include_dirs():Dynamic;
	static public function std_lib_dirs():Dynamic;
	static public function std_lib_dirs_and_libs():Dynamic;
	static public function std_libs():Dynamic;
	static public var string_types : Dynamic;
	/**
		Utility function to work around windows behavior that open windows.
		
		:see: call_subprocess_Popen and output_subprocess_Popen
	**/
	static public function subprocess_Popen(command:Dynamic, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Try to compile and run a simple C snippet using current flags.
		Return: compilation success (True/False), execution success (True/False)
	**/
	static public function try_march_flag(flags:Dynamic):Dynamic;
}