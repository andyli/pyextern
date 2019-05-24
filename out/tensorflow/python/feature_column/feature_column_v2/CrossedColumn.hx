/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column_v2;
@:pythonImport("tensorflow.python.feature_column.feature_column_v2", "CrossedColumn") extern class CrossedColumn {
	/**
		IdWeightPair(id_tensor, weight_tensor)
	**/
	static public function IdWeightPair(id_tensor:Dynamic, weight_tensor:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Create new instance of CrossedColumn(keys, hash_bucket_size, hash_key)
	**/
	static public function __new__(_cls:Dynamic, keys:Dynamic, hash_bucket_size:Dynamic, hash_key:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _fields : Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	static public function _from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	public function _get_config():Dynamic;
	/**
		See `CategoricalColumn` base class. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-11-30.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public function _get_sparse_tensors(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Returns whether this FeatureColumn is fully conformant to the new API.
		
		This is needed for composition type cases where an EmbeddingColumn etc.
		might take in old categorical columns as input and then we want to use the
		old API.
	**/
	public var _is_v2_column : Dynamic;
	/**
		Make a new CrossedColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-11-30.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public var _num_buckets : Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-11-30.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public var _parse_example_spec : Dynamic;
	/**
		Return a new CrossedColumn object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resets the configuration in the column.
		
		Some feature columns e.g. embedding or shared embedding columns might
		have some state that is needed to be reset sometimes. Use this method
		in that scenario.
	**/
	public function _reset_config():Dynamic;
	static public var _source : Dynamic;
	/**
		Generates a hashed sparse cross from the input tensors. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2018-11-30.
		Instructions for updating:
		The old _FeatureColumn APIs are being deprecated. Please use the new FeatureColumn APIs instead.
	**/
	public function _transform_feature(inputs:Dynamic):Dynamic;
	/**
		Returns string. Used for variable_scope. Defaults to self.name.
	**/
	public var _var_scope_name : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Uses the `state_manager` to create state for the FeatureColumn.
		
		Args:
		  state_manager: A `StateManager` to create / access resources such as
		    lookup tables and variables.
	**/
	public function create_state(state_manager:Dynamic):Dynamic;
	/**
		See `CategoricalColumn` base class.
	**/
	public function get_sparse_tensors(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var hash_bucket_size : Dynamic;
	/**
		Alias for field number 2
	**/
	public var hash_key : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 0
	**/
	public var keys : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var name : Dynamic;
	/**
		Returns number of buckets in this sparse feature.
	**/
	public var num_buckets : Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	public var parents : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var parse_example_spec : Dynamic;
	/**
		Generates a hashed sparse cross from the input tensors.
	**/
	public function transform_feature(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
}