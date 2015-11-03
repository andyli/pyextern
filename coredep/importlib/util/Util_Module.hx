/* This file is generated, do not edit! */
package importlib.util;
@:pythonImport("importlib.util") extern class Util_Module {
	static public var MAGIC_NUMBER : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Find a module's loader.
	**/
	static public function _find_spec(name:Dynamic, path:Dynamic, ?target:Dynamic):Dynamic;
	/**
		Return the spec for the specified module.
		
		First, sys.modules is checked to see if the module was already imported. If
		so, then sys.modules[name].__spec__ is returned. If that happens to be
		set to None, then ValueError is raised. If the module is not in
		sys.modules, then sys.meta_path is searched for a suitable spec with the
		value of 'path' given to the finders. None is returned if no spec could
		be found.
		
		Dotted names do not have their parent packages implicitly imported. You will
		most likely need to explicitly import all parent packages in the proper
		order for a submodule to get the correct spec.
	**/
	static public function _find_spec_from_path(name:Dynamic, ?path:Dynamic):Dynamic;
	static public function _module_to_load(name:Dynamic):Dynamic;
	/**
		Resolve a relative module name to an absolute one.
	**/
	static public function _resolve_name(name:Dynamic, _package:Dynamic, level:Dynamic):Dynamic;
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
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Decode bytes representing source code and return the string.
		
		Universal newline support is used in the decoding.
	**/
	static public function decode_source(source_bytes:Dynamic):Dynamic;
	/**
		Return the spec for the specified module.
		
		First, sys.modules is checked to see if the module was already imported. If
		so, then sys.modules[name].__spec__ is returned. If that happens to be
		set to None, then ValueError is raised. If the module is not in
		sys.modules, then sys.meta_path is searched for a suitable spec with the
		value of 'path' given to the finders. None is returned if no spec could
		be found.
		
		If the name is for submodule (contains a dot), the parent module is
		automatically imported.
		
		The name and package arguments work the same as importlib.import_module().
		In other words, relative module names (with leading dots) work.
	**/
	static public function find_spec(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Decorator to handle selecting the proper module for loaders.
		
		The decorated function is passed the module to use instead of the module
		name. The module passed in to the function is either from sys.modules if
		it already exists or is a new module. If the module is new, then __name__
		is set the first argument to the method, __loader__ is set to self, and
		__package__ is set accordingly (if self.is_package() is defined) will be set
		before it is passed to the decorated function (if self.is_package() does
		not work for the module it will be set post-load).
		
		If an exception is raised and the decorator created the module it is
		subsequently removed from sys.modules.
		
		The decorator assumes that the decorated function takes the module name as
		the second argument.
	**/
	static public function module_for_loader(fxn:Dynamic):Dynamic;
	/**
		Create a module based on the provided spec.
	**/
	static public function module_from_spec(spec:Dynamic):Dynamic;
	/**
		Resolve a relative module name to an absolute one.
	**/
	static public function resolve_name(name:Dynamic, _package:Dynamic):Dynamic;
	/**
		Set __loader__ on the returned module.
		
		This function is deprecated.
	**/
	static public function set_loader(fxn:Dynamic):Dynamic;
	/**
		Set __package__ on the returned module.
		
		This function is deprecated.
	**/
	static public function set_package(fxn:Dynamic):Dynamic;
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
	/**
		Return a module spec based on various loader methods.
	**/
	static public function spec_from_loader(name:Dynamic, loader:Dynamic, ?origin:Dynamic, ?is_package:Dynamic):Dynamic;
}