/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.summaries;
@:pythonImport("tensorflow.contrib.specs.python.summaries") extern class Summaries_Module {
	static public var SHORT_NAMES : Dynamic;
	static public var SHORT_NAMES_SRC : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		A filter for combining successive layers with similar names.
	**/
	static public function _combine_filter(x:Dynamic):Dynamic;
	/**
		A helper function that disables recursion in tf_structure.
		
		Some constructs (e.g., HorizontalLstm) are complex unrolled
		structures and don't need to be represented in the output
		of tf_structure or tf_print. This helper function defines
		which tree branches should be pruned. This is a very imperfect
		way of dealing with unrolled LSTM's (since it truncates
		useful information as well), but it's not worth doing something
		better until the new fused and unrolled ops are ready.
		
		Args:
		    x: a Tensor or Op
		
		Returns:
		    A bool indicating whether the subtree should be pruned.
	**/
	static public function _truncate_structure(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Split the parameters of op for left recursion.
		
		Args:
		  op: tf.Operation
		
		Returns:
		  A tuple of the leftmost input tensor and a list of the
		  remaining arguments.
	**/
	static public function tf_left_split(op:Dynamic):Dynamic;
	/**
		Number of parameters in a TensorFlow subgraph.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		
		Returns:
		    Total number of elements found in all Variables
		    in the subgraph.
	**/
	static public function tf_num_params(x:Dynamic):Dynamic;
	/**
		Iterate over the left branches of a graph and yield sizes.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		
		Yields:
		    A triple of name, number of params, and shape.
	**/
	static public function tf_parameter_iter(x:Dynamic):Dynamic;
	/**
		Summarize parameters by depth.
		
		Args:
		    x: root of the subgraph (Tensor, Operation)
		    printer: print function for output
		    combine: combine layers by top-level scope
	**/
	static public function tf_parameter_summary(x:Dynamic, ?printer:Dynamic, ?combine:Dynamic):Dynamic;
	/**
		A simple print function for a TensorFlow graph.
		
		Args:
		    x: a tf.Tensor or tf.Operation
		    depth: current printing depth
		    finished: set of nodes already output
		    printer: print function to use
		
		Returns:
		    Total number of parameters found in the
		    subtree.
	**/
	static public function tf_print(x:Dynamic, ?depth:Dynamic, ?finished:Dynamic, ?printer:Dynamic):Dynamic;
	/**
		Print a tree representing the spec.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: optional shape of input
		    input_type: type of the input tensor
	**/
	static public function tf_spec_print(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		Return a postfix representation of the specification.
		
		This is intended to be used as part of test cases to
		check for gross differences in the structure of the graph.
		The resulting string is not invertible or unabiguous
		and cannot be used to reconstruct the graph accurately.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: tensor shape (in lieu of inputs)
		    input_type: type of the input tensor
		
		Returns:
		    A string with a postfix representation of the
		    specification.
	**/
	static public function tf_spec_structure(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		Output a summary of the specification.
		
		This prints a list of left-most tensor operations and summarized the
		variables found in the right branches. This kind of representation
		is particularly useful for networks that are generally structured
		like pipelines.
		
		Args:
		    spec: specification
		    inputs: input to the spec construction (usually a Tensor)
		    input_shape: optional shape of input
		    input_type: type of the input tensor
	**/
	static public function tf_spec_summary(spec:Dynamic, ?inputs:Dynamic, ?input_shape:Dynamic, ?input_type:Dynamic):Dynamic;
	/**
		A postfix expression summarizing the TF graph.
		
		This is intended to be used as part of test cases to
		check for gross differences in the structure of the graph.
		The resulting string is not invertible or unabiguous
		and cannot be used to reconstruct the graph accurately.
		
		Args:
		    x: a tf.Tensor or tf.Operation
		    include_shapes: include shapes in the output string
		    finished: a set of ops that have already been output
		
		Returns:
		    A string representing the structure as a string of
		    postfix operations.
	**/
	static public function tf_structure(x:Dynamic, ?include_shapes:Dynamic, ?finished:Dynamic):Dynamic;
}