/* This file is generated, do not edit! */
package tensorflow.python.ops.parsing_config;
@:pythonImport("tensorflow.python.ops.parsing_config", "RaggedFeature") extern class RaggedFeature {
	/**
		RowLengths(key,)
	**/
	static public function RowLengths(key:Dynamic):Dynamic;
	/**
		RowLimits(key,)
	**/
	static public function RowLimits(key:Dynamic):Dynamic;
	/**
		RowSplits(key,)
	**/
	static public function RowSplits(key:Dynamic):Dynamic;
	/**
		RowStarts(key,)
	**/
	static public function RowStarts(key:Dynamic):Dynamic;
	/**
		UniformRowLength(length,)
	**/
	static public function UniformRowLength(length:Dynamic):Dynamic;
	/**
		ValueRowIds(key,)
	**/
	static public function ValueRowIds(key:Dynamic):Dynamic;
	static public var _PARTITION_TYPES : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create new instance of RaggedFeature(dtype, value_key, partitions, row_splits_dtype, validate)
	**/
	static public function __new__(cls:Dynamic, dtype:Dynamic, ?value_key:Dynamic, ?partitions:Dynamic, ?row_splits_dtype:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return value*self.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
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
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Make a new RaggedFeature object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Return a new RaggedFeature object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var dtype : Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 2
	**/
	public var partitions : Dynamic;
	/**
		Alias for field number 3
	**/
	public var row_splits_dtype : Dynamic;
	/**
		Alias for field number 4
	**/
	public var validate : Dynamic;
	/**
		Alias for field number 1
	**/
	public var value_key : Dynamic;
}