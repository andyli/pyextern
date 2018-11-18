/* This file is generated, do not edit! */
package tensorflow.contrib.nccl;
@:pythonImport("tensorflow.contrib.nccl") extern class Nccl_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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