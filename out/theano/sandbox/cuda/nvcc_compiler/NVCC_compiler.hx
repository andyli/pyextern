/* This file is generated, do not edit! */
package theano.sandbox.cuda.nvcc_compiler;
@:pythonImport("theano.sandbox.cuda.nvcc_compiler", "NVCC_compiler") extern class NVCC_compiler {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Try to compile (and run) a test program.
		
		This is useful in various occasions, to check if libraries
		or compilers are behaving as expected.
		
		If try_run is True, the src_code is assumed to be executable,
		and will be run.
		
		If try_run is False, returns the compilation status.
		If try_run is True, returns a (compile_status, run_status) pair.
		If output is there, we append the stdout and stderr to the output.
		
		Compile arguments from the Compiler's compile_args() method are added
		if comp_args=True.
	**/
	static public function _try_compile_tmp(src_code:Dynamic, ?tmp_prefix:Dynamic, ?flags:Dynamic, ?try_run:Dynamic, ?output:Dynamic, ?compiler:Dynamic, ?comp_args:Dynamic):Dynamic;
	/**
		Try to compile a dummy file with these flags.
		
		Returns True if compilation was successful, False if there
		were errors.
		
		Compile arguments from the Compiler's compile_args() method are added
		if comp_args=True.
	**/
	static public function _try_flags(flag_list:Dynamic, ?preambule:Dynamic, ?body:Dynamic, ?try_run:Dynamic, ?output:Dynamic, ?compiler:Dynamic, ?comp_args:Dynamic):Dynamic;
	/**
		This args will be received by compile_str() in the preargs paramter.
		They will also be included in the "hard" part of the key module.
	**/
	static public function compile_args():Dynamic;
	/**
		Parameters
		----------
		module_name: str
		     This has been embedded in the src_code.
		src_code
		    A complete c or c++ source listing for the module.
		location
		    A pre-existing filesystem directory where the
		    cpp file and .so will be written.
		include_dirs
		    A list of include directory names (each gets prefixed with -I).
		lib_dirs
		    A list of library search path directory names (each gets
		    prefixed with -L).
		libs
		    A list of libraries to link with (each gets prefixed with -l).
		preargs
		    A list of extra compiler arguments.
		rpaths
		    List of rpaths to use with Xlinker. Defaults to `rpath_defaults`.
		py_module
		    If False, compile to a shared library, but
		    do not import as a Python module.
		hide_symbols
		    If True (the default), hide all symbols from the library symbol
		    table unless explicitely exported.
		
		Returns
		-------
		module
		    Dynamically-imported python module of the compiled code.
		    (unless py_module is False, in that case returns None.)
		
		Notes
		-----
		On Windows 7 with nvcc 3.1 we need to compile in the real directory
		Otherwise nvcc never finish.
	**/
	static public function compile_str(module_name:Dynamic, src_code:Dynamic, ?location:Dynamic, ?include_dirs:Dynamic, ?lib_dirs:Dynamic, ?libs:Dynamic, ?preargs:Dynamic, ?rpaths:Dynamic, ?py_module:Dynamic, ?hide_symbols:Dynamic):Dynamic;
	static public var supports_amdlibm : Dynamic;
	static public function try_compile_tmp(src_code:Dynamic, ?tmp_prefix:Dynamic, ?flags:Dynamic, ?try_run:Dynamic, ?output:Dynamic, ?comp_args:Dynamic):Dynamic;
	static public function try_flags(flag_list:Dynamic, ?preambule:Dynamic, ?body:Dynamic, ?try_run:Dynamic, ?output:Dynamic, ?comp_args:Dynamic):Dynamic;
	static public function version_str():Dynamic;
}