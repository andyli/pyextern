/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.profile_analyzer_cli;
@:pythonImport("tensorflow.python.debug.cli.profile_analyzer_cli", "ProfileAnalyzer") extern class ProfileAnalyzer {
	static public var _LINENO_HEAD : Dynamic;
	static public var _LINE_COST_ATTR : Dynamic;
	static public var _LINE_NUM_ATTR : Dynamic;
	static public var _NUM_EXECS_SUB_HEAD : Dynamic;
	static public var _NUM_NODES_HEAD : Dynamic;
	static public var _SOURCE_HEAD : Dynamic;
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
		ProfileAnalyzer constructor.
		
		Args:
		  graph: (tf.Graph) Python graph object.
		  run_metadata: A `RunMetadata` protobuf object.
		
		Raises:
		  ValueError: If run_metadata is None.
	**/
	@:native("__init__")
	public function ___init__(graph:Dynamic, run_metadata:Dynamic):Dynamic;
	/**
		ProfileAnalyzer constructor.
		
		Args:
		  graph: (tf.Graph) Python graph object.
		  run_metadata: A `RunMetadata` protobuf object.
		
		Raises:
		  ValueError: If run_metadata is None.
	**/
	public function new(graph:Dynamic, run_metadata:Dynamic):Void;
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
		Get `RichTextLines` object for list_profile command for a given device.
		
		Args:
		  device_name: (string) Device name.
		  device_index: (int) Device index.
		  device_count: (int) Number of devices.
		  profile_datum_list: List of `ProfileDatum` objects.
		  sort_by: (string) Identifier of column to sort. Sort identifier
		      must match value of SORT_OPS_BY_OP_NAME, SORT_OPS_BY_OP_TYPE,
		      SORT_OPS_BY_EXEC_TIME, SORT_OPS_BY_MEMORY or SORT_OPS_BY_LINE.
		  sort_reverse: (bool) Whether to sort in descending instead of default
		      (ascending) order.
		  time_unit: time unit, must be in cli_shared.TIME_UNITS.
		  device_name_filter: Regular expression to filter by device name.
		  node_name_filter: Regular expression to filter by node name.
		  op_type_filter: Regular expression to filter by op type.
		  screen_cols: (int) Number of columns available on the screen (i.e.,
		    available screen width).
		
		Returns:
		  `RichTextLines` object containing a table that displays profiling
		  information for each op.
	**/
	public function _get_list_profile_lines(device_name:Dynamic, device_index:Dynamic, device_count:Dynamic, profile_datum_list:Dynamic, sort_by:Dynamic, sort_reverse:Dynamic, time_unit:Dynamic, ?device_name_filter:Dynamic, ?node_name_filter:Dynamic, ?op_type_filter:Dynamic, ?screen_cols:Dynamic):Dynamic;
	/**
		Get function that generates `ProfileDatum` objects.
		
		Returns:
		  A function that generates `ProfileDatum` objects.
	**/
	public function _get_profile_data_generator():Dynamic;
	public function _get_total_cost(aggregated_profile:Dynamic, cost_type:Dynamic):Dynamic;
	/**
		Determine the maximum column widths for each data list.
		
		Args:
		  profile_data: list of ProfileDatum objects.
		
		Returns:
		  List of column widths in the same order as columns in data.
	**/
	public function _measure_list_profile_column_widths(profile_data:Dynamic):Dynamic;
	/**
		Render a text bar representing a normalized cost.
		
		Args:
		  cost: the absolute value of the cost.
		  max_cost: the maximum cost value to normalize the absolute cost with.
		  length: (int) length of the cost bar, in number of characters, excluding
		    the brackets on the two ends.
		
		Returns:
		  An instance of debugger_cli_common.RichTextLine.
	**/
	public function _render_normalized_cost_bar(cost:Dynamic, max_cost:Dynamic, length:Dynamic):Dynamic;
	public function get_help(handler_name:Dynamic):Dynamic;
	/**
		Command handler for list_profile.
		
		List per-operation profile information.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function list_profile(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Print a Python source file with line-level profile information.
		
		Args:
		  args: Command-line arguments, excluding the command prefix, as a list of
		    str.
		  screen_info: Optional dict input containing screen information such as
		    cols.
		
		Returns:
		  Output text lines as a RichTextLines object.
	**/
	public function print_source(args:Dynamic, ?screen_info:Dynamic):Dynamic;
}