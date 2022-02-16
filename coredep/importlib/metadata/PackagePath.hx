/* This file is generated, do not edit! */
package importlib.metadata;
@:pythonImport("importlib.metadata", "PackagePath") extern class PackagePath {
	/**
		Return the bytes representation of the path.  This is only
		recommended to use under Unix.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	public function __fspath__():Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Construct a PurePath from one or several strings and or existing
		PurePath objects.  The strings and path objects are combined so as
		to yield a canonicalized path, which is incorporated into the
		new PurePath object.
	**/
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rtruediv__(key:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return the string representation of the path, suitable for
		passing to system calls.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(key:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public var _cached_cparts : Dynamic;
	public var _cparts : Dynamic;
	public var _drv : Dynamic;
	static public var _flavour : Dynamic;
	static public function _format_parsed_parts(drv:Dynamic, root:Dynamic, parts:Dynamic):Dynamic;
	static public function _from_parsed_parts(drv:Dynamic, root:Dynamic, parts:Dynamic, ?init:Dynamic):Dynamic;
	static public function _from_parts(args:Dynamic, ?init:Dynamic):Dynamic;
	public var _hash : Dynamic;
	public function _init():Dynamic;
	public function _make_child(args:Dynamic):Dynamic;
	static public function _parse_args(args:Dynamic):Dynamic;
	public var _parts : Dynamic;
	public var _pparts : Dynamic;
	public var _root : Dynamic;
	public var _str : Dynamic;
	/**
		The concatenation of the drive and root, or ''.
	**/
	public var anchor : Dynamic;
	/**
		Return the string representation of the path with forward (/)
		slashes.
	**/
	public function as_posix():Dynamic;
	/**
		Return the path as a 'file' URI.
	**/
	public function as_uri():Dynamic;
	/**
		The drive prefix (letter or UNC path), if any.
	**/
	public var drive : Dynamic;
	/**
		True if the path is absolute (has both a root and, if applicable,
		a drive).
	**/
	public function is_absolute():Dynamic;
	/**
		Return True if the path contains one of the special names reserved
		by the system, if any.
	**/
	public function is_reserved():Dynamic;
	/**
		Combine this path with one or several arguments, and return a
		new path representing either a subpath (if all arguments are relative
		paths) or a totally different path (if one of the arguments is
		anchored).
	**/
	public function joinpath(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Return a path-like object for this path
	**/
	public function locate():Dynamic;
	/**
		Return True if this path matches the given pattern.
	**/
	public function match(path_pattern:Dynamic):Dynamic;
	/**
		The final path component, if any.
	**/
	public var name : Dynamic;
	/**
		The logical parent of the path.
	**/
	public var parent : Dynamic;
	/**
		A sequence of this path's logical parents.
	**/
	public var parents : Dynamic;
	/**
		An object providing sequence-like access to the
		components in the filesystem path.
	**/
	public var parts : Dynamic;
	public function read_binary():Dynamic;
	public function read_text(?encoding:Dynamic):Dynamic;
	/**
		Return the relative path to another path identified by the passed
		arguments.  If the operation is not possible (because this is not
		a subpath of the other path), raise ValueError.
	**/
	public function relative_to(?other:python.VarArgs<Dynamic>):Dynamic;
	/**
		The root of the path, if any.
	**/
	public var root : Dynamic;
	/**
		The final path component, minus its last suffix.
	**/
	public var stem : Dynamic;
	/**
		The final component's last suffix, if any.
		
		This includes the leading period. For example: '.txt'
	**/
	public var suffix : Dynamic;
	/**
		A list of the final component's suffixes, if any.
		
		These include the leading periods. For example: ['.tar', '.gz']
	**/
	public var suffixes : Dynamic;
	/**
		Return a new path with the file name changed.
	**/
	public function with_name(name:Dynamic):Dynamic;
	/**
		Return a new path with the file suffix changed.  If the path
		has no suffix, add given suffix.  If the given suffix is an empty
		string, remove the suffix from the path.
	**/
	public function with_suffix(suffix:Dynamic):Dynamic;
}