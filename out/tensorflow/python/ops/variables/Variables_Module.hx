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
	static public var absolute_import : Dynamic;
	/**
		Returns all variables that must be saved/restored.
		
		The `Variable()` constructor automatically adds new variables to the graph
		collection `GraphKeys.VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Returns:
		  A list of `Variable` objects.
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
		    value of `all_variables().`
		
		Returns:
		  An Op, or None if there are no variables.
	**/
	static public function assert_variables_initialized(?var_list:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns an Op that initializes all variables.
		
		This is just a shortcut for `initialize_variables(all_variables())`
		
		Returns:
		  An Op that initializes all variables in the graph.
	**/
	static public function initialize_all_variables():Dynamic;
	/**
		Returns an Op that initializes all local variables.
		
		This is just a shortcut for `initialize_variables(local_variables())`
		
		Returns:
		  An Op that initializes all local variables in the graph.
	**/
	static public function initialize_local_variables():Dynamic;
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
	static public function initialize_variables(var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Tests if a variable has been initialized.
		
		Args:
		  variable: A `Variable`.
		
		Returns:
		  Returns a scalar boolean Tensor, `True` if the variable has been
		  initialized, `False` otherwise.
	**/
	static public function is_variable_initialized(variable:Dynamic):Dynamic;
	/**
		Returns all variables created with collection=[LOCAL_VARIABLES].
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function local_variables():Dynamic;
	/**
		Returns all variables in the MODEL_VARIABLES collection.
		
		Returns:
		  A list of local Variable objects.
	**/
	static public function model_variables():Dynamic;
	/**
		Returns all variables that maintain their moving averages.
		
		If an `ExponentialMovingAverage` object is created and the `apply()`
		method is called on a list of variables, these variables will
		be added to the `GraphKeys.MOVING_AVERAGE_VARIABLES` collection.
		This convenience function returns the contents of that collection.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function moving_average_variables():Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds ops to list the names of uninitialized variables.
		
		When run, it returns a 1-D tensor containing the names of uninitialized
		variables if there are any, or an empty array if there are none.
		
		Args:
		  var_list: List of `Variable` objects to check. Defaults to the
		    value of `all_variables() + local_variables()`
		  name: Optional name of the `Operation`.
		
		Returns:
		  A 1-D tensor containing names of the unintialized variables, or an empty 1-D
		  tensor if there are no variables or no uninitialized variables.
	**/
	static public function report_uninitialized_variables(?var_list:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns all variables created with `trainable=True`.
		
		When passed `trainable=True`, the `Variable()` constructor automatically
		adds new variables to the graph collection
		`GraphKeys.TRAINABLE_VARIABLES`. This convenience function returns the
		contents of that collection.
		
		Returns:
		  A list of Variable objects.
	**/
	static public function trainable_variables():Dynamic;
}