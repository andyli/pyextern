/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.analyzer_cli;
@:pythonImport("tensorflow.python.debug.cli.analyzer_cli", "DebugAnalyzer") extern class DebugAnalyzer {
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
		DebugAnalyzer constructor.
		
		Args:
		  debug_dump: A DebugDumpDir object.
	**/
	@:native("__init__")
	public function ___init__(debug_dump:Dynamic):Dynamic;
	/**
		DebugAnalyzer constructor.
		
		Args:
		  debug_dump: A DebugDumpDir object.
	**/
	public function new(debug_dump:Dynamic):Void;
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
		Perform depth-first search (DFS) traversal of a node's input tree.
		
		It recursively tracks the inputs (or output recipients) of the node called
		node_name, and append these inputs (or output recipients) to a list of text
		lines (lines) with proper indentation that reflects the recursion depth,
		together with some formatting attributes (to attr_segs). The formatting
		attributes can include command shortcuts, for example.
		
		Args:
		  lines: Text lines to append to, as a list of str.
		  attr_segs: (dict) Attribute segments dictionary to append to.
		  node_name: Name of the node, as a str. This arg is updated during the
		    recursion.
		  tracker: A callable that takes one str as the node name input and
		    returns a list of str as the inputs/outputs.
		    This makes it this function general enough to be used with both
		    node-input and node-output tracking.
		  max_depth: Maximum recursion depth, as an int.
		  depth: Current recursion depth. This arg is updated during the
		    recursion.
		  unfinished: A stack of unfinished recursion depths, as a list of int.
		  include_control: Whether control dependencies are to be included as
		    inputs (and marked as such).
		  show_op_type: Whether op type of the input nodes are to be displayed
		    alongside the nodes' names.
		  command_template: (str) Template for command shortcut of the node names.
	**/
	public function _dfs_from_node(lines:Dynamic, attr_segs:Dynamic, node_name:Dynamic, tracker:Dynamic, max_depth:Dynamic, depth:Dynamic, unfinished:Dynamic, ?include_control:Dynamic, ?show_op_type:Dynamic, ?command_template:Dynamic):Dynamic;
	/**
		List neighbors (inputs or recipients) of a node.
		
		Args:
		  neighbor_type: ("input" | "recipient")
		  non_ctrls: Non-control neighbor node names, as a list of str.
		  ctrls: Control neighbor node names, as a list of str.
		
		Returns:
		  A RichTextLines object.
	**/
	public function _format_neighbors(neighbor_type:Dynamic, non_ctrls:Dynamic, ctrls:Dynamic):Dynamic;
	/**
		Helper function used by list_inputs and list_outputs.
		
		Format a list of lines to display the inputs or output recipients of a
		given node.
		
		Args:
		  recursive: Whether the listing is to be done recursively, as a boolean.
		  node_name: The name of the node in question, as a str.
		  depth: Maximum recursion depth, applies only if recursive == True, as an
		    int.
		  control: Whether control inputs or control recipients are included, as a
		    boolean.
		  op_type: Whether the op types of the nodes are to be included, as a
		    boolean.
		  do_outputs: Whether recipients, instead of input nodes are to be
		    listed, as a boolean.
		
		Returns:
		  Input or recipient tree formatted as a RichTextLines object.
	**/
	public function _list_inputs_or_outputs(recursive:Dynamic, node_name:Dynamic, depth:Dynamic, control:Dynamic, op_type:Dynamic, ?do_outputs:Dynamic):Dynamic;
	/**
		List neighbors (inputs or recipients) of a node.
		
		Args:
		  node_name: Name of the node of which the attributes are to be listed.
		
		Returns:
		  A RichTextLines object.
	**/
	public function _list_node_attributes(node_name:Dynamic):Dynamic;
	/**
		List dumped tensor data from a node.
		
		Args:
		  node_name: Name of the node of which the attributes are to be listed.
		
		Returns:
		  A RichTextLines object.
	**/
	public function _list_node_dumps(node_name:Dynamic):Dynamic;
	/**
		Make a table summarizing the source files that create nodes and tensors.
		
		Args:
		  source_list: List of source files and related information as a list of
		    tuples (file_path, is_tf_library, num_nodes, num_tensors, num_dumps,
		    first_line).
		  is_tf_py_library: (`bool`) whether this table is for files that belong
		    to the TensorFlow Python library.
		
		Returns:
		  The table as a `debugger_cli_common.RichTextLines` object.
	**/
	public function _make_source_table(source_list:Dynamic, is_tf_py_library:Dynamic):Dynamic;
	/**
		Determine the maximum widths of the timestamp and op-type column.
		
		This method assumes that data is sorted in the default order, i.e.,
		by ascending timestamps.
		
		Args:
		  data: (list of DebugTensorDaum) the data based on which the maximum
		    column widths will be determined.
		
		Returns:
		  (int) maximum width of the timestamp column. 0 if data is empty.
		  (int) maximum width of the dump size column. 0 if data is empty.
		  (int) maximum width of the op type column. 0 if data is empty.
	**/
	public function _measure_tensor_list_column_widths(data:Dynamic):Dynamic;
	public function _reconstruct_print_source_command(parsed:Dynamic, ?line_begin_decrease:Dynamic, ?max_elements_per_line_increase:Dynamic):Dynamic;
	/**
		Render traceback of a node's creation in Python, if available.
		
		Args:
		  node_name: (str) name of the node.
		
		Returns:
		  A RichTextLines object containing the stack trace of the node's
		  construction.
	**/
	public function _render_node_traceback(node_name:Dynamic):Dynamic;
	/**
		Sort a list of DebugTensorDatum in specified order.
		
		Args:
		  data: (list of DebugTensorDatum) the data to be sorted.
		  sort_by: The field to sort data by.
		  reverse: (bool) Whether to use reversed (descending) order.
		
		Returns:
		  (list of DebugTensorDatum) in sorted order.
		
		Raises:
		  ValueError: given an invalid value of sort_by.
	**/
	public function _sort_dump_data_by(data:Dynamic, sort_by:Dynamic, reverse:Dynamic):Dynamic;
	/**
		Generate a line containing the column heads of the tensor list.
		
		Args:
		  parsed: Parsed arguments (by argparse) of the list_tensors command.
		  max_timestamp_width: (int) maximum width of the timestamp column.
		  max_dump_size_width: (int) maximum width of the dump size column.
		  max_op_type_width: (int) maximum width of the op type column.
		
		Returns:
		  A RichTextLines object.
	**/
	public function _tensor_list_column_heads(parsed:Dynamic, max_timestamp_width:Dynamic, max_dump_size_width:Dynamic, max_op_type_width:Dynamic):Dynamic;
	/**
		Add a tensor filter.
		
		A tensor filter is a named callable of the siganture:
		  filter_callable(dump_datum, tensor),
		
		wherein dump_datum is an instance of debug_data.DebugTensorDatum carrying
		metadata about the dumped tensor, including tensor name, timestamps, etc.
		tensor is the value of the dumped tensor as an numpy.ndarray object.
		The return value of the function is a bool.
		This is the same signature as the input argument to
		debug_data.DebugDumpDir.find().
		
		Args:
		  filter_name: (str) name of the filter. Cannot be empty.
		  filter_callable: (callable) a filter function of the signature described
		    as above.
		
		Raises:
		  ValueError: If filter_name is an empty str.
		  TypeError: If filter_name is not a str.
		             Or if filter_callable is not callable.
	**/
	public function add_tensor_filter(filter_name:Dynamic, filter_callable:Dynamic):Dynamic;
	public function get_help(handler_name:Dynamic):Dynamic;
	/**
		Retrieve filter function by name.
		
		Args:
		  filter_name: Name of the filter set during add_tensor_filter() call.
		
		Returns:
		  The callable associated with the filter name.
		
		Raises:
		  ValueError: If there is no tensor filter of the specified filter name.
	**/
	public function get_tensor_filter(filter_name:Dynamic):Dynamic;
	/**
		Command handler for inputs.
		
		Show inputs to a given node.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function list_inputs(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Command handler for inputs.
		
		Show inputs to a given node.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function list_outputs(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		List Python source files that constructed nodes and tensors.
	**/
	public function list_source(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Command handler for list_tensors.
		
		List tensors dumped during debugged Session.run() call.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function list_tensors(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Command handler for node_info.
		
		Query information about a given node.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function node_info(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Print the content of a source file.
	**/
	public function print_source(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Command handler for print_tensor.
		
		Print value of a given dumped tensor.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function print_tensor(args:Dynamic, ?screen_info:Dynamic):Dynamic;
}