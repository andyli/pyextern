/* This file is generated, do not edit! */
package tensorflow.python.tools.saved_model_aot_compile;
@:pythonImport("tensorflow.python.tools.saved_model_aot_compile") extern class Saved_model_aot_compile_Module {
	static public var _PASS_THROUGH_VARIABLE_OPS : Dynamic;
	static public var _READ_ONLY_VARIABLE_OPS : Dynamic;
	static public var _XLA_MAKEFILE_TEMPLATE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the list of Variable nodes from `graph_def`.
		
		Args:
		  graph_def: An instance of `GraphDef`.  This GraphDef *must*
		    have already been optimized by Grappler.  In particular, function
		    inlining must have already happened.
		
		Returns:
		  A dict mapping string names of variables to tuples `(node_def, modified)`,
		  where `node_def` is the `NodeDef` corresponding to variable, and `modified`
		  is a python bool describing whether the variable is modified during runtime.
	**/
	static public function _get_variable_nodes_from_graph_def(graph_def:Dynamic):Dynamic;
	/**
		Optimize `meta_graph_def` using grappler.  Returns a `GraphDef`.
	**/
	static public function _optimize_graph(meta_graph_def:Dynamic, signature_def:Dynamic):Dynamic;
	/**
		Convert a tensor name like 'tensor:0' into a tuple ('tensor', 0).
	**/
	static public function _parse_tensor_name(name:Dynamic):Dynamic;
	/**
		Identify the inputs in the signature no longer in graph_def, prune them.
		
		Args:
		  signature_def: A `SignatureDef` instance.
		  graph_def: A `GraphDef` instance.
		
		Returns:
		  A new pruned `SignatureDef`.
	**/
	static public function _prune_removed_feed_nodes(signature_def:Dynamic, graph_def:Dynamic):Dynamic;
	static public var _pywrap_tfcompile_import_error : Dynamic;
	/**
		Replace graphdef's `tf.placeholder` input ops with all-zero constants.
	**/
	static public function _replace_input_placeholders_with_default_values(graph_def:Dynamic, signature_def:Dynamic):Dynamic;
	static public function _shlex_quote(s:Dynamic):Dynamic;
	/**
		Convert `signature_def` to tf2xla config.  Returns a `tf2xla.Config` proto.
		
		Args:
		  signature_def: Instance of `SignatureDef`.
		  variable_nodes_to_feed: List of tuples of form `(node_def, modified)`
		    corresponding to VarHandleOp, and a boolean `modified` that describes
		    whether the variable was modified during execution.
		
		Returns:
		  An instance of `tf2xla.Config` proto.
		
		Raises:
		  RuntimeError: If TensorFlow was not compiled with XLA.
	**/
	static public function _signature_to_tf2xla_config(signature_def:Dynamic, variable_nodes_to_feed:Dynamic):Dynamic;
	/**
		Load tf.sysconfig if available and working (i.e., inside a pip package).
	**/
	static public function _sysconfig_module():Dynamic;
	/**
		Returns a Makefile string with variables for using XLA binary object files.
		
		Attempts to identify the right include header paths when run from either
		an installed TensorFlow pip package, or from bazel run.
		
		Args:
		  output_prefix: A string containing the output prefix for the XLA AOT
		    compiled header + object files.
		
		Returns:
		  A string containing a filled out `_XLA_MAKEFILE_TEMPLATE`.
	**/
	static public function _xla_makefile_string(output_prefix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compile a `MetaGraphDef` to header+object files in `output_prefix`.
		
		Use XLA AOT (`tfcompile`) to convert the given meta graph and
		signature into a header + object files.  Also create an include makefile
		that helps identify the appropriate necessary include and library paths
		to incorporate these files into your C++ program.
		
		The graph is always optimized with grappler, and optionally (by default)
		variables are frozen as constants, before compilation happens.
		
		If the `freeze_graph` is `True`, all variables are embedded as constants
		into the graph and binary objects.  If it is `False`, then the variable
		values become inputs and outputs of the compiled class and the C++
		caller must set these values manually.
		
		Args:
		  checkpoint_path: Python string.  Path to checkpoints/variables.
		  meta_graph_def: Instance of `MetaGraphDef`.
		  output_prefix: Python string.  Path prefix for outputs.
		  signature_def_key: String, the signature_def to use in the SavedModel.
		  cpp_class: String, Name of output C++ class.
		  target_triple: String, LLVM target triple.
		  target_cpu: String, LLVM target cpu name.
		  variables_to_feed: A list of strings, the variables that will be fed by the
		    user; these won't be frozen.  If `None`, then we will extract all the
		    variables in the graph and mark them as to-feed.  The default behavior is
		    an empty tuple: all variables must be frozen.
		  multithreading: Whether to enable multithreading in the compiled
		    computation.  Note that if using this option, the resulting object files
		    may have external dependencies on multithreading libraries like nsync.
		
		Raises:
		  RuntimeError: If tensorflow was not built with XLA.
		  ImportError: If tensorflow was built with XLA but there was another
		    issue importing the tfcompile python wrapper.
		  ValueError: If `meta_graph_def.signature_def[signature_def_key]` is
		    missing or has empty outputs.
	**/
	static public function aot_compile_cpu_meta_graph_def(checkpoint_path:Dynamic, meta_graph_def:Dynamic, output_prefix:Dynamic, signature_def_key:Dynamic, cpp_class:Dynamic, target_triple:Dynamic, target_cpu:Dynamic, ?variables_to_feed:Dynamic, ?multithreading:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}