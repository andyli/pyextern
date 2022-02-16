/* This file is generated, do not edit! */
package tensorflow.python.ops.variables;
@:pythonImport("tensorflow.python.ops.variables") extern class Variables_Module {
	static public var _FINISHED : Dynamic;
	static public var _STARTED : Dynamic;
	static public var _UNKNOWN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns all variables and `SaveableObject`s that must be checkpointed.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of `Variable` and `SaveableObject` to be checkpointed
	**/
	static public function _all_saveable_objects(?scope:Dynamic):Dynamic;
	/**
		Find the initialized value for a variable op.
		
		To do so, lookup the variable op in the variables collection.
		
		Args:
		  variable_op: A variable `Operation`.
		
		Returns:
		  A `Tensor` representing the initialized value for the variable or `None`
		  if the initialized value could not be found.
	**/
	static public function _find_initialized_value_for_variable(variable_op:Dynamic):Dynamic;
	/**
		Detect cycles in the dependencies of `initial_value`.
	**/
	static public function _has_cycle(op:Dynamic, state:Dynamic):Dynamic;
	/**
		To avoid capturing loop variables.
	**/
	static public function _make_getter(captured_getter:Dynamic, captured_previous:Dynamic):Dynamic;
	/**
		Replace dependencies on variables with their initialized values.
		
		Args:
		  name: Variable name.
		  op: An `Operation`. The operation to replace.
		  op_cache: A dict mapping operation names to `Operation`s. Used to memoize
		    the results so as to avoid creating redundant operations.
		
		Returns:
		  An `Operation` compatible with `op`. Any inputs that lead to variable
		  values will be replaced with a corresponding graph that uses the
		  variable's initialized values. This is done on a best-effort basis. If no
		  modifications need to be made then `op` will be returned unchanged.
	**/
	static public function _safe_initial_value_from_op(name:Dynamic, op:Dynamic, op_cache:Dynamic):Dynamic;
	/**
		Replace dependencies on variables with their initialized values.
		
		Args:
		  name: Variable name.
		  tensor: A `Tensor`. The tensor to replace.
		  op_cache: A dict mapping operation names to `Operation`s. Used to memoize
		    the results so as to avoid creating redundant operations.
		
		Returns:
		  A `Tensor` compatible with `tensor`. Any inputs that lead to variable
		  values will be replaced with a corresponding graph that uses the
		  variable's initialized values. This is done on a best-effort basis. If no
		  modifications need to be made then `tensor` will be returned unchanged.
	**/
	static public function _safe_initial_value_from_tensor(name:Dynamic, tensor:Dynamic, op_cache:Dynamic):Dynamic;
	/**
		Attempt to guard against dependencies on uninitialized variables.
		
		Replace references to variables in `initial_value` with references to the
		variable's initialized values. The initialized values are essentially
		conditional TensorFlow graphs that return a variable's value if it is
		initialized or its `initial_value` if it hasn't been initialized. This
		replacement is done on a best effort basis:
		
		- If the `initial_value` graph contains cycles, we don't do any
		  replacements for that graph.
		- If the variables that `initial_value` depends on are not present in the
		  `GLOBAL_VARIABLES` or `LOCAL_VARIABLES` we don't replace them.
		
		In these cases, it is up to the caller to ensure that the `initial_value`
		graph uses initialized variables or that they guard access to variables
		using their `initialized_value` method.
		
		Args:
		  name: Variable name.
		  initial_value: `Tensor`. The initial value.
		
		Returns:
		  A `Tensor` suitable to initialize a variable.
		Raises:
		  TypeError: If `initial_value` is not a `Tensor`.
	**/
	static public function _try_guard_against_uninitialized_dependencies(name:Dynamic, initial_value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Use `tf.compat.v1.global_variables` instead. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Please use tf.global_variables instead.
	**/
	static public function all_variables():Dynamic;
	/**
		Returns an Op to check if variables are initialized.
		
		NOTE: This function is obsolete and will be removed in 6 months.  Please
		change your implementation to use `report_uninitialized_variables()`.
		
		When run, the returned Op will raise the exception `FailedPreconditionError`
		if any of the variables has not yet been initialized.
		
		Note: This function is implemented by trying to fetch the values of the
		variables. If one of the variables is not initialized a message may be
		logged by the C++ runtime. This is expected.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the value of
		    `global_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function assert_variables_initialized(?var_list:Dynamic):Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Default variable creator.
	**/
	static public function default_variable_creator_v2(?next_creator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple (String,
		    ok_val).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Returns global variables.
		
		Global variables are variables that are shared across machines in a
		distributed environment. The `Variable()` constructor or `get_variable()`
		automatically adds new variables to the graph collection
		`GraphKeys.GLOBAL_VARIABLES`.
		This convenience function returns the contents of that collection.
		
		An alternative to global variables are local variables. See
		`tf.compat.v1.local_variables`
		
		@compatibility(TF2)
		Not compatible with eager execution and `tf.function`. In particular, Graph
		collections are deprecated in TF2. Instead please create a
		[tf.Module](https://www.tensorflow.org/guide/intro_to_modules)
		container for all your model state, including variables.
		You can then list all the variables in your `tf.Module` through the
		`variables` attribute.
		@end_compatibility
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of `Variable` objects.
	**/
	static public function global_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes global variables.
		
		This is just a shortcut for `variables_initializer(global_variables())`
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Returns:
		  An Op that initializes global variables in the graph.
	**/
	static public function global_variables_initializer():Dynamic;
	/**
		See `tf.compat.v1.global_variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.global_variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		See `tf.compat.v1.local_variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.local_variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_local_variables():Dynamic;
	/**
		See `tf.compat.v1.variables_initializer`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.variables_initializer` instead.
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function is_variable_initialized(variable:Dynamic):Dynamic;
	/**
		Returns local variables.
		
		Local variables - per process variables, usually not saved/restored to
		checkpoint and used for temporary or intermediate values.
		For example, they can be used as counters for metrics computation or
		number of epochs this machine has read data.
		The `tf.contrib.framework.local_variable()` function automatically adds the
		new variable to `GraphKeys.LOCAL_VARIABLES`.
		This convenience function returns the contents of that collection.
		
		An alternative to local variables are global variables. See
		`tf.compat.v1.global_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of local `Variable` objects.
	**/
	static public function local_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `variables_initializer(local_variables())`
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function local_variables_initializer():Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function model_variables(?scope:Dynamic):Dynamic;
	/**
		Returns all variables that maintain their moving averages.
		
		If an `ExponentialMovingAverage` object is created and the `apply()`
		method is called on a list of variables, these variables will
		be added to the `GraphKeys.MOVING_AVERAGE_VARIABLES` collection.
		This convenience function returns the contents of that collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function moving_average_variables(?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds ops to list the names of uninitialized variables.
		
		When run, it returns a 1-D tensor containing the names of uninitialized
		variables if there are any, or an empty array if there are none.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the value of
		    `global_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the uninitialized variables, or an empty
		  1-D tensor if there are no variables or no uninitialized variables.
		
		
		Note: The output of this function should be used. If it is not, a warning will be logged or an error may be raised. To mark the output as used, call its .mark_used() method.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns all variables created with `trainable=True`.
		
		When passed `trainable=True`, the `Variable()` constructor automatically
		adds new variables to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`. This convenience function returns the
		contents of that collection.
		
		@compatibility(TF2)
		Not compatible with eager execution and `tf.function`. In particular, Graph
		collections are deprecated in TF2. Instead please create a `tf.Module`
		container for all your model state, including variables.
		You can then list all the trainable variables in your `tf.Module` through the
		`trainable_variables` attribute.
		@end_compatibility
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered to
		    include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a scope
		    is supplied. The choice of `re.match` means that a `scope` without special
		    tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables(?scope:Dynamic):Dynamic;
	/**
		Given user-provided variable properties, sets defaults and validates.
	**/
	static public function validate_synchronization_aggregation_trainable(synchronization:Dynamic, aggregation:Dynamic, trainable:Dynamic, name:Dynamic):Dynamic;
	/**
		Returns an Op that initializes a list of variables.
		
		After you launch the graph in a session, you can run the returned Op to
		initialize all the variables in `var_list`. This Op runs all the
		initializers of the variables in `var_list` in parallel.
		
		Calling `initialize_variables()` is equivalent to passing the list of
		initializers to `Group()`.
		
		If `var_list` is empty, however, the function still returns an Op that can
		be run. That Op just has no effect.
		
		@compatibility(TF2)
		In TF2, variables are initialized immediately when they are created. There is
		no longer a need to run variable initializers before using them.
		@end_compatibility
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function variables_initializer(var_list:Dynamic, ?name:Dynamic):Dynamic;
}