/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops;
@:pythonImport("tensorflow.contrib.framework.python.ops") extern class Ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function add_arg_scope(func:Dynamic):Dynamic;
	/**
		Adds a variable to the `GraphKeys.MODEL_VARIABLES` collection.
		
		Args:
		  var: a variable.
	**/
	static public function add_model_variable(_var:Dynamic):Dynamic;
	/**
		Stores the default arguments for the given set of list_ops.
		
		For usage, please see examples at top of the file.
		
		Args:
		  list_ops_or_scope: List or tuple of operations to set argument scope for or
		    a dictionary containing the current scope. When list_ops_or_scope is a
		    dict, kwargs must be empty. When list_ops_or_scope is a list or tuple,
		    then every op in it need to be decorated with @add_arg_scope to work.
		  **kwargs: keyword=value that will define the defaults for each op in
		            list_ops. All the ops need to accept the given set of arguments.
		
		Yields:
		  the current_scope, which is a dictionary of {op: {arg: value}}
		Raises:
		  TypeError: if list_ops is not a list or a tuple.
		  ValueError: if any op in list_ops has not be decorated with @add_arg_scope.
	**/
	static public function arg_scope(list_ops_or_scope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the list kwargs that arg_scope can set for a func.
		
		Args:
		  func: function which has been decorated with @add_arg_scope.
		
		Returns:
		  a list of kwargs names.
	**/
	static public function arg_scoped_arguments(func:Dynamic):Dynamic;
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
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If the checkpoint specified at `model_path` is missing one of
		    the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic):Dynamic;
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
		Create global step tensor in graph.
		
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
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Returns the appropriate graph to use for the given inputs.
		
		1. If `graph` is provided, we validate that all inputs in `op_input_list` are
		   from the same graph.
		2. Otherwise, we attempt to select a graph from the first Operation- or
		   Tensor-valued input in `op_input_list`, and validate that all other
		   such inputs are in the same graph.
		3. If the graph was not specified and it could not be inferred from
		   `op_input_list`, we attempt to use the default graph.
		
		Args:
		  op_input_list: A list of inputs to an operation, which may include `Tensor`,
		    `Operation`, and other objects that may be converted to a graph element.
		  graph: (Optional) The explicit graph to use.
		
		Raises:
		  TypeError: If `op_input_list` is not a list or tuple, or if graph is not a
		    Graph.
		  ValueError: If a graph is explicitly passed and not all inputs are from it,
		    or if the inputs are from multiple graphs, or we could not find a graph
		    and there was no default graph.
		
		Returns:
		  The appropriate graph to use for the given inputs.
	**/
	static public function get_graph_from_inputs(op_input_list:Dynamic, ?graph:Dynamic):Dynamic;
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
		Returns the current name scope of the default graph.
		
		For example:
		
		  ```python
		  with tf.name_scope('scope1'):
		    with tf.name_scope('scope2'):
		      print(tf.contrib.framework.get_name_scope())
		  ```
		  would print the string `scope1/scope2`.
		
		Returns:
		  A string represnting the current name scope.
	**/
	static public function get_name_scope():Dynamic;
	/**
		Returns and create (if necessary) the global step tensor.
		
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
		Checks whether a func has been decorated with @add_arg_scope or not.
		
		Args:
		  func: function to check.
		
		Returns:
		  a boolean.
	**/
	static public function has_arg_scope(func:Dynamic):Dynamic;
	/**
		Create variable and add it to `GraphKeys.LOCAL_VARIABLES` collection.
		
		Args:
		  initial_value: See variables.Variable.__init__.
		  validate_shape: See variables.Variable.__init__.
		  name: See variables.Variable.__init__.
		Returns:
		  New variable.
	**/
	static public function local_variable(initial_value:Dynamic, ?validate_shape:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a print op that will print when a tensor is accessed.
		
		Wraps the tensor passed in so that whenever that tensor is accessed,
		the message `message` is printed, along with the current value of the
		tensor `t` and an optional list of other tensors.
		
		Args:
		  input_: A Tensor/SparseTensor/TensorArray to print when it is evaluated.
		  data: A list of other tensors to print.
		  message: A string message to print as a prefix.
		  first_n: Only log `first_n` number of times. Negative numbers log always;
		           this is the default.
		  summarize: Print this number of elements in the tensor.
		  print_tensor_name: Print the tensor name.
		  print_tensor_type: Print the tensor type.
		  print_shape: Print the tensor's shape.
		  summarize_indicator_vector: Whether to print the index of the first true
		    value in an indicator vector (a Boolean tensor).
		  name: The name to give this op.
		
		Returns:
		  A Print op. The Print op returns `input_`.
		
		Raises:
		  ValueError: If the tensor `input_` is not a Tensor, SparseTensor or
		    TensorArray.
	**/
	static public function print_op(input_:Dynamic, ?data:Dynamic, ?message:Dynamic, ?first_n:Dynamic, ?summarize:Dynamic, ?print_tensor_name:Dynamic, ?print_tensor_type:Dynamic, ?print_shape:Dynamic, ?summarize_indicator_vector:Dynamic, ?name:Dynamic):Dynamic;
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
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic, ?partitioner:Dynamic, ?custom_getter:Dynamic, ?use_resource:Dynamic):Dynamic;
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