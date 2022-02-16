/* This file is generated, do not edit! */
package pandas.io.pytables;
@:pythonImport("pandas.io.pytables", "SeriesFixed") extern class SeriesFixed {
	static public var __annotations__ : Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(parent:Dynamic, group:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		return a pretty representation of myself
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _alias_to_class(alias:Dynamic):Dynamic;
	public function _class_to_alias(cls:Dynamic):Dynamic;
	public var _complevel : Dynamic;
	public var _filters : Dynamic;
	public var _fletcher32 : Dynamic;
	public function _get_index_factory(attrs:Dynamic):Dynamic;
	public var _handle : Dynamic;
	static public var _index_type_map : Dynamic;
	static public var _reverse_index_map : Dynamic;
	static public var attributes : Dynamic;
	public var attrs : Dynamic;
	public function copy():Dynamic;
	/**
		support fully deleting the node in its entirety (only) - where
		specification must be None
	**/
	public function delete(?where:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	static public var format_type : Dynamic;
	/**
		retrieve our attributes
	**/
	public function get_attrs():Dynamic;
	/**
		infer the axes of my storer
		return a boolean indicating if we have a valid storer or not
	**/
	public function infer_axes():Dynamic;
	public var is_exists : Dynamic;
	public var is_old_version : Dynamic;
	static public var is_table : Dynamic;
	public var nrows : Dynamic;
	static public var pandas_kind : Dynamic;
	public var pandas_type : Dynamic;
	public var pathname : Dynamic;
	public function read(?where:Dynamic, ?columns:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		read an array for the specified node (off of group
	**/
	public function read_array(key:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public function read_index(key:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public function read_index_node(node:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	public function read_multi_index(key:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		set our object attributes
	**/
	public function set_attrs():Dynamic;
	/**
		set my pandas type & version
	**/
	public function set_object_info():Dynamic;
	public var shape : Dynamic;
	/**
		return my storable
	**/
	public var storable : Dynamic;
	/**
		validate against an existing storable
	**/
	public function validate(other:Dynamic):Dynamic;
	/**
		raise if any keywords are passed which are not-None
	**/
	public function validate_read(columns:Dynamic, where:Dynamic):Dynamic;
	/**
		are we trying to operate on an old version?
	**/
	public function validate_version(?where:Dynamic):Dynamic;
	/**
		compute and set our version
	**/
	public var version : Dynamic;
	public function write(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function write_array(key:Dynamic, obj:Dynamic, ?items:Dynamic):Dynamic;
	/**
		write a 0-len array
	**/
	public function write_array_empty(key:Dynamic, value:Dynamic):Dynamic;
	public function write_index(key:Dynamic, index:Dynamic):Dynamic;
	public function write_multi_index(key:Dynamic, index:Dynamic):Dynamic;
}