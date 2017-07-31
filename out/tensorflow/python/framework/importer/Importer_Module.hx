/* This file is generated, do not edit! */
package tensorflow.python.framework.importer;
@:pythonImport("tensorflow.python.framework.importer") extern class Importer_Module {
	static public function _ArgToTypesNoRef(node_def:Dynamic, arg_def:Dynamic):Dynamic;
	static public function _ArgsToTypes(node_def:Dynamic, arg_list:Dynamic):Dynamic;
	static public function _CanonicalInputName(input_name:Dynamic):Dynamic;
	static public function _FindAttrInOpDef(attr_name:Dynamic, op_def:Dynamic):Dynamic;
	static public function _GetNodeAttr(node_def:Dynamic, attr_name:Dynamic):Dynamic;
	static public function _InputTypes(node_def:Dynamic, op_dict:Dynamic):Dynamic;
	static public function _InvalidNodeMessage(node:Dynamic, message:Dynamic):Dynamic;
	static public function _IsControlInput(input_name:Dynamic):Dynamic;
	/**
		Applies the given device only if device is not None or empty.
	**/
	static public function _MaybeDevice(device:Dynamic):Dynamic;
	static public function _OutputTypes(node_def:Dynamic, op_dict:Dynamic):Dynamic;
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
	static public function _SingleArgToTypes(node_def:Dynamic, arg_def:Dynamic):Dynamic;
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
		Imports the graph from `graph_def` into the current default `Graph`.
		
		This function provides a way to import a serialized TensorFlow
		[`GraphDef`](https://www.tensorflow.org/code/tensorflow/core/framework/graph.proto)
		protocol buffer, and extract individual objects in the `GraphDef` as
		@{tf.Tensor} and @{tf.Operation} objects. Once extracted,
		these objects are placed into the current default `Graph`. See
		@{tf.Graph.as_graph_def} for a way to create a `GraphDef`
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
		  op_dict: (Optional.) A dictionary mapping op type names to `OpDef` protos.
		    Must contain an `OpDef` proto for each op type named in `graph_def`.
		    If omitted, uses the `OpDef` protos registered in the global registry.
		  producer_op_list: (Optional.) An `OpList` proto with the (possibly stripped)
		    list of `OpDef`s used by the producer of the graph. If provided, attrs
		    for ops in `graph_def` that are not in `op_dict` that have their default
		    value according to `producer_op_list` will be removed. This will allow
		    some more `GraphDef`s produced by later binaries to be accepted by
		    earlier binaries.
		
		Returns:
		  A list of `Operation` and/or `Tensor` objects from the imported graph,
		  corresponding to the names in `return_elements`.
		
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
}