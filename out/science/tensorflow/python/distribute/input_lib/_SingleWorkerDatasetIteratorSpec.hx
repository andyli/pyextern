/* This file is generated, do not edit! */
package tensorflow.python.distribute.input_lib;
@:pythonImport("tensorflow.python.distribute.input_lib", "_SingleWorkerDatasetIteratorSpec") extern class _SingleWorkerDatasetIteratorSpec {
	/**
		Raises an exception if tensor_list incompatible w/ flat_tensor_specs.
	**/
	public function _TypeSpec__check_tensor_list(tensor_list:Dynamic):Dynamic;
	/**
		Returns a hashable eq-comparable key for `self`.
	**/
	public function _TypeSpec__get_cmp_key():Dynamic;
	/**
		Returns true if the given type serializations compatible.
	**/
	static public function _TypeSpec__is_compatible(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Converts `value` to a hashable key.
	**/
	public function _TypeSpec__make_cmp_key(value:Dynamic):Dynamic;
	/**
		Helper for most_specific_compatible_type.
		
		Combines two type serializations as follows:
		
		* If they are both tuples of the same length, then recursively combine
		  the respective tuple elements.
		* If they are both dicts with the same keys, then recursively combine
		  the respective dict elements.
		* If they are both TypeSpecs, then combine using
		  TypeSpec.most_specific_compatible_type.
		* If they are both TensorShapes, then combine using
		  TensorShape.most_specific_compatible_shape.
		* If they are both TensorSpecs with the same dtype, then combine using
		  TensorShape.most_specific_compatible_shape to combine shapes.
		* If they are equal, then return a.
		* If none of the above, then raise a ValueError.
		
		Args:
		  a: A serialized TypeSpec or nested component from a serialized TypeSpec.
		  b: A serialized TypeSpec or nested component from a serialized TypeSpec.
		
		Returns:
		  A value with the same type and structure as `a` and `b`.
		
		Raises:
		  ValueError: If `a` and `b` are incompatible.
	**/
	static public function _TypeSpec__most_specific_compatible_type_serialization(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Converts a nested list to a corresponding nested tuple.
	**/
	static public function _TypeSpec__nested_list_to_tuple(value:Dynamic):Dynamic;
	/**
		Returns whether a and b have the same type, up to namedtuple equivalence.
		
		Consistent with tf.nest.assert_same_structure(), two namedtuple types
		are considered the same iff they agree in their class name (without
		qualification by module name) and in their sequence of field names.
		This makes namedtuples recreated by StructureCoder compatible with their
		original Python definition.
		
		Args:
		  a: a Python object.
		  b: a Python object.
		
		Returns:
		  A boolean that is true iff type(a) and type(b) are the same object
		  or equivalent namedtuple types.
	**/
	static public function _TypeSpec__same_types(a:Dynamic, b:Dynamic):Dynamic;
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
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	public function ___init__(worker:Dynamic, devices:Dynamic, element_spec:Dynamic, options:Dynamic, ?canonicalize_devices:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(worker:Dynamic, devices:Dynamic, element_spec:Dynamic, options:Dynamic, ?canonicalize_devices:Dynamic):Void;
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
	public function __ne__(other:Dynamic):Dynamic;
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
	static public var _abc_impl : Dynamic;
	public var _canonicalize_devices : Dynamic;
	/**
		A nested structure of TypeSpecs for this type's components.
		
		Returns:
		  A nested structure describing the component encodings that are returned
		  by this TypeSpec's `_to_components` method.  In particular, for a
		  TypeSpec `spec` and a compatible value `value`:
		
		  ```
		  nest.map_structure(lambda t, c: assert t.is_compatible_with(c),
		                     spec._component_specs, spec._to_components(value))
		  ```
	**/
	public var _component_specs : Dynamic;
	/**
		Reconstructs a TypeSpec from a value returned by `serialize`.
		
		Args:
		  serialization: A value returned by _serialize.  In some contexts,
		    `namedtuple`s in `serialization` may not have the identical type that
		    was returned by `_serialize` (but its type will still be a `namedtuple`
		    type with the same type name and field names).  For example, the code
		    that loads a SavedModel does not have access to the original
		    `namedtuple` type, so it dynamically creates a new `namedtuple` type
		    with the same type name and field names as the original one.  If
		    necessary, you can check `serialization` for these duck-typed
		    `nametuple` types, and restore them to the original type. (E.g., this
		    would be necessary if you rely on type checks such as `isinstance` for
		    this `TypeSpec`'s member variables).
		
		Returns:
		  A `TypeSpec` of type `cls`.
	**/
	static public function _deserialize(serialization:Dynamic):Dynamic;
	public var _devices : Dynamic;
	public var _element_spec : Dynamic;
	/**
		A list of TensorSpecs compatible with self._to_tensor_list(v).
	**/
	public var _flat_tensor_specs : Dynamic;
	/**
		Reconstructs a value from a compatible flat list of `tf.Tensor`.
		
		Args:
		  tensor_list: A flat list of `tf.Tensor`, compatible with
		    `self._flat_tensor_specs`.  (Caller is responsible for ensuring
		    compatibility.)
		
		Returns:
		  A value that is compatible with this `TypeSpec`.
	**/
	public function _from_compatible_tensor_list(tensor_list:Dynamic):Dynamic;
	/**
		Reconstructs a value from a nested structure of Tensor/CompositeTensor.
		
		Args:
		  components: A nested structure of `tf.Tensor` or `tf.CompositeTensor`,
		    compatible with `self._component_specs`.  (Caller is responsible for
		    ensuring compatibility.)
		
		Returns:
		  A value that is compatible with this `TypeSpec`.
	**/
	public function _from_components(components:Dynamic):Dynamic;
	/**
		Reconstructs a value from a flat list of `tf.Tensor`.
		
		Args:
		  tensor_list: A flat list of `tf.Tensor`, compatible with
		    `self._flat_tensor_specs`.
		
		Returns:
		  A value that is compatible with this `TypeSpec`.
		
		Raises:
		  ValueError: If `tensor_list` is not compatible with
		  `self._flat_tensor_specs`.
	**/
	public function _from_tensor_list(tensor_list:Dynamic):Dynamic;
	public function _get_multi_device_iterator_spec(specs:Dynamic):Dynamic;
	public var _options : Dynamic;
	/**
		Returns a nested tuple containing the state of this TypeSpec.
		
		The serialization may contain the following value types: boolean,
		integer, string, float, None, `TensorSpec`, `tf.TensorShape`, `tf.DType`,
		`np.ndarray`, `TypeSpec`, and nested tuples, namedtuples, dicts, and
		OrderedDicts of any of the above.
		
		This method is used to provide default definitions for: equality
		testing (__eq__, __ne__), hashing (__hash__), pickling (__reduce__),
		string representation (__repr__), `self.is_compatible_with()`,
		`self.most_specific_compatible_type()`, and protobuf serialization
		(e.g. TensorInfo and StructuredValue).
	**/
	public function _serialize():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Encodes `value` as a nested structure of `Tensor` or `CompositeTensor`.
		
		Args:
		  value: A value compatible with this `TypeSpec`.  (Caller is responsible
		    for ensuring compatibility.)
		
		Returns:
		  A nested structure of `tf.Tensor` or `tf.CompositeTensor` compatible with
		  `self._component_specs`, which can be used to reconstruct `value`.
	**/
	public function _to_components(value:Dynamic):Dynamic;
	public function _to_legacy_output_classes():Dynamic;
	public function _to_legacy_output_shapes():Dynamic;
	public function _to_legacy_output_types():Dynamic;
	/**
		Encodes `value` as a flat list of `tf.Tensor`.
		
		By default, this just flattens `self._to_components(value)` using
		`nest.flatten`.  However, subclasses may override this to return a
		different tensor encoding for values.  In particular, some subclasses
		of `BatchableTypeSpec` override this method to return a "boxed" encoding
		for values, which then can be batched or unbatched.  See
		`BatchableTypeSpec` for more details.
		
		Args:
		  value: A value with compatible this `TypeSpec`.  (Caller is responsible
		    for ensuring compatibility.)
		
		Returns:
		  A list of `tf.Tensor`, compatible with `self._flat_tensor_specs`, which
		  can be used to reconstruct `value`.
	**/
	public function _to_tensor_list(value:Dynamic):Dynamic;
	/**
		Returns a TypeSpec compatible with `self`, with tensor shapes relaxed.
		
		Returns:
		  A `TypeSpec` that is compatible with `self`, where any `TensorShape`
		  information has been relaxed to include only tensor rank (and not
		  the dimension sizes for individual axes).
	**/
	public function _with_tensor_ranks_only():Dynamic;
	public var _worker : Dynamic;
	static public function from_value(value:Dynamic):Dynamic;
	/**
		Returns true if `spec_or_value` is compatible with this TypeSpec.
	**/
	public function is_compatible_with(spec_or_value:Dynamic):Dynamic;
	/**
		Returns the most specific TypeSpec compatible with `self` and `other`.
		
		Args:
		  other: A `TypeSpec`.
		
		Raises:
		  ValueError: If there is no TypeSpec that is compatible with both `self`
		    and `other`.
	**/
	public function most_specific_compatible_type(other:Dynamic):Dynamic;
	/**
		The Python type for values that are compatible with this TypeSpec.
		
		In particular, all values that are compatible with this TypeSpec must be an
		instance of this type.
	**/
	public var value_type : Dynamic;
}