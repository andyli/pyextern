/* This file is generated, do not edit! */
package torch.cuda.comm;
@:pythonImport("torch.cuda.comm") extern class Comm_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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