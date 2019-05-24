/* This file is generated, do not edit! */
package tensorflow.python.ops.ragged.ragged_tensor;
@:pythonImport("tensorflow.python.ops.ragged.ragged_tensor") extern class Ragged_tensor_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Checks that the given SparseTensor.indices tensor is ragged-right.
		
		Example: `indices = [[0, 0], [0, 1], [2, 0], [3, 1]]` is not ragged right
		because the entry `[3, 1]` skips a cell.
		
		Args:
		  indices: The SparseTensor indices to check.
		
		Returns:
		  A list of control dependency op tensors.
	**/
	static public function _assert_sparse_indices_are_ragged_right(indices:Dynamic):Dynamic;
	/**
		Uses the default session to evaluate one or more tensors.
		
		Args:
		  tensors: A single Tensor, or a list of Tensor objects.
		  feed_dict: A dictionary that maps Tensor objects (or tensor names) to lists,
		    numpy ndarrays, TensorProtos, or strings.
		  graph: The graph in which the tensors are defined.
		  session: (Optional) A different session to use to evaluate "tensors".
		
		Returns:
		  Either a single numpy ndarray if "tensors" is a single tensor; or a list
		  of numpy ndarrays that each correspond to the respective element in
		  "tensors".
		
		Raises:
		  ValueError: If no default session is available; the default session
		    does not have "graph" as its graph; or if "session" is specified,
		    and it does not have "graph" as its graph.
	**/
	static public function _eval_using_default_session(tensors:Dynamic, feed_dict:Dynamic, graph:Dynamic, ?session:Dynamic):Dynamic;
	static public function _ragged_tensor_session_feed(feed_key:Dynamic, feed_val:Dynamic):Dynamic;
	static public function _ragged_tensor_session_feed_for_partial_run(feed_key:Dynamic):Dynamic;
	static public function _ragged_tensor_session_fetch(rt:Dynamic):Dynamic;
	/**
		Gradient for RaggedTensorToSparse.
	**/
	static public function _ragged_tensor_to_sparse_gradient(op:Dynamic, unused_sparse_indices_grad:Dynamic, sparse_values_grad:Dynamic, unused_sparse_shape_grad:Dynamic):Dynamic;
	static public function _ragged_tensor_value_from_components(components:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Converts value to a `RaggedTensor` or `Tensor`.
		
		* If `value` is a `RaggedTensor`, then return it as-is.
		* If `value` is a `RaggedTensorValue`, return a corresponding constant
		  `RaggedTensor`.
		* Otherwise, use `convert_to_tensor` to convert `value` to a `Tensor`.
		
		Args:
		  value: A `RaggedTensor`, a `RaggedTensorValue`, or an object whose type has
		    a registered `Tensor` conversion function.
		  dtype: Optional element type for the returned tensor.  If missing the type
		    is inferred from the type of `value`.
		  preferred_dtype: Optional element type for the returned tensor, used when
		    dtype is None.  This argument has no effect if `value` is already a
		    tensor, or when conversion is not possible.
		  name: Optional name to use if a new `Tensor` is created.
		
		Returns:
		  A `Tensor` or `RaggedTensor`.
	**/
	static public function convert_to_tensor_or_ragged_tensor(value:Dynamic, ?dtype:Dynamic, ?preferred_dtype:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns true if `value` is a ragged tensor or ragged tensor value.
	**/
	static public function is_ragged(value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}