/* This file is generated, do not edit! */
package tensorflow.python.ops.map_ops;
@:pythonImport("tensorflow.python.ops.map_ops") extern class Map_ops_Module {
	/**
		Creates and returns an empty tensor map.
		
		handle: an empty tensor map
		
		Args:
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function EmptyTensorMap(?name:Dynamic):Dynamic;
	static public function EraseGrad(op:Dynamic, dmap:Dynamic):Dynamic;
	static public function InsertGrad(op:Dynamic, dmap:Dynamic):Dynamic;
	static public function LookupGrad(op:Dynamic, dval:Dynamic):Dynamic;
	/**
		Returns a tensor map with item from given key erased.
		
		input_handle: the original map
		output_handle: the map with value from given key removed
		key: the key of the value to be erased
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  key: A `Tensor`.
		  value_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorMapErase(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns whether the given key exists in the map.
		
		input_handle: the input map
		key: the key to check
		has_key: whether the key is already in the map or not
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  key: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `bool`.
	**/
	static public function TensorMapHasKey(input_handle:Dynamic, key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a map that is the 'input_handle' with the given key-value pair inserted.
		
		input_handle: the original map
		output_handle: the map with key and value inserted
		key: the key to be inserted
		value: the value to be inserted
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  key: A `Tensor`.
		  value: A `Tensor`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `variant`.
	**/
	static public function TensorMapInsert(input_handle:Dynamic, key:Dynamic, value:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the value from a given key in a tensor map.
		
		input_handle: the input map
		key: the key to be looked up
		value: the value found from the given key
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  key: A `Tensor`.
		  value_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `value_dtype`.
	**/
	static public function TensorMapLookup(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the number of tensors in the input tensor map.
		
		input_handle: the input map
		size: the number of tensors in the map
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int32`.
	**/
	static public function TensorMapSize(input_handle:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns a Tensor stack of all keys in a tensor map.
		
		input_handle: the input map
		keys: the returned Tensor of all keys in the map
		
		Args:
		  input_handle: A `Tensor` of type `variant`.
		  key_dtype: A `tf.DType`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `key_dtype`.
	**/
	static public function TensorMapStackKeys(input_handle:Dynamic, key_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function empty_tensor_map():Dynamic;
	static public function empty_tensor_map_eager_fallback(name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tensor_map_erase(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic):Dynamic;
	static public function tensor_map_erase_eager_fallback(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_map_has_key(input_handle:Dynamic, key:Dynamic):Dynamic;
	static public function tensor_map_has_key_eager_fallback(input_handle:Dynamic, key:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_map_insert(input_handle:Dynamic, key:Dynamic, value:Dynamic):Dynamic;
	static public function tensor_map_insert_eager_fallback(input_handle:Dynamic, key:Dynamic, value:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_map_lookup(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic):Dynamic;
	static public function tensor_map_lookup_eager_fallback(input_handle:Dynamic, key:Dynamic, value_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_map_size(input_handle:Dynamic):Dynamic;
	static public function tensor_map_size_eager_fallback(input_handle:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tensor_map_stack_keys(input_handle:Dynamic, key_dtype:Dynamic):Dynamic;
	static public function tensor_map_stack_keys_eager_fallback(input_handle:Dynamic, key_dtype:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}