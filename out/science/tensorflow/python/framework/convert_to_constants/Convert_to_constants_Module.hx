/* This file is generated, do not edit! */
package tensorflow.python.framework.convert_to_constants;
@:pythonImport("tensorflow.python.framework.convert_to_constants") extern class Convert_to_constants_Module {
	static public var VAR_ASSIGN_COLLECTION : Dynamic;
	static public var _CONDITIONAL_OPS : Dynamic;
	static public var _CONTROL_FLOW_OPS : Dynamic;
	static public var _LOOP_OPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Constructs a concrete function from the `output_graph_def`.
		
		Args:
		  func: ConcreteFunction
		  output_graph_def: GraphDef proto.
		  converted_input_indices: Set of integers of input indices that were
		    converted to constants.
		
		Returns:
		  ConcreteFunction.
	**/
	static public function _construct_concrete_function(func:Dynamic, output_graph_def:Dynamic, converted_input_indices:Dynamic):Dynamic;
	/**
		Replaces variables by constants on a given graph.
		
		Given a _ConverterData instance with converted variables in its tensor_data
		field, create a new graph where the respective variables are replaced with the
		converted constants.
		
		Args:
		  converter_data: A pre-populated _ConverterData instance.
		
		Returns:
		  The converted graph.
	**/
	static public function _replace_variables_by_constants(converter_data:Dynamic):Dynamic;
	/**
		Apply function inline optimization to the graph.
		
		Returns the GraphDef after Grappler's function inlining optimization is
		applied. This optimization does not work on models with control flow.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control flow
		    ops such as If and While. (default True)
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops not
		    properly connected to control outputs).
		
		Returns:
		  GraphDef
	**/
	static public function _run_inline_graph_optimization(func:Dynamic, lower_control_flow:Dynamic, aggressive_inlining:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
		This function works as same as convert_variables_to_constants_v2, but it
		should be used in Graph mode. It is a temporary solution when users want to
		integrate their models written in TF2 with infra that requires TF1 mode.
		
		The current implementation only works for graphs that do not contain any
		control flow or embedding related ops.
		
		The function must be called in a Session context.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control flow
		    ops such as If and While. (default True)
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops, not
		    properly connected to control outputs). (default False)
		
		Raises:
		    RuntimeError: If no Session context is present.
		
		Returns:
		  ConcreteFunction containing a simplified version of the original.
	**/
	static public function convert_var_to_const_function_in_v1(func:Dynamic, ?lower_control_flow:Dynamic, ?aggressive_inlining:Dynamic):Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
		This function works similarly to convert_variables_to_constants_v2, but it
		retrieves the constant values from a Session instead of from a
		ConcreteFunction. This is useful when converting graphs generated from
		TensorFlow V1, where ConcreteFunctions are not available. This also differs
		from graph_util.convert_variables_to_constants in that it supports resource
		variables when V2 control flow constructions are present.
		
		Args:
		  session: Active TensorFlow session containing the variables.
		  graph_def: A GraphDef to convert.
		  output_node_names: List of name strings for the result nodes of the graph.
		  variable_names_allowlist: The set of variable names to convert (by default,
		    all variables are converted).
		  variable_names_denylist: The set of variable names to omit converting to
		    constants.
		
		Returns:
		  An optimized GraphDef.
	**/
	static public function convert_variables_to_constants_from_session_graph(session:Dynamic, graph_def:Dynamic, output_node_names:Dynamic, ?variable_names_allowlist:Dynamic, ?variable_names_denylist:Dynamic):Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
		TensorFlow 2.0 function for converting all Variable ops into Const ops holding
		the same values. This makes it possible to describe the network fully with a
		single GraphDef file, and allows the removal of a lot of ops related to
		loading and saving the variables. This function runs Grappler's function
		inlining optimization in order to return a single subgraph.
		
		The current implementation only works for graphs that do not contain any
		control flow or embedding related ops.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control flow
		    ops such as If and While. (default True)
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops, not
		    properly connected to control outputs). (default False)
		
		Returns:
		  ConcreteFunction containing a simplified version of the original.
	**/
	static public function convert_variables_to_constants_v2(func:Dynamic, ?lower_control_flow:Dynamic, ?aggressive_inlining:Dynamic):Dynamic;
	/**
		Replaces all the variables in a graph with constants of the same values.
		
		This function works as same as convert_variables_to_constants_v2, but it
		returns the intermediate `GraphDef` as well. This `GraphDef` contains all the
		debug information after all the transformations in the frozen phase.
		
		Args:
		  func: ConcreteFunction.
		  lower_control_flow: Boolean indicating whether or not to lower control flow
		    ops such as If and While. (default True)
		  aggressive_inlining: Boolean indicating whether or not to do aggressive
		    function inlining (might be unsafe if function has stateful ops, not
		    properly connected to control outputs).
		
		Returns:
		  ConcreteFunction containing a simplified version of the original, and also
		  the intermediate GraphDef containing the node debug information for the
		  transformations in the frozen phase.
	**/
	static public function convert_variables_to_constants_v2_as_graph(func:Dynamic, ?lower_control_flow:Dynamic, ?aggressive_inlining:Dynamic):Dynamic;
	/**
		Set '_lower_using_switch_merge' attributes to False.
		
		Sets the attribute to False in the NodeDefs in the main graph and the NodeDefs
		in each function's graph.
		
		Args:
		  graph_def: GraphDef proto.
		
		Returns:
		  GraphDef
	**/
	static public function disable_lower_using_switch_merge(graph_def:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns `MetaGraphDef` proto.
		
		Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the generated
		    `MetaGraphDef` protocol buffer.
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  graph: The `Graph` to export. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract the
		    subgraph. The scope name will be striped from the node definitions for
		    easy import later into new name scopes. If `None`, the whole graph is
		    exported. graph_def and export_scope cannot both be specified.
		  clear_devices: Whether or not to clear the device field for an `Operation`
		    or `Tensor` during export.
		  clear_extraneous_savers: Remove any Saver-related information from the graph
		    (both Save/Restore ops and SaverDefs) that are not associated with the
		    provided SaverDef.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		    removed from the NodeDefs. For a detailed guide, see
		    [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		  save_debug_info: If `True`, save the GraphDebugInfo to a separate file,
		    which in the same directory of filename and with `_debug` added before the
		    file extend.
		  **kwargs: Optional keyed arguments.
		
		Returns:
		  A `MetaGraphDef` proto.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
		  RuntimeError: If called with eager execution enabled.
		
		@compatibility(eager)
		Exporting/importing meta graphs is not supported unless both `graph_def` and
		`graph` are provided. No graph exists when eager execution is enabled.
		@end_compatibility
	**/
	static public function export_meta_graph(?filename:Dynamic, ?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?as_text:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?clear_devices:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic, ?save_debug_info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
}