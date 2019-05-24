/* This file is generated, do not edit! */
package torch.nn.parallel.deprecated.distributed_cpu;
@:pythonImport("torch.nn.parallel.deprecated.distributed_cpu") extern class Distributed_cpu_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Flatten dense tensors into a contiguous 1D buffer. Assume tensors are of
		same dense type.
		
		Since inputs are dense, the resulting tensor will be a concatenated 1D
		buffer. Element-wise operation on this buffer will be equivalent to
		operating individually.
		
		Arguments:
		    tensors (Iterable[Tensor]): dense tensors to flatten.
		
		Returns:
		    A contiguous 1D buffer containing input tensors.
	**/
	static public function _flatten_dense_tensors(tensors:Dynamic):Dynamic;
	/**
		View a flat buffer using the sizes of tensors. Assume that tensors are of
		same dense type, and that flat is given by _flatten_dense_tensors.
		
		Arguments:
		    flat (Tensor): flattened dense tensors to unflatten.
		    tensors (Iterable[Tensor]): dense tensors whose sizes will be used to
		      unflatten flat.
		
		Returns:
		    Unflattened dense tensors with sizes same as tensors and values from
		    flat.
	**/
	static public function _unflatten_dense_tensors(flat:Dynamic, tensors:Dynamic):Dynamic;
}