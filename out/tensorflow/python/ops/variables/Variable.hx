/* This file is generated, do not edit! */
package tensorflow.python.ops.variables;
@:pythonImport("tensorflow.python.ops.variables", "Variable") extern class Variable {
	/**
		Information on how to save this Variable as a slice.
	**/
	static public function SaveSliceInfo(?full_name:Dynamic, ?full_shape:Dynamic, ?var_offset:Dynamic, ?var_shape:Dynamic, ?save_slice_info_def:Dynamic):Dynamic;
	/**
		Converts this variable to a Tensor.
		
		See [`value()`](#Variable.value).
		
		Returns:
		  A `Tensor` containing the value of the variable.
	**/
	public function _AsTensor():Dynamic;
	/**
		Register overloads for all operators.
	**/
	static public function _OverloadAllOperators():Dynamic;
	/**
		Register _RunOp as the implementation of 'operator'.
		
		Args:
		  operator: string. The operator name.
	**/
	static public function _OverloadOperator(operator:Dynamic):Dynamic;
	/**
		Run the operator 'op' for 'a'.
		
		Args:
		  operator: string. The operator name.
		  a: A Variable.
		  b: Second argument to the operator. None if unary.
		Returns:
		  The result of the operator.
	**/
	static public function _RunOp(operator:Dynamic, a:Dynamic, b:Dynamic):Dynamic;
	/**
		Utility function for converting a Variable to a Tensor.
	**/
	static public function _TensorConversionFunction(v:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?as_ref:Dynamic):Dynamic;
	public function __abs__():Dynamic;
	public function __add__(b:Dynamic):Dynamic;
	public function __and__(b:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
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
	public function __div__(b:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __floordiv__(b:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __ge__(b:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(b:Dynamic):Dynamic;
	public function __gt__(b:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates a new variable with value `initial_value`.
		
		The new variable is added to the graph collections listed in `collections`,
		which defaults to `[GraphKeys.VARIABLES]`.
		
		If `trainable` is `True` the variable is also added to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`.
		
		This constructor creates both a `variable` Op and an `assign` Op to set the
		variable to its initial value.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called. In
		    that case, `dtype` must be specified. (Note that initializer functions
		    from init_ops.py must first be bound to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.VARIABLES]`.
		  validate_shape: If `False`, allows the variable to be initialized with a
		    value of unknown shape. If `True`, the default, the shape of
		    `initial_value` must be known.
		  caching_device: Optional device string describing where the Variable
		    should be cached for reading.  Defaults to the Variable's device.
		    If not `None`, caches on another device.  Typical use is to cache
		    on the device where the Ops using the Variable reside, to deduplicate
		    copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  variable_def: `VariableDef` protocol buffer. If not `None`, recreates
		    the Variable object with its contents. `variable_def` and the other
		    arguments are mutually exclusive.
		  dtype: If set, initial_value will be converted to the given type.
		    If `None`, either the datatype will be kept (if `initial_value` is
		    a Tensor), or `convert_to_tensor` will decide.
		
		Returns:
		  A Variable.
		
		Raises:
		  ValueError: If both `variable_def` and initial_value are specified.
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	@:native("__init__")
	public function ___init__(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?variable_def:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a new variable with value `initial_value`.
		
		The new variable is added to the graph collections listed in `collections`,
		which defaults to `[GraphKeys.VARIABLES]`.
		
		If `trainable` is `True` the variable is also added to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`.
		
		This constructor creates both a `variable` Op and an `assign` Op to set the
		variable to its initial value.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called. In
		    that case, `dtype` must be specified. (Note that initializer functions
		    from init_ops.py must first be bound to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.VARIABLES]`.
		  validate_shape: If `False`, allows the variable to be initialized with a
		    value of unknown shape. If `True`, the default, the shape of
		    `initial_value` must be known.
		  caching_device: Optional device string describing where the Variable
		    should be cached for reading.  Defaults to the Variable's device.
		    If not `None`, caches on another device.  Typical use is to cache
		    on the device where the Ops using the Variable reside, to deduplicate
		    copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  variable_def: `VariableDef` protocol buffer. If not `None`, recreates
		    the Variable object with its contents. `variable_def` and the other
		    arguments are mutually exclusive.
		  dtype: If set, initial_value will be converted to the given type.
		    If `None`, either the datatype will be kept (if `initial_value` is
		    a Tensor), or `convert_to_tensor` will decide.
		
		Returns:
		  A Variable.
		
		Raises:
		  ValueError: If both `variable_def` and initial_value are specified.
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	public function new(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?variable_def:Dynamic, ?dtype:Dynamic):Void;
	public function __invert__():Dynamic;
	/**
		Dummy method to prevent iteration. Do not call.
		
		NOTE(mrry): If we register __getitem__ as an overloaded operator,
		Python will valiantly attempt to iterate over the variable's Tensor from 0
		to infinity.  Declaring this method prevents this unintended behavior.
		
		Raises:
		  TypeError: when invoked.
	**/
	public function __iter__():Dynamic;
	public function __le__(b:Dynamic):Dynamic;
	public function __lt__(b:Dynamic):Dynamic;
	public function __mod__(b:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(b:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(b:Dynamic):Dynamic;
	public function __pow__(b:Dynamic):Dynamic;
	public function __radd__(b:Dynamic):Dynamic;
	public function __rand__(b:Dynamic):Dynamic;
	public function __rdiv__(b:Dynamic):Dynamic;
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
	public function __rfloordiv__(b:Dynamic):Dynamic;
	public function __rmod__(b:Dynamic):Dynamic;
	public function __rmul__(b:Dynamic):Dynamic;
	public function __ror__(b:Dynamic):Dynamic;
	public function __rpow__(b:Dynamic):Dynamic;
	public function __rsub__(b:Dynamic):Dynamic;
	public function __rtruediv__(b:Dynamic):Dynamic;
	public function __rxor__(b:Dynamic):Dynamic;
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
	public function __sub__(b:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(b:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function __xor__(b:Dynamic):Dynamic;
	/**
		Conversion function for Graph.as_graph_element().
	**/
	public function _as_graph_element():Dynamic;
	/**
		Creates a new variable from arguments.
		
		Args:
		  initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		    which is the initial value for the Variable. The initial value must have
		    a shape specified unless `validate_shape` is set to False. Can also be a
		    callable with no argument that returns the initial value when called. In
		    that case, `dtype` must be specified. (Note that initializer functions
		    from init_ops.py must first be bound to a shape before being used here.)
		  trainable: If `True`, the default, also adds the variable to the graph
		    collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		    the default list of variables to use by the `Optimizer` classes.
		  collections: List of graph collections keys. The new variable is added to
		    these collections. Defaults to `[GraphKeys.VARIABLES]`.
		  validate_shape: If `False`, allows the variable to be initialized with a
		    value of unknown shape. If `True`, the default, the shape of
		    `initial_value` must be known.
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  name: Optional name for the variable. Defaults to `'Variable'` and gets
		    uniquified automatically.
		  dtype: If set, initial_value will be converted to the given type.
		    If None, either the datatype will be kept (if initial_value is
		   a Tensor) or float32 will be used (if it is a Python object convertible
		   to a Tensor).
		
		Raises:
		  ValueError: If the initial value is not specified, or does not have a
		    shape and `validate_shape` is `True`.
	**/
	public function _init_from_args(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a new variable from `VariableDef` protocol buffer.
		
		Args:
		  variable_def: `VariableDef` protocol buffer.
	**/
	public function _init_from_proto(variable_def:Dynamic):Dynamic;
	/**
		Sets the slice info for this `Variable`.
		
		Args:
		  save_slice_info: A `Variable.SaveSliceInfo` object.
	**/
	public function _set_save_slice_info(save_slice_info:Dynamic):Dynamic;
	/**
		Assigns a new value to the variable.
		
		This is essentially a shortcut for `assign(self, value)`.
		
		Args:
		  value: A `Tensor`. The new value for this variable.
		  use_locking: If `True`, use locking during the assignment.
		
		Returns:
		  A `Tensor` that will hold the new value of this variable after
		  the assignment has completed.
	**/
	public function assign(value:Dynamic, ?use_locking:Dynamic):Dynamic;
	/**
		Adds a value to this variable.
		
		 This is essentially a shortcut for `assign_add(self, delta)`.
		
		Args:
		  delta: A `Tensor`. The value to add to this variable.
		  use_locking: If `True`, use locking during the operation.
		
		Returns:
		  A `Tensor` that will hold the new value of this variable after
		  the addition has completed.
	**/
	public function assign_add(delta:Dynamic, ?use_locking:Dynamic):Dynamic;
	/**
		Subtracts a value from this variable.
		
		This is essentially a shortcut for `assign_sub(self, delta)`.
		
		Args:
		  delta: A `Tensor`. The value to subtract from this variable.
		  use_locking: If `True`, use locking during the operation.
		
		Returns:
		  A `Tensor` that will hold the new value of this variable after
		  the subtraction has completed.
	**/
	public function assign_sub(delta:Dynamic, ?use_locking:Dynamic):Dynamic;
	/**
		Increments this variable until it reaches `limit`.
		
		When that Op is run it tries to increment the variable by `1`. If
		incrementing the variable would bring it above `limit` then the Op raises
		the exception `OutOfRangeError`.
		
		If no error is raised, the Op outputs the value of the variable before
		the increment.
		
		This is essentially a shortcut for `count_up_to(self, limit)`.
		
		Args:
		  limit: value at which incrementing the variable raises an error.
		
		Returns:
		  A `Tensor` that will hold the variable value before the increment. If no
		  other Op modifies this variable, the values produced will all be
		  distinct.
	**/
	public function count_up_to(limit:Dynamic):Dynamic;
	/**
		The device of this variable.
	**/
	public var device : Dynamic;
	/**
		The `DType` of this variable.
	**/
	public var dtype : Dynamic;
	/**
		In a session, computes and returns the value of this variable.
		
		This is not a graph construction method, it does not add ops to the graph.
		
		This convenience method requires a session where the graph containing this
		variable has been launched. If no session is passed, the default session is
		used.  See the [Session class](../../api_docs/python/client.md#Session) for
		more information on launching a graph and on sessions.
		
		```python
		v = tf.Variable([1, 2])
		init = tf.initialize_all_variables()
		
		with tf.Session() as sess:
		    sess.run(init)
		    # Usage passing the session explicitly.
		    print(v.eval(sess))
		    # Usage with the default session.  The 'with' block
		    # above makes 'sess' the default session.
		    print(v.eval())
		```
		
		Args:
		  session: The session to use to evaluate this variable. If
		    none, the default session is used.
		
		Returns:
		  A numpy `ndarray` with a copy of the value of this variable.
	**/
	public function eval(?session:Dynamic):Dynamic;
	/**
		Returns a `Variable` object created from `variable_def`.
	**/
	static public function from_proto(variable_def:Dynamic):Dynamic;
	/**
		The `TensorShape` of this variable.
		
		Returns:
		  A `TensorShape`.
	**/
	public function get_shape():Dynamic;
	/**
		The `Graph` of this variable.
	**/
	public var graph : Dynamic;
	/**
		Returns the Tensor used as the initial value for the variable.
		
		Note that this is different from `initialized_value()` which runs
		the op that initializes the variable before returning its value.
		This method returns the tensor that is used by the op that initializes
		the variable.
		
		Returns:
		  A `Tensor`.
	**/
	public var initial_value : Dynamic;
	/**
		Returns the value of the initialized variable.
		
		You should use this instead of the variable itself to initialize another
		variable with a value that depends on the value of this variable.
		
		```python
		# Initialize 'v' with a random tensor.
		v = tf.Variable(tf.truncated_normal([10, 40]))
		# Use `initialized_value` to guarantee that `v` has been
		# initialized before its value is used to initialize `w`.
		# The random values are picked only once.
		w = tf.Variable(v.initialized_value() * 2.0)
		```
		
		Returns:
		  A `Tensor` holding the value of this variable after its initializer
		  has run.
	**/
	public function initialized_value():Dynamic;
	/**
		The initializer operation for this variable.
	**/
	public var initializer : Dynamic;
	/**
		The name of this variable.
	**/
	public var name : Dynamic;
	/**
		The `Operation` of this variable.
	**/
	public var op : Dynamic;
	/**
		Returns a reference to this variable.
		
		You usually do not need to call this method as all ops that need a reference
		to the variable call it automatically.
		
		Returns is a `Tensor` which holds a reference to the variable.  You can
		assign a new value to the variable by passing the tensor to an assign op.
		See [`value()`](#Variable.value) if you want to get the value of the
		variable.
		
		Returns:
		  A `Tensor` that is a reference to the variable.
	**/
	public function ref():Dynamic;
	/**
		Subtracts `IndexedSlices` from this variable.
		
		This is essentially a shortcut for `scatter_sub(self, sparse_delta.indices,
		sparse_delta.values)`.
		
		Args:
		  sparse_delta: `IndexedSlices` to be subtracted from this variable.
		  use_locking: If `True`, use locking during the operation.
		
		Returns:
		  A `Tensor` that will hold the new value of this variable after
		  the scattered subtraction has completed.
		
		Raises:
		  ValueError: if `sparse_delta` is not an `IndexedSlices`.
	**/
	public function scatter_sub(sparse_delta:Dynamic, ?use_locking:Dynamic):Dynamic;
	/**
		Converts a `Variable` to a `VariableDef` protocol buffer.
		
		Returns:
		  A `VariableDef` protocol buffer.
	**/
	public function to_proto():Dynamic;
	/**
		Returns the last snapshot of this variable.
		
		You usually do not need to call this method as all ops that need the value
		of the variable call it automatically through a `convert_to_tensor()` call.
		
		Returns a `Tensor` which holds the value of the variable.  You can not
		assign a new value to this tensor as it is not a reference to the variable.
		See [`ref()`](#Variable.ref) if you want to get a reference to the
		variable.
		
		To avoid copies, if the consumer of the returned value is on the same device
		as the variable, this actually returns the live value of the variable, not
		a copy.  Updates to the variable are seen by the consumer.  If the consumer
		is on a different device it will get a copy of the variable.
		
		Returns:
		  A `Tensor` containing the value of the variable.
	**/
	public function value():Dynamic;
}