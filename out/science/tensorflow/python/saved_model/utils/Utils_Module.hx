/* This file is generated, do not edit! */
package tensorflow.python.saved_model.utils;
@:pythonImport("tensorflow.python.saved_model.utils") extern class Utils_Module {
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
		Utility function to build TensorInfo proto from a Tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.utils.build_tensor_info or tf.compat.v1.saved_model.build_tensor_info.
		
		Args:
		  tensor: Tensor or SparseTensor whose name, dtype and shape are used to
		      build the TensorInfo. For SparseTensors, the names of the three
		      constituent Tensors are used.
		
		Returns:
		  A TensorInfo protocol buffer constructed based on the supplied argument.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
		
		@compatibility(TF2)
		This API is not compatible with eager execution as `tensor` needs to be a
		graph tensor, and there is no replacement for it in TensorFlow 2.x. To start
		writing programs using TensorFlow 2.x, please refer to the [Effective
		TensorFlow 2](https://www.tensorflow.org/guide/effective_tf2) guide.
		@end_compatibility
	**/
	static public function build_tensor_info(tensor:Dynamic):Dynamic;
	/**
		Utility function to build TensorInfo proto from an Op.
		
		Note that this function should be used with caution. It is strictly restricted
		to TensorFlow internal use-cases only. Please make sure you do need it before
		using it.
		
		This utility function overloads the TensorInfo proto by setting the name to
		the Op's name, dtype to DT_INVALID and tensor_shape as None. One typical usage
		is for the Op of the call site for the defunned function:
		```python
		  @function.defun
		  def some_variable_initialization_fn(value_a, value_b):
		    a = value_a
		    b = value_b
		
		  value_a = constant_op.constant(1, name="a")
		  value_b = constant_op.constant(2, name="b")
		  op_info = utils.build_op_info(
		      some_variable_initialization_fn(value_a, value_b))
		```
		
		Args:
		  op: An Op whose name is used to build the TensorInfo. The name that points
		      to the Op could be fetched at run time in the Loader session.
		
		Returns:
		  A TensorInfo protocol buffer constructed based on the supplied argument.
		
		Raises:
		  RuntimeError: If eager execution is enabled.
	**/
	static public function build_tensor_info_from_op(op:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns the Tensor or CompositeTensor described by a TensorInfo proto. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		This function will only be available through the v1 compatibility library as tf.compat.v1.saved_model.utils.get_tensor_from_tensor_info or tf.compat.v1.saved_model.get_tensor_from_tensor_info.
		
		Args:
		  tensor_info: A TensorInfo proto describing a Tensor or SparseTensor or
		    CompositeTensor.
		  graph: The tf.Graph in which tensors are looked up. If None, the
		      current default graph is used.
		  import_scope: If not None, names in `tensor_info` are prefixed with this
		      string before lookup.
		
		Returns:
		  The Tensor or SparseTensor or CompositeTensor in `graph` described by
		  `tensor_info`.
		
		Raises:
		  KeyError: If `tensor_info` does not correspond to a tensor in `graph`.
		  ValueError: If `tensor_info` is malformed.
	**/
	static public function get_tensor_from_tensor_info(tensor_info:Dynamic, ?graph:Dynamic, ?import_scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}