/* This file is generated, do not edit! */
package tensorflow.python.framework.meta_graph;
@:pythonImport("tensorflow.python.framework.meta_graph") extern class Meta_graph_Module {
	static public var SAVE_AND_RESTORE_OPS : Dynamic;
	static public var _COMPAT_COLLECTION_LIST : Dynamic;
	static public var _UNBOUND_INPUT_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Identifies any nodes in the graph_def related to unused Savers.
		
		This approach assumes that each Saver is cleanly isolated in its own name
		scope, so we need only identify the scopes associated with extraneous Savers
		and return all the nodes in those scopes.
		
		Args:
		  graph_def: a GraphDef proto to evaluate.
		  saver_def: a SaverDef proto referencing Save/Restore ops to be retained.
		Returns:
		  An iterable of node names that may be safely omitted.
	**/
	static public function _find_extraneous_saver_nodes(graph_def:Dynamic, saver_def:Dynamic):Dynamic;
	/**
		Returns the kind name in CollectionDef.
		
		Args:
		  item: A data item.
		
		Returns:
		  The string representation of the kind in CollectionDef.
	**/
	static public function _get_kind_name(item:Dynamic):Dynamic;
	/**
		Extract the scope name from a node name.
		
		The scope name is everything before the final slash,
		not including any ^ prefix denoting a control dependency.
		
		Args:
		  node_name: the full name of an Op or a Tensor in the graph.
		Returns:
		  The deepest named scope containing the node.
		Raises:
		  ValueError: if tensor_name is None or empty
	**/
	static public function _get_scope(node_name:Dynamic):Dynamic;
	/**
		Checks if given attribute matches the default value in the op def.
	**/
	static public function _is_default_attr_value(op_def:Dynamic, attr_name:Dynamic, attr_value:Dynamic):Dynamic;
	/**
		Create a `NodeDef` proto with export_scope stripped.
		
		Args:
		  from_node_def: A `node_def_pb2.NodeDef` protocol buffer.
		  export_scope: A `string` representing the name scope to remove.
		  unbound_inputs: An array of unbound input names if they exist.
		  clear_devices: Boolean which controls whether to clear device information
		    from node_def. Default false.
		
		Returns:
		  A `node_def_pb2.NodeDef` protocol buffer.
	**/
	static public function _node_def(from_node_def:Dynamic, export_scope:Dynamic, unbound_inputs:Dynamic, ?clear_devices:Dynamic):Dynamic;
	/**
		Extract the Op name from a Tensor name.
		
		The Op name is everything before a colon, if present,
		not including any ^ prefix denoting a control dependency.
		
		Args:
		  tensor_name: the full name of a Tensor in the graph.
		Returns:
		  The name of the Op of which the given Tensor is an output.
		Raises:
		  ValueError: if tensor_name is None or empty.
	**/
	static public function _op_name(tensor_name:Dynamic):Dynamic;
	/**
		Reads a file containing `GraphDef` and returns the protocol buffer.
		
		Args:
		  filename: `graph_def` filename including the path.
		
		Returns:
		  A `GraphDef` protocol buffer.
		
		Raises:
		  IOError: If the file doesn't exist, or cannot be successfully parsed.
	**/
	static public function _read_file(filename:Dynamic):Dynamic;
	/**
		Returns `True` if a node should be included.
		
		Args:
		  node_or_node_name: A node or `string` node name.
		  export_scope: `string`. Name scope under which to extract the subgraph. The
		    scope name will be stripped from the node definitions for easy import
		    later into new name scopes.
		  exclude_nodes: An iterable of nodes or `string` node names to omit from the
		    export, or None.  Note no sanity-checking is done, so this list must be
		    carefully constructed to avoid producing an invalid graph.
		
		Returns:
		  `True` if the node should be included.
	**/
	static public function _should_include_node(node_or_node_name:Dynamic, export_scope:Dynamic, exclude_nodes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a collection to MetaGraphDef protocol buffer.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer.
		  key: One of the GraphKeys or user-defined string.
		  graph: The `Graph` from which to get collections.
		  export_scope: Optional `string`. Name scope to remove.
		  exclude_nodes: An iterable of nodes or `string` node names to omit from the
		    collection, or None.
		  override_contents: An iterable of values to place in the collection,
		    ignoring the current values (if set).
	**/
	static public function add_collection_def(meta_graph_def:Dynamic, key:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?exclude_nodes:Dynamic, ?override_contents:Dynamic):Dynamic;
	/**
		Copies a sub-meta_graph from one scope to another.
		
		Args:
		  from_scope: `String` name scope containing the subgraph to be copied.
		  to_scope: `String` name scope under which the copied subgraph will reside.
		  from_graph: Optional `Graph` from which to copy the subgraph. If `None`, the
		    default graph is use.
		  to_graph: Optional `Graph` to which to copy the subgraph. If `None`, the
		    default graph is used.
		
		Returns:
		  A dictionary of `Variables` that has been copied into `to_scope`.
		
		Raises:
		  ValueError: If `from_scope` and `to_scope` are the same while
		    `from_graph` and `to_graph` are also the same.
	**/
	static public function copy_scoped_meta_graph(from_scope:Dynamic, to_scope:Dynamic, ?from_graph:Dynamic, ?to_graph:Dynamic):Dynamic;
	/**
		Construct and returns a `MetaGraphDef` protocol buffer.
		
		Args:
		  meta_info_def: `MetaInfoDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  saver_def: `SaverDef` protocol buffer.
		  collection_list: List of string keys to collect.
		  graph: The `Graph` to create `MetaGraphDef` out of.
		  export_scope: Optional `string`. Name scope to remove.
		  exclude_nodes: An iterable of nodes or `string` node names to omit from all
		    collection, or None.
		  clear_extraneous_savers: Remove any preexisting SaverDefs from the SAVERS
		      collection.  Note this method does not alter the graph, so any
		      extraneous Save/Restore ops should have been removed already, as needed.
		  strip_default_attrs: Boolean. If `True`, default-valued attributes will be
		      removed from the NodeDefs. For a detailed guide, see
		      [Stripping Default-Valued Attributes](https://github.com/tensorflow/tensorflow/blob/master/tensorflow/python/saved_model/README.md#stripping-default-valued-attributes).
		
		Returns:
		  MetaGraphDef protocol buffer.
		
		Raises:
		  TypeError: If the arguments are not of the correct proto buffer type.
	**/
	static public function create_meta_graph_def(?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?exclude_nodes:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns `MetaGraphDef` proto. Optionally writes it to filename.
		
		This function exports the graph, saver, and collection objects into
		`MetaGraphDef` protocol buffer with the intention of it being imported
		at a later time or location to restart training, run inference, or be
		a subgraph.
		
		Args:
		  filename: Optional filename including the path for writing the
		    generated `MetaGraphDef` protocol buffer.
		  graph_def: `GraphDef` protocol buffer.
		  graph: The `Graph` to export. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract
		    the subgraph. The scope name will be stripped from the node definitions
		    for easy import later into new name scopes. If `None`, the whole graph
		    is exported.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  unbound_inputs_col_name: Optional `string`. If provided, a string collection
		    with the given name will be added to the returned `MetaGraphDef`,
		    containing the names of tensors that must be remapped when importing the
		    `MetaGraphDef`.
		  clear_devices: Boolean which controls whether to clear device information
		    before exporting the graph.
		  saver_def: `SaverDef` protocol buffer.
		  clear_extraneous_savers: Remove any Saver-related information from the
		      graph (both Save/Restore ops and SaverDefs) that are not associated
		      with the provided SaverDef.
		  strip_default_attrs: Set to true if default valued attributes must be
		      removed while exporting the GraphDef.
		  **kwargs: Optional keyed arguments, including meta_info_def and
		      collection_list.
		
		Returns:
		  A `MetaGraphDef` proto and dictionary of `Variables` in the exported
		  name scope.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
	**/
	static public function export_scoped_meta_graph(?filename:Dynamic, ?graph_def:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?as_text:Dynamic, ?unbound_inputs_col_name:Dynamic, ?clear_devices:Dynamic, ?saver_def:Dynamic, ?clear_extraneous_savers:Dynamic, ?strip_default_attrs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Recreates a `Graph` saved in a `MetaGraphDef` proto.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates the desired collections, and returns a dictionary of
		all the Variables imported into the name scope.
		
		In combination with `export_scoped_meta_graph()`, this function can be used to
		
		* Serialize a graph along with other Python objects such as `QueueRunner`,
		  `Variable` into a `MetaGraphDef`.
		
		* Restart training from a saved graph and checkpoints.
		
		* Run inference from a saved graph and checkpoints.
		
		Args:
		  meta_graph_or_file: `MetaGraphDef` protocol buffer or filename (including
		    the path) containing a `MetaGraphDef`.
		  clear_devices: Boolean which controls whether to clear device information
		    from graph_def. Default false.
		  graph: The `Graph` to import into. If `None`, use the default graph.
		  import_scope: Optional `string`. Name scope into which to import the
		    subgraph. If `None`, the graph is imported to the root name scope.
		  input_map: A dictionary mapping input names (as strings) in `graph_def` to
		    `Tensor` objects. The values of the named input tensors in the imported
		    graph will be re-mapped to the respective `Tensor` values.
		  unbound_inputs_col_name: Collection name for looking up unbound inputs.
		  restore_collections_predicate: a predicate on collection names. A collection
		    named c (i.e whose key is c) will be restored iff
		    1) `restore_collections_predicate(c)` is True, and
		    2) `c != unbound_inputs_col_name`.
		
		Returns:
		  A dictionary of all the `Variables` imported into the name scope.
		
		Raises:
		  ValueError: If the graph_def contains unbound inputs.
	**/
	static public function import_scoped_meta_graph(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?graph:Dynamic, ?import_scope:Dynamic, ?input_map:Dynamic, ?unbound_inputs_col_name:Dynamic, ?restore_collections_predicate:Dynamic):Dynamic;
	/**
		Imports graph from `MetaGraphDef` and returns vars and return elements.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates the desired collections, and returns a dictionary of
		all the Variables imported into the name scope.
		
		In combination with `export_scoped_meta_graph()`, this function can be used to
		
		* Serialize a graph along with other Python objects such as `QueueRunner`,
		  `Variable` into a `MetaGraphDef`.
		
		* Restart training from a saved graph and checkpoints.
		
		* Run inference from a saved graph and checkpoints.
		
		Args:
		  meta_graph_or_file: `MetaGraphDef` protocol buffer or filename (including
		    the path) containing a `MetaGraphDef`.
		  clear_devices: Boolean which controls whether to clear device information
		    from graph_def. Default false.
		  graph: The `Graph` to import into. If `None`, use the default graph.
		  import_scope: Optional `string`. Name scope into which to import the
		    subgraph. If `None`, the graph is imported to the root name scope.
		  input_map: A dictionary mapping input names (as strings) in `graph_def` to
		    `Tensor` objects. The values of the named input tensors in the imported
		    graph will be re-mapped to the respective `Tensor` values.
		  unbound_inputs_col_name: Collection name for looking up unbound inputs.
		  restore_collections_predicate: a predicate on collection names. A collection
		    named c (i.e whose key is c) will be restored iff
		    1) `restore_collections_predicate(c)` is True, and
		    2) `c != unbound_inputs_col_name`.
		  return_elements:  A list of strings containing operation names in the
		    `MetaGraphDef` that will be returned as `Operation` objects; and/or
		    tensor names in `MetaGraphDef` that will be returned as `Tensor` objects.
		
		Returns:
		  A tuple of (
		    dictionary of all the `Variables` imported into the name scope,
		    list of `Operation` or `Tensor` objects from the `return_elements` list).
		
		Raises:
		  ValueError: If the graph_def contains unbound inputs.
	**/
	static public function import_scoped_meta_graph_with_return_elements(meta_graph_or_file:Dynamic, ?clear_devices:Dynamic, ?graph:Dynamic, ?import_scope:Dynamic, ?input_map:Dynamic, ?unbound_inputs_col_name:Dynamic, ?restore_collections_predicate:Dynamic, ?return_elements:Dynamic):Dynamic;
	/**
		Collect the list of ops used by a graph.
		
		Does not validate that the ops are all registered.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  A list of strings, each naming an op used by the graph.
	**/
	static public function ops_used_by_graph_def(graph_def:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Reads a file containing `MetaGraphDef` and returns the protocol buffer.
		
		Args:
		  filename: `meta_graph_def` filename including the path.
		
		Returns:
		  A `MetaGraphDef` protocol buffer.
		
		Raises:
		  IOError: If the file doesn't exist, or cannot be successfully parsed.
	**/
	static public function read_meta_graph_file(filename:Dynamic):Dynamic;
	/**
		Strips default valued attributes for node defs in given MetaGraphDef.
		
		This method also sets `meta_info_def.stripped_default_attrs` in the given
		`MetaGraphDef` proto to True.
		
		Args:
		  meta_graph_def: `MetaGraphDef` protocol buffer
		
		Returns:
		  None.
	**/
	static public function strip_graph_default_valued_attrs(meta_graph_def:Dynamic):Dynamic;
	/**
		Collect the stripped OpDefs for ops used by a graph.
		
		This function computes the `stripped_op_list` field of `MetaGraphDef` and
		similar protos.  The result can be communicated from the producer to the
		consumer, which can then use the C++ function
		`RemoveNewDefaultAttrsFromGraphDef` to improve forwards compatibility.
		
		Args:
		  graph_def: A `GraphDef` proto, as from `graph.as_graph_def()`.
		
		Returns:
		  An `OpList` of ops used by the graph.
		
		Raises:
		  ValueError: If an unregistered op is used.
	**/
	static public function stripped_op_list_for_graph(graph_def:Dynamic):Dynamic;
}