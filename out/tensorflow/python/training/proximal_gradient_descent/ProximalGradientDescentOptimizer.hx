/* This file is generated, do not edit! */
package tensorflow.python.training.proximal_gradient_descent;
@:pythonImport("tensorflow.python.training.proximal_gradient_descent", "ProximalGradientDescentOptimizer") extern class ProximalGradientDescentOptimizer {
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
		Construct a new proximal gradient descent optimizer.
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning
		    rate to use.
		  l1_regularization_strength: A float value, must be greater than or
		    equal to zero.
		  l2_regularization_strength: A float value, must be greater than or
		    equal to zero.
		  use_locking: If True use locks for update operations.
		  name: Optional name prefix for the operations created when applying
		    gradients. Defaults to "GradientDescent".
	**/
	@:native("__init__")
	public function ___init__(learning_rate:Dynamic, ?l1_regularization_strength:Dynamic, ?l2_regularization_strength:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Construct a new proximal gradient descent optimizer.
		
		Args:
		  learning_rate: A Tensor or a floating point value.  The learning
		    rate to use.
		  l1_regularization_strength: A float value, must be greater than or
		    equal to zero.
		  l2_regularization_strength: A float value, must be greater than or
		    equal to zero.
		  use_locking: If True use locks for update operations.
		  name: Optional name prefix for the operations created when applying
		    gradients. Defaults to "GradientDescent".
	**/
	public function new(learning_rate:Dynamic, ?l1_regularization_strength:Dynamic, ?l2_regularization_strength:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Void;
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
		  var_list: Optional list of tf.Variable to update to minimize
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
		  A list of (gradient, variable) pairs.
		
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