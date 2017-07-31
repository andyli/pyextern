/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.lazy_adam_optimizer;
@:pythonImport("tensorflow.contrib.opt.python.training.lazy_adam_optimizer", "LazyAdamOptimizer") extern class LazyAdamOptimizer {
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
		Construct a new Adam optimizer.
		
		Initialization:
		
		```
		m_0 <- 0 (Initialize initial 1st moment vector)
		v_0 <- 0 (Initialize initial 2nd moment vector)
		t <- 0 (Initialize timestep)
		```
		
		The update rule for `variable` with gradient `g` uses an optimization
		described at the end of section2 of the paper:
		
		```
		t <- t + 1
		lr_t <- learning_rate * sqrt(1 - beta2^t) / (1 - beta1^t)
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		v_t <- beta2 * v_{t-1} + (1 - beta2) * g * g
		variable <- variable - lr_t * m_t / (sqrt(v_t) + epsilon)
		```
		
		The default value of 1e-8 for epsilon might not be a good default in
		general. For example, when training an Inception network on ImageNet a
		current good choice is 1.0 or 0.1. Note that since AdamOptimizer uses the
		formulation just before Section 2.1 of the Kingma and Ba paper rather than
		the formulation in Algorithm 1, the "epsilon" referred to here is "epsilon
		hat" in the paper.
		
		The sparse implementation of this algorithm (used when the gradient is an
		IndexedSlices object, typically because of `tf.gather` or an embedding
		lookup in the forward pass) does apply momentum to variable slices even if
		they were not used in the forward pass (meaning they have a gradient equal
		to zero). Momentum decay (beta1) is also applied to the entire momentum
		accumulator. This means that the sparse behavior is equivalent to the dense
		behavior (in contrast to some momentum implementations which ignore momentum
		unless a variable slice was actually used).
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning rate.
		  beta1: A float value or a constant float tensor.
		    The exponential decay rate for the 1st moment estimates.
		  beta2: A float value or a constant float tensor.
		    The exponential decay rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  use_locking: If True use locks for update operations.
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".
	**/
	@:native("__init__")
	public function ___init__(?learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new Adam optimizer.
		
		Initialization:
		
		```
		m_0 <- 0 (Initialize initial 1st moment vector)
		v_0 <- 0 (Initialize initial 2nd moment vector)
		t <- 0 (Initialize timestep)
		```
		
		The update rule for `variable` with gradient `g` uses an optimization
		described at the end of section2 of the paper:
		
		```
		t <- t + 1
		lr_t <- learning_rate * sqrt(1 - beta2^t) / (1 - beta1^t)
		
		m_t <- beta1 * m_{t-1} + (1 - beta1) * g
		v_t <- beta2 * v_{t-1} + (1 - beta2) * g * g
		variable <- variable - lr_t * m_t / (sqrt(v_t) + epsilon)
		```
		
		The default value of 1e-8 for epsilon might not be a good default in
		general. For example, when training an Inception network on ImageNet a
		current good choice is 1.0 or 0.1. Note that since AdamOptimizer uses the
		formulation just before Section 2.1 of the Kingma and Ba paper rather than
		the formulation in Algorithm 1, the "epsilon" referred to here is "epsilon
		hat" in the paper.
		
		The sparse implementation of this algorithm (used when the gradient is an
		IndexedSlices object, typically because of `tf.gather` or an embedding
		lookup in the forward pass) does apply momentum to variable slices even if
		they were not used in the forward pass (meaning they have a gradient equal
		to zero). Momentum decay (beta1) is also applied to the entire momentum
		accumulator. This means that the sparse behavior is equivalent to the dense
		behavior (in contrast to some momentum implementations which ignore momentum
		unless a variable slice was actually used).
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning rate.
		  beta1: A float value or a constant float tensor.
		    The exponential decay rate for the 1st moment estimates.
		  beta2: A float value or a constant float tensor.
		    The exponential decay rate for the 2nd moment estimates.
		  epsilon: A small constant for numerical stability. This epsilon is
		    "epsilon hat" in the Kingma and Ba paper (in the formula just before
		    Section 2.1), not the epsilon in Algorithm 1 of the paper.
		  use_locking: If True use locks for update operations.
		  name: Optional name for the operations created when applying gradients.
		    Defaults to "Adam".
	**/
	public function new(?learning_rate:Dynamic, ?beta1:Dynamic, ?beta2:Dynamic, ?epsilon:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		The IndexedSlices object passed to `grad` in this function is by default
		pre-processed in `_apply_sparse_duplicate_indices` to remove duplicate
		indices (see its docstring for details). Optimizers which can tolerate or
		have correct special cases for duplicate sparse indices may override
		`_apply_sparse_duplicate_indices` instead of this function, avoiding that
		overhead.
		
		Args:
		  grad: `IndexedSlices`, with no repeated indices.
		  var: A `Variable` object.
		
		Return:
		  An `Operation`.
	**/
	public function _apply_sparse(grad:Dynamic, _var:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `var`, with repeated sparse indices.
		
		Optimizers which override this method must deal with IndexedSlices objects
		such as the following:
		
		  IndexedSlicesValue(values=[1, 1], indices=[0, 0], dense_shape=[1])
		
		The correct interpretation is:
		
		  IndexedSlicesValue(values=[2], indices=[0], dense_shape=[1])
		
		Many optimizers deal incorrectly with repeated indices when updating based
		on sparse gradients (e.g. summing squares rather than squaring the sum, or
		applying momentum terms multiple times). Adding first is always the correct
		behavior, so this is enforced here by reconstructing the IndexedSlices to
		have only unique indices, then calling _apply_sparse.
		
		Optimizers which deal correctly with repeated indices may instead override
		this method to avoid the overhead of summing indices.
		
		Args:
		  grad: `IndexedSlices`.
		  var: A `Variable` object.
		
		Returns:
		  An `Operation`.
	**/
	public function _apply_sparse_duplicate_indices(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _apply_sparse_shared(grad:Dynamic, _var:Dynamic, indices:Dynamic, scatter_add:Dynamic):Dynamic;
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
	public function _get_beta_accumulators():Dynamic;
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
		Find or create a slot for a variable, using an Initializer.
		
		Args:
		  var: A `Variable` object.
		  initializer: An `Initializer`.  The initial value of the slot.
		  shape: Shape of the initial value of the slot.
		  dtype: Type of the value of the slot.
		  slot_name: Name for the slot.
		  op_name: Name to use when scoping the Variable that
		    needs to be created for  the slot.
		
		Returns:
		  A `Variable` object.
	**/
	public function _get_or_make_slot_with_initializer(_var:Dynamic, initializer:Dynamic, shape:Dynamic, dtype:Dynamic, slot_name:Dynamic, op_name:Dynamic):Dynamic;
	/**
		Create all needed tensors before applying gradients.
		
		This is called with the name_scope using the "name" that
		users have chosen for the application of gradients.
	**/
	public function _prepare():Dynamic;
	/**
		Add ops to apply dense gradients to the variable `handle`.
		
		Args:
		  grad: a `Tensor` representing the gradient.
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to the variable `handle`.
		
		Similar to `_apply_sparse`, the `indices` argument to this method has been
		de-duplicated. Optimizers which deal correctly with non-unique indices may
		instead override `_resource_apply_sparse_duplicate_indices` to avoid this
		overhead.
		
		Args:
		  grad: a `Tensor` representing the gradient for the affected indices.
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		  indices: a `Tensor` of integral type representing the indices for
		   which the gradient is nonzero. Indices are unique.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse(grad:Dynamic, _var:Dynamic, indices:Dynamic):Dynamic;
	/**
		Add ops to apply sparse gradients to `handle`, with repeated indices.
		
		Optimizers which override this method must deal with repeated indices. See
		the docstring of `_apply_sparse_duplicate_indices` for details. By default
		the correct behavior, to sum non-unique indices and their associated
		gradients, is enforced by first pre-processing `grad` and `indices` and
		passing them on to `_resource_apply_sparse`. Optimizers which deal correctly
		with duplicate indices may instead override this method to avoid the
		overhead of summing.
		
		Args:
		  grad: a `Tensor` representing the gradient for the affected indices.
		  handle: a `Tensor` of dtype `resource` which points to the variable
		   to be updated.
		  indices: a `Tensor` of integral type representing the indices for
		   which the gradient is nonzero. Indices may be repeated.
		
		Returns:
		  An `Operation` which updates the value of the variable.
	**/
	public function _resource_apply_sparse_duplicate_indices(grad:Dynamic, handle:Dynamic, indices:Dynamic):Dynamic;
	public function _resource_scatter_add(x:Dynamic, i:Dynamic, v:Dynamic):Dynamic;
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
		
		Subclasses should override to allow other float types.
		
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
		
		This is the second part of `minimize()`. It returns an `Operation` that
		applies gradients.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the `Optimizer` constructor.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
		
		Raises:
		  TypeError: If `grads_and_vars` is malformed.
		  ValueError: If none of the variables have gradients.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute gradients of `loss` for the variables in `var_list`.
		
		This is the first part of `minimize()`.  It returns a list
		of (gradient, variable) pairs where "gradient" is the gradient
		for "variable".  Note that "gradient" can be a `Tensor`, an
		`IndexedSlices`, or `None` if there is no gradient for the
		given variable.
		
		Args:
		  loss: A Tensor containing the value to minimize.
		  var_list: Optional list or tuple of `tf.Variable` to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph
		    under the key `GraphKey.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		
		Returns:
		  A list of (gradient, variable) pairs. Variable is always present, but
		  gradient can be `None`.
		
		Raises:
		  TypeError: If `var_list` contains anything else than `Variable` objects.
		  ValueError: If some arguments are invalid.
	**/
	public function compute_gradients(loss:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?grad_loss:Dynamic):Dynamic;
	public function get_name():Dynamic;
	/**
		Return a slot named `name` created for `var` by the Optimizer.
		
		Some `Optimizer` subclasses use additional variables.  For example
		`Momentum` and `Adagrad` use variables to accumulate updates.  This method
		gives access to these `Variable` objects if for some reason you need them.
		
		Use `get_slot_names()` to get the list of slot names created by the
		`Optimizer`.
		
		Args:
		  var: A variable passed to `minimize()` or `apply_gradients()`.
		  name: A string.
		
		Returns:
		  The `Variable` for the slot if it was created, `None` otherwise.
	**/
	public function get_slot(_var:Dynamic, name:Dynamic):Dynamic;
	/**
		Return a list of the names of slots created by the `Optimizer`.
		
		See `get_slot()`.
		
		Returns:
		  A list of strings.
	**/
	public function get_slot_names():Dynamic;
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
		  var_list: Optional list or tuple of `Variable` objects to update to
		    minimize `loss`.  Defaults to the list of variables collected in
		    the graph under the key `GraphKeys.TRAINABLE_VARIABLES`.
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