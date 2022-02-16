/* This file is generated, do not edit! */
package tensorflow.python.eager.forwardprop;
@:pythonImport("tensorflow.python.eager.forwardprop") extern class Forwardprop_Module {
	static public var _SPECIAL_CASES : Dynamic;
	static public var _TRACE_COUNT : Dynamic;
	static public var _TRACE_COUNT_CONSISTENCY_LOCK : Dynamic;
	static public var _TRACE_COUNT_LIMIT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _identity_jvp(attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic):Dynamic;
	/**
		Determine which forwardprop function to call.
	**/
	static public function _jvp_dispatch(op_name:Dynamic, attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic, ?use_batch:Dynamic):Dynamic;
	/**
		Computes a batch of Jacobian-vector product for an op.
		
		Args:
		  op_name: A string, the type of operation being executed.
		  attr_tuple: Attributes of the operation.
		  inputs: A flat list of input Tensors to the operation.
		  outputs: A flat list of output Tensors from the operation.
		  tangents: A flat list of Tensors, compatible with shape `[None] +
		    input_shape`.
		  use_batch: A bool, True to vetorize over batch of tangents of shape `[None]
		    + input_shape`.
		
		Returns:
		  A flat list of tangents compatible with `outputs`
		  or `[None] + output_shape`.
		
		Raises:
		  ValueError: if tangent shapes are not compatible with input shapes.
	**/
	static public function _jvp_exact_shapes(op_name:Dynamic, attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic, use_batch:Dynamic):Dynamic;
	/**
		Computes a Jacobian-vector product for an op.
		
		Note that this function would be wasteful if executed eagerly. It runs the
		backward gradient function and throws away the result just to record its
		operations on a GradientTape. These unused ops are pruned away when this
		function is traced.
		
		Args:
		  op_name: A string, the type of operation being executed.
		  attr_tuple: Attributes of the operation.
		  inputs: A flat list of input Tensors to the operation.
		  outputs: A flat list of output Tensors from the operation.
		  tangents: A flat list of Tensors, same shape as `inputs`.
		
		Returns:
		  A flat list of tangents corresponding to `outputs`.
	**/
	static public function _jvp_helper(op_name:Dynamic, attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic):Dynamic;
	/**
		Computes a batch of Jacobian-vector product for an op.
		
		Args:
		  op_name: A string, the type of operation being executed.
		  attr_tuple: Attributes of the operation.
		  inputs: A flat list of input Tensors to the operation.
		  outputs: A flat list of output Tensors from the operation.
		  tangents: A flat list of Tensors, compatible with shape `[None] +
		    input_shape`.
		  use_batch: A bool, True to vetorize over batch of tangents of shape `[None]
		    + input_shape`.
		
		Returns:
		  A flat list of tangents compatible with `outputs`
		  or `[None] + output_shape`.
		
		Raises:
		  ValueError: if tangent shapes are not compatible with input shapes.
	**/
	static public function _jvp_helper_wrapper(op_name:Dynamic, attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic, use_batch:Dynamic):Dynamic;
	/**
		Computes a batch of Jacobian-vector product for an op.
		
		Args:
		  op_name: A string, the type of operation being executed.
		  attr_tuple: Attributes of the operation.
		  inputs: A flat list of input Tensors to the operation.
		  outputs: A flat list of output Tensors from the operation.
		  tangents: A flat list of Tensors, compatible with shape `[None] +
		    input_shape`.
		  use_batch: A bool, True to vetorize over batch of tangents of shape `[None]
		    + input_shape`.
		
		Returns:
		  A flat list of tangents compatible with `outputs`
		  or `[None] + output_shape`.
		
		Raises:
		  ValueError: if tangent shapes are not compatible with input shapes.
	**/
	static public function _jvp_relaxed_shapes(op_name:Dynamic, attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic, use_batch:Dynamic):Dynamic;
	static public function _read_variable_jvp(attr_tuple:Dynamic, inputs:Dynamic, outputs:Dynamic, tangents:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}