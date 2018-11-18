/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.ui_factory;
@:pythonImport("tensorflow.python.debug.cli.ui_factory") extern class Ui_factory_Module {
	static public var SUPPORTED_UI_TYPES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Create a `base_ui.BaseUI` subtype.
		
		This factory method attempts to fallback to other available ui_types on
		ImportError. For example, if `ui_type` is `curses`, but `curses` cannot be
		imported properly, e.g., on Windows, will fallback to `readline`.
		
		Args:
		  ui_type: (`str`) requested UI type. Currently supported:
		    (curses | readline)
		  on_ui_exit: (`Callable`) the callback to be called when the UI exits.
		  available_ui_types: (`None` or `list` of `str`) Manually-set available
		    ui_types.
		  config: An instance of `cli_config.CLIConfig()` carrying user-facing
		    configurations.
		
		Returns:
		  A `base_ui.BaseUI` subtype object.
		
		Raises:
		  ValueError: on invalid ui_type or on exhausting or fallback ui_types.
	**/
	static public function get_ui(ui_type:Dynamic, ?on_ui_exit:Dynamic, ?available_ui_types:Dynamic, ?config:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}