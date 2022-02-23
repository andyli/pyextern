/* This file is generated, do not edit! */
package tensorflow.python.tpu.feature_column;
@:pythonImport("tensorflow.python.tpu.feature_column", "_TPUSharedEmbeddingColumn") extern class _TPUSharedEmbeddingColumn {
	/**
		TensorSequenceLengthPair(dense_tensor, sequence_length)
	**/
	static public function TensorSequenceLengthPair(dense_tensor:Dynamic, sequence_length:Dynamic):Dynamic;
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
		Allows feature columns to be sorted in Python 3 as they are in Python 2.
		
		Feature columns need to occasionally be sortable, for example when used as
		keys in a features dictionary passed to a layer.
		
		`__gt__` is called when the "other" object being compared during the sort
		does not have `__lt__` defined.
		Example:
		```
		# __lt__ only class
		class A():
		  def __lt__(self, other): return str(self) < str(other)
		
		a = A()
		a < "b" # True
		"0" < a # Error
		
		# __lt__ and __gt__ class
		class B():
		  def __lt__(self, other): return str(self) < str(other)
		  def __gt__(self, other): return str(self) > str(other)
		
		b = B()
		b < "c" # True
		"0" < b # True
		```
		
		
		Args:
		  other: The other object to compare to.
		
		Returns:
		  True if the string representation of this object is lexicographically
		  greater than the string representation of `other`. For FeatureColumn
		  objects, this looks like "<__main__.FeatureColumn object at 0xa>".
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
	public function ___init__(categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic, ?use_safe_embedding_lookup:Dynamic):Void;
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
		Allows feature columns to be sorted in Python 3 as they are in Python 2.
		
		Feature columns need to occasionally be sortable, for example when used as
		keys in a features dictionary passed to a layer.
		
		In CPython, `__lt__` must be defined for all objects in the
		sequence being sorted. If any objects do not have an `__lt__` compatible
		with feature column objects (such as strings), then CPython will fall back
		to using the `__gt__` method below.
		https://docs.python.org/3/library/stdtypes.html#list.sort
		
		Args:
		  other: The other object to compare to.
		
		Returns:
		  True if the string representation of this object is lexicographically less
		  than the string representation of `other`. For FeatureColumn objects,
		  this looks like "<__main__.FeatureColumn object at 0xa>".
	**/
	public function __lt__(other:Dynamic):Dynamic;
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
	static public function __new__(cls:Dynamic, categorical_column:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?initializer:Dynamic, ?shared_embedding_collection_name:Dynamic, ?ckpt_to_load_from:Dynamic, ?tensor_name_in_ckpt:Dynamic, ?max_norm:Dynamic, ?trainable:Dynamic, ?max_sequence_length:Dynamic, ?learning_rate_fn:Dynamic, ?use_safe_embedding_lookup:Dynamic):Dynamic;
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
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Return a new dict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	static public var _field_defaults : Dynamic;
	static public var _fields : Dynamic;
	static public var _fields_defaults : Dynamic;
	/**
		Returns a `Tensor`.
		
		The output of this function will be used by model-builder-functions. For
		example the pseudo code of `input_layer` will be like:
		
		```python
		def input_layer(features, feature_columns, ...):
		  outputs = [fc._get_dense_tensor(...) for fc in feature_columns]
		  return tf.concat(outputs)
		```
		
		Args:
		  inputs: A `_LazyBuilder` object to access inputs.
		  weight_collections: List of graph collections to which Variables (if any
		    will be created) are added.
		  trainable: If `True` also add variables to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		
		Returns:
		  `Tensor` of shape [batch_size] + `_variable_shape`.
	**/
	public function _get_dense_tensor(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Private method that follows the signature of _get_dense_tensor.
	**/
	public function _get_dense_tensor_internal(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Returns a `TensorSequenceLengthPair`.
	**/
	public function _get_sequence_dense_tensor(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Make a new _SharedEmbeddingColumn object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic):Dynamic;
	/**
		Returns a `tf.Example` parsing spec as dict.
		
		It is used for get_parsing_spec for `tf.io.parse_example`. Returned spec is
		a dict from keys ('string') to `VarLenFeature`, `FixedLenFeature`, and other
		supported objects. Please check documentation of `tf.io.parse_example` for
		all supported spec objects.
		
		Let's say a Feature column depends on raw feature ('raw') and another
		`_FeatureColumn` (input_fc). One possible implementation of
		_parse_example_spec is as follows:
		
		```python
		spec = {'raw': tf.io.FixedLenFeature(...)}
		spec.update(input_fc._parse_example_spec)
		return spec
		```
	**/
	public var _parse_example_spec : Dynamic;
	/**
		Return a new _SharedEmbeddingColumn object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resets the configuration in the column.
		
		Some feature columns e.g. embedding or shared embedding columns might
		have some state that is needed to be reset sometimes. Use this method
		in that scenario.
	**/
	public function _reset_config():Dynamic;
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
		`TensorShape` of `_get_dense_tensor`, without batch dimension.
	**/
	public var _variable_shape : Dynamic;
	/**
		Alias for field number 0
	**/
	public var categorical_column : Dynamic;
	/**
		Alias for field number 5
	**/
	public var ckpt_to_load_from : Dynamic;
	/**
		Alias for field number 2
	**/
	public var combiner : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Alias for field number 1
	**/
	public var dimension : Dynamic;
	/**
		Returns the embedding combiner.
	**/
	public function get_combiner():Dynamic;
	/**
		Returns num_ids and width.
	**/
	public function get_embedding_table_size():Dynamic;
	/**
		get_embedding_var_name.
	**/
	public function get_embedding_var_name():Dynamic;
	/**
		get_feature_key_name.
	**/
	public function get_feature_key_name():Dynamic;
	/**
		Returns the initializer.
	**/
	public function get_initializer():Dynamic;
	public function get_learning_rate_fn():Dynamic;
	public function get_max_sequence_length():Dynamic;
	/**
		Get the key for the associated sequence length feature.
	**/
	public function get_sequence_length_feature_key_name():Dynamic;
	/**
		get_weight_key_name.
	**/
	public function get_weight_key_name():Dynamic;
	/**
		Return first index of value.
		
		Raises ValueError if the value is not present.
	**/
	public function index(value:Dynamic, ?start:Dynamic, ?stop:Dynamic):Dynamic;
	/**
		Alias for field number 3
	**/
	public var initializer : Dynamic;
	/**
		Check if the categorical column of the embedding column is weighted.
	**/
	public function is_categorical_column_weighted():Dynamic;
	public function is_sequence_column():Dynamic;
	/**
		Alias for field number 7
	**/
	public var max_norm : Dynamic;
	/**
		Returns string. Used for naming and for name_scope.
	**/
	public var name : Dynamic;
	/**
		Alias for field number 4
	**/
	public var shared_embedding_collection_name : Dynamic;
	/**
		Alias for field number 6
	**/
	public var tensor_name_in_ckpt : Dynamic;
	/**
		Alias for field number 8
	**/
	public var trainable : Dynamic;
	/**
		Alias for field number 9
	**/
	public var use_safe_embedding_lookup : Dynamic;
}