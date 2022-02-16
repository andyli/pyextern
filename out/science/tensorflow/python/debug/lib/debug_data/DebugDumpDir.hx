/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_data;
@:pythonImport("tensorflow.python.debug.lib.debug_data", "DebugDumpDir") extern class DebugDumpDir {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		  ValueError: If more than one core metadata file is found under the dump
		    root directory.
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
		  ValueError: If more than one core metadata file is found under the dump
		    root directory.
	**/
	public function new(dump_root:Dynamic, ?partition_graphs:Dynamic, ?validate:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Calculate the first timestamp across all devices.
	**/
	public function _calculate_t0():Dynamic;
	public function _collect_node_devices(debug_graph:Dynamic):Dynamic;
	/**
		Create maps from tensor watch keys to datum and to timestamps.
		
		Create a map from watch key (tensor name + debug op) to `DebugTensorDatum`
		item. Also make a map from watch key to relative timestamp.
		"relative" means (absolute timestamp - t0).
		
		Args:
		  device_name: (str) name of the device.
	**/
	public function _create_tensor_watch_maps(device_name:Dynamic):Dynamic;
	/**
		Obtain a DebugTensorDatum from the directory and file name.
		
		Args:
		  dir_name: (`str`) Name of the directory in which the dump file resides.
		  file_name: (`str`) Base name of the dump file.
		
		Returns:
		  (`DebugTensorDatum`) The `DebugTensorDatum` loaded from the dump file.
	**/
	public function _dump_file_name_to_datum(dir_name:Dynamic, file_name:Dynamic):Dynamic;
	public function _find_partition_graph(partition_graphs:Dynamic, device_name:Dynamic):Dynamic;
	/**
		Lazily get a list of Merge nodes on a given device.
	**/
	public function _get_merge_node_names(device_name:Dynamic):Dynamic;
	/**
		Infer the device name given node name.
		
		If device_name is provided (i.e., not None), it'll be simply returned right
		away.
		
		Args:
		  device_name: (str or None) name of the device. If None, will try to infer
		    the device name by looking at the available nodes.
		  node_name: (str) name of the node.
		
		Returns:
		  (str) Inferred name of the device, if available.
		
		Raises:
		  ValueError: If the node name does not exist on any of the available
		    devices or if there are multiple devices that contain the node with
		    the given name.
	**/
	public function _infer_device_name(device_name:Dynamic, node_name:Dynamic):Dynamic;
	/**
		Load the dump data for all devices.
	**/
	public function _load_all_device_dumps(partition_graphs:Dynamic, validate:Dynamic):Dynamic;
	public function _load_core_metadata():Dynamic;
	/**
		Load `DebugTensorDatum` instances from the dump root of a given device.
		
		Populates a map {device_name: a list of `DebugTensorDatum`}, where the list
		is sorted by ascending timestamp.
		
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
		  device_name: (`str`) name of the device.
		  device_root: (`str`) dump root directory of the given device.
		
		Raises:
		  ValueError: If GraphDef for the device is not available.
	**/
	public function _load_device_dumps(device_name:Dynamic, device_root:Dynamic):Dynamic;
	public function _load_feeds_info():Dynamic;
	public function _load_fetches_info():Dynamic;
	/**
		Load and process partition graphs.
		
		Load the graphs; parse the input and control input structure; obtain the
		device and op type of each node; remove the Copy and debug ops inserted
		by the debugger. The gathered information can be used to validate the
		tensor dumps.
		
		Args:
		  client_partition_graphs: A repeated field of GraphDefs representing the
		    partition graphs executed by the TensorFlow runtime, from the Python
		    client. These partition graphs are used only if partition graphs
		    cannot be loaded from the dump directory on the file system.
		  validate: (`bool`) Whether the dump files are to be validated against the
		    partition graphs.
		
		Raises:
		  ValueError: If the partition GraphDef of one or more devices fail to be
		    loaded.
	**/
	public function _load_partition_graphs(client_partition_graphs:Dynamic, validate:Dynamic):Dynamic;
	/**
		Determine whether pending inputs are satisfied at given timestamp.
		
		Note: This method mutates the input argument "pending".
		
		Args:
		  device_name: (str) device name.
		  pending: A list of 2-tuple (node_name, output_slot): the dependencies to
		    check.
		  timestamp: (int) the timestamp in question.
		  start_i: (int) the index in self._dump_tensor_data to start searching for
		    the timestamp.
		
		Returns:
		  (bool) Whether all the dependencies in pending are satisfied at the
		    timestamp. If pending is empty to begin with, return True.
	**/
	public function _satisfied_at_timestamp(device_name:Dynamic, pending:Dynamic, timestamp:Dynamic, ?start_i:Dynamic):Dynamic;
	/**
		Validate the dumped tensor data against the partition graphs.
		
		Only the watched nodes are validated by this method, because tfdbg allows
		clients to watch only a subset of the nodes.
		
		Args:
		  device_name: (`str`) device name.
		
		Raises:
		  LookupError: If the partition graphs have not been loaded yet.
		  ValueError: If dumps contain node names not found in partition graph.
		    Or if the temporal order of the dump's timestamps violate the
		    input relations on the partition graphs.
	**/
	public function _validate_dump_with_graphs(device_name:Dynamic):Dynamic;
	/**
		Metadata about the `Session.run()` call from the core runtime.
		
		Of the three counters available in the return value, `global_step` is
		supplied by the caller of the debugged `Session.run()`, while
		`session_run_index` and `executor_step_index` are determined by the state
		of the core runtime, automatically. For the same fetch list, feed keys and
		debug tensor watch options, the same executor will be used and
		`executor_step_index` should increase by one at a time. However, runs with
		different fetch lists, feed keys and debug_tensor watch options that all
		share the same `Session` object can lead to gaps in `session_run_index`.
		
		Returns:
		  If core metadata are loaded, a `namedtuple` with the fields:
		    `global_step`: A global step count supplied by the caller of
		      `Session.run()`. It is optional to the caller. If the caller did not
		      supply this parameter, its value will be -1.
		    `session_run_index`: A sorted index for Run() calls to the underlying
		      TensorFlow `Session` object.
		    `executor_step_index`: A counter for invocations of a given runtime
		      executor. The same executor is re-used for the same fetched tensors,
		      target nodes, input feed keys and debug tensor watch options.
		    `input_names`: Names of the input (feed) Tensors.
		    `output_names`: Names of the output (fetched) Tensors.
		    `target_nodes`: Names of the target nodes.
		  If the core metadata have not been loaded, `None`.
		  If more than one core metadata files exist, return a list of the
		    `nametuple` described above.
	**/
	public var core_metadata : Dynamic;
	/**
		Get all tensor watch keys of given node according to partition graphs.
		
		Args:
		  node_name: (`str`) name of the node.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  (`list` of `str`) all debug tensor watch keys. Returns an empty list if
		    the node name does not correspond to any debug watch keys.
		
		Raises:
		  `LookupError`: If debug watch information has not been loaded from
		    partition graphs yet.
	**/
	public function debug_watch_keys(node_name:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the list of device names.
		
		Returns:
		  (`list` of `str`) names of the devices.
	**/
	public function devices():Dynamic;
	/**
		Retrieve dumped tensor data.
	**/
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
		  device_name: optional device name.
		  exclude_node_names: Optional regular expression to exclude nodes with
		    names matching the regular expression.
		
		Returns:
		  A list of all `DebugTensorDatum` objects in this `DebugDumpDir` object
		   for which predicate returns True, sorted in ascending order of the
		   timestamp.
	**/
	public function find(predicate:Dynamic, ?first_n:Dynamic, ?device_name:Dynamic, ?exclude_node_names:Dynamic):Dynamic;
	/**
		Find a path between a source node and a destination node.
		
		Limitation: the source and destination are required to be on the same
		device, i.e., this method does not yet take into account Send/Recv nodes
		across devices.
		
		TODO(cais): Make this method work across device edges by tracing Send/Recv
		  nodes.
		
		Args:
		  src_node_name: (`str`) name of the source node or name of an output tensor
		    of the node.
		  dst_node_name: (`str`) name of the destination node or name of an output
		    tensor of the node.
		  include_control: (`bool`) whrther control edges are considered in the
		    graph tracing.
		  include_reversed_ref: Whether a ref input, say from A to B, is to be also
		    considered as an input from B to A. The rationale is that ref inputs
		    generally let the recipient (e.g., B in this case) mutate the value of
		    the source (e.g., A in this case). So the reverse direction of the ref
		    edge reflects the direction of information flow.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  A path from the src_node_name to dst_node_name, as a `list` of `str`, if
		  it exists. The list includes src_node_name as the first item and
		  dst_node_name as the last.
		  If such a path does not exist, `None`.
		
		Raises:
		  ValueError: If the source and destination nodes are not on the same
		    device.
	**/
	public function find_some_path(src_node_name:Dynamic, dst_node_name:Dynamic, ?include_control:Dynamic, ?include_reversed_ref:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the sizes of the dump files for a debug-dumped tensor.
		
		Unit of the file size: byte.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		  device_name: (`str`) name of the device. If there is only one device or if
		    the specified debug_watch_key exists on only one device, this argument
		    is optional.
		
		Returns:
		  (`list` of `int`): list of dump file sizes in bytes.
		
		Raises:
		  WatchKeyDoesNotExistInDebugDumpDirError: If the tensor watch key does not
		    exist in the debug dump data.
	**/
	public function get_dump_sizes_bytes(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic, ?device_name:Dynamic):Dynamic;
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
		  device_name: (`str`) name of the device. If there is only one device or if
		    the specified debug_watch_key exists on only one device, this argument
		    is optional.
		
		Returns:
		  (`list` of `int`) list of relative timestamps.
		
		Raises:
		  WatchKeyDoesNotExistInDebugDumpDirError: If the tensor watch key does not
		    exist in the debug dump data.
	**/
	public function get_rel_timestamps(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the file paths from a debug-dumped tensor.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		  device_name: (`str`) name of the device. If there is only one device or if
		    the specified debug_watch_key exists on only one device, this argument
		    is optional.
		
		Returns:
		  List of file path(s) loaded. This is a list because each debugged tensor
		    may be dumped multiple times.
		
		Raises:
		  WatchKeyDoesNotExistInDebugDumpDirError: If the tensor does not exist in
		    the debug-dump data.
	**/
	public function get_tensor_file_paths(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the tensor value from for a debug-dumped tensor.
		
		The tensor may be dumped multiple times in the dump root directory, so a
		list of tensors (`numpy.ndarray`) is returned.
		
		Args:
		  node_name: (`str`) name of the node that the tensor is produced by.
		  output_slot: (`int`) output slot index of tensor.
		  debug_op: (`str`) name of the debug op.
		  device_name: (`str`) name of the device. If there is only one device or if
		    the specified debug_watch_key exists on only one device, this argument
		    is optional.
		
		Returns:
		  List of tensors (`numpy.ndarray`) loaded from the debug-dump file(s).
		
		Raises:
		  WatchKeyDoesNotExistInDebugDumpDirError: If the tensor does not exist in
		    the debug-dump data.
	**/
	public function get_tensors(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Test whether partition graphs have been loaded.
	**/
	public function loaded_partition_graphs():Dynamic;
	/**
		Get the attributes of a node.
		
		Args:
		  node_name: Name of the node in question.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  Attributes of the node.
		
		Raises:
		  LookupError: If no partition graphs have been loaded.
	**/
	public function node_attributes(node_name:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the names of the devices that has nodes of the specified name.
		
		Args:
		  node_name: (`str`) name of the node.
		
		Returns:
		  (`str` or `list` of `str`) name of the device(s) on which the node of the
		    given name is found. Returns a `str` if there is only one such device,
		    otherwise return a `list` of `str`.
		
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
		  device_name: optional device name. If None, will search for the node
		    on all available devices. Otherwise, search for the node only on
		    the given device.
		
		Returns:
		  A boolean indicating whether the node exists.
		
		Raises:
		  LookupError: If no partition graphs have been loaded yet.
		  ValueError: If device_name is specified but cannot be found.
	**/
	public function node_exists(node_name:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the inputs of given node according to partition graphs.
		
		Args:
		  node_name: Name of the node.
		  is_control: (`bool`) Whether control inputs, rather than non-control
		    inputs, are to be returned.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  (`list` of `str`) inputs to the node, as a list of node names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
	**/
	public function node_inputs(node_name:Dynamic, ?is_control:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get the op type of given node.
		
		Args:
		  node_name: (`str`) name of the node.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  (`str`) op type of the node.
		
		Raises:
		  LookupError: If node op types have not been loaded
		     from partition graphs yet.
	**/
	public function node_op_type(node_name:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get recipient of the given node's output according to partition graphs.
		
		Args:
		  node_name: (`str`) name of the node.
		  is_control: (`bool`) whether control outputs, rather than non-control
		    outputs, are to be returned.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  (`list` of `str`) all inputs to the node, as a list of node names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
	**/
	public function node_recipients(node_name:Dynamic, ?is_control:Dynamic, ?device_name:Dynamic):Dynamic;
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
		
		Args:
		  device_name: (`str`) name of device. If None, all nodes from all available
		    devices will be included.
		
		Returns:
		  All nodes' names, as a list of str.
		
		Raises:
		  LookupError: If no partition graphs have been loaded.
		  ValueError: If specified node name does not exist.
	**/
	public function nodes(?device_name:Dynamic):Dynamic;
	/**
		Get the partition graphs.
		
		Returns:
		  Partition graphs as a list of GraphDef.
		
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
		Reconstruct partition graphs with the debugger-inserted ops stripped.
		
		The reconstructed partition graphs are identical to the original (i.e.,
		non-debugger-decorated) partition graphs except in the following respects:
		  1) The exact names of the runtime-inserted internal nodes may differ.
		     These include _Send, _Recv, _HostSend, _HostRecv, _Retval ops.
		  2) As a consequence of 1, the nodes that receive input directly from such
		     send- and recv-type ops will have different input names.
		  3) The parallel_iteration attribute of while-loop Enter ops are set to 1.
		
		Returns:
		  A dict mapping device names (`str`s) to reconstructed
		  `tf.compat.v1.GraphDef`s.
	**/
	public function reconstructed_non_debug_partition_graphs():Dynamic;
	/**
		Get a str representation of the feed_dict used in the Session.run() call.
		
		Returns:
		  If the information is available from one `Session.run` call, a `str`
		    obtained from `repr(feed_dict)`.
		  If the information is available from multiple `Session.run` calls, a
		    `list` of `str` obtained from `repr(feed_dict)`.
		  If the information is not available, `None`.
	**/
	public var run_feed_keys_info : Dynamic;
	/**
		Get a str representation of the fetches used in the Session.run() call.
		
		Returns:
		  If the information is available from one `Session.run` call, a `str`
		    obtained from `repr(fetches)`.
		  If the information is available from multiple `Session.run` calls, a
		    `list` of `str` from `repr(fetches)`.
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
		  (`int`) The total number of dumped tensors in the dump root directory.
	**/
	public var size : Dynamic;
	/**
		Absolute timestamp of the first dumped tensor across all devices.
		
		Returns:
		  (`int`) absolute timestamp of the first dumped tensor, in microseconds.
	**/
	public var t0 : Dynamic;
	/**
		Get the transitive inputs of given node according to partition graphs.
		
		Args:
		  node_name: Name of the node.
		  include_control: Include control inputs (True by default).
		  include_reversed_ref: Whether a ref input, say from A to B, is to be also
		    considered as an input from B to A. The rationale is that ref inputs
		    generally let the recipient (e.g., B in this case) mutate the value of
		    the source (e.g., A in this case). So the reverse direction of the ref
		    edge reflects the direction of information flow.
		  device_name: (`str`) name of the device. If there is only one device or if
		    node_name exists on only one device, this argument is optional.
		
		Returns:
		  (`list` of `str`) all transitive inputs to the node, as a list of node
		    names.
		
		Raises:
		  LookupError: If node inputs and control inputs have not been loaded
		     from partition graphs yet.
	**/
	public function transitive_inputs(node_name:Dynamic, ?include_control:Dynamic, ?include_reversed_ref:Dynamic, ?device_name:Dynamic):Dynamic;
	/**
		Get all `DebugTensorDatum` instances corresponding to a debug watch key.
		
		Args:
		  debug_watch_key: (`str`) debug watch key.
		  device_name: (`str`) name of the device. If there is only one device or if
		    the specified debug_watch_key exists on only one device, this argument
		    is optional.
		
		Returns:
		  A list of `DebugTensorDatum` instances that correspond to the debug watch
		  key. If the watch key does not exist, returns an empty list.
		
		Raises:
		  ValueError: If there are multiple devices that have the debug_watch_key,
		    but device_name is not specified.
	**/
	public function watch_key_to_data(debug_watch_key:Dynamic, ?device_name:Dynamic):Dynamic;
}