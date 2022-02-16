/* This file is generated, do not edit! */
package torch.nn.parallel.comm;
@:pythonImport("torch.nn.parallel.comm") extern class Comm_Module {
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		Args:
		    tensors (Iterable[Tensor]): dense tensors to flatten.
		
		Returns:
		    A contiguous 1D buffer containing input tensors.
	**/
	static public function _flatten_dense_tensors(tensors:Dynamic):Dynamic;
	/**
		Gets the device index from :attr:`device`, which can be a torch.device
		object, a Python integer, or ``None``.
		
		If :attr:`device` is a torch.device object, returns the device index if it
		has index. Note that for a device without a specified index,
		i.e., ``torch.device('xxx')``, this will return the current default
		device of that type if :attr:`optional` is ``True``. If :attr:`allow_cpu` is ``True``,
		CPU devices will be accepted and ``-1`` will be returned in this case.
		
		If :attr:`device` is a Python integer, it is returned as is.
		
		If :attr:`device` is ``None``, this will return the current default
		device of the supported runtime platform if :attr:`optional` is ``True``.
		i.e., the current default CUDA device will be returned if CUDA runtime is supported.
	**/
	static public function _get_device_index(device:Dynamic, ?optional:Dynamic, ?allow_cpu:Dynamic):Dynamic;
	/**
		Returns a real view of a tensor if complex dtype else just the tensor
		need to check if a UninitializedParameter because otherwise checking is_complex is an error for a LazyModule
	**/
	static public function _handle_complex(tensor:Dynamic):Dynamic;
	/**
		Assume that tensors are of same order as ordered_tensors within their
		types, e.g., from _take_tensors. Reorder them to be of same order as
		ordered_tensors.
		
		Args:
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
		
		Args:
		    flat (Tensor): flattened dense tensors to unflatten.
		    tensors (Iterable[Tensor]): dense tensors whose sizes will be used to
		      unflatten flat.
		
		Returns:
		    Unflattened dense tensors with sizes same as tensors and values from
		    flat.
	**/
	static public function _unflatten_dense_tensors(flat:Dynamic, tensors:Dynamic):Dynamic;
	/**
		Broadcasts a tensor to specified GPU devices.
		
		Args:
		    tensor (Tensor): tensor to broadcast. Can be on CPU or GPU.
		    devices (Iterable[torch.device, str or int], optional): an iterable of
		      GPU devices, among which to broadcast.
		    out (Sequence[Tensor], optional, keyword-only): the GPU tensors to
		      store output results.
		
		.. note::
		    Exactly one of :attr:`devices` and :attr:`out` must be specified.
		
		Returns:
		    - If :attr:`devices` is specified,
		        a tuple containing copies of :attr:`tensor`, placed on
		        :attr:`devices`.
		    - If :attr:`out` is specified,
		        a tuple containing :attr:`out` tensors, each containing a copy of
		        :attr:`tensor`.
	**/
	static public function broadcast(tensor:Dynamic, ?devices:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Broadcasts a sequence tensors to the specified GPUs.
		Small tensors are first coalesced into a buffer to reduce the number
		of synchronizations.
		
		Args:
		    tensors (sequence): tensors to broadcast. Must be on the same device,
		      either CPU or GPU.
		    devices (Iterable[torch.device, str or int]): an iterable of GPU
		      devices, among which to broadcast.
		    buffer_size (int): maximum size of the buffer used for coalescing
		
		Returns:
		    A tuple containing copies of :attr:`tensor`, placed on :attr:`devices`.
	**/
	static public function broadcast_coalesced(tensors:Dynamic, devices:Dynamic, ?buffer_size:Dynamic):Dynamic;
	/**
		Gathers tensors from multiple GPU devices.
		
		Args:
		    tensors (Iterable[Tensor]): an iterable of tensors to gather.
		      Tensor sizes in all dimensions other than :attr:`dim` have to match.
		    dim (int, optional): a dimension along which the tensors will be
		      concatenated. Default: ``0``.
		    destination (torch.device, str, or int, optional): the output device.
		      Can be CPU or CUDA. Default: the current CUDA device.
		    out (Tensor, optional, keyword-only): the tensor to store gather result.
		      Its sizes must match those of :attr:`tensors`, except for :attr:`dim`,
		      where the size must equal ``sum(tensor.size(dim) for tensor in tensors)``.
		      Can be on CPU or CUDA.
		
		.. note::
		    :attr:`destination` must not be specified when :attr:`out` is specified.
		
		Returns:
		    - If :attr:`destination` is specified,
		        a tensor located on :attr:`destination` device, that is a result of
		        concatenating :attr:`tensors` along :attr:`dim`.
		    - If :attr:`out` is specified,
		        the :attr:`out` tensor, now containing results of concatenating
		        :attr:`tensors` along :attr:`dim`.
	**/
	static public function gather(tensors:Dynamic, ?dim:Dynamic, ?destination:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Sums tensors from multiple GPUs.
		
		All inputs should have matching shapes, dtype, and layout. The output tensor
		will be of the same shape, dtype, and layout.
		
		Args:
		    inputs (Iterable[Tensor]): an iterable of tensors to add.
		    destination (int, optional): a device on which the output will be
		        placed (default: current device).
		
		Returns:
		    A tensor containing an elementwise sum of all inputs, placed on the
		    :attr:`destination` device.
	**/
	static public function reduce_add(inputs:Dynamic, ?destination:Dynamic):Dynamic;
	/**
		Sums tensors from multiple GPUs.
		
		Small tensors are first coalesced into a buffer to reduce the number
		of synchronizations.
		
		Args:
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
		
		Args:
		    tensor (Tensor): tensor to scatter. Can be on CPU or GPU.
		    devices (Iterable[torch.device, str or int], optional): an iterable of
		      GPU devices, among which to scatter.
		    chunk_sizes (Iterable[int], optional): sizes of chunks to be placed on
		      each device. It should match :attr:`devices` in length and sums to
		      ``tensor.size(dim)``. If not specified, :attr:`tensor` will be divided
		      into equal chunks.
		    dim (int, optional): A dimension along which to chunk :attr:`tensor`.
		      Default: ``0``.
		    streams (Iterable[Stream], optional): an iterable of Streams, among
		      which to execute the scatter. If not specified, the default stream will
		      be utilized.
		    out (Sequence[Tensor], optional, keyword-only): the GPU tensors to
		      store output results. Sizes of these tensors must match that of
		      :attr:`tensor`, except for :attr:`dim`, where the total size must
		      sum to ``tensor.size(dim)``.
		
		.. note::
		    Exactly one of :attr:`devices` and :attr:`out` must be specified. When
		    :attr:`out` is specified, :attr:`chunk_sizes` must not be specified and
		    will be inferred from sizes of :attr:`out`.
		
		Returns:
		    - If :attr:`devices` is specified,
		        a tuple containing chunks of :attr:`tensor`, placed on
		        :attr:`devices`.
		    - If :attr:`out` is specified,
		        a tuple containing :attr:`out` tensors, each containing a chunk of
		        :attr:`tensor`.
	**/
	static public function scatter(tensor:Dynamic, ?devices:Dynamic, ?chunk_sizes:Dynamic, ?dim:Dynamic, ?streams:Dynamic, ?out:Dynamic):Dynamic;
}