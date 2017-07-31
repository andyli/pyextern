/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.analyzer_cli;
@:pythonImport("tensorflow.python.debug.cli.analyzer_cli") extern class Analyzer_cli_Module {
	static public var CTRL_LABEL : Dynamic;
	static public var DEPTH_TEMPLATE : Dynamic;
	static public var ELLIPSIS : Dynamic;
	static public var HANG_FINISHED : Dynamic;
	static public var HANG_SUFFIX : Dynamic;
	static public var HANG_UNFINISHED : Dynamic;
	static public var OP_TYPE_TEMPLATE : Dynamic;
	static public var SORT_TENSORS_BY_DUMP_SIZE : Dynamic;
	static public var SORT_TENSORS_BY_OP_TYPE : Dynamic;
	static public var SORT_TENSORS_BY_TENSOR_NAME : Dynamic;
	static public var SORT_TENSORS_BY_TIMESTAMP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generate main menu for the screen output from a command.
		
		Args:
		  output: (debugger_cli_common.RichTextLines) the output object to modify.
		  node_name: (str or None) name of the node involved (if any). If None,
		    the menu items node_info, list_inputs and list_outputs will be
		    automatically disabled, overriding the values of arguments
		    enable_node_info, enable_list_inputs and enable_list_outputs.
		  enable_list_tensors: (bool) whether the list_tensor menu item will be
		    enabled.
		  enable_node_info: (bool) whether the node_info item will be enabled.
		  enable_print_tensor: (bool) whether the print_tensor item will be enabled.
		  enable_list_inputs: (bool) whether the item list_inputs will be enabled.
		  enable_list_outputs: (bool) whether the item list_outputs will be enabled.
	**/
	static public function _add_main_menu(output:Dynamic, ?node_name:Dynamic, ?enable_list_tensors:Dynamic, ?enable_node_info:Dynamic, ?enable_print_tensor:Dynamic, ?enable_list_inputs:Dynamic, ?enable_list_outputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create an instance of CursesUI based on a DebugDumpDir object.
		
		Args:
		  debug_dump: (debug_data.DebugDumpDir) The debug dump to use.
		  tensor_filters: (dict) A dict mapping tensor filter name (str) to tensor
		    filter (Callable).
		  ui_type: (str) requested UI type, e.g., "curses", "readline".
		  on_ui_exit: (`Callable`) the callback to be called when the UI exits.
		
		Returns:
		  (base_ui.BaseUI) A BaseUI subtype object with a set of standard analyzer
		    commands and tab-completions registered.
	**/
	static public function create_analyzer_ui(debug_dump:Dynamic, ?tensor_filters:Dynamic, ?ui_type:Dynamic, ?on_ui_exit:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}