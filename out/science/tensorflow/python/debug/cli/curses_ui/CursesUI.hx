/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.curses_ui;
@:pythonImport("tensorflow.python.debug.cli.curses_ui", "CursesUI") extern class CursesUI {
	static public var BACKSPACE_KEY : Dynamic;
	static public var CLI_CR_KEYS : Dynamic;
	static public var CLI_EXIT_COMMANDS : Dynamic;
	static public var CLI_PROMPT : Dynamic;
	static public var CLI_TAB_KEY : Dynamic;
	static public var CLI_TERMINATOR_KEY : Dynamic;
	static public var ERROR_MESSAGE_PREFIX : Dynamic;
	static public var INFO_MESSAGE_PREFIX : Dynamic;
	static public var REGEX_SEARCH_PREFIX : Dynamic;
	static public var TENSOR_INDICES_NAVIGATION_PREFIX : Dynamic;
	static public var _ARRAY_INDICES_COLOR_PAIR : Dynamic;
	static public var _BACKGROUND_COLORS : Dynamic;
	static public var _ERROR_TOAST_COLOR_PAIR : Dynamic;
	static public var _FOREGROUND_COLORS : Dynamic;
	static public var _INFO_TOAST_COLOR_PAIR : Dynamic;
	static public var _KEY_MAP : Dynamic;
	static public var _MOUSE_SCROLL_DELAY_MS : Dynamic;
	static public var _NAVIGATION_BACK_COMMAND : Dynamic;
	static public var _NAVIGATION_FORWARD_COMMAND : Dynamic;
	static public var _NAVIGATION_WARNING_COLOR_PAIR : Dynamic;
	static public var _SCREEN_WIDTH_LIMIT : Dynamic;
	static public var _SEARCH_HIGHLIGHT_FONT_ATTR : Dynamic;
	static public var _STATUS_BAR_COLOR_PAIR : Dynamic;
	static public var _UI_WAIT_COLOR_PAIR : Dynamic;
	static public var _UI_WAIT_MESSAGE : Dynamic;
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
		Constructor of CursesUI.
		
		Args:
		  on_ui_exit: (Callable) Callback invoked when the UI exits.
		  config: An instance of `cli_config.CLIConfig()` carrying user-facing
		    configurations.
	**/
	@:native("__init__")
	public function ___init__(?on_ui_exit:Dynamic, ?config:Dynamic):Dynamic;
	/**
		Constructor of CursesUI.
		
		Args:
		  on_ui_exit: (Callable) Callback invoked when the UI exits.
		  config: An instance of `cli_config.CLIConfig()` carrying user-facing
		    configurations.
	**/
	public function new(?on_ui_exit:Dynamic, ?config:Dynamic):Void;
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
	public function _addstr(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Analyze raw input to tab-completer.
		
		Args:
		  text: (str) the full, raw input text to be tab-completed.
		
		Returns:
		  context: (str) the context str. For example,
		    If text == "print_tensor softmax", returns "print_tensor".
		    If text == "print", returns "".
		    If text == "", returns "".
		  prefix: (str) the prefix to be tab-completed, from the last word.
		    For example, if text == "print_tensor softmax", returns "softmax".
		    If text == "print", returns "print".
		    If text == "", returns "".
		  except_last_word: (str) the input text, except the last word.
		    For example, if text == "print_tensor softmax", returns "print_tensor".
		    If text == "print_tensor -a softmax", returns "print_tensor -a".
		    If text == "print", returns "".
		    If text == "", returns "".
	**/
	public function _analyze_tab_complete_input(text:Dynamic):Dynamic;
	/**
		Automatically key in a command to the command Textbox.
		
		Args:
		  command: The command, as a string or None.
		  erase_existing: (bool) whether existing text (if any) is to be erased
		      first.
	**/
	public function _auto_key_in(command:Dynamic, ?erase_existing:Dynamic):Dynamic;
	/**
		Compile status summary about this Curses UI instance.
		
		The information includes: scroll status and mouse ON/OFF status.
		
		Returns:
		  (str) A single text line summarizing the UI status, adapted to the
		    current screen width.
	**/
	public function _compile_ui_status_summary():Dynamic;
	/**
		Command handler for the "config" command.
	**/
	public function _config_command_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Dispatch user command.
		
		Args:
		  command: (str) Command to dispatch.
		
		Returns:
		  An exit token object. None value means that the UI loop should not exit.
		  A non-None value means the UI loop should exit.
	**/
	public function _dispatch_command(command:Dynamic):Dynamic;
	/**
		Show candidates (e.g., tab-completion candidates) on multiple lines.
		
		Args:
		  candidates: (list of str) candidates.
	**/
	public function _display_candidates(candidates:Dynamic):Dynamic;
	/**
		Display RichTextLines object on screen.
		
		Args:
		  output: A RichTextLines object.
		  min_num_rows: (int) Minimum number of output rows.
		
		Returns:
		  1) The text pad object used to display the main text body.
		  2) (int) number of rows of the text pad, which may exceed screen size.
		  3) (int) number of columns of the text pad.
		
		Raises:
		  ValueError: If input argument "output" is invalid.
	**/
	public function _display_lines(output:Dynamic, min_num_rows:Dynamic):Dynamic;
	/**
		Display main menu associated with screen output, if the menu exists.
		
		Args:
		  output: (debugger_cli_common.RichTextLines) The RichTextLines output from
		    the annotations field of which the menu will be extracted and used (if
		    the menu exists).
	**/
	public function _display_main_menu(output:Dynamic):Dynamic;
	public function _display_nav_bar():Dynamic;
	/**
		Display text output in a scrollable text pad.
		
		This method does some preprocessing on the text lines, render them on the
		screen and scroll to the appropriate line. These are done according to regex
		highlighting requests (if any), scroll-to-next-match requests (if any),
		and screen refresh requests (if any).
		
		TODO(cais): Separate these unrelated request to increase clarity and
		  maintainability.
		
		Args:
		  output: A RichTextLines object that is the screen output text.
		  is_refresh: (bool) Is this a refreshing display with existing output.
		  highlight_regex: (str) Optional string representing the regex used to
		    search and highlight in the current screen output.
	**/
	public function _display_output(output:Dynamic, ?is_refresh:Dynamic, ?highlight_regex:Dynamic):Dynamic;
	/**
		Erase existing text in command textpad.
	**/
	public function _erase_existing_command():Dynamic;
	/**
		Display a one-line error message on screen.
		
		Args:
		  message: The error message, without the preceding "ERROR: " substring.
	**/
	public function _error_toast(message:Dynamic):Dynamic;
	public function _fetch_hyperlink_command(mouse_x:Dynamic, mouse_y:Dynamic):Dynamic;
	public function _format_indices(indices:Dynamic):Dynamic;
	/**
		Get user command from UI.
		
		Returns:
		  command: (str) The user-entered command.
		  terminator: (str) Terminator type for the command.
		    If command is a normal command entered with the Enter key, the value
		    will be the key itself. If this is a tab completion call (using the
		    Tab key), the value will reflect that as well.
		  pending_command_changed:  (bool) If the pending command has changed.
		    Used during command history navigation.
	**/
	public function _get_user_command():Dynamic;
	/**
		Display a one-line informational message on screen.
		
		Args:
		  message: The informational message.
	**/
	public function _info_toast(message:Dynamic):Dynamic;
	/**
		Initialize the layout of UI components.
		
		Initialize the location and size of UI components such as command textbox
		and output region according to the terminal size.
	**/
	public function _init_layout():Dynamic;
	public function _interrupt_handler(signal_num:Dynamic, frame:Dynamic):Dynamic;
	/**
		Handler for the command prefix 'mouse'.
		
		Args:
		  args: (list of str) Arguments to the command prefix 'mouse'.
		  screen_info: (dict) Information about the screen, unused by this handler.
		
		Returns:
		  None, as this command handler does not generate any screen outputs other
		    than toasts.
	**/
	public function _mouse_mode_command_handler(args:Dynamic, ?screen_info:Dynamic):Dynamic;
	/**
		Navigate in screen output history.
		
		Args:
		  command: (`str`) the navigation command, from
		    {self._NAVIGATION_FORWARD_COMMAND, self._NAVIGATION_BACK_COMMAND}.
	**/
	public function _navigate_screen_output(command:Dynamic):Dynamic;
	/**
		Text box key validator: Callback of key strokes.
		
		Handles a user's keypress in the input text box. Translates certain keys to
		terminator keys for the textbox to allow its edit() method to return.
		Also handles special key-triggered events such as PgUp/PgDown scrolling of
		the screen output.
		
		Args:
		  x: (int) Key code.
		
		Returns:
		  (int) A translated key code. In most cases, this is identical to the
		    input x. However, if x is a Return key, the return value will be
		    CLI_TERMINATOR_KEY, so that the text box's edit() method can return.
		
		Raises:
		  TypeError: If the input x is not of type int.
		  debugger_cli_common.CommandLineExit: If a mouse-triggered command returns
		    an exit token when dispatched.
	**/
	public function _on_textbox_keypress(x:Dynamic):Dynamic;
	/**
		Pad the whitespace at the end of a line with the default color pair.
		
		Prevents spurious color pairs from appearing at the end of the lines in
		certain text terminals.
		
		Args:
		  pad: The curses pad object to operate on.
		  row: (`int`) row index.
		  line_end_x: (`int`) column index of the end of the line (beginning of
		    the whitespace).
	**/
	public function _pad_line_end_with_whitespace(pad:Dynamic, row:Dynamic, line_end_x:Dynamic):Dynamic;
	/**
		Parse a command string into prefix and arguments.
		
		Args:
		  command: (str) Command string to be parsed.
		
		Returns:
		  prefix: (str) The command prefix.
		  args: (list of str) The command arguments (i.e., not including the
		    prefix).
		  output_file_path: (str or None) The path to save the screen output
		    to (if any).
	**/
	public function _parse_command(command:Dynamic):Dynamic;
	public function _redraw_output():Dynamic;
	public function _refresh_pad(pad:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Render a line in a text pad.
		
		Assumes: segments in color_segments are sorted in ascending order of the
		beginning index.
		Note: Gaps between the segments are allowed and will be fixed in with a
		default color.
		
		Args:
		  pad: The text pad to render the line in.
		  row: Row index, as an int.
		  txt: The text to be displayed on the specified row, as a str.
		  color_segments: A list of 3-tuples. Each tuple represents the beginning
		    and the end of a color segment, in the form of a right-open interval:
		    [start, end). The last element of the tuple is a color string, e.g.,
		    "red".
		
		Raisee:
		  TypeError: If color_segments is not of type list.
	**/
	public function _screen_add_line_to_output_pad(pad:Dynamic, row:Dynamic, txt:Dynamic, ?color_segments:Dynamic):Dynamic;
	/**
		Initialization of screen colors.
	**/
	public function _screen_color_init():Dynamic;
	/**
		Create command textbox on screen.
		
		Args:
		  existing_command: (str) A command string to put in the textbox right
		    after its creation.
	**/
	public function _screen_create_command_textbox(?existing_command:Dynamic):Dynamic;
	/**
		Create command window according to screen size.
	**/
	public function _screen_create_command_window():Dynamic;
	/**
		Actually render text output on the screen.
		
		Wraps the lines according to screen width. Pad lines below according to
		screen height so that the user can scroll the output to a state where
		the last non-empty line is on the top of the screen. Then renders the
		lines on the screen.
		
		Args:
		  output: (RichTextLines) text lines to display on the screen. These lines
		    may have widths exceeding the screen width. This method will take care
		    of the wrapping.
		
		Returns:
		  (List of int) A list of line indices, in the wrapped output, where there
		    are regex matches.
	**/
	public function _screen_display_output(output:Dynamic):Dynamic;
	/**
		Render a line of text on the screen.
		
		Args:
		  row: (int) Row index.
		  line: (str) The line content.
		  attr: curses font attribute.
		  color: (str) font foreground color name.
		
		Raises:
		  TypeError: If row is not of type int.
	**/
	public function _screen_draw_text_line(row:Dynamic, line:Dynamic, ?attr:Dynamic, ?color:Dynamic):Dynamic;
	/**
		Gather the text string in the command text box.
		
		Returns:
		  (str) the current text string in the command textbox, excluding any
		  return keys.
	**/
	public function _screen_gather_textbox_str():Dynamic;
	public function _screen_get_user_command():Dynamic;
	public function _screen_getmouse():Dynamic;
	/**
		Screen initialization.
		
		Creates curses stdscr and initialize the color pairs for display.
	**/
	public function _screen_init():Dynamic;
	/**
		Launch the curses screen.
	**/
	public function _screen_launch(enable_mouse_on_start:Dynamic):Dynamic;
	/**
		Generate a new pad on the screen.
		
		Args:
		  rows: (int) Number of rows the pad will have: not limited to screen size.
		  cols: (int) Number of columns the pad will have: not limited to screen
		    size.
		
		Returns:
		  A curses textpad object.
	**/
	public function _screen_new_output_pad(rows:Dynamic, cols:Dynamic):Dynamic;
	public function _screen_refresh():Dynamic;
	public function _screen_refresh_size():Dynamic;
	public function _screen_render_menu_pad():Dynamic;
	public function _screen_render_nav_bar():Dynamic;
	public function _screen_scroll_output_pad(pad:Dynamic, viewport_top:Dynamic, viewport_left:Dynamic, screen_location_top:Dynamic, screen_location_left:Dynamic, screen_location_bottom:Dynamic, screen_location_right:Dynamic):Dynamic;
	public function _screen_set_mousemask():Dynamic;
	/**
		Terminate the curses screen.
	**/
	public function _screen_terminate():Dynamic;
	/**
		Scroll the output pad.
		
		Args:
		  direction: _SCROLL_REFRESH, _SCROLL_UP, _SCROLL_DOWN, _SCROLL_UP_A_LINE,
		    _SCROLL_DOWN_A_LINE, _SCROLL_HOME, _SCROLL_END, _SCROLL_TO_LINE_INDEX
		  line_index: (int) Specifies the zero-based line index to scroll to.
		    Applicable only if direction is _SCROLL_TO_LINE_INDEX.
		
		Raises:
		  ValueError: On invalid scroll direction.
		  TypeError: If line_index is not int and direction is
		    _SCROLL_TO_LINE_INDEX.
	**/
	public function _scroll_output(direction:Dynamic, ?line_index:Dynamic):Dynamic;
	public function _set_mouse_enabled(enabled:Dynamic):Dynamic;
	/**
		Show array indices for the specified line in the display area.
		
		Uses the line number to array indices map in the annotations field of the
		RichTextLines object being displayed.
		If the displayed RichTextLines object does not contain such a mapping,
		will do nothing.
		
		Args:
		  line_index: (int) 0-based line index from the top of the display area.
		    For example,if line_index == 0, this method will display the array
		    indices for the line currently at the top of the display area.
		
		Returns:
		  (list) The array indices at the specified line, if available. None, if
		    not available.
	**/
	public function _show_array_index_at_line(line_index:Dynamic):Dynamic;
	/**
		Show array indices for the lines at the top and bottom of the output.
		
		For the top line and bottom line of the output display area, show the
		element indices of the array being displayed.
		
		Returns:
		  If either the top of the bottom row has any matching array indices,
		  a dict from line index (0 being the top of the display area, -1
		  being the bottom of the display area) to array element indices. For
		  example:
		    {0: [0, 0], -1: [10, 0]}
		  Otherwise, None.
	**/
	public function _show_array_indices():Dynamic;
	static public var _single_instance_lock : Dynamic;
	public function _strip_terminator(command:Dynamic):Dynamic;
	/**
		Perform tab completion.
		
		Obtains tab completion candidates.
		If there are no candidates, return command_str and take no other actions.
		If there are candidates, display the candidates on screen and return
		command_str + (common prefix of the candidates).
		
		Args:
		  command_str: (str) The str in the command input textbox when Tab key is
		    hit.
		
		Returns:
		  (str) Completed string. Could be the same as command_str if no completion
		  candidate is available. If candidate(s) are available, return command_str
		  appended by the common prefix of the candidates.
	**/
	public function _tab_complete(command_str:Dynamic):Dynamic;
	/**
		Display title.
		
		Args:
		  title: (str) The title to display.
		  title_color: (str) Color of the title, e.g., "yellow".
	**/
	public function _title(title:Dynamic, ?title_color:Dynamic):Dynamic;
	/**
		Display a one-line message on the screen.
		
		By default, the toast is displayed in the line right above the scroll bar.
		But the line location can be overridden with the line_index arg.
		
		Args:
		  message: (str) the message to display.
		  color: (str) optional color attribute for the message.
		  line_index: (int) line index.
	**/
	public function _toast(message:Dynamic, ?color:Dynamic, ?line_index:Dynamic):Dynamic;
	/**
		Command-line UI loop.
		
		Returns:
		  An exit token of arbitrary type. The token can be None.
	**/
	public function _ui_loop():Dynamic;
	/**
		Obtain the CLIConfig of this `BaseUI` instance.
	**/
	public var config : Dynamic;
	public function get_help():Dynamic;
	/**
		A wrapper around CommandHandlerRegistry.register_command_handler().
		
		In addition to calling the wrapped register_command_handler() method, this
		method also registers the top-level tab-completion context based on the
		command prefixes and their aliases.
		
		See the doc string of the wrapped method for more details on the args.
		
		Args:
		  prefix: (str) command prefix.
		  handler: (callable) command handler.
		  help_info: (str) help information.
		  prefix_aliases: (list of str) aliases of the command prefix.
	**/
	public function register_command_handler(prefix:Dynamic, handler:Dynamic, help_info:Dynamic, ?prefix_aliases:Dynamic):Dynamic;
	/**
		Wrapper around TabCompletionRegistry.register_tab_comp_context().
	**/
	public function register_tab_comp_context(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Run the CLI: See the doc of base_ui.BaseUI.run_ui for more details.
	**/
	public function run_ui(?init_command:Dynamic, ?title:Dynamic, ?title_color:Dynamic, ?enable_mouse_on_start:Dynamic):Dynamic;
	/**
		Set an introductory message to the help output of the command registry.
		
		Args:
		  help_intro: (RichTextLines) Rich text lines appended to the beginning of
		    the output of the command "help", as introductory information.
	**/
	public function set_help_intro(help_intro:Dynamic):Dynamic;
}