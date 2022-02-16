/* This file is generated, do not edit! */
package tensorflow.python.framework.type_spec;
@:pythonImport("tensorflow.python.framework.type_spec") extern class Type_spec_Module {
	static public var _NAME_TO_TYPE_SPEC : Dynamic;
	static public var _REGISTERED_NAME_RE : Dynamic;
	static public var _TYPE_CONVERSION_FUNCTION_REGISTRY : Dynamic;
	static public var _TYPE_SPEC_TO_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a `TypeSpec` that represents the given `value`.
	**/
	static public function _type_spec_from_value(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a value with type `spec` decoded from `tensor_list`.
	**/
	static public function batchable_from_tensor_list(spec:Dynamic, tensor_list:Dynamic):Dynamic;
	/**
		Returns a list of tensors encoding `value`, whose type is `spec`.
	**/
	static public function batchable_to_tensor_list(spec:Dynamic, value:Dynamic, ?minimum_rank:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the flat tensor specs for `spec`.
	**/
	static public function get_batchable_flat_tensor_specs(spec:Dynamic, ?context_spec:Dynamic):Dynamic;
	/**
		Returns the registered name for TypeSpec `cls`.
	**/
	static public function get_name(cls:Dynamic):Dynamic;
	/**
		Returns the TypeSpec that has been registered with name `name`.
	**/
	static public function lookup(name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decorator used to register a globally unique name for a TypeSpec subclass.
		
		Args:
		  name: The name of the type spec.  Must be globally unique.  Must have the
		    form `"{project_name}.{type_name}"`.  E.g. `"my_project.MyTypeSpec"`.
		
		Returns:
		  A class decorator that registers the decorated class with the given name.
	**/
	static public function register(name:Dynamic):Dynamic;
	/**
		Registers a function for converting values with a given type to TypeSpecs.
		
		If multiple registered `type_object`s match a value, then the most recent
		registration takes precedence.  Custom converters should not be defined for
		`CompositeTensor`s; use `CompositeTensor._type_spec` instead.
		
		Args:
		  type_object: A Python `type` object representing the type of values accepted
		    by `converter_fn`.
		  converter_fn: A function that takes one argument (an instance of the type
		    represented by `type_object`) and returns a `TypeSpec`.
		  allow_subclass: If true, then use `isinstance(value, type_object)` to check
		    for matches.  If false, then use `type(value) is type_object`.
	**/
	static public function register_type_spec_from_value_converter(type_object:Dynamic, converter_fn:Dynamic, ?allow_subclass:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a `tf.TypeSpec` that represents the given `value`.
		
		Examples:
		
		  >>> tf.type_spec_from_value(tf.constant([1, 2, 3]))
		  TensorSpec(shape=(3,), dtype=tf.int32, name=None)
		  >>> tf.type_spec_from_value(np.array([4.0, 5.0], np.float64))
		  TensorSpec(shape=(2,), dtype=tf.float64, name=None)
		  >>> tf.type_spec_from_value(tf.ragged.constant([[1, 2], [3, 4, 5]]))
		  RaggedTensorSpec(TensorShape([2, None]), tf.int32, 1, tf.int64)
		
		  >>> example_input = tf.ragged.constant([[1, 2], [3]])
		  >>> @tf.function(input_signature=[tf.type_spec_from_value(example_input)])
		  ... def f(x):
		  ...   return tf.reduce_sum(x, axis=1)
		
		Args:
		  value: A value that can be accepted or returned by TensorFlow APIs. Accepted
		    types for `value` include `tf.Tensor`, any value that can be converted to
		    `tf.Tensor` using `tf.convert_to_tensor`, and any subclass of
		    `CompositeTensor` (such as `tf.RaggedTensor`).
		
		Returns:
		  A `TypeSpec` that is compatible with `value`.
		
		Raises:
		  TypeError: If a TypeSpec cannot be built for `value`, because its type
		    is not supported.
	**/
	static public function type_spec_from_value(value:Dynamic):Dynamic;
}