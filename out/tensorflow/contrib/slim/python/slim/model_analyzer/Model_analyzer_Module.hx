/* This file is generated, do not edit! */
package tensorflow.contrib.slim.python.slim.model_analyzer;
@:pythonImport("tensorflow.contrib.slim.python.slim.model_analyzer") extern class Model_analyzer_Module {
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
		Compute the estimated size of the ops.outputs in the graph.
		
		Args:
		  graph: the graph containing the operations.
		  print_info: Optional, if true print ops and their outputs.
		
		Returns:
		  total size of the ops.outputs
	**/
	static public function analyze_ops(graph:Dynamic, ?print_info:Dynamic):Dynamic;
	/**
		Prints the names and shapes of the variables.
		
		Args:
		  variables: list of variables, for example tf.all_variables().
		  print_info: Optional, if true print variables and their shape.
		
		Returns:
		  total size of the variables.
	**/
	static public function analyze_vars(variables:Dynamic, ?print_info:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns a compact and informative string about a tensor.
		
		Args:
		  var: A tensor variable.
		
		Returns:
		  a string with type and size, e.g.: (float32 1x8x8x1024).
	**/
	static public function tensor_description(_var:Dynamic):Dynamic;
}