/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.variables;
@:pythonImport("tensorflow.contrib.framework.python.ops.variables") extern class Variables_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a variable to the `GraphKeys.MODEL_VARIABLES` collection.
		
		Args:
		  var: a variable.
	**/
	static public function add_model_variable(_var:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.assert_global_step
	**/
	static public function assert_global_step(global_step_tensor:Dynamic):Dynamic;
	/**
		Verifies that a global step tensor is valid or gets one if None is given.
		
		If `global_step_tensor` is not None, check that it is a valid global step
		tensor (using `assert_global_step`). Otherwise find a global step tensor using
		`get_global_step` and return it.
		
		Args:
		  graph: The graph to find the global step tensor for.
		  global_step_tensor: The tensor to check for suitability as a global step.
		    If None is given (the default), find a global step tensor.
		
		Returns:
		  A tensor suitable as a global step, or `None` if none was provided and none
		  was found.
	**/
	static public function assert_or_get_global_step(?graph:Dynamic, ?global_step_tensor:Dynamic):Dynamic;
	/**
		Creates an operation to assign specific variables from a checkpoint.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of (possibly partitioned) `Variable` objects
		      or a dictionary mapping names in the checkpoint to the
		      corresponding variables or list of variables to initialize
		      from that checkpoint value. For partitioned Variables, the
		      name in the checkpoint must be the full variable, not the
		      name of the partitioned variable, eg. "my_var" rather than
		      "my_var/part_4". If empty, returns no_op(), {}.
		  ignore_missing_vars: Boolean, if True ignore variables missing in the
		      checkpoint with a warning instead of failing.
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If `ignore_missing_vars` is False and the checkpoint specified
		      at `model_path` is missing one of the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from a checkpoint.
		
		If ignore_missing_vars is True and no variables are found in the checkpoint
		it returns None.
		
		Args:
		  model_path: The full path to the model checkpoint. To get latest checkpoint
		      use `model_path = tf.train.latest_checkpoint(checkpoint_dir)`
		  var_list: A list of `Variable` objects or a dictionary mapping names in the
		      checkpoint to the corresponding variables to initialize. If empty or
		      `None`, it would return `no_op(), None`.
		  ignore_missing_vars: Boolean, if True it would ignore variables missing in
		      the checkpoint with a warning instead of failing.
		  reshape_variables: Boolean, if True it would automatically reshape variables
		      which are of different shape then the ones stored in the checkpoint but
		      which have the same number of elements.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation. If no matching variables were found in the checkpoint
		  then `None` is returned.
		
		Raises:
		  ValueError: If var_list is empty.
	**/
	static public function assign_from_checkpoint_fn(model_path:Dynamic, var_list:Dynamic, ?ignore_missing_vars:Dynamic, ?reshape_variables:Dynamic):Dynamic;
	/**
		Creates an assignment operation from a given mapping.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  assign_op: An `Operation` that assigns each of the given variables to the
		    requested values.
		  feed_dict: The feed dictionary to use when evaluating `assign_op`.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values(var_names_to_values:Dynamic):Dynamic;
	/**
		Returns a function that assigns specific variables from the given values.
		
		This function provides a mechanism for performing assignment of variables
		to values in a way that does not fill the graph with large assignment values.
		
		Args:
		  var_names_to_values: A map from variable names to values.
		
		Returns:
		  A function that takes a single argument, a `tf.Session`, that applies the
		  assignment operation.
		
		Raises:
		  ValueError: if any of the given variable names were not found.
	**/
	static public function assign_from_values_fn(var_names_to_values:Dynamic):Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function contrib_add_arg_scope(func:Dynamic):Dynamic;
	/**
		Create global step tensor in graph. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.create_global_step
		
		This API is deprecated. Use core framework training version instead.
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing,
		    use default graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step tensor is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	/**
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Filter a list of variables using regular expressions.
		
		First includes variables according to the list of include_patterns.
		Afterwards, eliminates variables according to the list of exclude_patterns.
		
		For example, one can obtain a list of variables with the weights of all
		convolutional layers (depending on the network definition) by:
		
		```python
		variables = tf.contrib.framework.get_model_variables()
		conv_weight_variables = tf.contrib.framework.filter_variables(
		    variables,
		    include_patterns=['Conv'],
		    exclude_patterns=['biases', 'Logits'])
		```
		
		Args:
		  var_list: list of variables.
		  include_patterns: list of regular expressions to include. Defaults to None,
		      which means all variables are selected according to the include rules.
		      A variable is included if it matches any of the include_patterns.
		  exclude_patterns: list of regular expressions to exclude. Defaults to None,
		      which means all variables are selected according to the exclude rules.
		      A variable is excluded if it matches any of the exclude_patterns.
		  reg_search: boolean. If True (default), performs re.search to find matches
		      (i.e. pattern can match any substring of the variable name). If False,
		      performs re.match (i.e. regexp should match from the beginning of the
		      variable name).
		
		Returns:
		  filtered list of variables.
	**/
	static public function filter_variables(var_list:Dynamic, ?include_patterns:Dynamic, ?exclude_patterns:Dynamic, ?reg_search:Dynamic):Dynamic;
	/**
		DEPRECATED FUNCTION
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_global_step
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of local variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_local_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_model_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step tensor. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please switch to tf.train.get_or_create_global_step
		
		Args:
		  graph: The graph in which to create the global step tensor. If missing, use
		    default graph.
		
		Returns:
		  The global step tensor.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of trainable variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in the trainable collection with scope and suffix.
	**/
	static public function get_trainable_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the variable uniquely identified by that var_op_name.
		
		Args:
		  var_op_name: the full name of the variable op, including the scope.
		
		Returns:
		  a tensorflow variable.
		
		Raises:
		  ValueError: if no variable uniquely identified by the name exists.
	**/
	static public function get_unique_variable(var_op_name:Dynamic):Dynamic;
	/**
		Returns the full name of a variable.
		
		For normal Variables, this is the same as the var.op.name.  For
		sliced or PartitionedVariables, this name is the same for all the
		slices/partitions. In both cases, this is normally the name used in
		a checkpoint file.
		
		Args:
		  var: A `Variable` object.
		
		Returns:
		  A string that is the full name.
	**/
	static public function get_variable_full_name(_var:Dynamic):Dynamic;
	/**
		Gets the list of variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return. Can be a
		    variable scope or a string.
		  suffix: an optional suffix for filtering the variables to return.
		  collection: in which collection search for. Defaults to
		    `GraphKeys.GLOBAL_VARIABLES`.
		
		Returns:
		  a list of variables in collection with scope and suffix.
	**/
	static public function get_variables(?scope:Dynamic, ?suffix:Dynamic, ?collection:Dynamic):Dynamic;
	/**
		Gets the list of variables that were given that name.
		
		Args:
		  given_name: name given to the variable without any scope.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and scope.
	**/
	static public function get_variables_by_name(given_name:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of variables that end with the given suffix.
		
		Args:
		  suffix: suffix for filtering the variables to return.
		  scope: an optional scope for filtering the variables to return.
		
		Returns:
		  a copied list of variables with the given name and prefix.
	**/
	static public function get_variables_by_suffix(suffix:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Gets the list of the variables to restore.
		
		Args:
		  include: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to include. None would include all
		    the variables.
		  exclude: an optional list/tuple of scope strings for filtering which
		    variables from the VARIABLES collection to exclude. None it would not
		    exclude any.
		
		Returns:
		  a list of variables to restore.
		
		Raises:
		  TypeError: include or exclude is provided but is not a list or a tuple.
	**/
	static public function get_variables_to_restore(?include:Dynamic, ?exclude:Dynamic):Dynamic;
	/**
		Create a variable with a value and add it to `GraphKeys.GLOBAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function global_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Create a variable with a value and add it to `GraphKeys.LOCAL_VARIABLES`.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		Returns:
		  New variable.
	**/
	static public function local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic, ?use_resource:Dynamic):Dynamic;
	/**
		Gets an existing model variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    Note that the variable is always also added to the
		    `GraphKeys.GLOBAL_VARIABLES` and `GraphKeys.MODEL_VARIABLES` collections.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Gets an existing variable with these parameters or creates a new one.
		
		Args:
		  name: the name of the new or existing variable.
		  shape: shape of the new or existing variable.
		  dtype: type of the new or existing variable (defaults to `DT_FLOAT`).
		  initializer: initializer for the variable if one is created.
		  regularizer: a (Tensor -> Tensor or None) function; the result of
		      applying it on a newly created variable will be added to the collection
		      GraphKeys.REGULARIZATION_LOSSES and can be used for regularization.
		  trainable: If `True` also add the variable to the graph collection
		    `GraphKeys.TRAINABLE_VARIABLES` (see `tf.Variable`).
		  collections: A list of collection names to which the Variable will be added.
		    If None it would default to `tf.GraphKeys.GLOBAL_VARIABLES`.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		  partitioner: Optional callable that accepts a fully defined `TensorShape`
		    and dtype of the `Variable` to be created, and returns a list of
		    partitions for each axis (currently only one axis can be partitioned).
		  custom_getter: Callable that allows overwriting the internal
		    get_variable method and has to have the same signature.
		  use_resource: If `True` use a ResourceVariable instead of a Variable.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic):Dynamic;
	/**
		Initialize 'ref' with all zeros, ref tensor should be uninitialized.
		If already initialized, you will get ValueError. This op is intended to
		save memory during initialization.
		Args:
		  ref: ref of the tensor need to be zero initialized.
		  name: optional name for this operation.
		Returns:
		  ref that initialized.
		Raises:
		  ValueError: If ref tensor is initialized.
	**/
	static public function zero_initializer(ref:Dynamic, ?use_locking:Dynamic, ?name:Dynamic):Dynamic;
}