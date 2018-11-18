/* This file is generated, do not edit! */
package torch.cuda.comm;
@:pythonImport("torch.cuda.comm") extern class Comm_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return running totals
	**/
	static public function _accumulate(iterable:Dynamic, ?fn:Dynamic):Dynamic;
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
		Flatten sparse tensors into two contiguous 1D buffers, one of indices and
		one of values. Assume tensors are of same sparse type.
		
		Arguments:
		    tensors (Iterable[Tensor]): sparse tensors to flatten.
		
		Returns:
		    A tuple of two contiguous 1D buffers, one containing input tensors'
		    indices and the other containing the values.
	**/
	static public function _flatten_sparse_tensors(tensors:Dynamic):Dynamic;
	/**
		Assume that tensors are of same order as ordered_tensors within their
		types, e.g., from _take_tensors. Reorder them to be of same order as
		ordered_tensors.
		
		Arguments:
		    tensors (Iterable[Tensor]): tensors to be reordered. They should be of
		      the same order as ordered_tensors within their own types.
		    ordered_tensors (Iterable[Tensor]): tensors whose order will be the
		      reference.
		
		Returns:
		    Ordered tuple of tensors with contents from tensors and order of
		    ordered_tensors.
	**/
	static public function _reorder_tensors_as(tensors:Dynamic, ordered_tensors:Dynamic):Dynamic;
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
		View flat buffer (containing indices and values) using the sizes of
		tensors. Assume that tensors are of same sparse type, and that flat is given
		by _flatten_sparse_tensors.
		
		Arguments:
		    flat (tuple(Tensor, Tensor)): flattened indices and values of sparse
		      tensors to unflatten.
		    tensors (Iterable[Tensor]): sparse tensors whose sizes will be used to
		      unflatten flat.
		
		Returns:
		    Unflattened sparse tensors with sizes same as tensors and values from
		    flat.
	**/
	static public function _unflatten_sparse_tensors(flat:Dynamic, tensors:Dynamic):Dynamic;
	/**
		Broadcasts a tensor to a number of GPUs.
		
		Arguments:
		    tensor (Tensor): tensor to broadcast.
		    devices (Iterable): an iterable of devices among which to broadcast.
		      Note that it should be like (src, dst1, dst2, ...), the first element
		      of which is the source device to broadcast from.
		
		Returns:
		    A tuple containing copies of the ``tensor``, placed on devices
		    corresponding to indices from ``devices``.
	**/
	static public function broadcast(tensor:Dynamic, devices:Dynamic):Dynamic;
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
		Gathers tensors from multiple GPUs.
		
		Tensor sizes in all dimension different than ``dim`` have to match.
		
		Arguments:
		    tensors (Iterable[Tensor]): iterable of tensors to gather.
		    dim (int): a dimension along which the tensors will be concatenated.
		    destination (int, optional): output device (-1 means CPU, default:
		        current device)
		
		Returns:
		    A tensor located on ``destination`` device, that is a result of
		    concatenating ``tensors`` along ``dim``.
	**/
	static public function gather(tensors:Dynamic, ?dim:Dynamic, ?destination:Dynamic):Dynamic;
	/**
		Sums tensors from multiple GPUs.
		
		All inputs should have matching shapes.
		
		Arguments:
		    inputs (Iterable[Tensor]): an iterable of tensors to add.
		    destination (int, optional): a device on which the output will be
		        placed (default: current device).
		
		Returns:
		    A tensor containing an elementwise sum of all inputs, placed on the
		    ``destination`` device.
	**/
	static public function reduce_add(inputs:Dynamic, ?destination:Dynamic):Dynamic;
	/**
		Sums tensors from multiple GPUs.
		
		Small tensors are first coalesced into a buffer to reduce the number
		of synchronizations.
		
		Arguments:
		    inputs (Iterable[Iterable[Tensor]]): iterable of iterables that
		        contain tensors from a single device.
		    destination (int, optional): a device on which the output will be
		        placed (default: current device).
		    buffer_size (int): maximum size of the buffer used for coalescing
		
		Returns:
		    A tuple of tensors containing an elementwise sum of each group of
		    inputs, placed on the ``destination`` device.
	**/
	static public function reduce_add_coalesced(inputs:Dynamic, ?destination:Dynamic, ?buffer_size:Dynamic):Dynamic;
	/**
		Scatters tensor across multiple GPUs.
		
		Arguments:
		    tensor (Tensor): tensor to scatter.
		    devices (Iterable[int]): iterable of ints, specifying among which
		        devices the tensor should be scattered.
		    chunk_sizes (Iterable[int], optional): sizes of chunks to be placed on
		        each device. It should match ``devices`` in length and sum to
		        ``tensor.size(dim)``. If not specified, the tensor will be divided
		        into equal chunks.
		    dim (int, optional): A dimension along which to chunk the tensor.
		
		Returns:
		    A tuple containing chunks of the ``tensor``, spread across given
		    ``devices``.
	**/
	static public function scatter(tensor:Dynamic, devices:Dynamic, ?chunk_sizes:Dynamic, ?dim:Dynamic, ?streams:Dynamic):Dynamic;
}