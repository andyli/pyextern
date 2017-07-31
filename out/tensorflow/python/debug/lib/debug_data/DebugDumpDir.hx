/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_data;
@:pythonImport("tensorflow.python.debug.lib.debug_data", "DebugDumpDir") extern class DebugDumpDir {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		`DebugDumpDir` constructor.
		
		Args:
		  dump_root: (`str`) path to the dump root directory.
		  partition_graphs: A repeated field of GraphDefs representing the
		      partition graphs executed by the TensorFlow runtime.
		  validate: (`bool`) whether the dump files are to be validated against the
		      partition graphs.
		
		Raises:
		  IOError: If dump_root does not exist as a directory.
	**/
	@:native("__init__")
	public function ___init__(dump_root:Dynamic, ?partition_graphs:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		`DebugDumpDir` constructor.
		
		Args:
		  dump_root: (`str`) path to the dump root directory.
		  partition_graphs: A repeated field of GraphDefs representing the
		      partition graphs executed by the TensorFlow runtime.
		  validate: (`bool`) whether the dump files are to be validated against the
		      partition graphs.
		
		Raises:
		  IOError: If dump_root does not exist as a directory.
	**/
	public function new(dump_root:Dynamic, ?partition_graphs:Dynamic, ?validate:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Create maps from tensor watch keys to datum and to timestamps.
		
		Create a map from watch key (tensor name + debug op) to `DebugTensorDatum`
		item. Also make a map from watch key to relative timestamp.
		"relative" means (absolute timestamp - t0).
	**/
	public function _create_tensor_watch_maps():Dynamic;
	/**
		Obtain a DebugTensorDatum from the directory and file name.
		
		Args:
		  dir_name: (`str`) Name of the directory in which the dump file resides.
		  file_name: (`str`) Base name of the dump file.
		
		Returns:
		  (`DebugTensorDatum`) The `DebugTensorDatum` loaded from the dump file.
	**/
	public function _dump_file_name_to_datum(dir_name:Dynamic, file_name:Dynamic):Dynamic;
	public function _load_core_metadata(event_file_path:Dynamic):Dynamic;
	/**
		Load `DebugTensorDatum` instances from the dump root.
		
		Populates a list of `DebugTensorDatum` instance and sorts the list by
		ascending timestamp.
		
		This sorting order reflects the order in which the TensorFlow executor
		processed the nodes of the graph. It is (one of many possible) topological
		sort of the nodes. This is useful for displaying tensors in the debugger
		frontend as well as for the use case in which the user wants to find a
		"culprit tensor", i.e., the first tensor in the graph that exhibits certain
		problematic properties, i.e., all zero values, or bad numerical values such
		as nan and inf.
		
		In addition, creates a map from node name to debug watches. In this Map,
		the key is the watched node name; the value is a dictionary.
		Of this dictionary, the key is the watched_output_slot.
		
		This method attempts to load the debug watches from the tensor dump files
		first, before loading the full set of debug watches from the partition
		graphs as done later. This is necessary because sometimes the partition
		graphs may not be available, e.g., when the run errors out.
		
		Args:
		  dump_root: (`str`) Dump root directory.
	**/
	public function _load_dumps(dump_root:Dynamic):Dynamic;
	/**
		Load and process partition graphs.
		
		Load the graphs; parse the input and control input structure; obtain the
		device and op type of each node; remove the Copy and debug ops inserted
		by the debugger. The gathered information can be used to validate the
		tensor dumps.
		
		Args:
		  partition_graphs: Partition graphs executed by the TensorFlow runtime,
		    represented as repeated fields of GraphDef.
		    If no partition_graph is available, use None.
		  validate: (`bool`) Whether the dump files are to be validated against the
		    partition graphs.
	**/
	public function _load_partition_graphs(partition_graphs:Dynamic, validate:Dynamic):Dynamic;
	/**
		Populate the map from node name to recipient(s) of its output(s).
	**/
	public function _populate_recipient_maps():Dynamic;
	/**
		Process a node from the partition graphs.
		
		Args:
		  node: (NodeDef) A partition-graph node to be processed.
		
		Raises:
		  ValueError: If duplicate node names are encountered.
	**/
	public function _process_partition_graph_node(node:Dynamic):Dynamic;
	/**
		Prune control edges related to the debug ops.
	**/
	public function _prune_control_edges_of_debug_ops():Dynamic;
	/**
		Prune nodes out of input and recipient maps.
		
		Args:
		  nodes_to_prune: (`list` of `str`) Names of the nodes to be pruned.
	**/
	public function _prune_nodes_from_input_and_recipient_maps(nodes_to_prune:Dynamic):Dynamic;
	/**
		Prune (non-control) edges related to debug ops.
		
		Prune the Copy ops and associated _Send ops inserted by the debugger out
		from the non-control inputs and output recipients map. Replace the inputs
		and recipients with original ones.
	**/
	public function _prune_non_control_edges_of_debug_ops():Dynamic;
	/**
		Determine whether pending inputs are satisfied at given timestamp.
		
		Note: This method mutates the input argument "pending".
		
		Args:
		  pending: A list of 2-tuple (node_name, output_slot): the dependencies to
		    check.
		  timestamp: (int) the timestamp in question.
		  start_i: (int) the index in self._dump_tensor_data to start searching for
		    the timestamp.
		
		Returns:
		  (bool) Whether all the dependencies in pending are satisfied at the
		    timestamp. If pending is empty to begin with, return True.
	**/
	public function _satisfied_at_timestamp(pending:Dynamic, timestamp:Dynamic, ?start_i:Dynamic):Dynamic;
	/**
		Validate the dumped tensor data against the partition graphs.
		
		Only the watched nodes are validated by this method, because tfdbg allows
		clients to watch only a subset of the nodes.
		
		Raises:
		  LookupError: If the partition graphs have not been loaded yet.
		  ValueError: If dumps contain node names not found in partition graph.
		    Or if the temporal order of the dump's timestamps violate the
		    input relations on the partition graphs.
	**/
	public function _validate_dump_with_graphs():Dynamic;
	/**
		Metadata about the `Session.run()` call from the core runtime.
		
		Of the three counters available in the return value, `global_step` is
		supplied by the caller of the debugged `Session.run()`, while
		`session_run_count` and `executor_step_count` are determined by the state
		of the core runtime, automatically. For the same fetch list, feed keys and
		debug tensor watch options, the same executor will be used and
		`executor_step_count` should increase by one at a time. However, runs with
		different fetch lists, feed keys and debug_tensor watch options that all
		share the same `Session` object can lead to gaps in `session_run_count`.
		
		Returns:
		  If core metadata are loaded, a `namedtuple` with the fields:
		    `global_step`: A global step count supplied by the caller of
		      `Session.run()`. It is optional to the caller. If the caller did not
		      supply this parameter, its value will be -1.
		    `session_run_count`: A counter for Run() calls to the underlying
		      TensorFlow `Session` object.
		    `executor_step_count`: A counter for invocations of a given runtime
		      executor. The same executor is re-used for the same fetched tensors,
		      target nodes, input feed keys and debug tensor watch options.
		    `input_names`: Names of the input (feed) Tensors.
		    `output_names`: Names of the output (fetched) Tensors.
		    `target_nodes`: Names of the target nodes.
		  If the core metadata have not been loaded, `None`.
	**/
	public var core_metadata : Dynamic;
	/**
		Get all tensor watch keys of given node according to partition graphs.
		
		Args:
		  node_name: (`str`) name of the node.
		
		Returns:
		  (`list` of `str`) all debug tensor watch keys. Returns an empty list if
		    the node name does not correspond to any debug watch keys.
		
		Raises:
		  `LookupError`: If debug watch information has not been loaded from
		    partition graphs yet.
	**/
	public function debug_watch_keys(node_name:Dynamic):Dynamic;
	/**
		Get the list of devices.
		
		Returns:
		  (`list` of `str`) names of the devices.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
	**/
	public function devices():Dynamic;
	public var dumped_tensor_data : Dynamic;
	/**
		Find dumped tensor data by a certain predicate.
		
		Args:
		  predicate: A callable that takes two input arguments:
		
		    ```python
		    def predicate(debug_tensor_datum, tensor):
		      # returns a bool
		    ```
		
		    where `debug_tensor_datum` is an instance of `DebugTensorDatum`, which
		    carries the metadata, such as the `Tensor`'s node name, output slot
		    timestamp, debug op name, etc.; and `tensor` is the dumped tensor value
		    as a `numpy.ndarray`.
		  first_n: (`int`) return only the first n `DebugTensotDatum` instances (in
		    time order) for which the predicate returns True. To return all the
		    `DebugTensotDatum` instances, let first_n be <= 0.
		
		Returns:
		  A list of all `DebugTensorDatum` objects in this `DebugDumpDir` object
		   for which predicate returns True, sorted in ascending order of the
		   timestamp.
	**/
	public function find(predicate:Dynamic, ?first_n:Dynamic):Dynamic;
	/**
		Get the sizes of the dump files for a debug-dumped tensor.
		
		Unit of the file size: byte.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		
		Returns:
		  (`list` of `int`): list of dump file sizes in bytes.
		
		Raises:
		  ValueError: If the tensor watch key does not exist in the debug dump data.
	**/
	public function get_dump_sizes_bytes(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	/**
		Get the relative timestamp from for a debug-dumped tensor.
		
		Relative timestamp means (absolute timestamp - `t0`), where `t0` is the
		absolute timestamp of the first dumped tensor in the dump root. The tensor
		may be dumped multiple times in the dump root directory, so a list of
		relative timestamps (`numpy.ndarray`) is returned.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		
		Returns:
		  (`list` of `int`) list of relative timestamps.
		
		Raises:
		  ValueError: If the tensor watch key does not exist in the debug dump data.
	**/
	public function get_rel_timestamps(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	/**
		Get the file paths from a debug-dumped tensor.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		
		Returns:
		  List of file path(s) loaded. This is a list because each debugged tensor
		    may be dumped multiple times.
		
		Raises:
		  ValueError: If the tensor does not exist in the debug-dump data.
	**/
	public function get_tensor_file_paths(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	/**
		Get the tensor value from for a debug-dumped tensor.
		
		The tensor may be dumped multiple times in the dump root directory, so a
		list of tensors (`numpy.ndarray`) is returned.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		
		Returns:
		  List of tensors (`numpy.ndarray`) loaded from the debug-dump file(s).
		
		Raises:
		  ValueError: If the tensor does not exist in the debug-dump data.
	**/
	public function get_tensors(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	/**
		Test whether partition graphs have been loaded.
	**/
	public function loaded_partition_graphs():Dynamic;
	/**
		Get the attributes of a node.
		
		Args:
		  node_name: Name of the node in question.
		
		Returns:
		  Attributes of the node.
		
		Raises:
		  LookupError: If no partition graphs have been loaded.
		  ValueError: If no node named node_name exists.
	**/
	public function node_attributes(node_name:Dynamic):Dynamic;
	/**
		Get the device of a node.
		
		Args:
		  node_name: (`str`) name of the node.
		
		Returns:
		  (`str`) name of the device on which the node is placed.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
		  ValueError: If the node does not exist in partition graphs.
	**/
	public function node_device(node_name:Dynamic):Dynamic;
	/**
		Test if a node exists in the partition graphs.
		
		Args:
		  node_name: (`str`) name of the node to be checked.
		
		Returns:
		  A boolean indicating whether the node exists.
		
		Raises:
		  LookupError: If no partition graphs have been loaded yet.
	**/
	public function node_exists(node_name:Dynamic):Dynamic;
	/**
		Get the inputs of given node according to partition graphs.
		
		Args:
		  node_name: Name of the node.
		  is_control: (`bool`) Whether control inputs, rather than non-control
		    inputs, are to be returned.
		
		Returns:
		  (`list` of `str`) inputs to the node, as a list of node names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
		  ValueError: If the node does not exist in partition graphs.
	**/
	public function node_inputs(node_name:Dynamic, ?is_control:Dynamic):Dynamic;
	/**
		Get the op type of given node.
		
		Args:
		  node_name: (`str`) name of the node.
		
		Returns:
		  (`str`) op type of the node.
		
		Raises:
		  LookupError: If node op types have not been loaded
		     from partition graphs yet.
		  ValueError: If the node does not exist in partition graphs.
	**/
	public function node_op_type(node_name:Dynamic):Dynamic;
	/**
		Get recipient of the given node's output according to partition graphs.
		
		Args:
		  node_name: (`str`) name of the node.
		  is_control: (`bool`) whether control outputs, rather than non-control
		    outputs, are to be returned.
		
		Returns:
		  (`list` of `str`) all inputs to the node, as a list of node names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
		  ValueError: If the node does not exist in partition graphs.
	**/
	public function node_recipients(node_name:Dynamic, ?is_control:Dynamic):Dynamic;
	/**
		Try to retrieve the Python traceback of node's construction.
		
		Args:
		  element_name: (`str`) Name of a graph element (node or tensor).
		
		Returns:
		  (list) The traceback list object as returned by the `extract_trace`
		    method of Python's traceback module.
		
		Raises:
		  LookupError: If Python graph is not available for traceback lookup.
		  KeyError: If the node cannot be found in the Python graph loaded.
	**/
	public function node_traceback(element_name:Dynamic):Dynamic;
	/**
		Get a list of all nodes from the partition graphs.
		
		Returns:
		  All nodes' names, as a list of str.
		
		Raises:
		  LookupError: If no partition graphs have been loaded.
	**/
	public function nodes():Dynamic;
	/**
		Get the partition graphs.
		
		Returns:
		  Partition graphs as repeated fields of GraphDef.
		
		Raises:
		  LookupError: If no partition graphs have been loaded.
	**/
	public function partition_graphs():Dynamic;
	/**
		Get the Python graph.
		
		Returns:
		  If the Python graph has been set, returns a `tf.Graph` object. Otherwise,
		  returns None.
	**/
	public var python_graph : Dynamic;
	/**
		Get a str representation of the feed_dict used in the Session.run() call.
		
		Returns:
		  If the information is available, a `str` obtained from `repr(feed_dict)`.
		  If the information is not available, `None`.
	**/
	public var run_feed_keys_info : Dynamic;
	/**
		Get a str representation of the fetches used in the Session.run() call.
		
		Returns:
		  If the information is available, a `str` obtained from `repr(fetches)`.
		  If the information is not available, `None`.
	**/
	public var run_fetches_info : Dynamic;
	/**
		Provide Python `Graph` object to the wrapper.
		
		Unlike the partition graphs, which are protobuf `GraphDef` objects, `Graph`
		is a Python object and carries additional information such as the traceback
		of the construction of the nodes in the graph.
		
		Args:
		  python_graph: (ops.Graph) The Python Graph object.
	**/
	public function set_python_graph(python_graph:Dynamic):Dynamic;
	/**
		Total number of dumped tensors in the dump root directory.
		
		Returns:
		  (`int`) total number of dumped tensors in the dump root directory.
	**/
	public var size : Dynamic;
	/**
		Absolute timestamp of the first dumped tensor.
		
		Returns:
		  (`int`) absolute timestamp of the first dumped tensor, in microseconds.
	**/
	public var t0 : Dynamic;
	/**
		Get the transitive inputs of given node according to partition graphs.
		
		Args:
		  node_name: Name of the node
		  include_control: Include control inputs (True by default).
		
		Returns:
		  (`list` of `str`) all transitive inputs to the node, as a list of node
		    names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
		  ValueError: If the node does not exist in partition graphs.
	**/
	public function transitive_inputs(node_name:Dynamic, ?include_control:Dynamic):Dynamic;
	/**
		Get all `DebugTensorDatum` instances corresponding to a debug watch key.
		
		Args:
		  debug_watch_key: (`str`) debug watch key.
		
		Returns:
		  A list of `DebugTensorDatum` instances that correspond to the debug watch
		  key. If the watch key does not exist, returns an empty list.
		
		Raises:
		  ValueError: If the debug watch key does not exist.
	**/
	public function watch_key_to_data(debug_watch_key:Dynamic):Dynamic;
}