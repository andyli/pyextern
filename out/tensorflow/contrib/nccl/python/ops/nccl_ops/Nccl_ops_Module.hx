/* This file is generated, do not edit! */
package tensorflow.contrib.nccl.python.ops.nccl_ops;
@:pythonImport("tensorflow.contrib.nccl.python.ops.nccl_ops") extern class Nccl_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		The gradients for `all_sum`.
		
		Args:
		  op: The `all_sum` `Operation` that we are differentiating.
		  grad: Gradient with respect to the output of the `all_sum` op.
		
		Returns:
		  The gradient with respect to the output of `all_sum`.
		
		Raises:
		  LookupError: If `reduction` is not `sum`.
	**/
	static public function _all_sum_grad(op:Dynamic, grad:Dynamic):Dynamic;
	/**
		Helper function for all_* functions.
	**/
	static public function _apply_all_reduce(reduction:Dynamic, tensors:Dynamic):Dynamic;
	/**
		Helper function for reduce_* functions.
	**/
	static public function _apply_reduce(reduction:Dynamic, tensors:Dynamic):Dynamic;
	/**
		The gradients for input `Operation` of `broadcast`.
		
		Args:
		  op: The `broadcast send` `Operation` that we are differentiating.
		  accumulated_grad: Accumulated gradients with respect to the output of the
		    `broadcast` op.
		
		Returns:
		  Gradients with respect to the input of `broadcast`.
	**/
	static public function _broadcast_grad(op:Dynamic, accumulated_grad:Dynamic):Dynamic;
	static public function _check_device(tensor:Dynamic, ?expected:Dynamic):Dynamic;
	static public function _get_shared_name():Dynamic;
	/**
		Loads nccl ops so if it hasn't been loaded already.
	**/
	static public function _maybe_load_nccl_ops_so():Dynamic;
	static public var _module_lock : Dynamic;
	static public var _nccl_ops_so : Dynamic;
	/**
		The gradients for input `Operation` of `reduce_sum`.
		
		Args:
		  op: The `sum send` `Operation` that we are differentiating.
		  grad: Gradient with respect to the output of the `reduce_sum` op.
		
		Returns:
		  The gradient with respect to the input of `reduce_sum` op.
		
		Raises:
		  LookupError: If the reduction attribute of op is not `sum`.
	**/
	static public function _reduce_sum_grad(op:Dynamic, grad:Dynamic):Dynamic;
	static public var _shared_name_counter : Dynamic;
	/**
		Validates calling context and loads nccl ops so file.
		
		Raises:
		  ValueError: Ops are not supported.
		  errors_impl.NotFoundError: nccl library is not installed.
	**/
	static public function _validate_and_load_nccl_so():Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns a list of tensors with the all-reduce max across `tensors`.
		
		The computation is done with an all-reduce operation, so if only some of the
		returned tensors are evaluated then the computation will hang.
		
		Args:
		  tensors: The input tensors across which to reduce; must be assigned
		    to GPU devices.
		
		Returns:
		  List of tensors, each with the maximum of the input tensors, where tensor i
		  has the same device as `tensors[i]`.
	**/
	static public function all_max(tensors:Dynamic):Dynamic;
	/**
		Returns a list of tensors with the all-reduce min across `tensors`.
		
		The computation is done with an all-reduce operation, so if only some of the
		returned tensors are evaluated then the computation will hang.
		
		Args:
		  tensors: The input tensors across which to reduce; must be assigned
		    to GPU devices.
		
		Returns:
		  List of tensors, each with the minimum of the input tensors, where tensor i
		  has the same device as `tensors[i]`.
	**/
	static public function all_min(tensors:Dynamic):Dynamic;
	/**
		Returns a list of tensors with the all-reduce product across `tensors`.
		
		The computation is done with an all-reduce operation, so if only some of the
		returned tensors are evaluated then the computation will hang.
		
		Args:
		  tensors: The input tensors across which to multiply; must be assigned
		    to GPU devices.
		
		Returns:
		  List of tensors, each with the product of the input tensors, where tensor i
		  has the same device as `tensors[i]`.
	**/
	static public function all_prod(tensors:Dynamic):Dynamic;
	/**
		Returns a list of tensors with the all-reduce sum across `tensors`.
		
		The computation is done with an all-reduce operation, so if only some of the
		returned tensors are evaluated then the computation will hang.
		
		Args:
		  tensors: The input tensors across which to sum; must be assigned
		    to GPU devices.
		
		Returns:
		  List of tensors, each with the sum of the input tensors, where tensor i has
		  the same device as `tensors[i]`.
	**/
	static public function all_sum(tensors:Dynamic):Dynamic;
	/**
		Returns a tensor that can be efficiently transferred to other devices.
		
		Args:
		  tensor: The tensor to send; must be assigned to a GPU device.
		
		Returns:
		  A tensor with the value of `src_tensor`, which can be used as input to
		  ops on other GPU devices.
	**/
	static public function broadcast(tensor:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a tensor with the reduce sum across `tensors`.
		
		The computation is done with a reduce operation, so only one tensor is
		returned.
		
		Args:
		  tensors: The input tensors across which to sum; must be assigned
		    to GPU devices.
		
		Returns:
		  A tensor containing the sum of the input tensors.
		
		Raises:
		  LookupError: If context is not currently using a GPU device.
	**/
	static public function reduce_sum(tensors:Dynamic):Dynamic;
}