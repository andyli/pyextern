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
	static public function _apply_all_reduce(reduction_op:Dynamic, tensors:Dynamic):Dynamic;
	static public function _get_shared_name():Dynamic;
	static public var _lock : Dynamic;
	static public var _shared_name_counter : Dynamic;
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
		Returns a list of tensors on `dst_devices`, each with value `tensor`.
		
		The computation is done with a broadcast nccl operation, so if only some of
		the returned tensors and src_tensor are evaluated then the computation will
		hang.
		
		Args:
		  src_tensor: The tensor to send; must be assigned to a GPU device.
		  dst_devices: The GPU devices to receive the sent tensor.
		
		Returns:
		  List of tensors, each with the value of `src_tensor`, which the device
		  of tensor i is `dst_devices[i]`.
	**/
	static public function broadcast(src_tensor:Dynamic, dst_devices:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}