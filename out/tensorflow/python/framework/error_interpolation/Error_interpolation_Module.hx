/* This file is generated, do not edit! */
package tensorflow.python.framework.error_interpolation;
@:pythonImport("tensorflow.python.framework.error_interpolation") extern class Error_interpolation_Module {
	static public var _BAD_FILE_SUBSTRINGS : Dynamic;
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
		Return a summary of an op's colocation stack.
		
		Args:
		  name: The op name.
		  colocation_dict: The op._colocation_dict.
		  prefix:  An optional string prefix used before each line of the multi-
		      line string returned by this function.
		
		Returns:
		  A multi-line string similar to:
		      Node-device colocations active during op creation:
		        with tf.colocate_with(test_node_1): <test_1.py:27>
		        with tf.colocate_with(test_node_2): <test_2.py:38>
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
		Return index in op._traceback with first 'useful' frame.
		
		This method reads through the stack stored in op._traceback looking for the
		innermost frame which (hopefully) belongs to the caller.  It accomplishes this
		by rejecting frames whose filename appears to come from TensorFlow (see
		error_interpolation._BAD_FILE_SUBSTRINGS for the list of rejected substrings).
		
		Args:
		  op: the Operation object for which we would like to find the defining
		      location.
		
		Returns:
		  Integer index into op._traceback where the first non-TF file was found
		  (innermost to outermost), or 0 (for the outermost stack frame) if all files
		  came from TensorFlow.
	**/
	static public function _find_index_of_defining_frame_for_op(op:Dynamic):Dynamic;
	/**
		Find and return stack frame where op was defined.
	**/
	static public function _get_defining_frame_from_op(op:Dynamic):Dynamic;
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
	static public function _parse_message(message:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return a dictionary mapping interpolation tokens to values.
		
		Args:
		  op: op.Operation object having a _traceback member.
		
		Returns:
		  A dictionary mapping string tokens to string values.  The keys are shown
		  below along with example values.
		  {
		    "file": "tool_utils.py",
		    "line": "124",
		    "defined_at": " (defined at tool_utils.py:124)",
		    "colocations":
		        '''Node-device colocations active during op creation:
		             with tf.colocate_with(test_node_1): <test_1.py:27>
		             with tf.colocate_with(test_node_2): <test_2.py:38>'''
		    "devices":
		        '''Device assignments active during op 'foo' creation:
		             with tf.device(/cpu:0): <test_1.py:27>
		             with tf.device(some_func<foo.py, 123>): <test_2.py:38>'''
		    "devs_and_colocs": A concatenation of colocations and devices, e.g.
		        '''Node-device colocations active during op creation:
		             with tf.colocate_with(test_node_1): <test_1.py:27>
		             with tf.colocate_with(test_node_2): <test_2.py:38>'''
		           Device assignments active during op 'foo' creation:
		             with tf.device(/cpu:0): <test_1.py:27>
		             with tf.device(some_func<foo.py, 123>): <test_2.py:38>'''
		  }
	**/
	static public function compute_field_dict(op:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Interpolates an error message.
		
		The error message can contain tags of the form ^^type:name^^ which will
		be replaced.
		
		Args:
		  error_message: A string to interpolate.
		  graph: ops.Graph object containing all nodes referenced in the error
		      message.
		
		Returns:
		  The string with tags of the form {{type name}} interpolated.
	**/
	static public function interpolate(error_message:Dynamic, graph:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}