/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope") extern class Variable_scope_Module {
	/**
		When passed in as the value for the `reuse` flag, AUTO_REUSE indicates that
		get_variable() should create the requested variable if it doesn't exist or, if
		it does exist, simply return it.
	**/
	static public var AUTO_REUSE : Dynamic;
	static public var _DEFAULT_USE_RESOURCE : Dynamic;
	static public var _VARSCOPESTORE_KEY : Dynamic;
	static public var _VARSTORE_KEY : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _api_usage_gauge : Dynamic;
	/**
		Call partitioner validating its inputs/output.
		
		Args:
		  partitioner: a function mapping `Tensor` shape and dtype to a list of
		    partitions.
		  shape: shape of the `Tensor` to partition, must have at least two
		    dimensions.
		  dtype: dtype of the elements in the `Tensor`.
		
		Returns:
		  A list with elements >=1 and exactly one >1. The index of that
		  element corresponds to the partitioning axis.
	**/
	static public function _call_partitioner(partitioner:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	static public function _get_default_variable_store():Dynamic;
	/**
		Gets or creates a sharded variable list with these parameters.
		
		The `partitioner` must be a callable that accepts a fully defined
		`TensorShape` and returns a sequence of integers (the `partitions`).
		These integers describe how to partition the given sharded `Variable`
		along the given dimension.  That is, `partitions[1] = 3` means split
		the `Variable` into 3 shards along dimension 1.  Currently, sharding along
		only one axis is supported.
		
		If the list of variables with the given name (prefix) is already stored,
		we return the stored variables. Otherwise, we create a new one.
		
		If initializer is `None` (the default), the default initializer passed in
		the constructor is used. If that one is `None` too, we use a new
		`glorot_uniform_initializer`. If initializer is a Tensor, we use
		it as a value and derive the shape from the initializer.
		
		If the initializer is a callable, then it will be called for each
		shard.  Otherwise the initializer should match the shape of the entire
		sharded Variable, and it will be sliced accordingly for each shard.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created.
		  regularizer: A (Tensor -> Tensor or None) function; the result of applying
		    it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: List of graph collections keys to add the Variable to. Defaults
		    to `[GraphKeys.GLOBAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's device.
		    If not `None`, caches on another device.  Typical use is to cache on the
		    device where the Ops using the Variable reside, to deduplicate copying
		    through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a value
		    of unknown shape. If True, the default, the shape of initial_value must be
		    known.
		  use_resource: If False, creates a regular Variable. If True, creates an
		    experimental ResourceVariable instead which has well-defined semantics.
		    Defaults to False (will later change to True).
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value (which must have
		    the same shape). Constraints are not safe to use when doing asynchronous
		    distributed training.
		  synchronization: Indicates when a distributed a variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses when to synchronize.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  A tuple `(shards, partitions)` where `shards` is the list of `Variable`
		  shards and `partitions` is the output of the partitioner on the input
		  shape.
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    or when violating reuse during variable creation. Reuse is set inside
		    `variable_scope`.
	**/
	static public function _get_partitioned_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Get slicing dimension and number of slices from the partitioner output.
	**/
	static public function _get_slice_dim_and_num_slices(slicing:Dynamic):Dynamic;
	/**
		Get a name with the given prefix unique in the current variable scope.
	**/
	static public function _get_unique_variable_scope(prefix:Dynamic):Dynamic;
	/**
		Slices a given a shape along the specified dimension.
	**/
	static public function _iter_slices(full_shape:Dynamic, num_slices:Dynamic, slice_dim:Dynamic):Dynamic;
	/**
		Gets around capturing loop variables in python being broken.
	**/
	static public function _make_getter(captured_getter:Dynamic, captured_previous:Dynamic):Dynamic;
	static public function _make_master_method(name:Dynamic):Dynamic;
	static public function _make_master_property(name:Dynamic):Dynamic;
	static public function _make_op_method(name:Dynamic):Dynamic;
	static public var _master_method_list : Dynamic;
	static public var _master_property_list : Dynamic;
	/**
		Wrap a call to a custom_getter to use the old_getter internally.
	**/
	static public function _maybe_wrap_custom_getter(custom_getter:Dynamic, old_getter:Dynamic):Dynamic;
	static public var _name : Dynamic;
	/**
		Returns true if the callable needs no arguments to call.
	**/
	static public function _needs_no_arguments(python_callable:Dynamic):Dynamic;
	static public var _op_list : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator_v2(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Opts out of resource variables. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		non-resource variables are not supported in the long term
		
		If your code needs tf.disable_resource_variables() to be called to work
		properly please file a bug.
	**/
	static public function disable_resource_variables():Dynamic;
	static public var division : Dynamic;
	/**
		Creates resource variables by default.
		
		Resource variables are improved versions of TensorFlow variables with a
		well-defined memory model. Accessing a resource variable reads its value, and
		all ops which access a specific read value of the variable are guaranteed to
		see the same value for that tensor. Writes which happen after a read (by
		having a control or data dependency on the read) are guaranteed not to affect
		the value of the read tensor, and similarly writes which happen before a read
		are guaranteed to affect the value. No guarantees are made about unordered
		read/write pairs.
		
		Calling tf.enable_resource_variables() lets you opt-in to this TensorFlow 2.0
		feature.
	**/
	static public function enable_resource_variables():Dynamic;
	/**
		Gets an existing *local* variable or creates a new one.
		
		Behavior is the same as in `get_variable`, except that variables are
		added to the `LOCAL_VARIABLES` collection and `trainable` is set to
		`False`.
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		[Variable Scope How To](https://tensorflow.org/guide/variables)
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		def foo():
		  with tf.variable_scope("foo", reuse=tf.AUTO_REUSE):
		    v = tf.get_variable("v", [1])
		  return v
		
		v1 = foo()  # Creates v.
		v2 = foo()  # Gets the same, existing v.
		assert v1 == v2
		```
		
		If initializer is `None` (the default), the default initializer passed in
		the variable scope will be used. If that one is `None` too, a
		`glorot_uniform_initializer` will be used. The initializer can also be
		a Tensor, in which case the variable is initialized to this value and shape.
		
		Similarly, if the regularizer is `None` (the default), the default regularizer
		passed in the variable scope will be used (if that is `None` too,
		then by default no regularization is performed).
		
		If a partitioner is provided, a `PartitionedVariable` is returned.
		Accessing this object as a `Tensor` returns the shards concatenated along
		the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created. Can either be
		    an initializer object or a Tensor. If it's a Tensor, its shape must be known
		    unless validate_shape is False.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    `tf.GraphKeys.REGULARIZATION_LOSSES` and can be used for regularization.
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.LOCAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		      value of unknown shape. If True, the default, the shape of initial_value
		      must be known. For this to be used the initializer must be a Tensor and
		      not an initializer object.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True). When eager execution is
		    enabled this argument is always forced to be True.
		  custom_getter: Callable that takes as a first argument the true getter, and
		    allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value
		    (which must have the same shape). Constraints are not safe to
		    use when doing asynchronous distributed training.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_local_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		[Variable Scope How To](https://tensorflow.org/guide/variables)
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		def foo():
		  with tf.variable_scope("foo", reuse=tf.AUTO_REUSE):
		    v = tf.get_variable("v", [1])
		  return v
		
		v1 = foo()  # Creates v.
		v2 = foo()  # Gets the same, existing v.
		assert v1 == v2
		```
		
		If initializer is `None` (the default), the default initializer passed in
		the variable scope will be used. If that one is `None` too, a
		`glorot_uniform_initializer` will be used. The initializer can also be
		a Tensor, in which case the variable is initialized to this value and shape.
		
		Similarly, if the regularizer is `None` (the default), the default regularizer
		passed in the variable scope will be used (if that is `None` too,
		then by default no regularization is performed).
		
		If a partitioner is provided, a `PartitionedVariable` is returned.
		Accessing this object as a `Tensor` returns the shards concatenated along
		the partition axis.
		
		Some useful partitioners are available.  See, e.g.,
		`variable_axis_size_partitioner` and `min_max_variable_partitioner`.
		
		Args:
		  name: The name of the new or existing variable.
		  shape: Shape of the new or existing variable.
		  dtype: Type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: Initializer for the variable if one is created. Can either be
		    an initializer object or a Tensor. If it's a Tensor, its shape must be known
		    unless validate_shape is False.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    `tf.GraphKeys.REGULARIZATION_LOSSES` and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: List of graph collections keys to add the Variable to.
		    Defaults to `[GraphKeys.GLOBAL_VARIABLES]` (see `tf.Variable`).
		  caching_device: Optional device string or function describing where the
		    Variable should be cached for reading.  Defaults to the Variable's
		    device.  If not `None`, caches on another device.  Typical use is to
		    cache on the device where the Ops using the Variable reside, to
		    deduplicate copying through `Switch` and other conditional statements.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and `dtype` of the Variable to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  validate_shape: If False, allows the variable to be initialized with a
		      value of unknown shape. If True, the default, the shape of initial_value
		      must be known. For this to be used the initializer must be a Tensor and
		      not an initializer object.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True). When eager execution is
		    enabled this argument is always forced to be True.
		  custom_getter: Callable that takes as a first argument the true getter, and
		    allows overwriting the internal get_variable method.
		    The signature of `custom_getter` should match that of this method,
		    but the most future-proof version will allow for changes:
		    `def custom_getter(getter, *args, **kwargs)`.  Direct access to
		    all `get_variable` parameters is also allowed:
		    `def custom_getter(getter, name, *args, **kwargs)`.  A simple identity
		    custom getter that simply creates variables with modified names is:
		    ```python
		    def custom_getter(getter, name, *args, **kwargs):
		      return getter(name + '_suffix', *args, **kwargs)
		    ```
		  constraint: An optional projection function to be applied to the variable
		    after being updated by an `Optimizer` (e.g. used to implement norm
		    constraints or value constraints for layer weights). The function must
		    take as input the unprojected Tensor representing the value of the
		    variable and return the Tensor for the projected value
		    (which must have the same shape). Constraints are not safe to
		    use when doing asynchronous distributed training.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic, ?constraint:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	static public var get_variable_or_local_docstring : Dynamic;
	/**
		Returns the current variable scope.
	**/
	static public function get_variable_scope():Dynamic;
	/**
		Returns the variable scope store for current thread.
	**/
	static public function get_variable_scope_store():Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Use this function to prevent regularization of variables.
	**/
	static public function no_regularizer(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns `True` if resource variables are enabled.
		
		Resource variables are improved versions of TensorFlow variables with a
		well-defined memory model. Accessing a resource variable reads its value, and
		all ops which access a specific read value of the variable are guaranteed to
		see the same value for that tensor. Writes which happen after a read (by
		having a control or data dependency on the read) are guaranteed not to affect
		the value of the read tensor, and similarly writes which happen before a read
		are guaranteed to affect the value. No guarantees are made about unordered
		read/write pairs.
		
		Calling tf.enable_resource_variables() lets you opt-in to this TensorFlow 2.0
		feature.
	**/
	static public function resource_variables_enabled():Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Scope which defines a variable creation function to be used by variable().
		
		variable_creator is expected to be a function with the following signature:
		
		```
		  def variable_creator(next_creator, **kwargs)
		```
		
		The creator is supposed to eventually call the next_creator to create a
		variable if it does want to create a variable and not call Variable or
		ResourceVariable directly. This helps make creators composable. A creator may
		choose to create multiple variables, return already existing variables, or
		simply register that a variable was created and defer to the next creators in
		line. Creators can also modify the keyword arguments seen by the next
		creators.
		
		Custom getters in the variable scope will eventually resolve down to these
		custom creators when they do create variables.
		
		The valid keyword arguments in kwds are:
		
		 * initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		      which is the initial value for the Variable. The initial value must have
		      a shape specified unless `validate_shape` is set to False. Can also be a
		      callable with no argument that returns the initial value when called. In
		      that case, `dtype` must be specified. (Note that initializer functions
		      from init_ops.py must first be bound to a shape before being used here.)
		 * trainable: If `True`, the default, GradientTapes automatically watch
		      uses of this Variable.
		 * validate_shape: If `False`, allows the variable to be initialized with a
		      value of unknown shape. If `True`, the default, the shape of
		      `initial_value` must be known.
		 * caching_device: Optional device string describing where the Variable
		      should be cached for reading.  Defaults to the Variable's device.
		      If not `None`, caches on another device.  Typical use is to cache
		      on the device where the Ops using the Variable reside, to deduplicate
		      copying through `Switch` and other conditional statements.
		 * name: Optional name for the variable. Defaults to `'Variable'` and gets
		      uniquified automatically.
		    dtype: If set, initial_value will be converted to the given type.
		      If `None`, either the datatype will be kept (if `initial_value` is
		      a Tensor), or `convert_to_tensor` will decide.
		 * constraint: A constraint function to be applied to the variable after
		      updates by some algorithms.
		 * synchronization: Indicates when a distributed a variable will be
		      aggregated. Accepted values are constants defined in the class
		      `tf.VariableSynchronization`. By default the synchronization is set to
		      `AUTO` and the current `DistributionStrategy` chooses
		      when to synchronize.
		 * aggregation: Indicates how a distributed variable will be aggregated.
		      Accepted values are constants defined in the class
		      `tf.VariableAggregation`.
		
		This set may grow over time, so it's important the signature of creators is as
		mentioned above.
		
		Args:
		  variable_creator: the passed creator
		
		Yields:
		  A scope in which the creator is active
	**/
	static public function variable_creator_scope(variable_creator:Dynamic):Dynamic;
	/**
		Scope which defines a variable creation function to be used by variable().
		
		variable_creator is expected to be a function with the following signature:
		
		```
		  def variable_creator(next_creator, **kwargs)
		```
		
		The creator is supposed to eventually call the next_creator to create a
		variable if it does want to create a variable and not call Variable or
		ResourceVariable directly. This helps make creators composable. A creator may
		choose to create multiple variables, return already existing variables, or
		simply register that a variable was created and defer to the next creators in
		line. Creators can also modify the keyword arguments seen by the next
		creators.
		
		Custom getters in the variable scope will eventually resolve down to these
		custom creators when they do create variables.
		
		The valid keyword arguments in kwds are:
		
		 * initial_value: A `Tensor`, or Python object convertible to a `Tensor`,
		      which is the initial value for the Variable. The initial value must have
		      a shape specified unless `validate_shape` is set to False. Can also be a
		      callable with no argument that returns the initial value when called. In
		      that case, `dtype` must be specified. (Note that initializer functions
		      from init_ops.py must first be bound to a shape before being used here.)
		 * trainable: If `True`, the default, also adds the variable to the graph
		      collection `GraphKeys.TRAINABLE_VARIABLES`. This collection is used as
		      the default list of variables to use by the `Optimizer` classes.
		      `trainable` defaults to `True`, unless `synchronization` is
		      set to `ON_READ`, in which case it defaults to `False`.
		 * collections: List of graph collections keys. The new variable is added to
		      these collections. Defaults to `[GraphKeys.GLOBAL_VARIABLES]`.
		 * validate_shape: If `False`, allows the variable to be initialized with a
		      value of unknown shape. If `True`, the default, the shape of
		      `initial_value` must be known.
		 * caching_device: Optional device string describing where the Variable
		      should be cached for reading.  Defaults to the Variable's device.
		      If not `None`, caches on another device.  Typical use is to cache
		      on the device where the Ops using the Variable reside, to deduplicate
		      copying through `Switch` and other conditional statements.
		 * name: Optional name for the variable. Defaults to `'Variable'` and gets
		      uniquified automatically.
		 * dtype: If set, initial_value will be converted to the given type.
		      If `None`, either the datatype will be kept (if `initial_value` is
		      a Tensor), or `convert_to_tensor` will decide.
		 * constraint: A constraint function to be applied to the variable after
		      updates by some algorithms.
		 * use_resource: if True, a ResourceVariable is always created.
		 * synchronization: Indicates when a distributed a variable will be
		      aggregated. Accepted values are constants defined in the class
		      `tf.VariableSynchronization`. By default the synchronization is set to
		      `AUTO` and the current `DistributionStrategy` chooses
		      when to synchronize.
		 * aggregation: Indicates how a distributed variable will be aggregated.
		      Accepted values are constants defined in the class
		      `tf.VariableAggregation`.
		
		This set may grow over time, so it's important the signature of creators is as
		mentioned above.
		
		Args:
		  variable_creator: the passed creator
		
		Yields:
		  A scope in which the creator is active
	**/
	static public function variable_creator_scope_v1(variable_creator:Dynamic):Dynamic;
	/**
		Deprecated: context manager for defining an op that creates variables.
	**/
	static public function variable_op_scope(values:Dynamic, name_or_scope:Dynamic, ?default_name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic, ?constraint:Dynamic):Dynamic;
	static public function with_variable_store(store:Dynamic):Dynamic;
}