/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.curses_ui;
@:pythonImport("tensorflow.python.debug.cli.curses_ui") extern class Curses_ui_Module {
	static public var _COLOR_ENABLED_TERM : Dynamic;
	static public var _COLOR_READY_COLORTERMS : Dynamic;
	static public var _SCROLL_DOWN : Dynamic;
	static public var _SCROLL_DOWN_A_LINE : Dynamic;
	static public var _SCROLL_END : Dynamic;
	static public var _SCROLL_HOME : Dynamic;
	static public var _SCROLL_REFRESH : Dynamic;
	static public var _SCROLL_TO_LINE_INDEX : Dynamic;
	static public var _SCROLL_UP : Dynamic;
	static public var _SCROLL_UP_A_LINE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Attempt to extract command from the attribute segments of a line.
		
		Args:
		  mouse_x: (int) x coordinate of the mouse event.
		  attr_segs: (list) The list of attribute segments of a line from a
		    RichTextLines object.
		
		Returns:
		  (str or None) If a command exists: the command as a str; otherwise, None.
	**/
	static public function _get_command_from_line_attr_segs(mouse_x:Dynamic, attr_segs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}