/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_data;
@:pythonImport("tensorflow.python.debug.lib.debug_data") extern class Debug_data_Module {
	static public var CORE_METADATA_TAG : Dynamic;
	static public var DEVICE_TAG : Dynamic;
	static public var FEED_KEYS_INFO_FILE_TAG : Dynamic;
	static public var FETCHES_INFO_FILE_TAG : Dynamic;
	static public var GRAPH_FILE_TAG : Dynamic;
	static public var HASH_TAG : Dynamic;
	static public var METADATA_FILE_PREFIX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get tensor name given node name and output slot index.
		
		Args:
		  node_name: Name of the node that outputs the tensor, as a string.
		  output_slot: Output slot index of the tensor, as an integer.
		
		Returns:
		  Name of the tensor, as a string.
	**/
	static public function _get_tensor_name(node_name:Dynamic, output_slot:Dynamic):Dynamic;
	/**
		Get the string representation of a debug watch on a tensor.
		
		Args:
		  node_name: Name of the node by which the watched tensor is produced, as a
		      string.
		  output_slot: Output slot index of the tensor, as an integer.
		  debug_op: Name of the debug op that is used to watch the tensor, as a
		      string.
		
		Returns:
		  A string representing the debug watch on the tensor (i.e., the "watch
		      key").
	**/
	static public function _get_tensor_watch_key(node_name:Dynamic, output_slot:Dynamic, debug_op:Dynamic):Dynamic;
	static public function _glob(glob_pattern:Dynamic):Dynamic;
	static public function _is_graph_file(file_name:Dynamic):Dynamic;
	static public function _is_run_feed_keys_info_file(file_name:Dynamic):Dynamic;
	static public function _is_run_fetches_info_file(file_name:Dynamic):Dynamic;
	static public function _load_graph_def_from_event_file(event_file_path:Dynamic):Dynamic;
	static public function _load_log_message_from_event_file(event_file_path:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Convert device name to device path.
	**/
	static public function device_name_to_device_path(device_name:Dynamic):Dynamic;
	/**
		Parse device name from device path.
		
		Args:
		  device_dir: (str) a directory name for the device.
		
		Returns:
		  (str) parsed device name.
	**/
	static public function device_path_to_device_name(device_dir:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function extract_core_metadata_from_event_proto(event:Dynamic):Dynamic;
	/**
		A predicate for whether a tensor consists of any bad numerical values.
		
		This predicate is common enough to merit definition in this module.
		Bad numerical values include `nan`s and `inf`s.
		The signature of this function follows the requirement of the method
		`DebugDumpDir.find()`.
		
		Args:
		  datum: (`DebugTensorDatum`) Datum metadata.
		  tensor: (`numpy.ndarray` or None) Value of the tensor. None represents
		    an uninitialized tensor.
		
		Returns:
		  (`bool`) True if and only if tensor consists of any nan or inf values.
	**/
	static public function has_inf_or_nan(datum:Dynamic, tensor:Dynamic):Dynamic;
	/**
		Load a tensor from an Event proto.
		
		Args:
		  event: The Event proto, assumed to hold a tensor value in its
		      summary.value[0] field.
		
		Returns:
		  The tensor value loaded from the event file, as a `numpy.ndarray`, if
		  representation of the tensor value by a `numpy.ndarray` is possible.
		  For uninitialized Tensors, returns `None`. For Tensors of data types that
		  cannot be represented as `numpy.ndarray` (e.g., `tf.resource`), return
		  the `TensorProto` protobuf object without converting it to a
		  `numpy.ndarray`.
	**/
	static public function load_tensor_from_event(event:Dynamic):Dynamic;
	/**
		Load a tensor from an event file.
		
		Assumes that the event file contains a `Event` protobuf and the `Event`
		protobuf contains a `Tensor` value.
		
		Args:
		  event_file_path: (`str`) path to the event file.
		
		Returns:
		  The tensor value loaded from the event file, as a `numpy.ndarray`. For
		  uninitialized Tensors, returns `None`. For Tensors of data types that
		  cannot be converted to `numpy.ndarray` (e.g., `tf.resource`), return
		  `None`.
	**/
	static public function load_tensor_from_event_file(event_file_path:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}