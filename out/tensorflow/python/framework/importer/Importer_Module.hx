/* This file is generated, do not edit! */
package tensorflow.python.framework.importer;
@:pythonImport("tensorflow.python.framework.importer") extern class Importer_Module {
	/**
		Ensures all input map values are tensors.
		
		This should be called from inside the import name scope.
		
		Args:
		  name: the `name` argument passed to import_graph_def
		  input_map: the `input_map` argument passed to import_graph_def.
		
		Returns:
		  An possibly-updated version of `input_map`.
		
		Raises:
		  ValueError: if input map values cannot be converted due to empty name scope.
	**/
	static public function _ConvertInputMapValues(name:Dynamic, input_map:Dynamic):Dynamic;
	static public function _FindAttrInOpDef(attr_name:Dynamic, op_def:Dynamic):Dynamic;
	/**
		Returns the requested return elements from results.
		
		Args:
		  requested_return_elements: list of strings of operation and tensor names
		  graph: Graph
		  results: wrapped TF_ImportGraphDefResults
		
		Returns:
		  list of `Operation` and/or `Tensor` objects
	**/
	static public function _GatherReturnElements(requested_return_elements:Dynamic, graph:Dynamic, results:Dynamic):Dynamic;
	/**
		Returns names of the ops that `op` should be colocated with.
	**/
	static public function _GetColocationNames(op:Dynamic):Dynamic;
	static public function _IsControlInput(input_name:Dynamic):Dynamic;
	/**
		Applies the given device only if device is not None or empty.
	**/
	static public function _MaybeDevice(device:Dynamic):Dynamic;
	/**
		Parses a tensor name into an operation name and output index.
		
		This function will canonicalize tensor names as follows:
		
		* "foo:0"       -> ("foo", 0)
		* "foo:7"       -> ("foo", 7)
		* "foo"         -> ("foo", 0)
		* "foo:bar:baz" -> ValueError
		
		Args:
		  tensor_name: The name of a tensor.
		
		Returns:
		  A tuple containing the operation name, and the output index.
		
		Raises:
		  ValueError: If `tensor_name' cannot be interpreted as the name of a tensor.
	**/
	static public function _ParseTensorName(tensor_name:Dynamic):Dynamic;
	/**
		Populates the TF_ImportGraphDefOptions `options`.
	**/
	static public function _PopulateTFImportGraphDefOptions(options:Dynamic, prefix:Dynamic, input_map:Dynamic, return_elements:Dynamic):Dynamic;
	/**
		Type-checks and possibly canonicalizes `graph_def`.
	**/
	static public function _ProcessGraphDefParam(graph_def:Dynamic, op_dict:Dynamic):Dynamic;
	/**
		Type-checks and possibly canonicalizes `input_map`.
	**/
	static public function _ProcessInputMapParam(input_map:Dynamic):Dynamic;
	/**
		Processes the newly-added TF_Operations in `graph`.
	**/
	static public function _ProcessNewOps(graph:Dynamic):Dynamic;
	/**
		Type-checks and possibly canonicalizes `return_elements`.
	**/
	static public function _ProcessReturnElementsParam(return_elements:Dynamic):Dynamic;
	/**
		Removes unknown default attrs according to `producer_op_list`.
		
		Removes any unknown attrs in `graph_def` (i.e. attrs that do not appear in
		the OpDefs in `op_dict`) that have a default value in `producer_op_list`.
		
		Args:
		  op_dict: dict mapping operation name to OpDef.
		  producer_op_list: OpList proto.
		  graph_def: GraphDef proto
	**/
	static public function _RemoveDefaultAttrs(op_dict:Dynamic, producer_op_list:Dynamic, graph_def:Dynamic):Dynamic;
	/**
		Set any default attr values in `node_def` that aren't present.
	**/
	static public function _SetDefaultAttrValues(node_def:Dynamic, op_def:Dynamic):Dynamic;
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
		Decorator for marking specific function arguments as deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called with the deprecated argument. It has the following format:
		
		  Calling <function> (from <module>) with <arg> is deprecated and will be
		  removed after <date>. Instructions for updating:
		    <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> includes the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated arguments)' is
		appended to the first line of the docstring and a deprecation notice is
		prepended to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  *deprecated_arg_names_or_tuples: String or 2-Tuple(String,
		    [ok_vals]).  The string is the deprecated argument name.
		    Optionally, an ok-value may be provided.  If the user provided
		    argument equals this value, the warning is suppressed.
		  **kwargs: If `warn_once=False` is passed, every call with a deprecated
		    argument will log a warning. The default behavior is to only warn the
		    first time the function is called with any given deprecated argument.
		    All other kwargs raise `ValueError`.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, instructions are
		    empty, the deprecated arguments are not present in the function
		    signature, the second element of a deprecated_tuple is not a
		    list, or if a kwarg other than `warn_once` is passed.
	**/
	static public function deprecated_args(date:Dynamic, instructions:Dynamic, ?deprecated_arg_names_or_tuples:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Imports the graph from `graph_def` into the current default `Graph`. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(op_dict)`. They will be removed in a future version.
		Instructions for updating:
		Please file an issue at https://github.com/tensorflow/tensorflow/issues if you depend on this feature.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		`tf.Tensor` and `tf.Operation` objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		`tf.Graph.as_graph_def` for a way to create a `GraphDef`
		proto.
		
		Args:
		  graph_def: A `GraphDef` proto containing operations to be imported into
		    the default graph.
		  input_map: A dictionary mapping input names (as strings) in `graph_def`
		    to `Tensor` objects. The values of the named input tensors in the
		    imported graph will be re-mapped to the respective `Tensor` values.
		  return_elements: A list of strings containing operation names in
		    `graph_def` that will be returned as `Operation` objects; and/or
		    tensor names in `graph_def` that will be returned as `Tensor` objects.
		  name: (Optional.) A prefix that will be prepended to the names in
		    `graph_def`. Note that this does not apply to imported function names.
		    Defaults to `"import"`.
		  op_dict: (Optional.) Deprecated, do not use.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided,
		    unrecognized attrs for ops in `graph_def` that have their default value
		    according to `producer_op_list` will be removed. This will allow some more
		    `GraphDef`s produced by later binaries to be accepted by earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`,
		  and None if `returns_elements` is None.
		
		Raises:
		  TypeError: If `graph_def` is not a `GraphDef` proto,
		    `input_map` is not a dictionary mapping strings to `Tensor` objects,
		    or `return_elements` is not a list of strings.
		  ValueError: If `input_map`, or `return_elements` contains names that
		    do not appear in `graph_def`, or `graph_def` is not well-formed (e.g.
		    it refers to an unknown tensor).
	**/
	static public function import_graph_def(graph_def:Dynamic, ?input_map:Dynamic, ?return_elements:Dynamic, ?name:Dynamic, ?op_dict:Dynamic, ?producer_op_list:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}