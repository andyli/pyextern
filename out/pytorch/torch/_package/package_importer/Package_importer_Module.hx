/* This file is generated, do not edit! */
package torch._package.package_importer;
@:pythonImport("torch.package.package_importer") extern class Package_importer_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function GlobPattern(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _ERR_MSG : Dynamic;
	static public var _ERR_MSG_PREFIX : Dynamic;
	static public var _NEEDS_LOADING : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Calculate what __package__ should be.
		
		__package__ is not guaranteed to be defined or could be set to None
		to represent that its proper value is unknown.
	**/
	static public function _calc___package__(globals:Dynamic):Dynamic;
	/**
		Return a :class:`Directory` file structure representation created from a list of files.
		
		Args:
		    filename (str): The name given to the top-level directory that will be the
		        relative root for all file paths found in the file_list.
		
		    file_list (List[str]): List of files to add to the top-level directory.
		
		    include (Union[List[str], str]): An optional pattern that limits what is included from the file_list to
		        files whose name matches the pattern.
		
		    exclude (Union[List[str], str]): An optional pattern that excludes files whose name match the pattern.
		
		Returns:
		        :class:`Directory`: a :class:`Directory` file structure representation created from a list of files.
	**/
	static public function _create_directory_from_file_list(filename:Dynamic, file_list:Dynamic, ?include:Dynamic, ?exclude:Dynamic):Dynamic;
	static public function _get_restore_location(map_location:Dynamic):Dynamic;
	static public function _maybe_decode_ascii(bytes_str:Dynamic):Dynamic;
	static public function _normalize_line_endings(source:Dynamic):Dynamic;
	/**
		Normalize a path by ensuring it is a string.
		
		If the resulting string contains path separators, an exception is raised.
	**/
	static public function _normalize_path(path:Dynamic):Dynamic;
	/**
		Work out which source or compiled file an object was defined in.
	**/
	static public function _orig_getfile(object:Dynamic):Dynamic;
	static public var _package_imported_modules : Dynamic;
	/**
		Resolve a relative module name to an absolute one.
	**/
	static public function _resolve_name(name:Dynamic, _package:Dynamic, level:Dynamic):Dynamic;
	/**
		Verify arguments are "sane".
	**/
	static public function _sanity_check(name:Dynamic, _package:Dynamic, level:Dynamic):Dynamic;
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
		Note: Unlike PackageMangler.demangle, this version works on any
		mangled name, irrespective of which PackageMangler created it.
	**/
	static public function demangle(name:Dynamic):Dynamic;
	static public function patched_getfile(object:Dynamic):Dynamic;
}