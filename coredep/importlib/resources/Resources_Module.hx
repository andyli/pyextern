/* This file is generated, do not edit! */
package importlib.resources;
@:pythonImport("importlib.resources") extern class Resources_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Package(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Resource(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_location(_package:Dynamic):Dynamic;
	/**
		Take a package name or module object and return the module.
		
		If a name, the module is imported.  If the passed or imported module
		object is not a package, raise an exception.
	**/
	static public function _get_package(_package:Dynamic):Dynamic;
	static public function _get_resource_reader(_package:Dynamic):Dynamic;
	/**
		Normalize a path by ensuring it is a string.
		
		If the resulting string contains path separators, an exception is raised.
	**/
	static public function _normalize_path(path:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Return an iterable of entries in 'package'.
		
		Note that not all entries are resources.  Specifically, directories are
		not considered resources.  Use `is_resource()` on each entry returned here
		to check if it is a resource or not.
	**/
	static public function contents(_package:Dynamic):Dynamic;
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
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		True if 'name' is a resource inside 'package'.
		
		Directories are *not* resources.
	**/
	static public function is_resource(_package:Dynamic, name:Dynamic):Dynamic;
	/**
		Return a file-like object opened for binary reading of the resource.
	**/
	static public function open_binary(_package:Dynamic, resource:Dynamic):Dynamic;
	/**
		Return a file-like object opened for text reading of the resource.
	**/
	static public function open_text(_package:Dynamic, resource:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		A context manager providing a file path object to the resource.
		
		If the resource does not already exist on its own on the file system,
		a temporary file will be created. If the file was created, the file
		will be deleted upon exiting the context manager (no exception is
		raised if the file was deleted prior to the context manager
		exiting).
	**/
	static public function path(_package:Dynamic, resource:Dynamic):Dynamic;
	/**
		Return the binary contents of the resource.
	**/
	static public function read_binary(_package:Dynamic, resource:Dynamic):Dynamic;
	/**
		Return the decoded string of the resource.
		
		The decoding-related arguments have the same semantics as those of
		bytes.decode().
	**/
	static public function read_text(_package:Dynamic, resource:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
}