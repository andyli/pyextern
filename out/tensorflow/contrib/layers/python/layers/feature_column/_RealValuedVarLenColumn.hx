/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column", "_RealValuedVarLenColumn") extern class _RealValuedVarLenColumn {
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
		Create new instance of _RealValuedVarLenColumn(column_name, default_value, dtype, normalizer, is_sparse)
	**/
	static public function __new__(_cls:Dynamic, column_name:Dynamic, default_value:Dynamic, dtype:Dynamic, normalizer:Dynamic, is_sparse:Dynamic):Dynamic;
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
	/**
		Returns None, or a (path,tensor_name) to load a checkpoint from.
	**/
	public function _checkpoint_path():Dynamic;
	/**
		Returns arguments to embedding lookup to build an input layer.
	**/
	public function _deep_embedding_lookup_arguments(input_tensor:Dynamic):Dynamic;
	static public var _fields : Dynamic;
	/**
		Helper method for self.key() that omits particular properties.
	**/
	public function _key_without_properties(properties:Dynamic):Dynamic;
	/**
		Make a new _RealValuedVarLenColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Returns the input tensor after custom normalization is applied.
	**/
	public function _normalized_input_tensor(input_tensor:Dynamic):Dynamic;
	/**
		Return a new _RealValuedVarLenColumn object replacing specified fields with new values
	**/
	static public function _replace(_self:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		Returns a dense tensor representing this column's values.
	**/
	public function _to_dense_tensor(input_tensor:Dynamic):Dynamic;
	/**
		Returns a Tensor as an input to the first layer of neural network.
	**/
	public function _to_dnn_input_layer(input_tensor:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?output_rank:Dynamic):Dynamic;
	/**
		Returns arguments to look up embeddings for this column.
	**/
	public function _wide_embedding_lookup_arguments(input_tensor:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var column_name : Dynamic;
	/**
		Returns configuration of the base feature for `tf.parse_example`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var config : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 1
	**/
	public var default_value : Dynamic;
	/**
		Alias for field number 2
	**/
	public var dtype : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Apply transformation and inserts it into columns_to_tensors.
		
		Args:
		  columns_to_tensors: A mapping from feature columns to tensors. 'string'
		    key means a base feature (not-transformed). It can have _FeatureColumn
		    as a key too. That means that _FeatureColumn is already transformed.
	**/
	public function insert_transformed_feature(columns_to_tensors:Dynamic):Dynamic;
	/**
		Alias for field number 4
	**/
	public var is_sparse : Dynamic;
	/**
		Returns a string which will be used as a key when we do sorting.
	**/
	public var key : Dynamic;
	/**
		Returns the name of column or transformed column. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var name : Dynamic;
	/**
		Alias for field number 3
	**/
	public var normalizer : Dynamic;
	/**
		Returns the function used to normalize the column.
	**/
	public var normalizer_fn : Dynamic;
}