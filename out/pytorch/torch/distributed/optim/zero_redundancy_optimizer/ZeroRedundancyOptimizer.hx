/* This file is generated, do not edit! */
package torch.distributed.optim.zero_redundancy_optimizer;
@:pythonImport("torch.distributed.optim.zero_redundancy_optimizer", "ZeroRedundancyOptimizer") extern class ZeroRedundancyOptimizer {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(params:Dynamic, optimizer_class:Dynamic, ?process_group:Dynamic, ?parameters_as_bucket_view:Dynamic, ?overlap_with_ddp:Dynamic, ?defaults:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(params:Dynamic, optimizer_class:Dynamic, ?process_group:Dynamic, ?parameters_as_bucket_view:Dynamic, ?overlap_with_ddp:Dynamic, ?defaults:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_impl : Dynamic;
	/**
		Assigns the model parameters given by ``bucket_params``, representing a
		(possibly non-strict) subset of the parameters corresponding to a
		:class:`DistributedDataParallel` bucket, to the rank with the least
		size assigned so far and collects relevant information.
		
		Arguments:
		    bucket_index (int): index of the :class:`DistributedDataParallel`
		        gradient bucket.
		    bucket_params (List[torch.Tensor]): subset of the parameters
		        corresponding to the bucket to assign.
		    bucket_offset (int): offset giving the index of the first element
		        in ``bucket_params`` in the bucket's full parameter list.
		    assigned_rank (int): rank to assign to.
		    assigned_ranks_per_bucket (List[Set[int]]): :class:`set` of ranks
		        assigned to each bucket.
	**/
	public function _assign_bucket_subset_to_rank(bucket_index:Dynamic, bucket_params:Dynamic, bucket_offset:Dynamic, assigned_rank:Dynamic, assigned_ranks_per_bucket:Dynamic):Dynamic;
	/**
		Broadcasts the shard of parameters from a given rank to all other
		ranks asynchronously.
		
		Arguments:
		    rank (int): the source rank.
		
		Returns:
		    A :class:`list` of async work handles for the ``broadcast()`` s
		    performed to synchronize the parameters.
	**/
	public function _broadcast_params_from_rank(rank:Dynamic):Dynamic;
	/**
		:class:`list` of length world size consisting of :class:`dict` s
		mapping bucket indices to :class:`_DDPBucketAssignment` s for each
		rank.
	**/
	public var _bucket_assignments_per_rank : Dynamic;
	/**
		For each DDP bucket with parameters assigned to this rank, flattens the
		data of those parameters into a single tensor and saves the tensor to
		the ``tensor`` attribute in the corresponding
		:class:`_DDPBucketAssignment` instance stored in
		``self._bucket_assignments_per_rank``.
		
		:class:`DistributedDataParallel` guarantees that the parameters
		corresponding to a gradient bucket have the same device and the same
		dtype.
	**/
	public function _build_ddp_param_buckets():Dynamic;
	/**
		Builds parameter buckets if ``parameters_as_bucket_view=True`` so
		that for each device that stores this rank's parameters, there is a
		bucket (represented as a tensor) containing all of the parameters on
		that device that are assigned to a given rank in the parameter update
		partition.
		
		This method is called in the constructor and any time parameter
		trainability is changed.
		
		.. warning::
		    The current implementation assumes that all of the parameters in a
		    bucket are of the same dense type when allocating the bucket's
		    tensor.
		
		.. warning::
		    If the model parameters are stored across more than one device,
		    then the storage partitioning must be the same across all
		    processes in order for parameter synchronization to work.
	**/
	public function _build_param_buckets():Dynamic;
	/**
		Checks that the delayed initialization has occurred (see
		:meth:`_init_zero_for_overlap`) if ``overlap_with_ddp=True``, and
		raises a ``RuntimeError`` if not. This should preface methods that
		should not be run before that delayed initialization.
		
		Raises:
		    RuntimeError: if ``overlap_with_ddp=True`` and
		        :meth:`_init_zero_for_overlap` has not been called.
	**/
	public function _check_overlap_initialized():Dynamic;
	/**
		Clears the cached data structures giving partition information.
	**/
	public function _clear_cache():Dynamic;
	/**
		:class:`dict` mapping each device to a :class:`list` of the per-rank parameter
		lists filtered to only include the parameters stored on that device.
		Each per-rank parameter list gives the parameters assigned to that rank
		to update.
		
		This is used for constructing the parameter buckets if
		``parameters_as_bucket_view=True``.
		
		Let ``dev_i`` denote the ``i``th device for this rank. Then:
		``dev_0`` maps to a list containing:
		    rank 0's assigned parameters stored on ``dev_0``,
		    rank 1's assigned parameters stored on ``dev_0``,
		    ...
		``dev_1`` maps to a list containing:
		    rank 0's assigned parameters stored on ``dev_1``,
		    rank 1's assigned parameters stored on ``dev_1``,
		    ...
		...
	**/
	public var _device_to_params_per_rank : Dynamic;
	/**
		Returns the single rank assigned to a :class:`DistributedDataParallel`
		gradient bucket.
		
		Arguments:
		    bucket_index (int): index of the :class:`DistributedDataParallel`
		        bucket for which to get the assigned rank.
	**/
	public function _get_assigned_rank(bucket_index:Dynamic):Dynamic;
	/**
		Returns a boolean mask indicating if each parameter is trainable
		(``requires_grad``) or not.
	**/
	public function _get_is_trainable_mask():Dynamic;
	/**
		Returns ``values.index(min(values))``, except only uses one pass. It
		also excludes any indices in ``disallowed_indices`` if provided.
		
		Arguments:
		    values: (List[int]): :class:`list` of values.
		    disallowed_indices (Optional[Set[int]]): indices that are
		        disallowed from being the returned min index.
	**/
	public function _get_min_index(values:Dynamic, ?disallowed_indices:Dynamic):Dynamic;
	/**
		Returns the proper optimizer constructor, performing the necessary
		validation and transformation depending on ``overlap_with_ddp``.
		
		Returns:
		
		    - ``optimizer_class`` if ``overlap_with_ddp=False`` and
		        ``optimizer_class`` is not a functional optimizer.
		    - ``optimizer_class`` if ``overlap_with_ddp=True`` and
		        ``optimizer_class`` is already a functional optimizer.
		    - The functional equivalent of ``optimizer_class`` if
		        ``overlap_with_ddp=True`` and ``optimizer_class`` is not
		        already a functional optimizer (assuming the equivalent
		        exists).
		
		Raises:
		    ValueError:
		
		        - if ``overlap_with_ddp=True`` but ``optimizer_class`` is
		            neither a functional optimizer nor translatable to a
		            functional optimizer.
		        - if ``overlap_with_ddp=False`` and ``optimizer_class`` is a
		            functional optimizer.
	**/
	public function _get_optimizer_constructor(optimizer_class:Dynamic):Dynamic;
	public function _hook_for_profile():Dynamic;
	/**
		List mapping parameter indices in the global optimizer scheme to the
		actual params.
	**/
	public var _index_to_param : Dynamic;
	/**
		Initializes this rank's local optimizer, responsible for its subset of
		the parameters.
		
		The local optimizer is saved in ``self.optim``.
	**/
	public function _init_local_optimizer():Dynamic;
	/**
		Performs a delayed initialization of the local optimizer and the
		supporting data structures.
	**/
	public function _init_zero_for_overlap():Dynamic;
	/**
		Performs a single optimizer step without syncing parameters across
		ranks.
		
		Arguments:
		    gradients (list[Optional[torch.Tensor]], optional): a :class:`list`
		        of length equal to the number of parameters assigned to this
		        rank containing gradient tensors or ``None`` as its elements;
		        a ``None`` in the :class:`list` indicates that the
		        corresponding parameter should not be updated.
		        If the argument itself is ``None``, then all parameters are
		        updated, and the gradients are assumed to be already populated.
		        (default: ``None``)
		    closure (callable): a closure that re-evaluates the model and
		        returns the loss; optional for most optimizers and should be
		        ``None`` if ``gradients`` is not ``None``; (default: ``None``)
		Returns:
		    Optional loss depending on the underlying local optimizer.
		
		.. warning::
		    The argument ``gradients`` should only be specified (i.e. not
		    ``None``) if ``overlap_with_ddp=True``, in which case
		    :class:`ZeroRedundancyOptimizer` wraps a functional optimizer.
	**/
	public function _local_step(?gradients:Dynamic, ?closure:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		:class:`dict` mapping parameters to their indices in the global
		optimizer state.
		
		NOTE: This assumes that the global optimizer state's indexing (in
		``state_dict``) follows a linear ordering over the parameter groups.
	**/
	public var _param_to_index : Dynamic;
	/**
		:class:`dict` mapping parameters to their assigned data parallel rank
		in the partition.
	**/
	public var _param_to_rank : Dynamic;
	/**
		Partitions the parameter group ``param_group`` according to
		``params_per_rank`` by modifying ``self._partition_parameters_cache``.
		
		This method should only be used as a subroutine for
		:meth:`_partition_parameters`.
		
		Arguments:
		    param_group (dict[str, Any]): a parameter group as normally defined
		        in an optimizer state.
		    params_per_rank (list[list[torch.Tensor]]): a :class:`list` of
		        length world size containing :class:`list` s of parameters to
		        assign to each rank.
	**/
	public function _partition_param_group(param_group:Dynamic, params_per_rank:Dynamic):Dynamic;
	/**
		Partitions parameters across distributed data parallel ranks.
		
		Arguments:
		    params_per_rank (list[list[torch.Tensor]], optional): a
		        :class:`list` of length world size containing :class:`list` s
		        of parameters to assign to each rank; this provides a way to
		        specify a partition manually.
		        If ``None``, the parameters are partitioned according to an
		        internal algorithm.
		        (default: ``None``)
		
		Returns:
		    A :class:`list` where each element of the list contains the
		    ``param_groups`` for a rank (which itself is a :class:`list` of
		    :class:`dict`); element 0 corresponds to rank 0, etc.; each rank
		    stores the ``param_groups`` for all ranks for the collective
		    communication in :meth:`step`.
		
		Raises:
		    ValueError: see :meth:`_validate_params_per_rank`.
		    RuntimeError: if ``params_per_rank`` is not ``None`` and this
		        :class:`ZeroRedundancyOptimizer` instance is using more than
		        one parameter group.
	**/
	public function _partition_parameters(?params_per_rank:Dynamic):Dynamic;
	/**
		Syncs the attributes from the source parameter groups to the
		destination parameter groups.
		
		Example attributes include learning rate or scheduler attributes. The
		two parameter groups should have the same length (i.e. same number of
		parameter groups).
		
		Arguments:
		    src_param_groups (list[dict]): parameter groups giving the
		        attribute settings to copy.
		    dst_param_groups (list[dict]): parameter groups giving the
		        attribute settings to set.
	**/
	static public function _sync_param_groups(src_param_groups:Dynamic, dst_param_groups:Dynamic):Dynamic;
	/**
		Syncs all parameter shards across the ranks.
		
		This rank sends its shard of the parameters to all other ranks and
		receives a shard from each other rank. This is done using
		``broadcast()``. Parameters are sent bucket-by-bucket if
		``parameters_as_bucket_view=True``and sent parameter-by-parameter
		otherwise.
	**/
	public function _sync_params():Dynamic;
	/**
		Verifies the type of ``params`` and initializes ``self._all_params``
		if ``params`` is valid.
		
		While :class:`optim.Optimizer <torch.optim.Optimizer>` allows
		``params`` to be an iterable of :class:`dict` s, currently
		``ZeroRedundancyOptimizer`` strictly requires ``params`` to be an
		iterable of :class:`torch.Tensor` s.
		
		Raises:
		    TypeError: ``params`` has an invalid type.
		    ValueError: ``params`` is empty.
	**/
	public function _verify_and_init_params(params:Dynamic):Dynamic;
	/**
		Verifies ``params_per_rank`` for :meth:`_partition_parameters`,
		checking that ``params_per_rank`` has length equal to the world size
		and that it does not contain any parameters not passed into the
		:class:`ZeroRedundancyOptimizer` constructor.
		
		The parameters in ``params_per_rank`` being a strict subset of those
		passed into the constructor is valid since some parameters may be
		frozen.
		
		Raises:
		    ValueError: if ``params_per_rank`` does not have length equal to
		        the world size or if it contains a parameter that was not
		        passed into the :class:`ZeroRedundancyOptimizer` constructor.
	**/
	public function _verify_params_per_rank(params_per_rank:Dynamic):Dynamic;
	/**
		Verifies that all parameters are of the same dense type.
		
		The method assumes that ``self._all_params`` has been initialized
		and is non-empty.
		
		Raises:
		    ValueError: ``params`` contains sparse parameters or parameters
		    of varying dense types.
		
		NOTE: This method can be removed once support for sparse parameters
		and varying parameter types is added.
	**/
	public function _verify_same_dense_param_type():Dynamic;
	/**
		Add a parameter group to the :class:`Optimizer` 's ``param_groups``.
		
		This can be useful when fine tuning a pre-trained network, as frozen
		layers can be made trainable and added to the :class:`Optimizer` as
		training progresses.
		
		Arguments:
		    param_group (dict): specifies the parameters to be optimized and
		        group-specific optimization options.
		
		.. warning:: This method handles updating the shards on all partitions
		    but needs to be called on all ranks. Calling this on a subset of
		    the ranks will cause the training to hang because communication
		    primitives are called depending on the managed parameters and
		    expect all the ranks to participate on the same set of parameters.
	**/
	public function add_param_group(param_group:Dynamic):Dynamic;
	/**
		Consolidate a list of ``state_dict`` s (one per rank) on the target
		rank.
		
		Arguments:
		    to (int): the rank that receives the optimizer states (default: 0).
		
		Raises:
		    RuntimeError: if ``overlap_with_ddp=True`` and this method is
		        called before this :class:`ZeroRedundancyOptimizer` instance
		        has been fully initialized, which happens once
		        :class:`DistributedDataParallel` gradient buckets have been
		        rebuilt.
		
		.. warning:: This needs to be called on all ranks.
	**/
	public function consolidate_state_dict(?to:Dynamic):Dynamic;
	/**
		Returns the device from which to perform collective communications
		needed by the join context manager implementation itself.
	**/
	public var join_device : Dynamic;
	/**
		Returns the ZeRO join hook, which enables training on uneven inputs by
		shadowing the collective communications in the optimizer step.
		
		Gradients must be properly set before this hook is called.
		
		Arguments:
		    kwargs (dict): a :class:`dict` containing any keyword arguments
		        to modify the behavior of the join hook at run time; all
		        :class:`Joinable` instances sharing the same join context
		        manager are forwarded the same value for ``kwargs``.
		
		This hook does not support any keyword arguments; i.e. ``kwargs`` is
		unused.
	**/
	public function join_hook(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the process group for the collective communications needed by
		the join context manager itself.
	**/
	public var join_process_group : Dynamic;
	/**
		Load the state pertaining to the given rank from the input
		``state_dict``, updating the local optimizer as needed.
		
		Arguments:
		    state_dict (dict): optimizer state; should be an object returned
		        from a call to :meth:`state_dict`.
		
		Raises:
		    RuntimeError: if ``overlap_with_ddp=True`` and this method is
		        called before this :class:`ZeroRedundancyOptimizer` instance
		        has been fully initialized, which happens once
		        :class:`DistributedDataParallel` gradient buckets have been
		        rebuilt.
	**/
	public function load_state_dict(state_dict:Dynamic):Dynamic;
	/**
		Returns the last global optimizer state known to this rank.
		
		.. warning:
		    If the state has not been consolidated to this rank, this raises a
		    runtime error, and even if it has, the state may not be up-to-date,
		    depending on when :meth:`consolidate_state_dict` was last called.
		
		Raises:
		    RuntimeError: if ``overlap_with_ddp=True`` and this method is
		        called before this :class:`ZeroRedundancyOptimizer` instance
		        has been fully initialized, which happens once
		        :class:`DistributedDataParallel` gradient buckets have been
		        rebuilt; or if this method is called without a preceding call
		        to :meth:`consolidate_state_dict`.
	**/
	public function state_dict():Dynamic;
	/**
		Performs a single optimizer step and syncs parameters across all ranks.
		
		Arguments:
		    closure (callable): a closure that re-evaluates the model and
		        returns the loss; optional for most optimizers.
		Returns:
		    Optional loss depending on the underlying local optimizer.
		
		.. note: Any extra parameters are passed to the base optimizer as-is.
	**/
	public function step(?closure:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Sets the gradients of all optimized :class:`torch.Tensor` s to zero.
		
		Args:
		    set_to_none (bool): instead of setting to zero, set the grads to None.
		        This will in general have lower memory footprint, and can modestly improve performance.
		        However, it changes certain behaviors. For example:
		        1. When the user tries to access a gradient and perform manual ops on it,
		        a None attribute or a Tensor full of 0s will behave differently.
		        2. If the user requests ``zero_grad(set_to_none=True)`` followed by a backward pass, ``.grad``\ s
		        are guaranteed to be None for params that did not receive a gradient.
		        3. ``torch.optim`` optimizers have a different behavior if the gradient is 0 or None
		        (in one case it does the step with a gradient of 0 and in the other it skips
		        the step altogether).
	**/
	public function zero_grad(?set_to_none:Dynamic):Dynamic;
}