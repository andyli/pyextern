/* This file is generated, do not edit! */
package tensorflow.python.framework.error_interpolation;
@:pythonImport("tensorflow.python.framework.error_interpolation") extern class Error_interpolation_Module {
	static public var _EXTERNAL_FILENAME_PATTERNS : Dynamic;
	static public var _FRAMEWORK_COMMON_PREFIX : Dynamic;
	static public var _FRAMEWORK_FILENAME_PATTERNS : Dynamic;
	static public var _FRAMEWORK_PATH_PREFIXES : Dynamic;
	static public var _INTERPOLATION_PATTERN : Dynamic;
	static public var _INTERPOLATION_REGEX : Dynamic;
	static public var _NAME_REGEX : Dynamic;
	static public var _TAG_REGEX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the formatted error message for the given op.
		
		Args:
		  op: The node.
		  input_ops: The input nodes to the 'op' node
		
		Returns:
		  The formatted error message for the given op. The error message also
		  includes the information about the input sources for the given op.
	**/
	static public function _build_error_message(op:Dynamic, input_ops:Dynamic):Dynamic;
	/**
		Return a summary of an op's colocation stack.
		
		Args:
		  name: The op name.
		  colocation_dict: The op._colocation_dict.
		  prefix:  An optional string prefix used before each line of the multi-
		      line string returned by this function.
		
		Returns:
		  A multi-line string similar to:
		      Node-device colocations active during op creation:
		        with tf.compat.v1.colocate_with(test_node_1): <test_1.py:27>
		        with tf.compat.v1.colocate_with(test_node_2): <test_2.py:38>
		  The first line will have no padding to its left by default.  Subsequent
		  lines will have two spaces of left-padding.  Use the prefix argument
		  to increase indentation.
	**/
	static public function _compute_colocation_summary_from_dict(name:Dynamic, colocation_dict:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Fetch colocation file, line, and nesting and return a summary string.
	**/
	static public function _compute_colocation_summary_from_op(op:Dynamic, ?prefix:Dynamic):Dynamic;
	static public function _compute_device_assignment_summary_from_op(op:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Return a summary of an op's device function stack.
		
		Args:
		  name: The name of the op.
		  device_assignment_list: The op._device_assignments list.
		  prefix:  An optional string prefix used before each line of the multi-
		      line string returned by this function.
		
		Returns:
		  A multi-line string similar to:
		      Device assignments active during op 'foo' creation:
		        with tf.device(/cpu:0): <test_1.py:27>
		        with tf.device(some_func<foo.py, 123>): <test_2.py:38>
		  The first line will have no padding to its left by default.  Subsequent
		  lines will have two spaces of left-padding.  Use the prefix argument
		  to increase indentation.
	**/
	static public function _compute_device_summary_from_list(name:Dynamic, device_assignment_list:Dynamic, ?prefix:Dynamic):Dynamic;
	/**
		Return a dictionary mapping interpolation tokens to values.
		
		Args:
		  op: op.Operation object having a _traceback member.
		
		Returns:
		  A dictionary mapping string tokens to string values.  The keys are shown
		  below along with example values.
		  {
		    "file": "tool_utils.py",
		    "lineno": "124",
		    "line": "  source code line",
		    "defined_at": " (defined at tool_utils.py:124)",
		    "colocations":
		        '''Node-device colocations active during op creation:
		             with tf.compat.v1.colocate_with(test_node_1): <test_1.py:27>
		             with tf.compat.v1.colocate_with(test_node_2): <test_2.py:38>'''
		    "devices":
		        '''Device assignments active during op 'foo' creation:
		             with tf.device(/cpu:0): <test_1.py:27>
		             with tf.device(some_func<foo.py, 123>): <test_2.py:38>'''
		    "devs_and_colocs": A concatenation of colocations and devices, e.g.
		        '''Node-device colocations active during op creation:
		             with tf.compat.v1.colocate_with(test_node_1): <test_1.py:27>
		             with tf.compat.v1.colocate_with(test_node_2): <test_2.py:38>'''
		           Device assignments active during op 'foo' creation:
		             with tf.device(/cpu:0): <test_1.py:27>
		             with tf.device(some_func<foo.py, 123>): <test_2.py:38>'''
		  }
	**/
	static public function _compute_field_dict(op:Dynamic):Dynamic;
	/**
		Return a list of frames, which form a 'useful' stack.
		
		Starting from the defining frame to the outermost one, this method computes
		the contiguous portion of the 'useful' stack trace and returns the selected
		frames.
		
		Args:
		  tb: A list of traceback frames (as from Operation.traceback).
		  num: total number of frames to return.
		
		Returns:
		  A list of frames.
	**/
	static public function _compute_useful_frames(tb:Dynamic, num:Dynamic):Dynamic;
	/**
		Return index in op.traceback with first 'useful' frame.
		
		This method reads through the stack stored in op.traceback looking for the
		innermost frame which (hopefully) belongs to the caller.  It accomplishes this
		by rejecting frames deemed to be part of the TensorFlow framework (by
		pattern matching the filename).
		
		Args:
		  tb: A list of traceback frames (as from Operation.traceback).
		
		Returns:
		  Integer index into op.traceback where the first non-TF file was found
		  (innermost to outermost), or 0 (for the outermost stack frame) if all files
		  came from TensorFlow.
	**/
	static public function _find_index_of_defining_frame(tb:Dynamic):Dynamic;
	/**
		Gets the input ops for op.
		
		We do a best effort and may not always find all input Ops.
		
		Args:
		  op: The op node.
		  graph: The graph containing the node.
		
		Returns:
		  A list of (ind_inp, op_inp).
		  ind_inp: index in the input list.
		  op_inp: op_inp, the input Op at ind_inp in the input list.
	**/
	static public function _get_input_ops_for_op(op:Dynamic, graph:Dynamic):Dynamic;
	/**
		Returns whether a filename should be considered a part of the framework.
		
		A file is part of the framework if it does not match a pattern in
		_EXTERNAL_FILENAME_PATTERNS and it either matches a pattern in
		_FRAMEWORK_FILENAME_PATTERNS or starts with a _FRAMEWORK_PATH_PREFIXES prefix.
		
		Args:
		  filename: A filename string.
		
		Returns:
		  Whether the filename should be considered to be internal to the
		  TensorFlow framework for the purposes of reporting errors.
	**/
	static public function _is_framework_filename(filename:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Construct and returns a `GraphDebugInfo` protocol buffer.
		
		Args:
		  func_named_operations: An iterable of (func_name, op.Operation) tuples
		    where the Operation instances have a _traceback members. The func_name
		    should be the empty string for operations in the top-level Graph.
		
		Returns:
		  GraphDebugInfo protocol buffer.
		
		Raises:
		  TypeError: If the arguments are not of the correct proto buffer type.
	**/
	static public function create_graph_debug_info_def(func_named_operations:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Interpolates an error message.
		
		The error message can contain tags of the form `{{type name}}` which will be
		replaced. For example: "{{node <name>}}" would get expanded to:
		"node <name>(defined at <path>)".
		
		Args:
		  error_message: A string to interpolate.
		  graph: ops.Graph object containing all nodes referenced in the error
		      message.
		
		Returns:
		  The string with tags of the form {{type name}} interpolated.
	**/
	static public function interpolate(error_message:Dynamic, graph:Dynamic):Dynamic;
	/**
		Parses the message.
		
		Splits the message into separators and tags. Tags are named tuples
		representing the string {{type name}} and they are separated by
		separators. For example, in "123{{node Foo}}456{{node Bar}}789", there are
		two tags and three separators. The separators are the numeric characters.
		
		Args:
		  message: String to parse
		
		Returns:
		  (list of separator strings, list of _ParseTags).
		
		  For example, if message is "123{{node Foo}}456" then this function
		  returns (["123", "456"], [_ParseTag("node", "Foo")])
	**/
	static public function parse_message(message:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}