/* This file is generated, do not edit! */
package tensorflow.contrib.copy_graph.python.util.copy_elements;
@:pythonImport("tensorflow.contrib.copy_graph.python.util.copy_elements") extern class Copy_elements_Module {
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
		Given an `Operation` 'org_instance` from one `Graph`,
		initializes and returns a copy of it from another `Graph`,
		under the specified scope (default `""`).
		
		The copying is done recursively, so any `Operation` whose output
		is required to evaluate the `org_instance`, is also copied (unless
		already done).
		
		Since `Variable` instances are copied separately, those required
		to evaluate `org_instance` must be provided as input.
		
		Args:
		  org_instance: An `Operation` from some `Graph`. Could be a
		    `Placeholder` as well.
		  to_graph: The `Graph` to copy `org_instance` to.
		  variables: An iterable of `Variable` instances to copy `org_instance` to.
		  scope: A scope for the new `Variable` (default `""`).
		
		Returns:
		  The copied `Operation` from `to_graph`.
		
		Raises:
		  TypeError: If `org_instance` is not an `Operation` or `Tensor`.
	**/
	static public function copy_op_to_graph(org_instance:Dynamic, to_graph:Dynamic, variables:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Given a `Variable` instance from one `Graph`, initializes and returns
		a copy of it from another `Graph`, under the specified scope
		(default `""`).
		
		Args:
		  org_instance: A `Variable` from some `Graph`.
		  to_graph: The `Graph` to copy the `Variable` to.
		  scope: A scope for the new `Variable` (default `""`).
		
		Returns:
		  The copied `Variable` from `to_graph`.
		
		Raises:
		  TypeError: If `org_instance` is not a `Variable`.
	**/
	static public function copy_variable_to_graph(org_instance:Dynamic, to_graph:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Deep copy operation on arbitrary Python objects.
		
		See the module's __doc__ string for more info.
	**/
	static public function deepcopy(x:Dynamic, ?memo:Dynamic, ?_nil:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Given an `Operation` instance from some `Graph`, returns
		its namesake from `graph`, under the specified scope
		(default `""`).
		
		If a copy of `org_instance` is present in `graph` under the given
		`scope`, it will be returned.
		
		Args:
		  org_instance: An `Operation` from some `Graph`.
		  graph: The `Graph` to be searched for a copr of `org_instance`.
		  scope: The scope `org_instance` is present in.
		
		Returns:
		  The `Operation` copy from `graph`.
	**/
	static public function get_copied_op(org_instance:Dynamic, graph:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}