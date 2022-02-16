/* This file is generated, do not edit! */
package tensorflow.python.feature_column.feature_column_v2;
@:pythonImport("tensorflow.python.feature_column.feature_column_v2", "SequenceDenseColumn") extern class SequenceDenseColumn {
	/**
		TensorSequenceLengthPair(dense_tensor, sequence_length)
	**/
	static public function TensorSequenceLengthPair(dense_tensor:Dynamic, sequence_length:Dynamic):Dynamic;
	static public var __abstractmethods__ : Dynamic;
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
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
		Return repr(self).
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
	static public var _abc_impl : Dynamic;
	static public function _from_config(config:Dynamic, ?custom_objects:Dynamic, ?columns_by_name:Dynamic):Dynamic;
	public function _get_config():Dynamic;
	/**
		Returns whether this FeatureColumn is fully conformant to the new API.
		
		This is needed for composition type cases where an EmbeddingColumn etc.
		might take in old categorical columns as input and then we want to use the
		old API.
	**/
	public var _is_v2_column : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
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
		Returns a `TensorSequenceLengthPair`.
		
		Args:
		  transformation_cache: A `FeatureTransformationCache` object to access
		    features.
		  state_manager: A `StateManager` to create / access resources such as
		    lookup tables.
	**/
	public function get_sequence_dense_tensor(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
	/**
		Returns string. Used for naming.
	**/
	public var name : Dynamic;
	/**
		Returns a list of immediate raw feature and FeatureColumn dependencies.
		
		For example:
		# For the following feature columns
		a = numeric_column('f1')
		c = crossed_column(a, 'f2')
		# The expected parents are:
		a.parents = ['f1']
		c.parents = [a, 'f2']
	**/
	public var parents : Dynamic;
	/**
		Returns a `tf.Example` parsing spec as dict.
		
		It is used for get_parsing_spec for `tf.io.parse_example`. Returned spec is
		a dict from keys ('string') to `VarLenFeature`, `FixedLenFeature`, and other
		supported objects. Please check documentation of `tf.io.parse_example` for
		all supported spec objects.
		
		Let's say a Feature column depends on raw feature ('raw') and another
		`FeatureColumn` (input_fc). One possible implementation of
		parse_example_spec is as follows:
		
		```python
		spec = {'raw': tf.io.FixedLenFeature(...)}
		spec.update(input_fc.parse_example_spec)
		return spec
		```
	**/
	public var parse_example_spec : Dynamic;
	/**
		Returns intermediate representation (usually a `Tensor`).
		
		Uses `transformation_cache` to create an intermediate representation
		(usually a `Tensor`) that other feature columns can use.
		
		Example usage of `transformation_cache`:
		Let's say a Feature column depends on raw feature ('raw') and another
		`FeatureColumn` (input_fc). To access corresponding `Tensor`s,
		transformation_cache will be used as follows:
		
		```python
		raw_tensor = transformation_cache.get('raw', state_manager)
		fc_tensor = transformation_cache.get(input_fc, state_manager)
		```
		
		Args:
		  transformation_cache: A `FeatureTransformationCache` object to access
		    features.
		  state_manager: A `StateManager` to create / access resources such as
		    lookup tables.
		
		Returns:
		  Transformed feature `Tensor`.
	**/
	public function transform_feature(transformation_cache:Dynamic, state_manager:Dynamic):Dynamic;
}