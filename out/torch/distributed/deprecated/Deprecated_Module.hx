/* This file is generated, do not edit! */
package torch.distributed.deprecated;
@:pythonImport("torch.distributed.deprecated") extern class Deprecated_Module {
	static public var _INITIALIZED_MW : Dynamic;
	static public var _INITIALIZED_PG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _backend : Dynamic;
	/**
		Clear the created distributed group's cached resource.
		
		Only NCCL backend is currently supported.
		
		Cached resource includes NCCL communicators and CUDA events.
		
		Arguments:
		    group (optional): Group of the collective.
	**/
	static public function _clear_group_cache(?group:Dynamic):Dynamic;
	static public function _extend_scope(module:Dynamic):Dynamic;
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
	static public var _initialized : Dynamic;
	static public function _register_stream(stream:Dynamic):Dynamic;
	static public var _scope : Dynamic;
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
		Gathers tensors from the whole group in a list.
		
		Arguments:
		    tensor_list (list[Tensor]): Output list. It should contain
		        correctly-sized tensors to be used for output of the collective.
		    tensor (Tensor): Tensor to be broadcast from current process.
		    group (optional): Group of the collective.
	**/
	static public function all_gather(tensor_list:Dynamic, tensor:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Gathers tensors from the whole group in a list.
		Each tensor in :attr:`input_tensor_list` should reside on a separate GPU.
		
		.. note::
		  Only NCCL backend is currently supported. :attr:`output_tensor_lists` and
		  :attr:`input_tensor_list` should only contain GPU tensors.
		
		Arguments:
		    output_tensor_lists (List[List[Tensor]]): Output lists. It should
		        contain correctly-sized tensors on each GPU to be used for output of
		        the collective.
		        e.g. ``output_tensor_lists[i]`` contains the all_gather
		        result that resides on the GPU of ``input_tensor_list[i]``.
		        Note that each element of ``output_tensor_lists[i]`` has the size of
		        ``world_size * len(input_tensor_list)``, since the function all
		        gathers the result from every single GPU in the group. To interpret
		        each element of ``output_tensor_list[i]``, note that
		        ``input_tensor_list[j]`` of rank k will be appear in
		        ``output_tensor_list[i][rank * world_size + j]``
		        Also note that ``len(output_tensor_lists)``, and the size of each
		        element in ``output_tensor_lists`` (each element is a list,
		        therefore ``len(output_tensor_lists[i])``) need to be the same
		        for all the distributed processes calling this function.
		
		    input_tensor_list (List[Tensor]): List of tensors (on different GPUs) to
		        be broadcast from current process.
		        Note that ``len(input_tensor_list)`` needs to be the same for
		        all the distributed processes calling this function.
		    group (optional): Group of the collective.
	**/
	static public function all_gather_multigpu(output_tensor_lists:Dynamic, input_tensor_list:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result.
		
		After the call :attr:`tensor` will be bitwise identical in all processes.
		
		Arguments:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    op (optional): One of the values from ``torch.distributed.deprecated.reduce_op``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (optional): Group of the collective.
	**/
	static public function all_reduce(tensor:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result. This function reduces a number of tensors on every node,
		while each tensor resides on a different GPU.
		Therefore, the input tensor in the tensor list needs to be GPU tensors.
		Also, each tensor in the tensor list needs to reside on a different GPU.
		
		After the call, all tensors in :attr:`tensor_list` will be bitwise identical
		in all processes.
		
		.. note::
		  Only NCCL backend is currently supported. :attr:`tensor_list` should only
		  contain GPU tensors.
		
		Arguments:
		    tensor_list (List[Tensor]): List of input and output tensors of
		        the collective. The function operates in-place and requires that
		        each tensor to be a GPU tensor on different GPUs.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		
		    op (optional): One of the values from ``torch.distributed.deprecated.reduce_op``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (optional): Group of the collective.
	**/
	static public function all_reduce_multigpu(tensor_list:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Synchronizes all processes.
		
		This collective blocks processes until the whole group enters this function.
		
		Arguments:
		    group (optional): Group of the collective.
	**/
	static public function barrier(?group:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group.
		
		:attr:`tensor` must have the same number of elements in all processes
		participating in the collective.
		
		Arguments:
		    tensor (Tensor): Data to be sent if :attr:`src` is the rank of
		        current process, and tensor to be used to save received data
		        otherwise.
		    src (int): Source rank.
		    group (optional): Group of the collective.
	**/
	static public function broadcast(tensor:Dynamic, src:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group with multiple GPU tensors
		per node.
		
		:attr:`tensor` must have the same number of elements in all the GPUs from
		all processes participating in the collective. each tensor in the list must
		be on a different GPU.
		
		.. note::
		  Only NCCL backend is currently supported. :attr:`tensor_list` should only
		  contain GPU tensors.
		
		Arguments:
		    tensor_list (List[Tensor]): Tensors that participate in the collective
		        operation. if ``src`` is the rank, then the first element of
		        ``tensor_list`` (``tensor_list[0]``) will be broadcasted to all
		        other tensors (on different GPUs) in the src process and all tensors
		        in ``tensor_list`` of other non-src processes. You also need to make
		        sure that ``len(tensor_list)`` is the same for all the distributed
		        processes calling this function.
		
		    src (int): Source rank.
		    group (optional): Group of the collective.
	**/
	static public function broadcast_multigpu(tensor_list:Dynamic, src:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Destroy the initialized distributed package
		    
	**/
	static public function destroy_process_group():Dynamic;
	/**
		Gathers a list of tensors in a single process.
		
		Arguments:
		    tensor (Tensor): Input tensor.
		    dst (int): Destination rank. Required in all processes except the one that
		        is receiveing the data.
		    gather_list (list[Tensor]): List of appropriately-sized tensors to
		        use for received data. Required only in the receiving process.
		    group (optional): Group of the collective.
	**/
	static public function gather(tensor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the rank of current process.
		
		Rank is a unique identifier assigned to each process within a distributed
		group. They are always consecutive integers ranging from ``0`` to
		``world_size - 1`` (inclusive).
	**/
	static public function get_rank():Dynamic;
	/**
		Returns the number of processes in the distributed group.
	**/
	static public function get_world_size():Dynamic;
	static public function init_master_worker(backend:Dynamic, ?init_method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initializes the distributed package.
		
		Arguments:
		    backend (str): Name of the backend to use. Depending on build-time configuration
		        valid values include: ``tcp``, ``mpi``, ``gloo`` and ``nccl``.
		    init_method (str, optional): URL specifying how to initialize the package.
		    world_size (int, optional): Number of processes participating in the job.
		    rank (int, optional): Rank of the current process.
		    group_name (str, optional): Group name. See description of init methods.
		
		To enable ``backend == mpi``, PyTorch needs to built from source on a system that
		supports MPI. If you want to use Open MPI with CUDA-aware support, please use
		Open MPI major version 2 and above.
		
		.. note::
		    This method initializes CUDA context. Therefore, if multiple processes
		    run on a single machine but use different GPUs, make sure to use
		    :func:`torch.cuda.set_device` before this method to avoid unnecessarily
		    creating context on the first visible device.
	**/
	static public function init_process_group(backend:Dynamic, ?init_method:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Receives a tensor asynchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int): Source rank.
		
		Returns:
		    A distributed request object.
	**/
	static public function irecv(tensor:Dynamic, src:Dynamic):Dynamic;
	static public function is_available():Dynamic;
	/**
		Checking if the process group has been initialized
		    
	**/
	static public function is_initialized():Dynamic;
	/**
		Sends a tensor asynchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
		
		Returns:
		    A distributed request object.
	**/
	static public function isend(tensor:Dynamic, dst:Dynamic):Dynamic;
	/**
		Creates a new distributed group.
		
		This function requires that all processes in the main group (i.e., all
		processes that are part of the distributed job) enter this function, even
		if they are not going to be members of the group. Additionally, groups
		should be created in the same order in all processes.
		
		Arguments:
		    ranks (list[int]): List of ranks of group members.
		
		Returns:
		    A handle of distributed group that can be given to collective calls.
	**/
	static public function new_group(?ranks:Dynamic):Dynamic;
	/**
		Receives a tensor synchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int, optional): Source rank. Will receive from any
		        process if unspecified.
		
		Returns:
		    Sender rank.
	**/
	static public function recv(tensor:Dynamic, ?src:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines.
		
		Only the process with rank :attr:`dst` is going to receive the final result.
		
		Arguments:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    dst (int): Destination rank
		    op (optional): One of the values from ``torch.distributed.deprecated.reduce_op``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (optional): Group of the collective.
	**/
	static public function reduce(tensor:Dynamic, dst:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data on multiple GPUs across all machines. Each tensor
		in :attr`tensor_list` should reside on a separate GPU.
		
		Only the GPU of ``tensor_list[0]`` on the process with rank :attr:`dst` is
		going to receive the final result.
		
		.. note::
		  Only NCCL backend is currently supported. :attr:`tensor_list` should only
		  contain GPU tensors.
		
		Arguments:
		    tensor_list (List[Tensor]): Input and output GPU tensors of the
		        collective. The function operates in-place.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		
		    dst (int): Destination rank
		    op (optional): One of the values from ``torch.distributed.deprecated.reduce_op``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (optional): Group of the collective.
	**/
	static public function reduce_multigpu(tensor_list:Dynamic, dst:Dynamic, ?op:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Scatters a list of tensors to all processes in a group.
		
		Each process will receive exactly one tensor and store its data in the
		:attr:`tensor` argument.
		
		Arguments:
		    tensor (Tensor): Output tensor.
		    src (int): Source rank. Required in all processes except the one that
		        is sending the data.
		    scatter_list (list[Tensor]): List of tensors to scatter. Required only
		        in the process that is sending the data.
		    group (optional): Group of the collective.
	**/
	static public function scatter(tensor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sends a tensor synchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
	**/
	static public function send(tensor:Dynamic, dst:Dynamic):Dynamic;
}