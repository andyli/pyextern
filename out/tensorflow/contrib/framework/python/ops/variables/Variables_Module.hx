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
		Asserts `global_step_tensor` is a scalar int `Variable` or `Tensor`.
		
		Args:
		  global_step_tensor: `Tensor` to test.
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
		  var_list: A list of `Variable` objects or a dictionary mapping names in the
		      checkpoint to the correspoing variables to initialize. If empty or None,
		      it would return  no_op(), None.
		
		Returns:
		  the restore_op and the feed_dict that need to be run to restore var_list.
		
		Raises:
		  ValueError: If the checkpoint specified at `model_path` is missing one of
		    the variables in `var_list`.
	**/
	static public function assign_from_checkpoint(model_path:Dynamic, var_list:Dynamic):Dynamic;
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
		Decorates a function with args so it can be used within an arg_scope.
		
		Args:
		  func: function to decorate.
		
		Returns:
		  A tuple with the decorated function func_with_args().
	**/
	static public function contrib_add_arg_scope(func:Dynamic):Dynamic;
	/**
		Create global step tensor in graph.
		
		Args:
		  graph: The graph in which to create the global step. If missing, use default
		      graph.
		
		Returns:
		  Global step tensor.
		
		Raises:
		  ValueError: if global step key is already defined.
	**/
	static public function create_global_step(?graph:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Get the global step tensor.
		
		The global step tensor must be an integer variable. We first try to find it
		in the collection `GLOBAL_STEP`, or by name `global_step:0`.
		
		Args:
		  graph: The graph to find the global step in. If missing, use default graph.
		
		Returns:
		  The global step variable, or `None` if none was found.
		
		Raises:
		  TypeError: If the global step tensor has a non-integer type, or if it is not
		    a `Variable`.
	**/
	static public function get_global_step(?graph:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
	**/
	static public function get_local_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Gets the list of model variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
	**/
	static public function get_model_variables(?scope:Dynamic, ?suffix:Dynamic):Dynamic;
	/**
		Returns and create (if necessary) the global step variable.
		
		Args:
		  graph: The graph in which to create the global step. If missing, use default
		      graph.
		
		Returns:
		  the tensor representing the global step variable.
	**/
	static public function get_or_create_global_step(?graph:Dynamic):Dynamic;
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
		Gets the list of variables, filtered by scope and/or suffix.
		
		Args:
		  scope: an optional scope for filtering the variables to return.
		  suffix: an optional suffix for filtering the variables to return.
		  collection: in which collection search for. Defaults to GraphKeys.VARIABLES.
		
		Returns:
		  a list of variables in colelction with scope and suffix.
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
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: A list of collection names to which the Variable will be added.
		    Note that the variable is always also added to the `GraphKeys.VARIABLES`
		    and `GraphKeys.MODEL_VARIABLES` collections.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		
		Returns:
		  The created or existing variable.
	**/
	static public function model_variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic):Dynamic;
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
		    `GraphKeys.TRAINABLE_VARIABLES` (see tf.Variable).
		  collections: A list of collection names to which the Variable will be added.
		    If None it would default to tf.GraphKeys.VARIABLES.
		  caching_device: Optional device string or function describing where the
		      Variable should be cached for reading.  Defaults to the Variable's
		      device.
		  device: Optional device to place the variable. It can be an string or a
		    function that is called to get the device for the variable.
		
		Returns:
		  The created or existing variable.
	**/
	static public function variable(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?collections:Dynamic, ?caching_device:Dynamic, ?device:Dynamic):Dynamic;
}