/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.ops.gen_tensor_forest_ops;
@:pythonImport("tensorflow.contrib.tensor_forest.python.ops.gen_tensor_forest_ops") extern class Gen_tensor_forest_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _op_def_lib : Dynamic;
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
	/**
		Converts byte arrays represented by strings to 32-bit
		
		   floating point numbers. The output numbers themselves are meaningless, and
		   should only be used in == comparisons.
		
		   input_data: A batch of string features as a 2-d tensor; `input_data[i][j]`
		     gives the j-th feature of the i-th input.
		   output_data: A tensor of the same shape as input_data but the values are
		     float32.
		
		Args:
		  input_data: A `Tensor` of type `string`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function reinterpret_string_to_float(input_data:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function reinterpret_string_to_float
	**/
	static public function reinterpret_string_to_float_eager_fallback(input_data:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Add elements in deltas to mutable input according to indices.
		
		  input: A N-dimensional float tensor to mutate.
		  indices:= A 2-D int32 tensor. The size of dimension 0 is the number of
		    deltas, the size of dimension 1 is the rank of the input.  `indices[i]`
		    gives the coordinates of input that `deltas[i]` should add to.  If
		    `indices[i]` does not fully specify a location (it has less indices than
		    there are dimensions in `input`), it is assumed that they are start
		    indices and that deltas contains enough values to fill in the remaining
		    input dimensions.
		  deltas: `deltas[i]` is the value to add to input at index indices[i][:]
		
		Args:
		  input: A `Tensor` of type mutable `float32`.
		  indices: A `Tensor` of type `int32`.
		  deltas: A `Tensor` of type `float32`.
		  name: A name for the operation (optional).
		
		Returns:
		  The created Operation.
	**/
	static public function scatter_add_ndim(input:Dynamic, indices:Dynamic, deltas:Dynamic, ?name:Dynamic):Dynamic;
	static public function scatter_add_ndim_eager_fallback(input:Dynamic, indices:Dynamic, deltas:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}