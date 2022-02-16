/* This file is generated, do not edit! */
package tensorflow.python.tpu.feature_column_v2;
@:pythonImport("tensorflow.python.tpu.feature_column_v2", "_TPUSharedDeviceSpecificEmbeddingColumnV2") extern class _TPUSharedDeviceSpecificEmbeddingColumnV2 {
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
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		Allows feature columns to be sorted in Python 3 as they are in Python 2.
		
		Feature columns need to occasionally be sortable, for example when used as
		keys in a features dictionary passed to a layer.
		
		In CPython, `__lt__` must be defined for all objects in the
		sequence being sorted.
		
		If any objects in the sequence being sorted do not have an `__lt__` method
		compatible with feature column objects (such as strings), then CPython will
		fall back to using the `__gt__` method below.
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	public function _get_config():Dynamic;
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
		Private method that follows _get_dense_tensor_internal.
	**/
	public function _get_dense_tensor_internal(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Returns a `TensorSequenceLengthPair`.
	**/
	public function _get_sequence_dense_tensor(inputs:Dynamic, ?weight_collections:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Returns whether this FeatureColumn is fully conformant to the new API.
		
		This is needed for composition type cases where an EmbeddingColumn etc.
		might take in old categorical columns as input and then we want to use the
		old API.
	**/
	public var _is_v2_column : Dynamic;
	/**
		Make a new SharedEmbeddingColumn object from a sequence or iterable
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
		Return a new SharedEmbeddingColumn object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resets the configuration in the column.
		
		Some feature columns e.g. embedding or shared embedding columns might
		have some state that is needed to be reset sometimes. Use this method
		in that scenario.
	**/
	public function _reset_config():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
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
		Alias for field number 2
	**/
	public var combiner : Dynamic;
	/**
		Return number of occurrences of value.
	**/
	public function count(value:Dynamic):Dynamic;
	/**
		Uses the `state_manager` to create state for the FeatureColumn.
		
		Args:
		  state_manager: A `StateManager` to create / access resources such as
		    lookup tables and variables.
	**/
	public function create_state(state_manager:Dynamic):Dynamic;
	/**
		Creates a FeatureColumn from its config.
		
		This method should be the reverse of `get_config`, capable of instantiating
		the same FeatureColumn from the config dictionary. See `get_config` for an
		example of common (de)serialization practices followed in this file.
		
		TODO(b/118939620): This is a private method until consensus is reached on
		supporting object deserialization deduping within Keras.
		
		Args:
		  config: A Dict config acquired with `get_config`.
		  custom_objects: Optional dictionary mapping names (strings) to custom
		    classes or functions to be considered during deserialization.
		  columns_by_name: A Dict[String, FeatureColumn] of existing columns in
		    order to avoid duplication. Should be passed to any calls to
		    deserialize_feature_column().
		
		Returns:
		  A FeatureColumn for the input config.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	/**
		Returns the embedding combiner.
	**/
	public function get_combiner():Dynamic;
	/**
		Returns the config of the feature column.
		
		A FeatureColumn config is a Python dictionary (serializable) containing the
		configuration of a FeatureColumn. The same FeatureColumn can be
		reinstantiated later from this configuration.
		
		The config of a feature column does not include information about feature
		columns depending on it nor the FeatureColumn class name.
		
		Example with (de)serialization practices followed in this file:
		```python
		class SerializationExampleFeatureColumn(
		    FeatureColumn, collections.namedtuple(
		        'SerializationExampleFeatureColumn',
		        ('dimension', 'parent', 'dtype', 'normalizer_fn'))):
		
		  def get_config(self):
		    # Create a dict from the namedtuple.
		    # Python attribute literals can be directly copied from / to the config.
		    # For example 'dimension', assuming it is an integer literal.
		    config = dict(zip(self._fields, self))
		
		    # (De)serialization of parent FeatureColumns should use the provided
		    # (de)serialize_feature_column() methods that take care of de-duping.
		    config['parent'] = serialize_feature_column(self.parent)
		
		    # Many objects provide custom (de)serialization e.g: for tf.DType
		    # tf.DType.name, tf.as_dtype() can be used.
		    config['dtype'] = self.dtype.name
		
		    # Non-trivial dependencies should be Keras-(de)serializable.
		    config['normalizer_fn'] = generic_utils.serialize_keras_object(
		        self.normalizer_fn)
		
		    return config
		
		  @classmethod
		  def from_config(cls, config, custom_objects=None, columns_by_name=None):
		    # This should do the inverse transform from `get_config` and construct
		    # the namedtuple.
		    kwargs = config.copy()
		    kwargs['parent'] = deserialize_feature_column(
		        config['parent'], custom_objects, columns_by_name)
		    kwargs['dtype'] = dtypes.as_dtype(config['dtype'])
		    kwargs['normalizer_fn'] = generic_utils.deserialize_keras_object(
		      config['normalizer_fn'], custom_objects=custom_objects)
		    return cls(**kwargs)
		
		```
		Returns:
		  A serializable Dict that can be used to deserialize the object with
		  from_config.
	**/
	public function get_config():Dynamic;
	/**
		Returns the embedding lookup result.
	**/
	public function get_dense_tensor(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
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
		See `SequenceDenseColumn` base class.
	**/
	public function get_sequence_dense_tensor(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
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
		Check if the categorical column of the embedding column is weighted.
	**/
	public function is_categorical_column_weighted():Dynamic;
	public function is_sequence_column():Dynamic;
	/**
		Alias for field number 3
	**/
	public var max_norm : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var name : Dynamic;
	/**
		See 'FeatureColumn` base class.
	**/
	public var parents : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public var parse_example_spec : Dynamic;
	/**
		Alias for field number 1
	**/
	public var shared_embedding_column_creator : Dynamic;
	/**
		See `FeatureColumn` base class.
	**/
	public function transform_feature(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Alias for field number 4
	**/
	public var use_safe_embedding_lookup : Dynamic;
	/**
		See `DenseColumn` base class.
	**/
	public var variable_shape : Dynamic;
}