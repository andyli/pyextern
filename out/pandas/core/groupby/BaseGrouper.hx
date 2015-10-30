/* This file is generated, do not edit! */
package pandas.core.groupby;
@:pythonImport("pandas.core.groupby", "BaseGrouper") extern class BaseGrouper {
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
	public function ___init__(axis:Dynamic, groupings:Dynamic, ?sort:Dynamic, ?group_keys:Dynamic):Dynamic;
	public function __iter__():Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _aggregate(result:Dynamic, counts:Dynamic, values:Dynamic, agg_func:Dynamic, is_numeric:Dynamic):Dynamic;
	public function _aggregate_series_fast(obj:Dynamic, func:Dynamic):Dynamic;
	public function _aggregate_series_pure_python(obj:Dynamic, func:Dynamic):Dynamic;
	static public var _cython_arity : Dynamic;
	static public var _cython_functions : Dynamic;
	public function _get_aggregate_function(how:Dynamic, values:Dynamic):Dynamic;
	public function _get_compressed_labels():Dynamic;
	public function _get_group_keys():Dynamic;
	public function _get_splitter(data:Dynamic, ?axis:Dynamic):Dynamic;
	static public var _max_groupsize : Dynamic;
	static public var _name_functions : Dynamic;
	public function agg_series(obj:Dynamic, func:Dynamic):Dynamic;
	public function aggregate(values:Dynamic, how:Dynamic, ?axis:Dynamic):Dynamic;
	public function apply(f:Dynamic, data:Dynamic, ?axis:Dynamic):Dynamic;
	public function get_group_levels():Dynamic;
	/**
		Groupby iterator
		
		Returns
		-------
		Generator yielding sequence of (name, subsetted object)
		for each group
	**/
	public function get_iterator(data:Dynamic, ?axis:Dynamic):Dynamic;
	static public var group_info : Dynamic;
	static public var groups : Dynamic;
	static public var indices : Dynamic;
	static public var is_monotonic : Dynamic;
	public var labels : Dynamic;
	public var levels : Dynamic;
	public var names : Dynamic;
	static public var ngroups : Dynamic;
	public var nkeys : Dynamic;
	public var recons_labels : Dynamic;
	static public var result_index : Dynamic;
	public var shape : Dynamic;
	/**
		Compute group sizes
	**/
	public function size():Dynamic;
}