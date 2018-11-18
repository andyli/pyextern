/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.profile_analyzer_cli;
@:pythonImport("tensorflow.python.debug.cli.profile_analyzer_cli") extern class Profile_analyzer_cli_Module {
	static public var SORT_OPS_BY_EXEC_TIME : Dynamic;
	static public var SORT_OPS_BY_LINE : Dynamic;
	static public var SORT_OPS_BY_OP_NAME : Dynamic;
	static public var SORT_OPS_BY_OP_TIME : Dynamic;
	static public var SORT_OPS_BY_OP_TYPE : Dynamic;
	static public var SORT_OPS_BY_START_TIME : Dynamic;
	static public var _DEVICE_NAME_FILTER_FLAG : Dynamic;
	static public var _NODE_NAME_FILTER_FLAG : Dynamic;
	static public var _OP_TYPE_FILTER_FLAG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Filter function for list_profile command.
		
		Args:
		  profile_datum: A `ProfileDatum` object.
		  node_name_regex: Regular expression pattern object to filter by name.
		  file_path_regex: Regular expression pattern object to filter by file path.
		  op_type_regex: Regular expression pattern object to filter by op type.
		  op_time_interval: `Interval` for filtering op time.
		  exec_time_interval: `Interval` for filtering exec time.
		  min_lineno: Lower bound for 1-based line number, inclusive.
		    If <= 0, has no effect.
		  max_lineno: Upper bound for 1-based line number, exclusive.
		    If <= 0, has no effect.
		  # TODO(cais): Maybe filter by function name.
		
		Returns:
		  True iff profile_datum should be included.
	**/
	static public function _list_profile_filter(profile_datum:Dynamic, node_name_regex:Dynamic, file_path_regex:Dynamic, op_type_regex:Dynamic, op_time_interval:Dynamic, exec_time_interval:Dynamic, ?min_lineno:Dynamic, ?max_lineno:Dynamic):Dynamic;
	/**
		Get a profile_datum property to sort by in list_profile command.
		
		Args:
		  profile_datum: A `ProfileDatum` object.
		  sort_by: (string) indicates a value to sort by.
		    Must be one of SORT_BY* constants.
		
		Returns:
		  profile_datum property to sort by.
	**/
	static public function _list_profile_sort_key(profile_datum:Dynamic, sort_by:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create an instance of CursesUI based on a `tf.Graph` and `RunMetadata`.
		
		Args:
		  graph: Python `Graph` object.
		  run_metadata: A `RunMetadata` protobuf object.
		  ui_type: (str) requested UI type, e.g., "curses", "readline".
		  on_ui_exit: (`Callable`) the callback to be called when the UI exits.
		  config: An instance of `cli_config.CLIConfig`.
		
		Returns:
		  (base_ui.BaseUI) A BaseUI subtype object with a set of standard analyzer
		    commands and tab-completions registered.
	**/
	static public function create_profiler_ui(graph:Dynamic, run_metadata:Dynamic, ?ui_type:Dynamic, ?on_ui_exit:Dynamic, ?config:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}