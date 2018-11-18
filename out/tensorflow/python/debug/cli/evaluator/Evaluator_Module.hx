/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.evaluator;
@:pythonImport("tensorflow.python.debug.cli.evaluator") extern class Evaluator_Module {
	static public var _DEFAULT_DEBUG_OP : Dynamic;
	static public var _DEVICE_NAME_PREFIX_PATTERN : Dynamic;
	static public var _DUMP_TENSOR_PATTERN : Dynamic;
	static public var _EXEC_INDEX_SUFFIX_PATTERN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parse a debug tensor name in a to-be-evaluated expression.
		
		Args:
		  debug_tensor_name: name of the debug tensor, with or without
		    device name as a prefix, with or without debug op, with or
		    without '[<exec_index>]' as a suffix.
		    E.g., without device name prefix, without debug op suffix:
		      "hidden_0/MatMul:0"
		    E.g., with device name prefix:
		      "/job:worker/replica:0/task:1/gpu:0:hidden_0/MatMul:0"
		    E.g., with debug op suffix:
		      "hidden_0/MatMul:0:DebugNumericSummary"
		    E.g., with device name prefix and debug op suffix:
		      "/job:worker/replica:0/task:1/gpu:0:hidden_0/MatMul:0:DebugNumericSummary"
		    E.g., with device name prefix, debug op and an exec index:
		      "/job:worker/replica:0/task:1/gpu:0:hidden_0/MatMul:0:DebugNumericSummary[1]"
		
		Returns:
		  device_name: If device name prefix exists, the device name; otherwise,
		    `None`.
		  node_name: Name of the node.
		  output_slot: Output slot index as an `int`.
		  debug_op: If the debug op suffix exists, the debug op name; otheriwse,
		    `None`.
		  exec_index: Execution index (applicable to cases in which a debug tensor
		    is computed multiple times in a `tf.Session.run` call, e.g., due to
		    `tf.while_loop`). If the exec_index suffix does not exist, this value
		    defaults to `0`.
		
		Raises:
		  ValueError: If the input `debug_tensor_name` is malformed.
	**/
	static public function _parse_debug_tensor_name(debug_tensor_name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}