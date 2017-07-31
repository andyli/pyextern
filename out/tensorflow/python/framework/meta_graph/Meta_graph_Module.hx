/* This file is generated, do not edit! */
package tensorflow.python.framework.meta_graph;
@:pythonImport("tensorflow.python.framework.meta_graph") extern class Meta_graph_Module {
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
		Returns the kind name in CollectionDef.
		
		Args:
		  item: A data item.
		
		Returns:
		  The string representation of the kind in CollectionDef.
	**/
	static public function _get_kind_name(item:Dynamic):Dynamic;
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
		    scope name will be striped from the node definitions for easy import later
		    into new name scopes.
		
		Returns:
		  `True` if the node should be included.
	**/
	static public function _should_include_node(node_or_node_name:Dynamic, export_scope:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Adds a collection to MetaGraphDef protocol buffer.
		
		Args:
		  meta_graph_def: MetaGraphDef protocol buffer.
		  key: One of the GraphKeys or user-defined string.
		  graph: The `Graph` from which to get collections.
		  export_scope: Optional `string`. Name scope to remove.
	**/
	static public function add_collection_def(meta_graph_def:Dynamic, key:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic):Dynamic;
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
		
		Returns:
		  MetaGraphDef protocol buffer.
		
		Raises:
		  TypeError: If the arguments are not of the correct proto buffer type.
	**/
	static public function create_meta_graph_def(?meta_info_def:Dynamic, ?graph_def:Dynamic, ?saver_def:Dynamic, ?collection_list:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic):Dynamic;
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
		  graph: The `Graph` to import into. If `None`, use the default graph.
		  export_scope: Optional `string`. Name scope under which to extract
		    the subgraph. The scope name will be striped from the node definitions
		    for easy import later into new name scopes. If `None`, the whole graph
		    is exported. graph_def and export_scope cannot both be specified.
		  as_text: If `True`, writes the `MetaGraphDef` as an ASCII proto.
		  unbound_inputs_col_name: Optional `string`. If provided, a string collection
		    with the given name will be added to the returned `MetaGraphDef`,
		    containing the names of tensors that must be remapped when importing the
		    `MetaGraphDef`.
		  clear_devices: Boolean which controls whether to clear device information
		    before exporting the graph.
		  **kwargs: Optional keyed arguments, including meta_info_def,
		    saver_def, collection_list.
		
		Returns:
		  A `MetaGraphDef` proto and dictionary of `Variables` in the exported
		  name scope.
		
		Raises:
		  ValueError: When the `GraphDef` is larger than 2GB.
	**/
	static public function export_scoped_meta_graph(?filename:Dynamic, ?graph_def:Dynamic, ?graph:Dynamic, ?export_scope:Dynamic, ?as_text:Dynamic, ?unbound_inputs_col_name:Dynamic, ?clear_devices:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Recreates a `Graph` saved in a `MetaGraphDef` proto.
		
		This function takes a `MetaGraphDef` protocol buffer as input. If
		the argument is a file containing a `MetaGraphDef` protocol buffer ,
		it constructs a protocol buffer from the file content. The function
		then adds all the nodes from the `graph_def` field to the
		current graph, recreates the desired collections, and returns a saver
		constructed from the `saver_def` field.
		
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