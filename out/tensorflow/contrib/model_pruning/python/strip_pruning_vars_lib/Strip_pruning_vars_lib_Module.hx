/* This file is generated, do not edit! */
package tensorflow.contrib.model_pruning.python.strip_pruning_vars_lib;
@:pythonImport("tensorflow.contrib.model_pruning.python.strip_pruning_vars_lib") extern class Strip_pruning_vars_lib_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extracts masked_weights from the graph as a dict of {var_name:ndarray}.
	**/
	static public function _get_masked_weights(input_graph_def:Dynamic):Dynamic;
	/**
		Remove the trailing ':0' from the variable name.
	**/
	static public function _node_name(tensor_name:Dynamic):Dynamic;
	/**
		Appends the :0 in the op name to get the canonical tensor name.
	**/
	static public function _tensor_name(node_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Converts checkpoint data to GraphDef.
		
		Reads the latest checkpoint data and produces a GraphDef in which the
		variables have been converted to constants.
		
		Args:
		  checkpoint_dir: Path to the checkpoints.
		  output_node_names: List of name strings for the result nodes of the graph.
		
		Returns:
		  A GraphDef from the latest checkpoint
		
		Raises:
		  ValueError: if no checkpoint is found
	**/
	static public function graph_def_from_checkpoint(checkpoint_dir:Dynamic, output_node_names:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Removes mask variable from the graph.
		
		Replaces the masked_weight tensor with element-wise multiplication of mask
		and the corresponding weight variable.
		
		Args:
		  input_graph_def: A GraphDef in which the variables have been converted to
		    constants. This is typically the output of
		    tf.graph_util.convert_variables_to_constant()
		  output_node_names: List of name strings for the result nodes of the graph
		
		Returns:
		  A GraphDef in which pruning-related variables have been removed
	**/
	static public function strip_pruning_vars_fn(input_graph_def:Dynamic, output_node_names:Dynamic):Dynamic;
}