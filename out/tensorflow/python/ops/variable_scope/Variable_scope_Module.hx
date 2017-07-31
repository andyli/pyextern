/* This file is generated, do not edit! */
package tensorflow.python.ops.variable_scope;
@:pythonImport("tensorflow.python.ops.variable_scope") extern class Variable_scope_Module {
	static public var _VARSCOPE_KEY : Dynamic;
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
	/**
		Computes which dimension is being sliced and the typical slice shape.
	**/
	static public function _compute_slice_dim_and_shape(full_shape:Dynamic, slicing:Dynamic):Dynamic;
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
		
		Set `reuse` to `True` when you only want to reuse existing Variables.
		Set `reuse` to `False` when you only want to create new Variables.
		If `reuse` is `None` (the default), both new and existing variables are
		returned.
		
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
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
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
		      must be known.
		  use_resource: If False, creates a regular Variable. If True, creates an
		    experimental ResourceVariable instead which has well-defined semantics.
		    Defaults to False (will later change to True).
		
		Returns:
		  A tuple `(shards, partitions)` where `shards` is the list of `Variable`
		  shards and `partitions` is the output of the partitioner on the input
		  shape.
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    or when violating reuse during variable creation. Reuse is set inside
		    `variable_scope`.
	**/
	static public function _get_partitioned_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Get a name with the given prefix unique in the current variable scope.
	**/
	static public function _get_unique_variable_scope(prefix:Dynamic):Dynamic;
	/**
		Wrap a call to a custom_getter to use the old_getter internally.
	**/
	static public function _maybe_wrap_custom_getter(custom_getter:Dynamic, old_getter:Dynamic):Dynamic;
	/**
		Creates a context for the variable_scope, see `variable_scope` for docs.
		
		Note: this does not create a name scope.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  reuse: `True` or `None`; if `True`, we go into reuse mode for this scope as
		    well as all sub-scopes; if `None`, we just inherit the parent scope reuse.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  old_name_scope: the original name scope when re-entering a variable scope.
		  dtype: type of the variables within this scope (defaults to `DT_FLOAT`).
		  use_resource: If False, variables in this scope will be regular Variables.
		    If True, experimental ResourceVariables will be creates instead, with
		    well-defined semantics. Defaults to False (will later change to True).
		
		Yields:
		  A scope that can be captured and reused.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope, or if reuse is not `None` or `True`.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	static public function _pure_variable_scope(name_or_scope:Dynamic, ?reuse:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?old_name_scope:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Gets an existing *local* variable or creates a new one.
		
		Behavior is the same as in `get_variable`, except that variables are
		added to the `LOCAL_VARIABLES` collection and `trainable` is set to
		`False`.
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		@{$variable_scope$Variable Scope How To}
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])  # v.name == "foo/v:0"
		    w = tf.get_variable("w", [1])  # w.name == "foo/w:0"
		with tf.variable_scope("foo", reuse=True):
		    v1 = tf.get_variable("v")  # The same as v above.
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
		  initializer: Initializer for the variable if one is created.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    @{tf.GraphKeys.REGULARIZATION_LOSSES} and can be used for regularization.
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
		      must be known.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True).
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
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_local_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic):Dynamic;
	/**
		Gets an existing variable with these parameters or create a new one.
		
		This function prefixes the name with the current variable scope
		and performs reuse checks. See the
		@{$variable_scope$Variable Scope How To}
		for an extensive description of how reusing works. Here is a basic example:
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])  # v.name == "foo/v:0"
		    w = tf.get_variable("w", [1])  # w.name == "foo/w:0"
		with tf.variable_scope("foo", reuse=True):
		    v1 = tf.get_variable("v")  # The same as v above.
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
		  initializer: Initializer for the variable if one is created.
		  regularizer: A (Tensor -> Tensor or None) function; the result of
		    applying it on a newly created variable will be added to the collection
		    @{tf.GraphKeys.REGULARIZATION_LOSSES} and can be used for regularization.
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
		      must be known.
		  use_resource: If False, creates a regular Variable. If true, creates an
		    experimental ResourceVariable instead with well-defined semantics.
		    Defaults to False (will later change to True).
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
		
		Returns:
		  The created or existing `Variable` (or `PartitionedVariable`, if a
		  partitioner was used).
		
		Raises:
		  ValueError: when creating a new variable and shape is not declared,
		    when violating reuse during variable creation, or when `initializer` dtype
		    and `dtype` don't match. Reuse is set inside `variable_scope`.
	**/
	static public function get_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?validate_shape:Dynamic, ?use_resource:Dynamic, ?custom_getter:Dynamic):Dynamic;
	static public var get_variable_or_local_docstring : Dynamic;
	/**
		Returns the current variable scope.
	**/
	static public function get_variable_scope():Dynamic;
	/**
		Use this function to prevent regularization of variables.
	**/
	static public function no_regularizer(_:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function variable(?initial_value:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?validate_shape:Dynamic, ?caching_device:Dynamic, ?name:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Deprecated: context manager for defining an op that creates variables.
	**/
	static public function variable_op_scope(values:Dynamic, name_or_scope:Dynamic, ?default_name:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Returns a context manager for defining ops that creates variables (layers).
		
		This context manager validates that the (optional) `values` are from
		the same graph, ensures that graph is the default graph, and pushes a
		name scope and a variable scope.
		
		If `name_or_scope` is not None, it is used as is. If `scope` is None, then
		`default_name` is used.  In that case, if the same name has been previously
		used in the same scope, it will made unique be appending `_N` to it.
		
		Variable scope allows to create new variables and to share already created
		ones while providing checks to not create or share by accident. For details,
		see the @{$variable_scope$Variable Scope How To},
		here we present only a few basic examples.
		
		Simple example of how to create a new variable:
		
		```python
		with tf.variable_scope("foo"):
		    with tf.variable_scope("bar"):
		        v = tf.get_variable("v", [1])
		        assert v.name == "foo/bar/v:0"
		```
		
		Basic example of sharing a variable:
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])
		with tf.variable_scope("foo", reuse=True):
		    v1 = tf.get_variable("v", [1])
		assert v1 == v
		```
		
		Sharing a variable by capturing a scope and setting reuse:
		
		```python
		with tf.variable_scope("foo") as scope:
		    v = tf.get_variable("v", [1])
		    scope.reuse_variables()
		    v1 = tf.get_variable("v", [1])
		assert v1 == v
		```
		
		To prevent accidental sharing of variables, we raise an exception when
		getting an existing variable in a non-reusing scope.
		
		```python
		with tf.variable_scope("foo"):
		    v = tf.get_variable("v", [1])
		    v1 = tf.get_variable("v", [1])
		    #  Raises ValueError("... v already exists ...").
		```
		
		Similarly, we raise an exception when trying to get a variable that
		does not exist in reuse mode.
		
		```python
		with tf.variable_scope("foo", reuse=True):
		    v = tf.get_variable("v", [1])
		    #  Raises ValueError("... v does not exists ...").
		```
		
		Note that the `reuse` flag is inherited: if we open a reusing scope,
		then all its sub-scopes become reusing as well.
		
		A note about name scoping: Setting `reuse` does not impact the naming of other
		ops such as mult. See related discussion on [github#6189](https://github.com/tensorflow/tensorflow/issues/6189)
		
		Note that up to and including version 1.0, it was allowed (though
		explicitly discouraged) to pass False to the reuse argument, yielding
		undocumented behaviour slightly different from None. Starting at 1.1.0
		passing None and False as reuse has exactly the same effect.
		
		Args:
		  name_or_scope: `string` or `VariableScope`: the scope to open.
		  default_name: The default name to use if the `name_or_scope` argument is
		    `None`, this name will be uniquified. If name_or_scope is provided it
		    won't be used and therefore it is not required and can be None.
		  values: The list of `Tensor` arguments that are passed to the op function.
		  initializer: default initializer for variables within this scope.
		  regularizer: default regularizer for variables within this scope.
		  caching_device: default caching device for variables within this scope.
		  partitioner: default partitioner for variables within this scope.
		  custom_getter: default custom getter for variables within this scope.
		  reuse: `True` or `None`; if `True`, we go into reuse mode for this scope as
		    well as all sub-scopes; if `None`, we just inherit the parent scope reuse.
		  dtype: type of variables created in this scope (defaults to the type
		    in the passed scope, or inherited from parent scope).
		  use_resource: If False, all variables will be regular Variables. If True,
		    experimental ResourceVariables with well-defined semantics will be used
		    instead. Defaults to False (will later change to True).
		
		Returns:
		  A scope that can be to captured and reused.
		
		Raises:
		  ValueError: when trying to reuse within a create scope, or create within
		    a reuse scope.
		  TypeError: when the types of some arguments are not appropriate.
	**/
	static public function variable_scope(name_or_scope:Dynamic, ?default_name:Dynamic, ?values:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?caching_device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?reuse:Dynamic, ?dtype:Dynamic, ?use_resource:Dynamic):Dynamic;
}