/* This file is generated, do not edit! */
package torch.distributed;
@:pythonImport("torch.distributed") extern class Distributed_Module {
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
		Gathers tensors from the whole group in a list.
		
		Arguments:
		    tensor_list (list[Tensor]): Output list. It should contain
		        correctly-sized tensors to be used for output of the collective.
		    tensor (Tensor): Tensor to be broadcast from current process.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_gather(tensor_list:Dynamic, tensor:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Gathers tensors from the whole group in a list.
		Each tensor in ``tensor_list`` should reside on a separate GPU
		
		Only nccl backend is currently supported
		tensors should only be GPU tensors
		
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
		
		    input_tensor_list (List[Tensor]): List of tensors(on different GPUs) to
		        be broadcast from current process.
		        Note that ``len(input_tensor_list)`` needs to be the same for
		        all the distributed processes calling this function.
		
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_gather_multigpu(output_tensor_lists:Dynamic, input_tensor_list:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result.
		
		After the call ``tensor`` is going to be bitwise identical in all processes.
		
		Arguments:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_reduce(tensor:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result. This function reduces a number of tensors on every node,
		while each tensor resides on different GPUs.
		Therefore, the input tensor in the tensor list needs to be GPU tensors.
		Also, each tensor in the tensor list needs to reside on a different GPU.
		
		After the call, all ``tensor`` in ``tensor_list`` is going to be bitwise
		identical in all processes.
		
		Only nccl and gloo backend is currently supported
		tensors should only be GPU tensors
		
		Arguments:
		    tensor list (List[Tensor]): List of input and output tensors of
		        the collective. The function operates in-place and requires that
		        each tensor to be a GPU tensor on different GPUs.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_reduce_multigpu(tensor_list:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Synchronizes all processes.
		
		This collective blocks processes until the whole group enters this function,
		if async_op is False, or if async work handle is called on wait().
		
		Arguments:
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function barrier(?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group.
		
		``tensor`` must have the same number of elements in all processes
		participating in the collective.
		
		Arguments:
		    tensor (Tensor): Data to be sent if ``src`` is the rank of current
		        process, and tensor to be used to save received data otherwise.
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function broadcast(tensor:Dynamic, src:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group with multiple GPU tensors
		per node.
		
		``tensor`` must have the same number of elements in all the GPUs from
		all processes participating in the collective. each tensor in the list must
		be on a different GPU
		
		Only nccl and gloo backend are currently supported
		tensors should only be GPU tensors
		
		Arguments:
		    tensor_list (List[Tensor]): Tensors that participate in the collective
		        operation. if ``src`` is the rank, then ``src_tensor``th element of
		        ``tensor_list`` (``tensor_list[src_tensor]``) will be broadcasted
		        to all other tensors (on different GPUs) in the src process and
		        all tensors in ``tensor_list`` of other non-src processes.
		        You also need to make sure that ``len(tensor_list)`` is the same
		        for all the distributed processes calling this function.
		
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		    src_tensor (int, optional): Source tensor rank within ``tensor_list``
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function broadcast_multigpu(tensor_list:Dynamic, src:Dynamic, ?group:Dynamic, ?async_op:Dynamic, ?src_tensor:Dynamic):Dynamic;
	/**
		Destroy a given process group, and deinitialize the distributed package
		
		Arguments:
		    group (ProcessGroup, optional): The process group to be destroyed, if
		                                    group.WORLD is given, all process
		                                    groups including the default one will
		                                    be destroyed.
	**/
	static public function destroy_process_group(?group:Dynamic):Dynamic;
	/**
		Gathers a list of tensors in a single process.
		
		Arguments:
		    tensor (Tensor): Input tensor.
		    gather_list (list[Tensor]): List of appropriately-sized tensors to
		        use for received data. Required only in the receiving process.
		    dst (int): Destination rank. Required in all processes except the one
		        that is receiveing the data.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function gather(tensor:Dynamic, gather_list:Dynamic, dst:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Returns the backend of the given process group.
		
		Arguments:
		    group (ProcessGroup, optional): The process group to work on. The
		        default is the general main process group. If another specific group
		        is specified, the calling process must be part of :attr:`group`.
		
		Returns:
		    The backend of the given process group as a lower case string.
	**/
	static public function get_backend(?group:Dynamic):Dynamic;
	/**
		Returns the rank of currrent process group
		
		Rank is a unique identifier assigned to each process within a distributed
		process group. They are always consecutive integers ranging from 0 to
		``world_size``.
		
		Arguments:
		    group (ProcessGroup, optional): The process group to work on
		
		Returns:
		    The rank of the process group
		    -1, if not part of the group
	**/
	static public function get_rank(?group:Dynamic):Dynamic;
	/**
		Returns the number of processes in the current process group
		
		Arguments:
		    group (ProcessGroup, optional): The process group to work on
		
		Returns:
		    The world size of the process group
		    -1, if not part of the group
	**/
	static public function get_world_size(?group:Dynamic):Dynamic;
	/**
		Initializes the default distributed process group, and this will also
		initialize the distributed package
		
		Arguments:
		    backend (str or Backend): The backend to use. Depending on
		        build-time configurations, valid values include ``mpi``, ``gloo``,
		        and ``nccl``. This field should be given as a lowercase string
		        (e.g., ``"gloo"``), which can also be accessed via
		        :class:`Backend` attributes (e.g., ``Backend.GLOO``).
		    init_method (str, optional): URL specifying how to initialize the
		                                 process group.
		    world_size (int, optional): Number of processes participating in
		                                the job.
		    rank (int, optional): Rank of the current process.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is only applicable for the ``gloo`` backend.
		    group_name (str, optional, deprecated): Group name.
		
		To enable ``backend == Backend.MPI``, PyTorch needs to built from source
		on a system that supports MPI. The same applies to NCCL as well.
	**/
	static public function init_process_group(backend:Dynamic, ?init_method:Dynamic, ?timeout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Receives a tensor asynchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on
		    tag (int, optional): Tag to match recv with remote send
		
		Returns:
		    A distributed request object.
		    None, if not part of the group
	**/
	static public function irecv(tensor:Dynamic, src:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	static public function is_available():Dynamic;
	/**
		Checking if the default process group has been initialized
	**/
	static public function is_initialized():Dynamic;
	/**
		Checks if MPI is available
	**/
	static public function is_mpi_available():Dynamic;
	/**
		Checks if NCCL is available
	**/
	static public function is_nccl_available():Dynamic;
	/**
		Sends a tensor asynchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
		    group (ProcessGroup, optional): The process group to work on
		    tag (int, optional): Tag to match send with remote recv
		
		Returns:
		    A distributed request object.
		    None, if not part of the group
	**/
	static public function isend(tensor:Dynamic, dst:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Creates a new distributed group.
		
		This function requires that all processes in the main group (i.e. all
		processes that are part of the distributed job) enter this function, even
		if they are not going to be members of the group. Additionally, groups
		should be created in the same order in all processes.
		
		Arguments:
		    ranks (list[int]): List of ranks of group members.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is only applicable for the ``gloo`` backend.
		
		Returns:
		    A handle of distributed group that can be given to collective calls.
	**/
	static public function new_group(?ranks:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		Receives a tensor synchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int, optional): Source rank. Will receive from any
		        process if unspecified.
		    group (ProcessGroup, optional): The process group to work on
		    tag (int, optional): Tag to match recv with remote send
		
		Returns:
		    Sender rank
		    -1, if not part of the group
	**/
	static public function recv(tensor:Dynamic, ?src:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines.
		
		Only the process with rank ``dst`` is going to receive the final result.
		
		Arguments:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    dst (int): Destination rank
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function reduce(tensor:Dynamic, dst:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Reduces the tensor data on multiple GPUs across all machines. Each tensor
		in ``tensor_list`` should reside on a separate GPU
		
		Only the GPU of ``tensor_list[dst_tensor]`` on the process with rank ``dst``
		is going to receive the final result.
		
		Only nccl backend is currently supported
		tensors should only be GPU tensors
		
		Arguments:
		    tensor_list (List[Tensor]): Input and output GPU tensors of the
		        collective. The function operates in-place.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		    dst (int): Destination rank
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		    dst_tensor (int, optional): Destination tensor rank within
		                                ``tensor_list``
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, otherwise
	**/
	static public function reduce_multigpu(tensor_list:Dynamic, dst:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic, ?dst_tensor:Dynamic):Dynamic;
	static public var reduce_op : Dynamic;
	/**
		Registers a new rendezvous handler.
		
		Before we can run collective algorithms, participating processes
		need to find each other and exchange information to be able to
		communicate. We call this process rendezvous.
		
		The outcome of the rendezvous process is a triplet containing a
		shared key/value store, the rank of the process, and the total
		number of participating processes.
		
		If none of the bundled rendezvous methods apply to your execution
		environment you can opt to register your own rendezvous handler.
		Pick a unique name and use the URL scheme to identify it when
		calling the `rendezvous()` function.
		
		Arguments:
		    scheme (str): URL scheme to identify your rendezvous handler.
		    handler (function): Handler that is invoked when the
		        `rendezvous()` function is called with a URL that uses
		        the corresponding scheme. It must be a generator function
		        that yields the triplet.
	**/
	static public function register_rendezvous_handler(scheme:Dynamic, handler:Dynamic):Dynamic;
	static public function rendezvous(url:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Scatters a list of tensors to all processes in a group.
		
		Each process will receive exactly one tensor and store its data in the
		``tensor`` argument.
		
		Arguments:
		    tensor (Tensor): Output tensor.
		    scatter_list (list[Tensor]): List of tensors to scatter. Required only
		        in the process that is sending the data.
		    src (int): Source rank. Required in all processes except the one that
		        is sending the data.
		    group (ProcessGroup, optional): The process group to work on
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function scatter(tensor:Dynamic, scatter_list:Dynamic, src:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Sends a tensor synchronously.
		
		Arguments:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
		    group (ProcessGroup, optional): The process group to work on
		    tag (int, optional): Tag to match send with remote recv
	**/
	static public function send(tensor:Dynamic, dst:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
}