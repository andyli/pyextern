/* This file is generated, do not edit! */
package tensorflow.python.data.util.structure;
@:pythonImport("tensorflow.python.data.util.structure", "SparseTensorStructure") extern class SparseTensorStructure {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(dtype:Dynamic, dense_shape:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(dtype:Dynamic, dense_shape:Dynamic):Void;
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
	static public function __metaclass__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		A list of shapes matching the shapes of `self._to_tensor_list()`.
		
		Returns:
		  A list of `tf.TensorShape` objects.
	**/
	public var _flat_shapes : Dynamic;
	/**
		A list of types matching the types of `self._to_tensor_list()`.
		
		Returns:
		  A list of `tf.DType` objects.
	**/
	public var _flat_types : Dynamic;
	/**
		Returns a `Structure` that represents the given legacy structure.
		
		This method provides a way to convert from the existing `Dataset` and
		`Iterator` structure-related properties to a `Structure` object.
		
		TODO(b/110122868): Remove this method once `Structure` is used throughout
		`tf.data`.
		
		Args:
		  output_types: A nested structure of `tf.DType` objects corresponding to
		    each component of a structured value.
		  output_shapes: A nested structure of `tf.TensorShape` objects
		    corresponding to each component a structured value.
		  output_classes: A nested structure of Python `type` objects corresponding
		    to each component of a structured value.
		
		Returns:
		  A `Structure`.
		
		Raises:
		  TypeError: If a structure cannot be built the arguments, because one of
		    the component classes in `output_classes` is not supported.
	**/
	static public function _from_legacy_structure(output_types:Dynamic, output_shapes:Dynamic, output_classes:Dynamic):Dynamic;
	/**
		Builds a flat list of `tf.Tensor` into a value matching this structure.
		
		Requires: The shapes and types of the tensors in `flat_value` must be
		compatible with `self._flat_shapes` and `self._flat_types` respectively.
		
		Args:
		  flat_value: A list of `tf.Tensor` with compatible flat structure.
		
		Returns:
		  A structured object matching this structure.
	**/
	public function _from_tensor_list(flat_value:Dynamic):Dynamic;
	/**
		Registers `converter_fn` for converting values of the given type.
		
		Args:
		  type_object: A Python `type` object representing the type of values
		    accepted by `converter_fn`.
		  converter_fn: A function that takes one argument (an instance of the
		    type represented by `type_object`) and returns a `Structure`.
	**/
	static public function _register_custom_converter(type_object:Dynamic, converter_fn:Dynamic):Dynamic;
	/**
		Returns a flat list of `tf.Tensor` representing `value`.
		
		This method can be used, along with `self._flat_shapes` and
		`self._flat_types` to represent structured values in lower level APIs
		(such as plain TensorFlow operations) that do not understand structure.
		
		Requires: `self.is_compatible_with(Structure.from_value(value))`.
		
		Args:
		  value: A value with compatible structure.
		
		Returns:
		  A flat list of `tf.Tensor` representing `value`.
	**/
	public function _to_tensor_list(value:Dynamic):Dynamic;
	/**
		Returns a `Structure` that represents the given `value`.
		
		Args:
		  value: A potentially structured value.
		
		Returns:
		  A `Structure` that is compatible with `value`.
		
		Raises:
		  TypeError: If a structure cannot be built for `value`, because its type
		    or one of its component types is not supported.
	**/
	static public function from_value(value:Dynamic):Dynamic;
	/**
		Returns `True` if `other` is compatible with this structure.
		
		A structure `t` is a "subtype" of `s` if:
		
		* `s` and `t` are instances of the same `Structure` subclass.
		* The nested structures (if any) of `s` and `t` are the same, according to
		  `tf.contrib.framework.nest.assert_same_structure`, and each nested
		  structure of `t` is a "subtype" of the corresponding nested structure of
		  `s`.
		* Any `tf.DType` components of `t` are the same as the corresponding
		  components in `s`.
		* Any `tf.TensorShape` components of `t` are compatible with the
		  corresponding components in `s`, according to
		  `tf.TensorShape.is_compatible_with`.
		
		Args:
		  other: A `Structure`.
		
		Returns:
		  `True` if `other` is a subtype of this structure, otherwise `False`.
	**/
	public function is_compatible_with(other:Dynamic):Dynamic;
}