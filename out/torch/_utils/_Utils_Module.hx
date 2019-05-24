/* This file is generated, do not edit! */
package torch._utils;
@:pythonImport("torch._utils") extern class _Utils_Module {
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
		Returns a copy of this object in CUDA memory.
		
		If this object is already in CUDA memory and on the correct device, then
		no copy is performed and the original object is returned.
		
		Args:
		    device (int): The destination GPU id. Defaults to the current device.
		    non_blocking (bool): If ``True`` and the source is in pinned memory,
		        the copy will be asynchronous with respect to the host. Otherwise,
		        the argument has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument.
	**/
	static public function _cuda(self:Dynamic, ?device:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _get_async_or_non_blocking(function_name:Dynamic, non_blocking:Dynamic, kwargs:Dynamic):Dynamic;
	static public function _import_dotted_name(name:Dynamic):Dynamic;
	static public function _rebuild_parameter(data:Dynamic, requires_grad:Dynamic, backward_hooks:Dynamic):Dynamic;
	static public function _rebuild_tensor(storage:Dynamic, storage_offset:Dynamic, size:Dynamic, stride:Dynamic):Dynamic;
	static public function _rebuild_tensor_v2(storage:Dynamic, storage_offset:Dynamic, size:Dynamic, stride:Dynamic, requires_grad:Dynamic, backward_hooks:Dynamic):Dynamic;
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
		Returns the type if `dtype` is not provided, else casts this object to
		the specified type.
		
		If this is already of the correct type, no copy is performed and the
		original object is returned.
		
		Args:
		    dtype (type or string): The desired type
		    non_blocking (bool): If ``True``, and the source is in pinned memory
		        and destination is on the GPU or vice versa, the copy is performed
		        asynchronously with respect to the host. Otherwise, the argument
		        has no effect.
		    **kwargs: For compatibility, may contain the key ``async`` in place of
		        the ``non_blocking`` argument. The ``async`` arg is deprecated.
	**/
	static public function _type(self:Dynamic, ?dtype:Dynamic, ?non_blocking:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function annotate(ret:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}