/* This file is generated, do not edit! */
package tensorflow.contrib.framework.python.ops.ops;
@:pythonImport("tensorflow.contrib.framework.python.ops.ops") extern class Ops_Module {
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
	static public var division : Dynamic;
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
	static public var print_function : Dynamic;
}