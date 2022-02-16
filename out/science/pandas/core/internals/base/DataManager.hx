/* This file is generated, do not edit! */
package pandas.core.internals.base;
@:pythonImport("pandas.core.internals.base", "DataManager") extern class DataManager {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion.
		
		Notes
		-----
		Only provide 'public' methods.
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
	public function __le__(value:Dynamic):Dynamic;
	public function __len__():Dynamic;
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
		Return a string representation for a particular object.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for an object that returns
		either a value or Series of values
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
	static public var _accessors : Dynamic;
	public function _consolidate_inplace():Dynamic;
	/**
		Class constructor (for this class it's just `__class__`.
	**/
	public var _constructor : Dynamic;
	/**
		Add additional __dir__ for this object.
	**/
	public function _dir_additions():Dynamic;
	/**
		Delete unwanted __dir__ for this object.
	**/
	public function _dir_deletions():Dynamic;
	/**
		To be implemented by the subclasses. Only check the column values
		assuming shape and indexes have already been checked.
	**/
	public function _equal_values(other:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public function _validate_set_axis(axis:Dynamic, new_labels:Dynamic):Dynamic;
	public function apply(f:Dynamic, ?align_keys:Dynamic, ?ignore_failures:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function consolidate():Dynamic;
	/**
		Implementation for DataFrame.equals
	**/
	public function equals(other:Dynamic):Dynamic;
	public function is_consolidated():Dynamic;
	public function isna(func:Dynamic):Dynamic;
	public var items : Dynamic;
	public var ndim : Dynamic;
	/**
		Conform data manager to new index.
	**/
	public function reindex_axis(new_index:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic):Dynamic;
	public function reindex_indexer(new_axis:Dynamic, indexer:Dynamic, axis:Dynamic, ?fill_value:Dynamic, ?allow_dups:Dynamic, ?copy:Dynamic, ?consolidate:Dynamic, ?only_slice:Dynamic):Dynamic;
	public var shape : Dynamic;
}