/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.feature_column;
@:pythonImport("tensorflow.contrib.layers.python.layers.feature_column", "_SparseColumnVocabulary") extern class _SparseColumnVocabulary {
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
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(cls:Dynamic, column_name:Dynamic, ?is_integerized:Dynamic, ?bucket_size:Dynamic, ?lookup_config:Dynamic, ?combiner:Dynamic, ?dtype:Dynamic):Dynamic;
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
	public function _do_transform(st:Dynamic):Dynamic;
	static public var _fields : Dynamic;
	/**
		sparsify input_tensor if dense.
	**/
	public function _get_input_sparse_tensor(input_tensor:Dynamic):Dynamic;
	/**
		Returns an IdWeightPair.
		
		`IdWeightPair` is a pair of `SparseTensor`s which represents ids and
		weights.
		
		`IdWeightPair.id_tensor` is typically a `batch_size` x `num_buckets`
		`SparseTensor` of `int64`. `IdWeightPair.weight_tensor` is either a
		`SparseTensor` of `float` or `None` to indicate all weights should be
		taken to be 1. If specified, `weight_tensor` must have exactly the same
		shape and indices as `sp_ids`. Expected `SparseTensor` is same as parsing
		output of a `VarLenFeature` which is a ragged matrix.
		
		Args:
		  inputs: A `LazyBuilder` as a cache to get input tensors required to
		    create `IdWeightPair`.
		  weight_collections: List of graph collections to which variables (if any
		    will be created) are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.get_variable`).
	**/
	public function _get_sparse_tensors(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Helper method for self.key() that omits particular properties.
	**/
	public function _key_without_properties(properties:Dynamic):Dynamic;
	/**
		Make a new _SparseColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Returns number of buckets in this sparse feature.
	**/
	public var _num_buckets : Dynamic;
	/**
		Returns a `tf.Example` parsing spec as dict.
		
		It is used for get_parsing_spec for `tf.parse_example`. Returned spec is a
		dict from keys ('string') to `VarLenFeature`, `FixedLenFeature`, and other
		supported objects. Please check documentation of `tf.parse_example` for all
		supported spec objects.
		
		Let's say a Feature column depends on raw feature ('raw') and another
		`_FeatureColumn` (input_fc). One possible implementation of
		_parse_example_spec is as follows:
		
		```python
		spec = {'raw': tf.FixedLenFeature(...)}
		spec.update(input_fc._parse_example_spec)
		return spec
		```
	**/
	public var _parse_example_spec : Dynamic;
	/**
		Return a new _SparseColumn object replacing specified fields with new values
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
		Returns a dense tensor representing this column's values.
	**/
	public function _to_dense_tensor(input_tensor:Dynamic):Dynamic;
	/**
		Returns a Tensor as an input to the first layer of neural network.
	**/
	public function _to_dnn_input_layer(input_tensor:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic, ?output_rank:Dynamic):Dynamic;
	/**
		Returns intermediate representation (usually a `Tensor`).
		
		Uses `inputs` to create an intermediate representation (usually a `Tensor`)
		that other feature columns can use.
		
		Example usage of `inputs`:
		Let's say a Feature column depends on raw feature ('raw') and another
		`_FeatureColumn` (input_fc). To access corresponding `Tensor`s, inputs will
		be used as follows:
		
		```python
		raw_tensor = inputs.get('raw')
		fc_tensor = inputs.get(input_fc)
		```
		
		Args:
		  inputs: A `_LazyBuilder` object to access inputs.
		
		Returns:
		  Transformed feature `Tensor`.
	**/
	public function _transform_feature(inputs:Dynamic):Dynamic;
	/**
		Returns string. Used for variable_scope. Defaults to self.name.
	**/
	public var _var_scope_name : Dynamic;
	/**
		Returns arguments to look up embeddings for this column.
	**/
	public function _wide_embedding_lookup_arguments(input_tensor:Dynamic):Dynamic;
	/**
		Alias for field number 2
	**/
	public var bucket_size : Dynamic;
	/**
		Alias for field number 0
	**/
	public var column_name : Dynamic;
	/**
		Alias for field number 4
	**/
	public var combiner : Dynamic;
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
		Alias for field number 5
	**/
	public var dtype : Dynamic;
	/**
		Returns the id tensor from the given transformed input_tensor.
	**/
	public function id_tensor(input_tensor:Dynamic):Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Handles sparse column to id conversion.
	**/
	public function insert_transformed_feature(columns_to_tensors:Dynamic):Dynamic;
	/**
		Check compatibility of two sparse columns.
	**/
	public function is_compatible(other_column:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var is_integerized : Dynamic;
	/**
		Returns a string which will be used as a key when we do sorting.
	**/
	public var key : Dynamic;
	/**
		Returns vocabulary or hash_bucket size.
	**/
	public var length : Dynamic;
	/**
		Alias for field number 3
	**/
	public var lookup_config : Dynamic;
	/**
		Returns the name of column or transformed column. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2016-09-25.
		Instructions for updating:
		Should be private.
	**/
	public var name : Dynamic;
	/**
		Returns the weight tensor from the given transformed input_tensor.
	**/
	public function weight_tensor(input_tensor:Dynamic):Dynamic;
}