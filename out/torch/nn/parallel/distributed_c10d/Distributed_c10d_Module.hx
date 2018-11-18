/* This file is generated, do not edit! */
package torch.nn.parallel.distributed_c10d;
@:pythonImport("torch.nn.parallel.distributed_c10d") extern class Distributed_c10d_Module {
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
		Group tensors into chunks. This generator yields a chunk at each time,
		each containing tensors of same type up to certain byte limit in total size.
		
		Args:
		    tensors (Sequence): A sequence of tensors to be separated into chunks.
		    size_limit (int): The limit of each chunk in bytes.
		
		Yields:
		    Blocks of tensors of same type and within size_limit. The yielded
		    tensors are only ordered as the original sequence within its types.
	**/
	static public function _take_tensors(tensors:Dynamic, size_limit:Dynamic):Dynamic;
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
	/**
		Broadcasts a sequence tensors to the specified GPUs.
		Small tensors are first coalesced into a buffer to reduce the number
		of synchronizations.
		
		Arguments:
		    tensors (sequence): tensors to broadcast.
		    devices (Iterable): an iterable of devices among which to broadcast.
		      Note that it should be like (src, dst1, dst2, ...), the first element
		      of which is the source device to broadcast from.
		    buffer_size (int): maximum size of the buffer used for coalescing
		
		Returns:
		    A tuple containing copies of the ``tensor``, placed on devices
		    corresponding to indices from ``devices``.
	**/
	static public function broadcast_coalesced(tensors:Dynamic, devices:Dynamic, ?buffer_size:Dynamic):Dynamic;
	/**
		Gathers tensors from different GPUs on a specified device
		  (-1 means the CPU).
	**/
	static public function gather(outputs:Dynamic, target_device:Dynamic, ?dim:Dynamic):Dynamic;
	/**
		Applies each `module` in :attr:`modules` in parallel on arguments
		contained in :attr:`inputs` (positional) and :attr:`kwargs_tup` (keyword)
		on each of :attr:`devices`.
		
		:attr:`modules`, :attr:`inputs`, :attr:`kwargs_tup` (if given), and
		:attr:`devices` (if given) should all have same length. Moreover, each
		element of :attr:`inputs` can either be a single object as the only argument
		to a module, or a collection of positional arguments.
	**/
	static public function parallel_apply(modules:Dynamic, inputs:Dynamic, ?kwargs_tup:Dynamic, ?devices:Dynamic):Dynamic;
	static public function replicate(network:Dynamic, devices:Dynamic, ?detach:Dynamic):Dynamic;
	/**
		Scatter with support for kwargs dictionary
	**/
	static public function scatter_kwargs(inputs:Dynamic, kwargs:Dynamic, target_gpus:Dynamic, ?dim:Dynamic):Dynamic;
}