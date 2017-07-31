/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.debugger_cli_common;
@:pythonImport("tensorflow.python.debug.cli.debugger_cli_common") extern class Debugger_cli_common_Module {
	static public var EXPLICIT_USER_EXIT : Dynamic;
	static public var HELP_INDENT : Dynamic;
	static public var MAIN_MENU_KEY : Dynamic;
	static public var REGEX_MATCH_LINES_KEY : Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Perform regex match in rich text lines.
		
		Produces a new RichTextLines object with font_attr_segs containing highlighted
		regex matches.
		
		Example use cases include:
		1) search for specific items in a large list of items, and
		2) search for specific numerical values in a large tensor.
		
		Args:
		  orig_screen_output: The original RichTextLines, in which the regex find
		    is to be performed.
		  regex: The regex used for matching.
		  font_attr: Font attribute used for highlighting the found result.
		
		Returns:
		  A modified copy of orig_screen_output.
		
		Raises:
		  ValueError: If input str regex is not a valid regular expression.
	**/
	static public function regex_find(orig_screen_output:Dynamic, regex:Dynamic, font_attr:Dynamic):Dynamic;
	/**
		Convert a list of RichLine objects or strings to a RichTextLines object.
		
		Args:
		  rich_text_list: a list of RichLine objects or strings
		
		Returns:
		  A corresponding RichTextLines object.
	**/
	static public function rich_text_lines_from_rich_line_list(rich_text_list:Dynamic):Dynamic;
	/**
		Wrap RichTextLines according to maximum number of columns.
		
		Produces a new RichTextLines object with the text lines, font_attr_segs and
		annotations properly wrapped. This ought to be used sparingly, as in most
		cases, command handlers producing RichTextLines outputs should know the
		screen/panel width via the screen_info kwarg and should produce properly
		length-limited lines in the output accordingly.
		
		Args:
		  inp: Input RichTextLines object.
		  cols: Number of columns, as an int.
		
		Returns:
		  1) A new instance of RichTextLines, with line lengths limited to cols.
		  2) A list of new (wrapped) line index. For example, if the original input
		    consists of three lines and only the second line is wrapped, and it's
		    wrapped into two lines, this return value will be: [0, 1, 3].
		Raises:
		  ValueError: If inputs have invalid types.
	**/
	static public function wrap_rich_text_lines(inp:Dynamic, cols:Dynamic):Dynamic;
}