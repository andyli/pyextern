/* This file is generated, do not edit! */
package tensorflow.python.training.sync_replicas_optimizer;
@:pythonImport("tensorflow.python.training.sync_replicas_optimizer", "SyncReplicasOptimizer") extern class SyncReplicasOptimizer {
	static public var GATE_GRAPH : Dynamic;
	static public var GATE_NONE : Dynamic;
	static public var GATE_OP : Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Construct a sync_replicas optimizer.
		
		Args:
		  opt: The actual optimizer that will be used to compute and apply the
		    gradients. Must be one of the Optimizer classes.
		  replicas_to_aggregate: number of replicas to aggregate for each variable
		    update.
		  variable_averages: Optional `ExponentialMovingAverage` object, used to
		    maintain moving averages for the variables passed in
		    `variables_to_average`.
		  variables_to_average: a list of variables that need to be averaged. Only
		    needed if variable_averages is passed in.
		  replica_id: This is the task/worker/replica ID. Needed as index to access
		    local_steps to check staleness. Must be in the interval:
		    [0, total_num_replicas)
		  total_num_replicas: Total number of tasks/workers/replicas, could be
		    different from replicas_to_aggregate.
		    If total_num_replicas > replicas_to_aggregate: it is backup_replicas +
		    replicas_to_aggregate.
		    If total_num_replicas < replicas_to_aggregate: Replicas compute
		    multiple batches per update to variables.
		  use_locking: If True use locks for update operation.
		  name: string. Optional name of the returned operation.
	**/
	@:native("__init__")
	public function ___init__(opt:Dynamic, replicas_to_aggregate:Dynamic, ?variable_averages:Dynamic, ?variables_to_average:Dynamic, ?replica_id:Dynamic, ?total_num_replicas:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a sync_replicas optimizer.
		
		Args:
		  opt: The actual optimizer that will be used to compute and apply the
		    gradients. Must be one of the Optimizer classes.
		  replicas_to_aggregate: number of replicas to aggregate for each variable
		    update.
		  variable_averages: Optional `ExponentialMovingAverage` object, used to
		    maintain moving averages for the variables passed in
		    `variables_to_average`.
		  variables_to_average: a list of variables that need to be averaged. Only
		    needed if variable_averages is passed in.
		  replica_id: This is the task/worker/replica ID. Needed as index to access
		    local_steps to check staleness. Must be in the interval:
		    [0, total_num_replicas)
		  total_num_replicas: Total number of tasks/workers/replicas, could be
		    different from replicas_to_aggregate.
		    If total_num_replicas > replicas_to_aggregate: it is backup_replicas +
		    replicas_to_aggregate.
		    If total_num_replicas < replicas_to_aggregate: Replicas compute
		    multiple batches per update to variables.
		  use_locking: If True use locks for update operation.
		  name: string. Optional name of the returned operation.
	**/
	public function new(opt:Dynamic, replicas_to_aggregate:Dynamic, ?variable_averages:Dynamic, ?variables_to_average:Dynamic, ?replica_id:Dynamic, ?total_num_replicas:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Aggregate sparse gradients.
		
		Args:
		  grad: The sparse gradient to aggregate.
		  var: The variable to apply this gradient to.
		  train_ops: The train_ops for the worker to run.
		
		Returns:
		  aggregated_grad: Aggregated grad.
	**/
	public function _aggregate_sparse_grad(grad:Dynamic, _var:Dynamic, train_ops:Dynamic):Dynamic;
	/**
		Add ops to apply dense gradients to `var`.
		
		Args:
		  grad: A `Tensor`.
		  var: A `Variable` object.
		
		Return:
		  An `Operation`.
	**/
	public function _apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `var`.
		
		Args:
		  grad: `IndexedSlices`.
		  var: A `Variable` object.
		
		Return:
		  An `Operation`.
	**/
	public function _apply_sparse(grad:Dynamic, _var:Dynamic):Dynamic;
	/**
		Asserts tensors are all valid types (see `_valid_dtypes`).
		
		Args:
		  tensors: Tensors to check.
		
		Raises:
		  ValueError: If any tensor is not a valid type.
	**/
	public function _assert_valid_dtypes(tensors:Dynamic):Dynamic;
	/**
		Create all slots needed by the variables.
		
		Args:
		  var_list: A list of `Variable` objects.
	**/
	public function _create_slots(var_list:Dynamic):Dynamic;
	/**
		Do what is needed to finish the update.
		
		This is called with the `name_scope` using the "name" that
		users have chosen for the application of gradients.
		
		Args:
		  update_ops: List of `Operation` objects to update variables.  This list
		    contains the values returned by the `_apply_dense()` and
		    `_apply_sparse()` calls.
		  name_scope: String.  Name to use for the returned operation.
		
		Returns:
		  The operation to apply updates.
	**/
	public function _finish(update_ops:Dynamic, name_scope:Dynamic):Dynamic;
	/**
		Find or create a slot for a variable.
		
		Args:
		  var: A `Variable` object.
		  val: A `Tensor`.  The initial value of the slot.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for  the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _get_or_make_slot(_var:Dynamic, val:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Create all needed tensors before applying gradients.
		
		This is called with the name_scope using the "name" that
		users have chosen for the application of gradients.
	**/
	public function _prepare():Dynamic;
	/**
		Returns a dict for caching slots created under the given name.
		
		Args:
		  slot_name: Name for the slot.
		
		Returns:
		  A dict that maps primary `Variable` objects to the slot created
		  for that variable, under the given slot name.
	**/
	public function _slot_dict(slot_name:Dynamic):Dynamic;
	/**
		Valid types for loss, variables and gradients.
		
		Defaults to `float32`. Subclasses should override to allow other types.
		
		Returns:
		  Valid types for loss, variables and gradients.
	**/
	public function _valid_dtypes():Dynamic;
	/**
		Find or create a slot initialized with 0.0.
		
		Args:
		  var: A `Variable` object.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for  the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _zeros_slot(_var:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Apply gradients to variables.
		
		This contains most of the synchronization implementation and also wraps the
		apply_gradients() from the real optimizer.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    compute_gradients().
		  global_step: Optional Variable to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the Optimizer constructor.
		
		Returns:
		  train_op: The op to dequeue a token so the replicas can exit this batch
		  and start the next one. This is executed by each replica.
		
		Raises:
		  ValueError: If the grads_and_vars is empty.
		  ValueError: If global step is not provided, the staleness cannot be
		    checked.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients of "loss" for the variables in "var_list".
		
		This simply wraps the compute_gradients() from the real optimizer. The
		gradients will be aggregated in the apply_gradients() so that user can
		modify the gradients like clipping with per replica global norm if needed.
		The global norm with aggregated gradients can be bad as one replica's huge
		gradients can hurt the gradients from other replicas.
		
		Args:
		  *args: Arguments for compute_gradients().
		  **kwargs: Keyword arguments for compute_gradients().
		
		Returns:
		  A list of (gradient, variable) pairs.
	**/
	public function compute_gradients(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the QueueRunner for the chief to execute.
		
		This includes the operations to synchronize replicas: aggregate gradients,
		apply to variables, increment global step, insert tokens to token queue.
		
		Note that this can only be called after calling apply_gradients() which
		actually generates this queuerunner.
		
		Returns:
		  A `QueueRunner` for chief to execute.
		
		Raises:
		  ValueError: If this is called before apply_gradients().
	**/
	public function get_chief_queue_runner():Dynamic;
	/**
		Returns the clean up op for the chief to execute before exit.
		
		This includes the operation to abort the device with the token queue so all
		other replicas can also restart. This can avoid potential hang when chief
		restarts.
		
		Note that this can only be called after calling apply_gradients().
		
		Returns:
		  A clean_up_op for chief to execute before exits.
		
		Raises:
		  ValueError: If this is called before apply_gradients().
	**/
	public function get_clean_up_op():Dynamic;
	/**
		Returns the op to fill the sync_token_queue with the tokens.
		
		This is supposed to be executed in the beginning of the chief/sync thread
		so that even if the total_num_replicas is less than replicas_to_aggregate,
		the model can still proceed as the replicas can compute multiple steps per
		variable update. Make sure:
		`num_tokens >= replicas_to_aggregate - total_num_replicas`.
		
		Args:
		  num_tokens: Number of tokens to add to the queue.
		
		Returns:
		  An op for the chief/sync replica to fill the token queue.
		
		Raises:
		  ValueError: If this is called before apply_gradients().
		  ValueError: If num_tokens are smaller than replicas_to_aggregate -
		    total_num_replicas.
	**/
	public function get_init_tokens_op(?num_tokens:Dynamic):Dynamic;
	public function get_name():Dynamic;
	/**
		Return a slot named "name" created for "var" by the Optimizer.
		
		This simply wraps the get_slot() from the actual optimizer.
		
		Args:
		  *args: Arguments for get_slot().
		  **kwargs: Keyword arguments for get_slot().
		
		Returns:
		  The `Variable` for the slot if it was created, `None` otherwise.
	**/
	public function get_slot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a list of the names of slots created by the `Optimizer`.
		
		This simply wraps the get_slot_names() from the actual optimizer.
		
		Args:
		  *args: Arguments for get_slot().
		  **kwargs: Keyword arguments for get_slot().
		
		Returns:
		  A list of strings.
	**/
	public function get_slot_names(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add operations to minimize `loss` by updating `var_list`.
		
		This method simply combines calls `compute_gradients()` and
		`apply_gradients()`. If you want to process the gradient before applying
		them call `compute_gradients()` and `apply_gradients()` explicitly instead
		of using this function.
		
		Args:
		  loss: A `Tensor` containing the value to minimize.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  var_list: Optional list of `Variable` objects to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph
		    under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or  `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  name: Optional name for the returned operation.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
		
		Raises:
		  ValueError: If some of the variables are not `Variable` objects.
	**/
	public function minimize(loss:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
}