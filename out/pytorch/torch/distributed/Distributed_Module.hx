/* This file is generated, do not edit! */
package torch.distributed;
@:pythonImport("torch.distributed") extern class Distributed_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var PG_WRAPPER_STORE_PREFIX : Dynamic;
	static public var STORE_BASED_BARRIER_PREFIX : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _DEFAULT_FIRST_BUCKET_BYTES : Dynamic;
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
		Single tensor all gather. Gathers a single tensor from all ranks, and puts them in a single output tensor.
		
		Args:
		    output_tensor (Tensor): Output tensor. It should contain
		        correctly-sized tensors to be used for output of the collective.
		    input_tensor (Tensor): Tensor to be broadcast from current process.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
		
		Examples:
		    >>> # All tensors below are of torch.int64 dtype.
		    >>> # We have 2 process groups, 2 ranks.
		    >>> output_tensor = torch.zeros(2, dtype=torch.int64)
		    >>> output_tensor
		    [tensor([0, 0])] # Rank 0 and 1
		    >>> tensor = torch.arange(1, dtype=torch.int64) + 1 + rank
		    >>> tensor
		    tensor([1]) # Rank 0
		    tensor([2]) # Rank 1
		    >>> dist.all_gather_base(output_tensor, tensor)
		    >>> output_tensor
		    tensor([1,2]) # Rank 0
		    tensor([1,2]) # Rank 1
		
		.. warning::
		    `_all_gather_base` is experimental and subject to change.
		    It is the caller's responsibility to ensure the output_tensor
		    is correctly sized.
	**/
	static public function _all_gather_base(output_tensor:Dynamic, input_tensor:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	static public var _backend : Dynamic;
	/**
		_broadcast_coalesced(process_group: torch._C._distributed_c10d.ProcessGroup, tensors: List[at::Tensor], buffer_size: int, src: int = 0) -> None
	**/
	static public function _broadcast_coalesced(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_compute_bucket_assignment_by_size(tensors: List[at::Tensor], bucket_size: List[int], expect_sparse_gradient: List[bool] = [], tensor_indices: List[int] = [], logger: Optional[torch._C._distributed_c10d.Logger] = None) -> Tuple[List[List[int]], List[int]]
	**/
	static public function _compute_bucket_assignment_by_size(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _create_process_group_wrapper(wrapped_pg:Dynamic, store_prefix:Dynamic, store:Dynamic, rank:Dynamic, world_size:Dynamic, ?timeout:Dynamic):Dynamic;
	/**
		_get_debug_mode() -> torch._C._distributed_c10d._DistributedDebugLevel
	**/
	static public function _get_debug_mode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Helper that checks if the current process's rank is not in a given group.
	**/
	static public function _rank_not_in_group(group:Dynamic):Dynamic;
	/**
		Reduces, then scatters a flattened tensor to all processes in a group.
		
		Args:
		    output (Tensor): Output tensor.
		    input (Tensor): Input tensor that is of size output tensor size times world size
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
	**/
	static public function _reduce_scatter_base(output:Dynamic, input:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		_register_builtin_comm_hook(reducer: c10d::Reducer, comm_hook_type: c10d::BuiltinCommHookType) -> None
	**/
	static public function _register_builtin_comm_hook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_register_comm_hook(reducer: c10d::Reducer, state: object, comm_hook: object) -> None
	**/
	static public function _register_comm_hook(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_round_robin_process_groups(process_groups: List[torch._C._distributed_c10d.ProcessGroup]) -> torch._C._distributed_c10d.ProcessGroup
	**/
	static public function _round_robin_process_groups(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_test_python_store(arg0: torch._C._distributed_c10d.Store) -> None
	**/
	static public function _test_python_store(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		_verify_model_across_ranks(process_group: torch._C._distributed_c10d.ProcessGroup, replicas: List[List[at::Tensor]], logger: Optional[torch._C._distributed_c10d.Logger] = None) -> None
	**/
	static public function _verify_model_across_ranks(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Gathers tensors from the whole group in a list.
		
		Complex tensors are supported.
		
		Args:
		    tensor_list (list[Tensor]): Output list. It should contain
		        correctly-sized tensors to be used for output of the collective.
		    tensor (Tensor): Tensor to be broadcast from current process.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
		
		Examples:
		    >>> # All tensors below are of torch.int64 dtype.
		    >>> # We have 2 process groups, 2 ranks.
		    >>> tensor_list = [torch.zeros(2, dtype=torch.int64) for _ in range(2)]
		    >>> tensor_list
		    [tensor([0, 0]), tensor([0, 0])] # Rank 0 and 1
		    >>> tensor = torch.arange(2, dtype=torch.int64) + 1 + 2 * rank
		    >>> tensor
		    tensor([1, 2]) # Rank 0
		    tensor([3, 4]) # Rank 1
		    >>> dist.all_gather(tensor_list, tensor)
		    >>> tensor_list
		    [tensor([1, 2]), tensor([3, 4])] # Rank 0
		    [tensor([1, 2]), tensor([3, 4])] # Rank 1
		
		    >>> # All tensors below are of torch.cfloat dtype.
		    >>> # We have 2 process groups, 2 ranks.
		    >>> tensor_list = [torch.zeros(2, dtype=torch.cfloat) for _ in range(2)]
		    >>> tensor_list
		    [tensor([0.+0.j, 0.+0.j]), tensor([0.+0.j, 0.+0.j])] # Rank 0 and 1
		    >>> tensor = torch.tensor([1+1j, 2+2j], dtype=torch.cfloat) + 2 * rank * (1+1j)
		    >>> tensor
		    tensor([1.+1.j, 2.+2.j]) # Rank 0
		    tensor([3.+3.j, 4.+4.j]) # Rank 1
		    >>> dist.all_gather(tensor_list, tensor)
		    >>> tensor_list
		    [tensor([1.+1.j, 2.+2.j]), tensor([3.+3.j, 4.+4.j])] # Rank 0
		    [tensor([1.+1.j, 2.+2.j]), tensor([3.+3.j, 4.+4.j])] # Rank 1
	**/
	static public function all_gather(tensor_list:Dynamic, tensor:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Gathers input tensors from the whole group in a list in a coalesced manner.
		
		Complex tensors are supported.
		
		Args:
		    output_tensor_lists (list[list[Tensor]]): Output list. It should contain
		        correctly-sized tensors to be used for output of the collective.
		    input_tensor_list (list[Tensor]): Tensors to be broadcast from
		        current process. At least one tensor has to be non empty.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
		
		Example:
		    we have 2 process groups, 2 ranks.
		    rank 0 passes:
		        input_tensor_list = [[[1, 1], [1, 1]], [2], [3, 3]]
		        output_tensor_lists =
		           [[[[-1, -1], [-1, -1]], [-1], [-1, -1]],
		            [[[-1, -1], [-1, -1]], [-1], [-1, -1]]]
		    rank 1 passes:
		        input_tensor_list = [[[3, 3], [3, 3]], [5], [1, 1]]
		        output_tensor_lists =
		           [[[[-1, -1], [-1, -1]], [-1], [-1, -1]],
		            [[[-1, -1], [-1, -1]], [-1], [-1, -1]]]
		    both rank 0 and 1 get:
		        output_tensor_lists =
		           [[[1, 1], [1, 1]], [2], [3, 3]],
		            [[3, 3], [3, 3]], [5], [1, 1]]].
		
		WARNING: at this time individual shape checking is not implemented across nodes.
		For example, if the rank 0 node passes [torch.rand(4), torch.rand(2)] and the
		rank 1 node passes [torch.rand(2), torch.rand(2), torch.rand(2)], the
		all_gather_coalesced operation will proceed without complaint and return
		erroneous outputs. This lack of shape checking results in significant
		performance improvements but users of this function should take extra care
		to ensure that each node passes in tensors whose shapes match across nodes.
	**/
	static public function all_gather_coalesced(output_tensor_lists:Dynamic, input_tensor_list:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Gathers tensors from the whole group in a list.
		Each tensor in ``tensor_list`` should reside on a separate GPU
		
		Only nccl backend is currently supported
		tensors should only be GPU tensors
		
		Complex tensors are supported.
		
		Args:
		    output_tensor_lists (List[List[Tensor]]): Output lists. It should
		        contain correctly-sized tensors on each GPU to be used for output
		        of the collective, e.g. ``output_tensor_lists[i]`` contains the
		        all_gather result that resides on the GPU of
		        ``input_tensor_list[i]``.
		
		        Note that each element of ``output_tensor_lists`` has the size of
		        ``world_size * len(input_tensor_list)``, since the function all
		        gathers the result from every single GPU in the group. To interpret
		        each element of ``output_tensor_lists[i]``, note that
		        ``input_tensor_list[j]`` of rank k will be appear in
		        ``output_tensor_lists[i][k * world_size + j]``
		
		        Also note that ``len(output_tensor_lists)``, and the size of each
		        element in ``output_tensor_lists`` (each element is a list,
		        therefore ``len(output_tensor_lists[i])``) need to be the same
		        for all the distributed processes calling this function.
		
		    input_tensor_list (List[Tensor]): List of tensors(on different GPUs) to
		        be broadcast from current process.
		        Note that ``len(input_tensor_list)`` needs to be the same for
		        all the distributed processes calling this function.
		
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_gather_multigpu(output_tensor_lists:Dynamic, input_tensor_list:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Gathers picklable objects from the whole group into a list. Similar to
		:func:`all_gather`, but Python objects can be passed in. Note that the object
		must be picklable in order to be gathered.
		
		Args:
		    object_list (list[Any]): Output list. It should be correctly sized as the
		        size of the group for this collective and will contain the output.
		    object (Any): Pickable Python object to be broadcast from current process.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used. Default is ``None``.
		
		Returns:
		    None. If the calling rank is part of this group, the output of the
		    collective will be populated into the input ``object_list``. If the
		    calling rank is not part of the group, the passed in ``object_list`` will
		    be unmodified.
		
		.. note:: Note that this API differs slightly from the :func:`all_gather`
		    collective since it does not provide an ``async_op`` handle and thus
		    will be a blocking call.
		
		.. note:: For NCCL-based processed groups, internal tensor representations
		    of objects must be moved to the GPU device before communication takes
		    place. In this case, the device used is given by
		    ``torch.cuda.current_device()`` and it is the user's responsiblity to
		    ensure that this is set so that each rank has an individual GPU, via
		    ``torch.cuda.set_device()``.
		
		.. warning::
		    :func:`all_gather_object` uses ``pickle`` module implicitly, which is
		    known to be insecure. It is possible to construct malicious pickle data
		    which will execute arbitrary code during unpickling. Only call this
		    function with data you trust.
		
		Example::
		    >>> # Note: Process group initialization omitted on each rank.
		    >>> import torch.distributed as dist
		    >>> # Assumes world_size of 3.
		    >>> gather_objects = ["foo", 12, {1: 2}] # any picklable object
		    >>> output = [None for _ in gather_objects]
		    >>> dist.all_gather_object(output, gather_objects[dist.get_rank()])
		    >>> output
		    ['foo', 12, {1: 2}]
	**/
	static public function all_gather_object(object_list:Dynamic, obj:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result.
		
		After the call ``tensor`` is going to be bitwise identical in all processes.
		
		Complex tensors are supported.
		
		Args:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
		
		Examples:
		    >>> # All tensors below are of torch.int64 type.
		    >>> # We have 2 process groups, 2 ranks.
		    >>> tensor = torch.arange(2, dtype=torch.int64) + 1 + 2 * rank
		    >>> tensor
		    tensor([1, 2]) # Rank 0
		    tensor([3, 4]) # Rank 1
		    >>> dist.all_reduce(tensor, op=ReduceOp.SUM)
		    >>> tensor
		    tensor([4, 6]) # Rank 0
		    tensor([4, 6]) # Rank 1
		
		    >>> # All tensors below are of torch.cfloat type.
		    >>> # We have 2 process groups, 2 ranks.
		    >>> tensor = torch.tensor([1+1j, 2+2j], dtype=torch.cfloat) + 2 * rank * (1+1j)
		    >>> tensor
		    tensor([1.+1.j, 2.+2.j]) # Rank 0
		    tensor([3.+3.j, 4.+4.j]) # Rank 1
		    >>> dist.all_reduce(tensor, op=ReduceOp.SUM)
		    >>> tensor
		    tensor([4.+4.j, 6.+6.j]) # Rank 0
		    tensor([4.+4.j, 6.+6.j]) # Rank 1
	**/
	static public function all_reduce(tensor:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		WARNING: at this time individual shape checking is not implemented across nodes.
		For example, if the rank 0 node passes [torch.rand(4), torch.rand(2)] and the
		rank 1 node passes [torch.rand(2), torch.rand(2), torch.rand(2)], the allreduce
		operation will proceed without complaint and return erroneous outputs. This lack
		of shape checking results in significant performance improvements but users of this
		function should take extra care to ensure that each node passes in tensors whose
		shapes match across nodes.
		
		Reduces each tensor in tensors (residing on the same device) across all machines
		in such a way that all get the final result.
		
		After the call each tensor in tensors is going to bitwise identical
		in all processes.
		
		Complex tensors are supported.
		
		Args:
		    tensors (List[Tensor]): Input and output of the collective. The function
		        operates in-place.
		    op (Optional[ReduceOp]): One of the values from
		        ``torch.distributed.ReduceOp`` enum. Specifies an operation used for
		        element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (Optional[bool]): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
	**/
	static public function all_reduce_coalesced(tensors:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines in such a way that all get
		the final result. This function reduces a number of tensors on every node,
		while each tensor resides on different GPUs.
		Therefore, the input tensor in the tensor list needs to be GPU tensors.
		Also, each tensor in the tensor list needs to reside on a different GPU.
		
		After the call, all ``tensor`` in ``tensor_list`` is going to be bitwise
		identical in all processes.
		
		Complex tensors are supported.
		
		Only nccl and gloo backend is currently supported
		tensors should only be GPU tensors
		
		Args:
		    tensor_list (List[Tensor]): List of input and output tensors of
		        the collective. The function operates in-place and requires that
		        each tensor to be a GPU tensor on different GPUs.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on. If
		        ``None``, the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function all_reduce_multigpu(tensor_list:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Each process scatters list of input tensors to all processes in a group and
		return gathered list of tensors in output list.
		
		Complex tensors are supported.
		
		Args:
		    output_tensor_list (list[Tensor]): List of tensors to be gathered one
		        per rank.
		    input_tensor_list (list[Tensor]): List of tensors to scatter one per rank.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
		
		.. warning::
		    `all_to_all` is experimental and subject to change.
		
		Examples:
		    >>> input = torch.arange(4) + rank * 4
		    >>> input = list(input.chunk(4))
		    >>> input
		    [tensor([0]), tensor([1]), tensor([2]), tensor([3])]     # Rank 0
		    [tensor([4]), tensor([5]), tensor([6]), tensor([7])]     # Rank 1
		    [tensor([8]), tensor([9]), tensor([10]), tensor([11])]   # Rank 2
		    [tensor([12]), tensor([13]), tensor([14]), tensor([15])] # Rank 3
		    >>> output = list(torch.empty([4], dtype=torch.int64).chunk(4))
		    >>> dist.all_to_all(output, input)
		    >>> output
		    [tensor([0]), tensor([4]), tensor([8]), tensor([12])]    # Rank 0
		    [tensor([1]), tensor([5]), tensor([9]), tensor([13])]    # Rank 1
		    [tensor([2]), tensor([6]), tensor([10]), tensor([14])]   # Rank 2
		    [tensor([3]), tensor([7]), tensor([11]), tensor([15])]   # Rank 3
		
		    >>> # Essentially, it is similar to following operation:
		    >>> scatter_list = input
		    >>> gather_list  = output
		    >>> for i in range(world_size):
		    >>>   dist.scatter(gather_list[i], scatter_list if i == rank else [], src = i)
		
		    >>> input
		    tensor([0, 1, 2, 3, 4, 5])                                       # Rank 0
		    tensor([10, 11, 12, 13, 14, 15, 16, 17, 18])                     # Rank 1
		    tensor([20, 21, 22, 23, 24])                                     # Rank 2
		    tensor([30, 31, 32, 33, 34, 35, 36])                             # Rank 3
		    >>> input_splits
		    [2, 2, 1, 1]                                                     # Rank 0
		    [3, 2, 2, 2]                                                     # Rank 1
		    [2, 1, 1, 1]                                                     # Rank 2
		    [2, 2, 2, 1]                                                     # Rank 3
		    >>> output_splits
		    [2, 3, 2, 2]                                                     # Rank 0
		    [2, 2, 1, 2]                                                     # Rank 1
		    [1, 2, 1, 2]                                                     # Rank 2
		    [1, 2, 1, 1]                                                     # Rank 3
		    >>> input = list(input.split(input_splits))
		    >>> input
		    [tensor([0, 1]), tensor([2, 3]), tensor([4]), tensor([5])]                   # Rank 0
		    [tensor([10, 11, 12]), tensor([13, 14]), tensor([15, 16]), tensor([17, 18])] # Rank 1
		    [tensor([20, 21]), tensor([22]), tensor([23]), tensor([24])]                 # Rank 2
		    [tensor([30, 31]), tensor([32, 33]), tensor([34, 35]), tensor([36])]         # Rank 3
		    >>> output = ...
		    >>> dist.all_to_all(output, input)
		    >>> output
		    [tensor([0, 1]), tensor([10, 11, 12]), tensor([20, 21]), tensor([30, 31])]   # Rank 0
		    [tensor([2, 3]), tensor([13, 14]), tensor([22]), tensor([32, 33])]           # Rank 1
		    [tensor([4]), tensor([15, 16]), tensor([23]), tensor([34, 35])]              # Rank 2
		    [tensor([5]), tensor([17, 18]), tensor([24]), tensor([36])]                  # Rank 3
		
		    >>> # Another example with tensors of torch.cfloat type.
		    >>> input = torch.tensor([1+1j, 2+2j, 3+3j, 4+4j], dtype=torch.cfloat) + 4 * rank * (1+1j)
		    >>> input = list(input.chunk(4))
		    >>> input
		    [tensor([1+1j]), tensor([2+2j]), tensor([3+3j]), tensor([4+4j])]            # Rank 0
		    [tensor([5+5j]), tensor([6+6j]), tensor([7+7j]), tensor([8+8j])]            # Rank 1
		    [tensor([9+9j]), tensor([10+10j]), tensor([11+11j]), tensor([12+12j])]      # Rank 2
		    [tensor([13+13j]), tensor([14+14j]), tensor([15+15j]), tensor([16+16j])]    # Rank 3
		    >>> output = list(torch.empty([4], dtype=torch.int64).chunk(4))
		    >>> dist.all_to_all(output, input)
		    >>> output
		    [tensor([1+1j]), tensor([5+5j]), tensor([9+9j]), tensor([13+13j])]          # Rank 0
		    [tensor([2+2j]), tensor([6+6j]), tensor([10+10j]), tensor([14+14j])]        # Rank 1
		    [tensor([3+3j]), tensor([7+7j]), tensor([11+11j]), tensor([15+15j])]        # Rank 2
		    [tensor([4+4j]), tensor([8+8j]), tensor([12+12j]), tensor([16+16j])]        # Rank 3
	**/
	static public function all_to_all(output_tensor_list:Dynamic, input_tensor_list:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Each process splits input tensor and then scatters the split list
		to all processes in a group. Then concatenate the received tensors from all
		the processes in the group and return single output tensor.
		
		Complex tensors are supported.
		
		Args:
		    output (Tensor): Gathered cancatenated output tensor.
		    input (Tensor): Input tensor to scatter.
		    output_split_sizes: (list[Int], optional): Output split sizes for dim 0
		        if specified None or empty, dim 0 of ``output`` tensor must divide
		        equally by ``world_size``.
		    input_split_sizes: (list[Int], optional): Input split sizes for dim 0
		        if specified None or empty, dim 0 of ``input`` tensor must divide
		        equally by ``world_size``.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
		
		.. warning::
		    `all_to_all_single` is experimental and subject to change.
		
		Examples:
		    >>> input = torch.arange(4) + rank * 4
		    >>> input
		    tensor([0, 1, 2, 3])     # Rank 0
		    tensor([4, 5, 6, 7])     # Rank 1
		    tensor([8, 9, 10, 11])   # Rank 2
		    tensor([12, 13, 14, 15]) # Rank 3
		    >>> output = torch.empty([4], dtype=torch.int64)
		    >>> dist.all_to_all_single(output, input)
		    >>> output
		    tensor([0, 4, 8, 12])    # Rank 0
		    tensor([1, 5, 9, 13])    # Rank 1
		    tensor([2, 6, 10, 14])   # Rank 2
		    tensor([3, 7, 11, 15])   # Rank 3
		
		    >>> # Essentially, it is similar to following operation:
		    >>> scatter_list = list(input.chunk(world_size))
		    >>> gather_list  = list(output.chunk(world_size))
		    >>> for i in range(world_size):
		    >>>   dist.scatter(gather_list[i], scatter_list if i == rank else [], src = i)
		
		    >>> # Another example with uneven split
		    >>> input
		    tensor([0, 1, 2, 3, 4, 5])                                       # Rank 0
		    tensor([10, 11, 12, 13, 14, 15, 16, 17, 18])                     # Rank 1
		    tensor([20, 21, 22, 23, 24])                                     # Rank 2
		    tensor([30, 31, 32, 33, 34, 35, 36])                             # Rank 3
		    >>> input_splits
		    [2, 2, 1, 1]                                                     # Rank 0
		    [3, 2, 2, 2]                                                     # Rank 1
		    [2, 1, 1, 1]                                                     # Rank 2
		    [2, 2, 2, 1]                                                     # Rank 3
		    >>> output_splits
		    [2, 3, 2, 2]                                                     # Rank 0
		    [2, 2, 1, 2]                                                     # Rank 1
		    [1, 2, 1, 2]                                                     # Rank 2
		    [1, 2, 1, 1]                                                     # Rank 3
		    >>> output = ...
		    >>> dist.all_to_all_single(output, input, output_splits, input_splits)
		    >>> output
		    tensor([ 0,  1, 10, 11, 12, 20, 21, 30, 31])                     # Rank 0
		    tensor([ 2,  3, 13, 14, 22, 32, 33])                             # Rank 1
		    tensor([ 4, 15, 16, 23, 34, 35])                                 # Rank 2
		    tensor([ 5, 17, 18, 24, 36])                                     # Rank 3
		
		
		    >>> # Another example with tensors of torch.cfloat type.
		    >>> input = torch.tensor([1+1j, 2+2j, 3+3j, 4+4j], dtype=torch.cfloat) + 4 * rank * (1+1j)
		    >>> input
		    tensor([1+1j, 2+2j, 3+3j, 4+4j])                                # Rank 0
		    tensor([5+5j, 6+6j, 7+7j, 8+8j])                                # Rank 1
		    tensor([9+9j, 10+10j, 11+11j, 12+12j])                          # Rank 2
		    tensor([13+13j, 14+14j, 15+15j, 16+16j])                        # Rank 3
		    >>> output = torch.empty([4], dtype=torch.int64)
		    >>> dist.all_to_all_single(output, input)
		    >>> output
		    tensor([1+1j, 5+5j, 9+9j, 13+13j])                              # Rank 0
		    tensor([2+2j, 6+6j, 10+10j, 14+14j])                            # Rank 1
		    tensor([3+3j, 7+7j, 11+11j, 15+15j])                            # Rank 2
		    tensor([4+4j, 8+8j, 12+12j, 16+16j])                            # Rank 3
	**/
	static public function all_to_all_single(output:Dynamic, input:Dynamic, ?output_split_sizes:Dynamic, ?input_split_sizes:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Synchronizes all processes.
		
		This collective blocks processes until the whole group enters this function,
		if async_op is False, or if async work handle is called on wait().
		
		Args:
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		    device_ids ([int], optional): List of device/GPU ids.
		                                  Valid only for NCCL backend.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function barrier(?group:Dynamic, ?async_op:Dynamic, ?device_ids:Dynamic):Dynamic;
	/**
		Send or Receive a batch of tensors asynchronously and return a list of requests.
		
		Process each of the operations in p2p_op_list and return the corresponding
		requests. NCCL and Gloo backend are currently supported.
		
		Args:
		    p2p_op_list: A list of point-to-point operations(type of each operator is
		        ``torch.distributed.P2POp``). The order of the isend/irecv in the list
		        matters and it needs to match with corresponding isend/irecv on the
		        remote end.
		
		Returns:
		    A list of distributed request objects returned by calling the corresponding
		    op in the op_list.
		
		Examples:
		    >>> send_tensor = torch.arange(2) + 2 * rank
		    >>> recv_tensor = torch.randn(2)
		    >>> send_op = dist.P2POp(dist.isend, send_tensor, (rank + 1)%world_size)
		    >>> recv_op = dist.P2POp(dist.irecv, recv_tensor, (rank + 1)%world_size)
		    >>> reqs = batch_isend_irecv([send_op, recv_op])
		    >>> for req in reqs:
		    >>>     req.wait()
		    >>> recv_tensor
		    tensor([2, 3])     # Rank 0
		    tensor([0, 1])     # Rank 1
		
		.. note:: Note that when this API is used with the NCCL PG backend, users must set
		    the current GPU device with `torch.cuda.set_device`, otherwise it will
		    lead to unexpected hang issues.
	**/
	static public function batch_isend_irecv(p2p_op_list:Dynamic):Dynamic;
	/**
		Broadcasts the tensor to the whole group.
		
		``tensor`` must have the same number of elements in all processes
		participating in the collective.
		
		Args:
		    tensor (Tensor): Data to be sent if ``src`` is the rank of current
		        process, and tensor to be used to save received data otherwise.
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
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
		
		Args:
		    tensor_list (List[Tensor]): Tensors that participate in the collective
		        operation. If ``src`` is the rank, then the specified ``src_tensor``
		        element of ``tensor_list`` (``tensor_list[src_tensor]``) will be
		        broadcast to all other tensors (on different GPUs) in the src process
		        and all tensors in ``tensor_list`` of other non-src processes.
		        You also need to make sure that ``len(tensor_list)`` is the same
		        for all the distributed processes calling this function.
		
		    src (int): Source rank.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		    src_tensor (int, optional): Source tensor rank within ``tensor_list``
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function broadcast_multigpu(tensor_list:Dynamic, src:Dynamic, ?group:Dynamic, ?async_op:Dynamic, ?src_tensor:Dynamic):Dynamic;
	/**
		Broadcasts picklable objects in ``object_list`` to the whole group. Similar
		to :func:`broadcast`, but Python objects can be passed in.
		Note that all objects in ``object_list`` must be picklable in order to be
		broadcasted.
		
		Args:
		    object_list (List[Any]): List of input objects to broadcast.
		        Each object must be picklable. Only objects on the ``src`` rank will
		        be broadcast, but each rank must provide lists of equal sizes.
		    src (int): Source rank from which to broadcast ``object_list``.
		    group: (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used. Default is ``None``.
		    device (``torch.device``, optional): If not None, the objects are
		        serialized and converted to tensors which are moved to the
		        ``device`` before broadcasting. Default is ``None``.
		
		Returns:
		    ``None``. If rank is part of the group, ``object_list`` will contain the
		    broadcasted objects from ``src`` rank.
		
		.. note:: For NCCL-based processed groups, internal tensor representations
		    of objects must be moved to the GPU device before communication takes
		    place. In this case, the device used is given by
		    ``torch.cuda.current_device()`` and it is the user's responsiblity to
		    ensure that this is set so that each rank has an individual GPU, via
		    ``torch.cuda.set_device()``.
		
		.. note:: Note that this API differs slightly from the :func:`all_gather`
		    collective since it does not provide an ``async_op`` handle and thus
		    will be a blocking call.
		
		.. warning::
		    :func:`broadcast_object_list` uses ``pickle`` module implicitly, which
		    is known to be insecure. It is possible to construct malicious pickle
		    data which will execute arbitrary code during unpickling. Only call this
		    function with data you trust.
		
		Example::
		    >>> # Note: Process group initialization omitted on each rank.
		    >>> import torch.distributed as dist
		    >>> if dist.get_rank() == 0:
		    >>>     # Assumes world_size of 3.
		    >>>     objects = ["foo", 12, {1: 2}] # any picklable object
		    >>> else:
		    >>>     objects = [None, None, None]
		    >>> # Assumes backend is not NCCL
		    >>> device = torch.device("cpu")
		    >>> dist.broadcast_object_list(objects, src=0, device=device)
		    >>> broadcast_objects
		    ['foo', 12, {1: 2}]
	**/
	static public function broadcast_object_list(object_list:Dynamic, ?src:Dynamic, ?group:Dynamic, ?device:Dynamic):Dynamic;
	static public var default_pg_timeout : Dynamic;
	/**
		Destroy a given process group, and deinitialize the distributed package
		
		Args:
		    group (ProcessGroup, optional): The process group to be destroyed, if
		                                    group.WORLD is given, all process
		                                    groups including the default one will
		                                    be destroyed.
	**/
	static public function destroy_process_group(?group:Dynamic):Dynamic;
	/**
		Gathers a list of tensors in a single process.
		
		Args:
		    tensor (Tensor): Input tensor.
		    gather_list (list[Tensor], optional): List of appropriately-sized
		        tensors to use for gathered data (default is None, must be specified
		        on the destination rank)
		    dst (int, optional): Destination rank (default is 0)
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function gather(tensor:Dynamic, ?gather_list:Dynamic, ?dst:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Gathers picklable objects from the whole group in a single process.
		Similar to :func:`gather`, but Python objects can be passed in. Note that the
		object must be picklable in order to be gathered.
		
		Args:
		    obj (Any): Input object. Must be picklable.
		    object_gather_list (list[Any]): Output list. On the ``dst`` rank, it
		        should be correctly sized as the size of the group for this
		        collective and will contain the output. Must be ``None`` on non-dst
		        ranks. (default is ``None``)
		    dst (int, optional): Destination rank. (default is 0)
		    group: (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used. Default is ``None``.
		
		Returns:
		    None. On the ``dst`` rank, ``object_gather_list`` will contain the
		    output of the collective.
		
		.. note:: Note that this API differs slightly from the gather collective
		    since it does not provide an async_op handle and thus will be a blocking
		    call.
		
		.. note:: Note that this API is not supported when using the NCCL backend.
		
		.. warning::
		    :func:`gather_object` uses ``pickle`` module implicitly, which is
		    known to be insecure. It is possible to construct malicious pickle data
		    which will execute arbitrary code during unpickling. Only call this
		    function with data you trust.
		
		Example::
		    >>> # Note: Process group initialization omitted on each rank.
		    >>> import torch.distributed as dist
		    >>> # Assumes world_size of 3.
		    >>> gather_objects = ["foo", 12, {1: 2}] # any picklable object
		    >>> output = [None for _ in gather_objects]
		    >>> dist.gather_object(
		            gather_objects[dist.get_rank()],
		            output if dist.get_rank() == 0 else None,
		            dst=0
		        )
		    >>> # On rank 0
		    >>> output
		    ['foo', 12, {1: 2}]
	**/
	static public function gather_object(obj:Dynamic, ?object_gather_list:Dynamic, ?dst:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Returns the backend of the given process group.
		
		Args:
		    group (ProcessGroup, optional): The process group to work on. The
		        default is the general main process group. If another specific group
		        is specified, the calling process must be part of :attr:`group`.
		
		Returns:
		    The backend of the given process group as a lower case string.
	**/
	static public function get_backend(?group:Dynamic):Dynamic;
	/**
		Returns the rank of the current process in the provided ``group`` or the
		default group if none was provided.
		
		Rank is a unique identifier assigned to each process within a distributed
		process group. They are always consecutive integers ranging from 0 to
		``world_size``.
		
		Args:
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		
		Returns:
		    The rank of the process group
		    -1, if not part of the group
	**/
	static public function get_rank(?group:Dynamic):Dynamic;
	/**
		Returns the number of processes in the current process group
		
		Args:
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		
		Returns:
		    The world size of the process group
		    -1, if not part of the group
	**/
	static public function get_world_size(?group:Dynamic):Dynamic;
	/**
		Initializes the default distributed process group, and this will also
		initialize the distributed package.
		
		There are 2 main ways to initialize a process group:
		    1. Specify ``store``, ``rank``, and ``world_size`` explicitly.
		    2. Specify ``init_method`` (a URL string) which indicates where/how
		       to discover peers. Optionally specify ``rank`` and ``world_size``,
		       or encode all required parameters in the URL and omit them.
		
		If neither is specified, ``init_method`` is assumed to be "env://".
		
		
		Args:
		    backend (str or Backend): The backend to use. Depending on
		        build-time configurations, valid values include ``mpi``, ``gloo``,
		        and ``nccl``. This field should be given as a lowercase string
		        (e.g., ``"gloo"``), which can also be accessed via
		        :class:`Backend` attributes (e.g., ``Backend.GLOO``). If using
		        multiple processes per machine with ``nccl`` backend, each process
		        must have exclusive access to every GPU it uses, as sharing GPUs
		        between processes can result in deadlocks.
		    init_method (str, optional): URL specifying how to initialize the
		                                 process group. Default is "env://" if no
		                                 ``init_method`` or ``store`` is specified.
		                                 Mutually exclusive with ``store``.
		    world_size (int, optional): Number of processes participating in
		                                the job. Required if ``store`` is specified.
		    rank (int, optional): Rank of the current process (it should be a
		                          number between 0 and ``world_size``-1).
		                          Required if ``store`` is specified.
		    store(Store, optional): Key/value store accessible to all workers, used
		                            to exchange connection/address information.
		                            Mutually exclusive with ``init_method``.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is applicable for the ``gloo`` backend. For ``nccl``, this is
		        applicable only if the environment variable ``NCCL_BLOCKING_WAIT``
		        or ``NCCL_ASYNC_ERROR_HANDLING`` is set to 1. When
		        ``NCCL_BLOCKING_WAIT`` is set, this is the duration for which the
		        process will block and wait for collectives to complete before
		        throwing an exception. When ``NCCL_ASYNC_ERROR_HANDLING`` is set,
		        this is the duration after which collectives will be aborted
		        asynchronously and the process will crash. ``NCCL_BLOCKING_WAIT``
		        will provide errors to the user which can be caught and handled,
		        but due to its blocking nature, it has a performance overhead. On
		        the other hand, ``NCCL_ASYNC_ERROR_HANDLING`` has very little
		        performance overhead, but crashes the process on errors. This is
		        done since CUDA execution is async and it is no longer safe to
		        continue executing user code since failed async NCCL operations
		        might result in subsequent CUDA operations running on corrupted
		        data. Only one of these two environment variables should be set.
		    group_name (str, optional, deprecated): Group name.
		    pg_options (ProcessGroupOptions, optional): process group options
		        specifying what additional options need to be passed in during
		        the construction of specific process groups. As of now, the only
		        options we support is ``ProcessGroupNCCL.Options`` for the ``nccl``
		        backend, ``is_high_priority_stream`` can be specified so that
		        the nccl backend can pick up high priority cuda streams when
		        there're compute kernels waiting.
		
		.. note:: To enable ``backend == Backend.MPI``, PyTorch needs to be built from source
		    on a system that supports MPI.
	**/
	static public function init_process_group(backend:Dynamic, ?init_method:Dynamic, ?timeout:Dynamic, ?world_size:Dynamic, ?rank:Dynamic, ?store:Dynamic, ?group_name:Dynamic, ?pg_options:Dynamic):Dynamic;
	/**
		Receives a tensor asynchronously.
		
		Args:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int, optional): Source rank. Will receive from any
		        process if unspecified.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    tag (int, optional): Tag to match recv with remote send
		
		Returns:
		    A distributed request object.
		    None, if not part of the group
	**/
	static public function irecv(tensor:Dynamic, ?src:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Returns ``True`` if the distributed package is available. Otherwise,
		``torch.distributed`` does not expose any other APIs. Currently,
		``torch.distributed`` is available on Linux, MacOS and Windows. Set
		``USE_DISTRIBUTED=1`` to enable it when building PyTorch from source.
		Currently, the default value is ``USE_DISTRIBUTED=1`` for Linux and Windows,
		``USE_DISTRIBUTED=0`` for MacOS.
	**/
	static public function is_available():Dynamic;
	/**
		Checks if the Gloo backend is available.
	**/
	static public function is_gloo_available():Dynamic;
	/**
		Checking if the default process group has been initialized
	**/
	static public function is_initialized():Dynamic;
	/**
		Checks if the MPI backend is available.
	**/
	static public function is_mpi_available():Dynamic;
	/**
		Checks if the NCCL backend is available.
	**/
	static public function is_nccl_available():Dynamic;
	/**
		Checks whether this process was launched with ``torch.distributed.elastic``
		(aka torchelastic). The existence of ``TORCHELASTIC_RUN_ID`` environment
		variable is used as a proxy to determine whether the current process
		was launched with torchelastic. This is a reasonable proxy since
		``TORCHELASTIC_RUN_ID`` maps to the rendezvous id which is always a
		non-null value indicating the job id for peer discovery purposes..
	**/
	static public function is_torchelastic_launched():Dynamic;
	/**
		Sends a tensor asynchronously.
		
		.. warning::
		    Modifying ``tensor`` before the request completes causes undefined
		    behavior.
		
		Args:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    tag (int, optional): Tag to match send with remote recv
		
		Returns:
		    A distributed request object.
		    None, if not part of the group
	**/
	static public function isend(tensor:Dynamic, dst:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		Synchronizes all processes similar to ``torch.distributed.barrier``, but takes
		a configurable timeout and is able to report ranks that did not pass this
		barrier within that timeout. Specifically, for non-zero ranks, will block
		until a send/recv is processed from rank 0. Rank 0 will block until all send
		/recv from other ranks are processed, and will report failures for ranks
		that failed to respond in time. Note that if one rank does not reach the
		monitored_barrier (for example due to a hang), all other ranks would fail
		in monitored_barrier.
		
		This collective will block all processes/ranks in the group, until the
		whole group exits the function successfully, making it useful for debugging
		and synchronizing. However, it can have a performance impact and should only
		be used for debugging or scenarios that require full synchronization points
		on the host-side. For debugging purposees, this barrier can be inserted
		before the application's collective calls to check if any ranks are
		desynchronized.
		
		.. note:: Note that this collective is only supported with the GLOO backend.
		
		Args:
		    group (ProcessGroup, optional): The process group to work on. If
		        ``None``, the default process group will be used.
		    timeout (datetime.timedelta, optional): Timeout for monitored_barrier.
		        If ``None``, the default process group timeout will be used.
		    wait_all_ranks (bool, optional): Whether to collect all failed ranks or
		        not. By default, this is ``False`` and ``monitored_barrier`` on rank 0
		        will throw on the first failed rank it encounters in order to fail
		        fast. By setting ``wait_all_ranks=True`` ``monitored_barrier`` will
		        collect all failed ranks and throw an error containing information
		        about all failed ranks.
		
		Returns:
		    ``None``.
		
		Example::
		    >>> # Note: Process group initialization omitted on each rank.
		    >>> import torch.distributed as dist
		    >>> if dist.get_rank() != 1:
		    >>>     dist.monitored_barrier() # Raises exception indicating that
		    >>> # rank 1 did not call into monitored_barrier.
		    >>> # Example with wait_all_ranks=True
		    >>> if dist.get_rank() == 0:
		    >>>     dist.monitored_barrier(wait_all_ranks=True) # Raises exception
		    >>> # indicating that ranks 1, 2, ... world_size - 1 did not call into
		    >>> # monitored_barrier.
	**/
	static public function monitored_barrier(?group:Dynamic, ?timeout:Dynamic, ?wait_all_ranks:Dynamic):Dynamic;
	/**
		Creates a new distributed group.
		
		This function requires that all processes in the main group (i.e. all
		processes that are part of the distributed job) enter this function, even
		if they are not going to be members of the group. Additionally, groups
		should be created in the same order in all processes.
		
		.. warning::
		    Using multiple process groups with the ``NCCL`` backend concurrently
		    is not safe and the user should perform explicit synchronization in
		    their application to ensure only one process group is used at a time.
		    This means collectives from one process group should have completed
		    execution on the device (not just enqueued since CUDA execution is
		    async) before collectives from another process group are enqueued.
		    See `Using multiple NCCL communicators concurrently <https://docs.nvid
		    ia.com/deeplearning/nccl/user-guide/docs/usage/communicators.html#using
		    -multiple-nccl-communicators-concurrently>`_ for more details.
		
		Args:
		    ranks (list[int]): List of ranks of group members. If ``None``, will be
		        set to all ranks. Default is ``None``.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is applicable for the ``gloo`` backend. For ``nccl``, this is
		        applicable only if the environment variable ``NCCL_BLOCKING_WAIT``
		        or ``NCCL_ASYNC_ERROR_HANDLING`` is set to 1. When
		        ``NCCL_BLOCKING_WAIT`` is set, this is the duration for which the
		        process will block and wait for collectives to complete before
		        throwing an exception. When ``NCCL_ASYNC_ERROR_HANDLING`` is set,
		        this is the duration after which collectives will be aborted
		        asynchronously and the process will crash. ``NCCL_BLOCKING_WAIT``
		        will provide errors to the user which can be caught and handled,
		        but due to its blocking nature, it has a performance overhead. On
		        the other hand, ``NCCL_ASYNC_ERROR_HANDLING`` has very little
		        performance overhead, but crashes the process on errors. This is
		        done since CUDA execution is async and it is no longer safe to
		        continue executing user code since failed async NCCL operations
		        might result in subsequent CUDA operations running on corrupted
		        data. Only one of these two environment variables should be set.
		    backend (str or Backend, optional): The backend to use. Depending on
		        build-time configurations, valid values are ``gloo`` and ``nccl``.
		        By default uses the same backend as the global group. This field
		        should be given as a lowercase string (e.g., ``"gloo"``), which can
		        also be accessed via :class:`Backend` attributes (e.g.,
		        ``Backend.GLOO``). If ``None`` is passed in, the backend
		        corresponding to the default process group will be used. Default is
		        ``None``.
		    pg_options (ProcessGroupOptions, optional): process group options
		        specifying what additional options need to be passed in during
		        the construction of specific process groups. i.e. for the ``nccl``
		        backend, ``is_high_priority_stream`` can be specified so that
		        process group can pick up high priority cuda streams.
		
		Returns:
		    A handle of distributed group that can be given to collective calls.
	**/
	static public function new_group(?ranks:Dynamic, ?timeout:Dynamic, ?backend:Dynamic, ?pg_options:Dynamic):Dynamic;
	/**
		Creates GPU subgroups of equal size. By default, it creates intra-machine subgroups,
		where each of which contains all the ranks of a machine, based on the assumption
		that each machine has the same number of CUDA devices.
		
		This is a convenience API that calls ``new_group`` to generate multiple subgroups.
		It requires that all processes in the main group (i.e. all
		processes that are part of the distributed job) enter this function, even
		if they are not going to be members of the group.
		
		.. warning::
		    This API only works when CUDA is available.
		
		.. warning::
		    If ``group_size`` is passed in, the world size must be divisible by ``group_size``.
		    If no ``group_size`` is passed in, and not all the machines have the same number
		    of devices, the subgroup division will be different across nodes and can cause
		    unexpected behaviors.
		
		.. warning::
		    Using multiple process groups with the ``NCCL`` backend concurrently
		    is not safe and the user should perform explicit synchronization in
		    their application to ensure only one process group is used at a time.
		    This means collectives from one process group should have completed
		    execution on the device (not just enqueued since CUDA execution is
		    async) before collectives from another process group are enqueued.
		    See `Using multiple NCCL communicators concurrently <https://docs.nvid
		    ia.com/deeplearning/nccl/user-guide/docs/usage/communicators.html#using
		    -multiple-nccl-communicators-concurrently>`_ for more details.
		
		Args:
		    group_size (int, optional): The size of each subgroup. If ``None``,
		        the default subgroup size is equal to the number of devices on each machine,
		        based on the assumption that each machine has exactly the same
		        number of devices. Default is ``None``.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is applicable for the ``gloo`` backend. For ``nccl``, this is
		        applicable only if the environment variable ``NCCL_BLOCKING_WAIT``
		        or ``NCCL_ASYNC_ERROR_HANDLING`` is set to 1. When
		        ``NCCL_BLOCKING_WAIT`` is set, this is the duration for which the
		        process will block and wait for collectives to complete before
		        throwing an exception. When ``NCCL_ASYNC_ERROR_HANDLING`` is set,
		        this is the duration after which collectives will be aborted
		        asynchronously and the process will crash. ``NCCL_BLOCKING_WAIT``
		        will provide errors to the user which can be caught and handled,
		        but due to its blocking nature, it has a performance overhead. On
		        the other hand, ``NCCL_ASYNC_ERROR_HANDLING`` has very little
		        performance overhead, but crashes the process on errors. This is
		        done since CUDA execution is async and it is no longer safe to
		        continue executing user code since failed async NCCL operations
		        might result in subsequent CUDA operations running on corrupted
		        data. Only one of these two environment variables should be set.
		    backend (str or Backend, optional): The backend to use. Depending on
		        build-time configurations, valid values are ``gloo`` and ``nccl``.
		        By default uses the same backend as the global group. This field
		        should be given as a lowercase string (e.g., ``"gloo"``), which can
		        also be accessed via :class:`Backend` attributes (e.g.,
		        ``Backend.GLOO``). If ``None`` is passed in, the backend
		        corresponding to the default process group will be used. Default is
		        ``None``.
		    pg_options (ProcessGroupOptions, optional): process group options
		        specifying what additional options need to be passed in during
		        the construction of specific process groups. i.e. for the ``nccl``
		        backend, ``is_high_priority_stream`` can be specified so that
		        process group can pick up high priority cuda streams.
		
		Returns:
		    The subgroup containing the current rank, and all the subgroups used for cleanup.
		
		Examples:
		    >>> # Create intra-machine subgroups.
		    >>> cur_subgroup, subgroups = dist.new_subgroups()
		    >>> # Allreduce within the machine.
		    >>> rank = dist.get_rank()
		    >>> tensor = torch.ones(1, device=rank) * rank
		    >>> dist.all_reduce(tensor, group=cur_subgroup)
		    >>> tensor
		    tensor([8])     # Assume 8 is the number of CUDA devices per machine.
		    >>> # Cleanup.
		    >>> for subgroup in subgroups:
		    >>>     dist.destroy_process_group(subgroup)
	**/
	static public function new_subgroups(?group_size:Dynamic, ?group:Dynamic, ?timeout:Dynamic, ?backend:Dynamic, ?pg_options:Dynamic):Dynamic;
	/**
		Creates GPU subgroups by dividing the global world, where the division is specified by
		a nested list of ranks. The subgroups cannot have overlap, and some ranks may not have
		to be in any subgroup.
		
		This is a convenience API that calls ``new_group`` to generate multiple subgroups.
		It requires that all processes in the main group (i.e. all
		processes that are part of the distributed job) enter this function, even
		if they are not going to be members of the group.
		
		.. warning::
		    Using multiple process groups with the ``NCCL`` backend concurrently
		    is not safe and the user should perform explicit synchronization in
		    their application to ensure only one process group is used at a time.
		    This means collectives from one process group should have completed
		    execution on the device (not just enqueued since CUDA execution is
		    async) before collectives from another process group are enqueued.
		    See `Using multiple NCCL communicators concurrently <https://docs.nvid
		    ia.com/deeplearning/nccl/user-guide/docs/usage/communicators.html#using
		    -multiple-nccl-communicators-concurrently>`_ for more details.
		
		Args:
		    ranks_per_subgroup_list (list[list[int]]): A nested list of ranks of
		        group members.
		    timeout (timedelta, optional): Timeout for operations executed against
		        the process group. Default value equals 30 minutes.
		        This is applicable for the ``gloo`` backend. For ``nccl``, this is
		        applicable only if the environment variable ``NCCL_BLOCKING_WAIT``
		        or ``NCCL_ASYNC_ERROR_HANDLING`` is set to 1. When
		        ``NCCL_BLOCKING_WAIT`` is set, this is the duration for which the
		        process will block and wait for collectives to complete before
		        throwing an exception. When ``NCCL_ASYNC_ERROR_HANDLING`` is set,
		        this is the duration after which collectives will be aborted
		        asynchronously and the process will crash. ``NCCL_BLOCKING_WAIT``
		        will provide errors to the user which can be caught and handled,
		        but due to its blocking nature, it has a performance overhead. On
		        the other hand, ``NCCL_ASYNC_ERROR_HANDLING`` has very little
		        performance overhead, but crashes the process on errors. This is
		        done since CUDA execution is async and it is no longer safe to
		        continue executing user code since failed async NCCL operations
		        might result in subsequent CUDA operations running on corrupted
		        data. Only one of these two environment variables should be set.
		     backend (str or Backend, optional): The backend to use. Depending on
		         build-time configurations, valid values are ``gloo`` and ``nccl``.
		         By default uses the same backend as the global group. This field
		         should be given as a lowercase string (e.g., ``"gloo"``), which can
		         also be accessed via :class:`Backend` attributes (e.g.,
		         ``Backend.GLOO``). If ``None`` is passed in, the backend
		         corresponding to the default process group will be used. Default is
		         ``None``.
		    pg_options (ProcessGroupOptions, optional): process group options
		        specifying what additional options need to be passed in during
		        the construction of specific process groups. i.e. for the ``nccl``
		        backend, ``is_high_priority_stream`` can be specified so that
		        process group can pick up high priority cuda streams.
		
		Returns:
		    The subgroup containing the current rank, and all the subgroups used for cleanup.
		
		Examples:
		    >>> # Create two subgroups, where each has 2 processes.
		    >>> cur_subgroup, subgroups = dist.new_subgroups(ranks=[[0, 2], [1, 3]])
		    >>> rank = dist.get_rank()
		    >>> tensor = torch.ones(1, device=rank) * rank
		    >>> dist.all_reduce(tensor, group=cur_subgroup)
		    >>> tensor
		    tensor([2])     # Subgroup 0: ranks 0 and 2
		    tensor([4])     # Subgroup 1: ranks 1 and 3
	**/
	static public function new_subgroups_by_enumeration(ranks_per_subgroup_list:Dynamic, ?timeout:Dynamic, ?backend:Dynamic, ?pg_options:Dynamic):Dynamic;
	/**
		Receives a tensor synchronously.
		
		Args:
		    tensor (Tensor): Tensor to fill with received data.
		    src (int, optional): Source rank. Will receive from any
		        process if unspecified.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    tag (int, optional): Tag to match recv with remote send
		
		Returns:
		    Sender rank
		    -1, if not part of the group
	**/
	static public function recv(tensor:Dynamic, ?src:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Reduces the tensor data across all machines.
		
		Only the process with rank ``dst`` is going to receive the final result.
		
		Args:
		    tensor (Tensor): Input and output of the collective. The function
		        operates in-place.
		    dst (int): Destination rank
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
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
		
		Args:
		    tensor_list (List[Tensor]): Input and output GPU tensors of the
		        collective. The function operates in-place.
		        You also need to make sure that ``len(tensor_list)`` is the same for
		        all the distributed processes calling this function.
		    dst (int): Destination rank
		    op (optional): One of the values from
		        ``torch.distributed.ReduceOp``
		        enum.  Specifies an operation used for element-wise reductions.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
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
		Reduces, then scatters a list of tensors to all processes in a group.
		
		Args:
		    output (Tensor): Output tensor.
		    input_list (list[Tensor]): List of tensors to reduce and scatter.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
	**/
	static public function reduce_scatter(output:Dynamic, input_list:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Reduce and scatter a list of tensors to the whole group.  Only nccl backend
		is currently supported.
		
		Each tensor in ``output_tensor_list`` should reside on a separate GPU, as
		should each list of tensors in ``input_tensor_lists``.
		
		Args:
		    output_tensor_list (List[Tensor]): Output tensors (on different GPUs)
		        to receive the result of the operation.
		
		        Note that ``len(output_tensor_list)`` needs to be the same for all
		        the distributed processes calling this function.
		
		    input_tensor_lists (List[List[Tensor]]): Input lists.  It should
		        contain correctly-sized tensors on each GPU to be used for input of
		        the collective, e.g. ``input_tensor_lists[i]`` contains the
		        reduce_scatter input that resides on the GPU of
		        ``output_tensor_list[i]``.
		
		        Note that each element of ``input_tensor_lists`` has the size of
		        ``world_size * len(output_tensor_list)``, since the function
		        scatters the result from every single GPU in the group.  To
		        interpret each element of ``input_tensor_lists[i]``, note that
		        ``output_tensor_list[j]`` of rank k receives the reduce-scattered
		        result from ``input_tensor_lists[i][k * world_size + j]``
		
		        Also note that ``len(input_tensor_lists)``, and the size of each
		        element in ``input_tensor_lists`` (each element is a list,
		        therefore ``len(input_tensor_lists[i])``) need to be the same for
		        all the distributed processes calling this function.
		
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op.
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group.
	**/
	static public function reduce_scatter_multigpu(output_tensor_list:Dynamic, input_tensor_lists:Dynamic, ?op:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
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
		
		Args:
		    scheme (str): URL scheme to identify your rendezvous handler.
		    handler (function): Handler that is invoked when the
		        `rendezvous()` function is called with a URL that uses
		        the corresponding scheme. It must be a generator function
		        that yields the triplet.
	**/
	static public function register_rendezvous_handler(scheme:Dynamic, handler:Dynamic):Dynamic;
	static public function rendezvous(url:Dynamic, ?rank:Dynamic, ?world_size:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Scatters a list of tensors to all processes in a group.
		
		Each process will receive exactly one tensor and store its data in the
		``tensor`` argument.
		
		Complex tensors are supported.
		
		Args:
		    tensor (Tensor): Output tensor.
		    scatter_list (list[Tensor]): List of tensors to scatter (default is
		        None, must be specified on the source rank)
		    src (int): Source rank (default is 0)
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    async_op (bool, optional): Whether this op should be an async op
		
		Returns:
		    Async work handle, if async_op is set to True.
		    None, if not async_op or if not part of the group
	**/
	static public function scatter(tensor:Dynamic, ?scatter_list:Dynamic, ?src:Dynamic, ?group:Dynamic, ?async_op:Dynamic):Dynamic;
	/**
		Scatters picklable objects in ``scatter_object_input_list`` to the whole
		group. Similar to :func:`scatter`, but Python objects can be passed in. On
		each rank, the scattered object will be stored as the first element of
		``scatter_object_output_list``. Note that all objects in
		``scatter_object_input_list`` must be picklable in order to be scattered.
		
		Args:
		    scatter_object_output_list (List[Any]): Non-empty list whose first
		        element will store the object scattered to this rank.
		    scatter_object_input_list (List[Any]): List of input objects to scatter.
		        Each object must be picklable. Only objects on the ``src`` rank will
		        be scattered, and the argument can be ``None`` for non-src ranks.
		    src (int): Source rank from which to scatter
		        ``scatter_object_input_list``.
		    group: (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used. Default is ``None``.
		
		Returns:
		    ``None``. If rank is part of the group, ``scatter_object_output_list``
		    will have its first element set to the scattered object for this rank.
		
		.. note:: Note that this API differs slightly from the scatter collective
		    since it does not provide an ``async_op`` handle and thus will be a
		    blocking call.
		
		.. warning::
		    :func:`scatter_object_list` uses ``pickle`` module implicitly, which
		    is known to be insecure. It is possible to construct malicious pickle
		    data which will execute arbitrary code during unpickling. Only call this
		    function with data you trust.
		
		Example::
		    >>> # Note: Process group initialization omitted on each rank.
		    >>> import torch.distributed as dist
		    >>> if dist.get_rank() == 0:
		    >>>     # Assumes world_size of 3.
		    >>>     objects = ["foo", 12, {1: 2}] # any picklable object
		    >>> else:
		    >>>     # Can be any list on non-src ranks, elements are not used.
		    >>>     objects = [None, None, None]
		    >>> output_list = [None]
		    >>> dist.scatter_object_list(output_list, objects, src=0)
		    >>> # Rank i gets objects[i]. For example, on rank 2:
		    >>> output_list
		    [{1: 2}]
	**/
	static public function scatter_object_list(scatter_object_output_list:Dynamic, scatter_object_input_list:Dynamic, ?src:Dynamic, ?group:Dynamic):Dynamic;
	/**
		Sends a tensor synchronously.
		
		Args:
		    tensor (Tensor): Tensor to send.
		    dst (int): Destination rank.
		    group (ProcessGroup, optional): The process group to work on. If None,
		        the default process group will be used.
		    tag (int, optional): Tag to match send with remote recv
	**/
	static public function send(tensor:Dynamic, dst:Dynamic, ?group:Dynamic, ?tag:Dynamic):Dynamic;
	static public var string_classes : Dynamic;
	static public function supports_complex(reduceOp:Dynamic):Dynamic;
}