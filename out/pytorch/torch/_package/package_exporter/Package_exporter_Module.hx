/* This file is generated, do not edit! */
package torch._package.package_exporter;
@:pythonImport("torch.package.package_exporter") extern class Package_exporter_Module {
	static public function ActionHook(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _DISALLOWED_MODULES : Dynamic;
	static public var _MOCK_IMPL : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _gate_torchscript_serialization : Dynamic;
	/**
		Normalize a path by ensuring it is a string.
		
		If the resulting string contains path separators, an exception is raised.
	**/
	static public function _normalize_path(path:Dynamic):Dynamic;
	static public function _read_file(filename:Dynamic):Dynamic;
	static public function create_pickler(data_buf:Dynamic, importer:Dynamic):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Note: Unlike PackageMangler.demangle, this version works on any
		mangled name, irrespective of which PackageMangler created it.
	**/
	static public function demangle(name:Dynamic):Dynamic;
	static public function find_files_source_depends_on(src:Dynamic, _package:Dynamic):Dynamic;
	static public function is_mangled(name:Dynamic):Dynamic;
	static public function is_stdlib_module(module:Dynamic):Dynamic;
	static public function location_tag(storage:Dynamic):Dynamic;
	static public function normalize_storage_type(storage_type:Dynamic):Dynamic;
	static public var sys_importer : Dynamic;
}