/* This file is generated, do not edit! */
package tensorflow.python.debug.lib.debug_events_reader;
@:pythonImport("tensorflow.python.debug.lib.debug_events_reader") extern class Debug_events_reader_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert a DebugEvent proto into an ExecutionDigest data object.
	**/
	static public function _execution_digest_from_debug_event_proto(debug_event:Dynamic, locator:Dynamic):Dynamic;
	/**
		Convert a DebugEvent proto into an Execution data object.
	**/
	static public function _execution_from_debug_event_proto(debug_event:Dynamic, locator:Dynamic):Dynamic;
	/**
		Helper method for reading a tensor value from a tensor proto.
		
		The rationale for the distinction between `True` and `False value of
		`return_list` is as follows:
		- `return_list=True` is used for TensorDebugMode values other than
		  FULL_TENSOR, e.g., CONCISE_HEALTH, SHAPE and FULL_HEATLH. Under
		  those modes, the value is guaranteed (by contract) to be a 1D float64
		  tensor.
		- `return_list=False` is used for the FULL_HEALTH TensorDebugMode
		  specifically. Instead, we use `numpy.ndarray` to maximally preserve
		  the shape, dtype and value information regarding the underlying tensor
		  value. Under that mode, we don't use a python list to represent the
		  tensor value because that can lead to loss of information (e.g., both
		  float16 and float32 dtypes get mapped to Python floats).
		
		Args:
		  tensor_proto: The TensorProto instance from which the tensor value will be
		    loaded.
		  return_list: Whether the return value will be a nested Python list that
		    comes out from `numpy.ndarray.tolist()`.
		
		Returns:
		  If parsing is successful, the tensor value as a `numpy.ndarray` or the
		    nested Python list converted from it.
		  If parsing fails, `None`.
	**/
	static public function _parse_tensor_value(tensor_proto:Dynamic, ?return_list:Dynamic):Dynamic;
	static public function _tuple_or_none(data:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}