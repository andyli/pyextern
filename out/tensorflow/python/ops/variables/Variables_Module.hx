/* This file is generated, do not edit! */
package tensorflow.python.ops.variables;
@:pythonImport("tensorflow.python.ops.variables") extern class Variables_Module {
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
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of `Variable` and `SaveableObject` to be checkpointed
	**/
	static public function _all_saveable_objects(?scope:Dynamic):Dynamic;
	/**
		To avoid capturing loop variables.
	**/
	static public function _make_getter(captured_getter:Dynamic, captured_previous:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		See `tf.global_variables`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
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
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `global_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
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
	static public var division : Dynamic;
	/**
		Returns global variables.
		
		Global variables are variables that are shared across machines in a
		distributed environment. The `Variable()` constructor or `get_variable()`
		automatically adds new variables to the graph collection
		`GraphKeys.GLOBAL_VARIABLES`.
		This convenience function returns the contents of that collection.
		
		An alternative to global variables are local variables. See
		`tf.local_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of `Variable` objects.
	**/
	static public function global_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes global variables.
		
		This is just a shortcut for `variables_initializer(global_variables())`
		
		Returns:
		  An Op that initializes global variables in the graph.
	**/
	static public function global_variables_initializer():Dynamic;
	/**
		See `tf.global_variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.global_variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		See `tf.local_variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.local_variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_local_variables():Dynamic;
	/**
		See `tf.variables_initializer`. (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed after 2017-03-02.
		Instructions for updating:
		Use `tf.variables_initializer` instead.
		
		  **NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
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
		`tf.global_variables`
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of local `Variable` objects.
	**/
	static public function local_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `variables_initializer(local_variables())`
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function local_variables_initializer():Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
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
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
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
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `global_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the uninitialized variables, or an empty
		  1-D tensor if there are no variables or no uninitialized variables.
		
		
		**NOTE** The output of this function should be used.  If it is not, a warning will be logged.  To mark the output as used, call its .mark_used() method.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns all variables created with `trainable=True`.
		
		When passed `trainable=True`, the `Variable()` constructor automatically
		adds new variables to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Args:
		  scope: (Optional.) A string. If supplied, the resulting list is filtered
		    to include only items whose `name` attribute matches `scope` using
		    `re.match`. Items without a `name` attribute are never returned if a
		    scope is supplied. The choice of `re.match` means that a `scope` without
		    special tokens filters by prefix.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables(?scope:Dynamic):Dynamic;
	/**
		Returns an Op that initializes a list of variables.
		
		After you launch the graph in a session, you can run the returned Op to
		initialize all the variables in `var_list`. This Op runs all the
		initializers of the variables in `var_list` in parallel.
		
		Calling `initialize_variables()` is equivalent to passing the list of
		initializers to `Group()`.
		
		If `var_list` is empty, however, the function still returns an Op that can
		be run. That Op just has no effect.
		
		Args:
		  var_list: List of `Variable` objects to initialize.
		  name: Optional name for the returned operation.
		
		Returns:
		  An Op that run the initializers of all the specified variables.
	**/
	static public function variables_initializer(var_list:Dynamic, ?name:Dynamic):Dynamic;
}