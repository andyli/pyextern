/* This file is generated, do not edit! */
package tensorflow.python.eager.wrap_function;
@:pythonImport("tensorflow.python.eager.wrap_function") extern class Wrap_function_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Filtering out any ops returned by function.
		
		Args:
		  fn: a function
		
		Returns:
		  A tuple of (
		    Wrapped function that returns `None` in place of any ops,
		    dict that maps the index in the flat output structure to the returned op
		  )
	**/
	static public function _filter_returned_ops(fn:Dynamic):Dynamic;
	/**
		Simplified copy of the deprecated `get_tensor_from_tensor_info`.
	**/
	static public function _get_element_from_tensor_info(tensor_info:Dynamic, graph:Dynamic):Dynamic;
	/**
		Lifts `old_variable` out of the `FuncGraph` `graph`.
	**/
	static public function _lift_single_variable(old_variable:Dynamic, graph:Dynamic, variable_holder:Dynamic):Dynamic;
	/**
		Finds resource variables and lifts them into the outer context.
		
		When we import a GraphDef inside a wrap_function, no Python graph building
		code runs. This means we get VarHandleOps which create variable resources,
		but no corresponding Python objects. Leaving them like this works but gives
		the user no way to interact with or modify the variables outside the graph.
		
		This method searches for variables and lifts them out as regular variable
		objects when possible, indicating to the FuncGraph that they are captures.
		
		Args:
		  graph: The FuncGraph to lift variables from.
		  variable_holder: A VariableHolder to record the lifted variables in.
	**/
	static public function _lift_unlifted_variables(graph:Dynamic, variable_holder:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Creates a ConcreteFunction from a GraphDef.
		
		Args:
		  graph_def: A GraphDef to make a function out of.
		  inputs: A Tensor name or nested structure of names in `graph_def` which
		    should be inputs to the function.
		  outputs: A Tensor name or nested structure of names in `graph_def` which
		    should be outputs of the function.
		  captures: (Optional) A dictionary mapping node names in `graph_def` that
		    should be captured as inputs to tensors containing the value of the
		    captured inputs.
		
		Returns:
		  A ConcreteFunction.
	**/
	static public function function_from_graph_def(graph_def:Dynamic, inputs:Dynamic, outputs:Dynamic, ?captures:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wraps the TF 1.x function fn into a graph function.
		
		The python function `fn` will be called once with symbolic arguments specified
		in the `signature`, traced, and turned into a graph function. Any variables
		created by `fn` will be owned by the object returned by `wrap_function`. The
		resulting graph function can be called with tensors which match the
		signature.
		
		```python
		def f(x, do_add):
		  v = tf.Variable(5.0)
		  if do_add:
		    op = v.assign_add(x)
		  else:
		    op = v.assign_sub(x)
		  with tf.control_dependencies([op]):
		    return v.read_value()
		
		f_add = tf.compat.v1.wrap_function(f, [tf.TensorSpec((), tf.float32), True])
		
		assert float(f_add(1.0)) == 6.0
		assert float(f_add(1.0)) == 7.0
		
		# Can call tf.compat.v1.wrap_function again to get a new trace, a new set
		# of variables, and possibly different non-template arguments.
		f_sub= tf.compat.v1.wrap_function(f, [tf.TensorSpec((), tf.float32), False])
		
		assert float(f_sub(1.0)) == 4.0
		assert float(f_sub(1.0)) == 3.0
		```
		
		Both `tf.compat.v1.wrap_function` and `tf.function` create a callable
		TensorFlow graph. But while `tf.function` runs all stateful operations
		(e.g. `tf.print`) and sequences operations to provide the same semantics as
		eager execution, `wrap_function` is closer to the behavior of `session.run` in
		TensorFlow 1.x. It will not run any operations unless they are required to
		compute the function's outputs, either through a data dependency or a control
		dependency. Nor will it sequence operations.
		
		Unlike `tf.function`, `wrap_function` will only trace the Python function
		once. As with placeholders in TF 1.x, shapes and dtypes must be provided to
		`wrap_function`'s `signature` argument.
		
		Since it is only traced once, variables and state may be created inside the
		function and owned by the function wrapper object.
		
		Args:
		  fn: python function to be wrapped
		  signature: the placeholder and python arguments to be passed to the wrapped
		    function
		  name: Optional. The name of the function.
		
		Returns:
		  the wrapped graph function.
	**/
	static public function wrap_function(fn:Dynamic, signature:Dynamic, ?name:Dynamic):Dynamic;
}