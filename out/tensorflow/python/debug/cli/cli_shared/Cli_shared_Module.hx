/* This file is generated, do not edit! */
package tensorflow.python.debug.cli.cli_shared;
@:pythonImport("tensorflow.python.debug.cli.cli_shared") extern class Cli_shared_Module {
	static public var COLOR_BLACK : Dynamic;
	static public var COLOR_BLUE : Dynamic;
	static public var COLOR_CYAN : Dynamic;
	static public var COLOR_GRAY : Dynamic;
	static public var COLOR_GREEN : Dynamic;
	static public var COLOR_MAGENTA : Dynamic;
	static public var COLOR_RED : Dynamic;
	static public var COLOR_WHITE : Dynamic;
	static public var COLOR_YELLOW : Dynamic;
	static public var DEFAULT_NDARRAY_DISPLAY_THRESHOLD : Dynamic;
	static public var TIME_UNITS : Dynamic;
	static public var TIME_UNIT_MS : Dynamic;
	static public var TIME_UNIT_S : Dynamic;
	static public var TIME_UNIT_US : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Obtain the name or string representation of a fetch.
		
		Args:
		  fetch: The fetch in question.
		
		Returns:
		  If the attribute 'name' is available, return the name. Otherwise, return
		  str(fetch).
	**/
	static public function _get_fetch_name(fetch:Dynamic):Dynamic;
	/**
		Get a flattened list of the names in run() call fetches.
		
		Args:
		  fetches: Fetches of the `Session.run()` call. It maybe a Tensor, an
		    Operation or a Variable. It may also be nested lists, tuples or
		    dicts. See doc of `Session.run()` for more details.
		
		Returns:
		  (list of str) A flattened list of fetch names from `fetches`.
	**/
	static public function _get_fetch_names(fetches:Dynamic):Dynamic;
	/**
		Generate a RichTextLines object that describes a recommended command.
		
		Args:
		  command: (str) The command to recommend.
		  description: (str) A description of what the command does.
		  indent: (int) How many spaces to indent in the beginning.
		  create_link: (bool) Whether a command link is to be applied to the command
		    string.
		
		Returns:
		  (RichTextLines) Formatted text (with font attributes) for recommending the
		    command.
	**/
	static public function _recommend_command(command:Dynamic, description:Dynamic, ?indent:Dynamic, ?create_link:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Generate a human-readable string representing number of bytes.
		
		The units B, kB, MB and GB are used.
		
		Args:
		  num_bytes: (`int` or None) Number of bytes.
		  include_b: (`bool`) Include the letter B at the end of the unit.
		
		Returns:
		  (`str`) A string representing the number of bytes in a human-readable way,
		    including a unit at the end.
	**/
	static public function bytes_to_readable_str(num_bytes:Dynamic, ?include_b:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Generate a RichTextLines output for error.
		
		Args:
		  msg: (str) The error message.
		
		Returns:
		  (debugger_cli_common.RichTextLines) A representation of the error message
		    for screen output.
	**/
	static public function error(msg:Dynamic):Dynamic;
	/**
		Generate formatted str to represent a tensor or its slices.
		
		Args:
		  tensor: (numpy ndarray) The tensor value.
		  tensor_name: (str) Name of the tensor, e.g., the tensor's debug watch key.
		  np_printoptions: (dict) Numpy tensor formatting options.
		  print_all: (bool) Whether the tensor is to be displayed in its entirety,
		    instead of printing ellipses, even if its number of elements exceeds
		    the default numpy display threshold.
		    (Note: Even if this is set to true, the screen output can still be cut
		     off by the UI frontend if it consist of more lines than the frontend
		     can handle.)
		  tensor_slicing: (str or None) Slicing of the tensor, e.g., "[:, 1]". If
		    None, no slicing will be performed on the tensor.
		  highlight_options: (tensor_format.HighlightOptions) options to highlight
		    elements of the tensor. See the doc of tensor_format.format_tensor()
		    for more details.
		
		Returns:
		  (str) Formatted str representing the (potentially sliced) tensor.
	**/
	static public function format_tensor(tensor:Dynamic, tensor_name:Dynamic, np_printoptions:Dynamic, ?print_all:Dynamic, ?tensor_slicing:Dynamic, ?highlight_options:Dynamic):Dynamic;
	/**
		Generate formatted intro for TensorFlow run-time error.
		
		Args:
		  tf_error: (errors.OpError) TensorFlow run-time error object.
		
		Returns:
		  (RichTextLines) Formatted intro message about the run-time OpError, with
		    sample commands for debugging.
	**/
	static public function get_error_intro(tf_error:Dynamic):Dynamic;
	/**
		Get a short description of the run() call.
		
		Args:
		  run_call_count: (int) Run call counter.
		  fetches: Fetches of the `Session.run()` call. See doc of `Session.run()`
		    for more details.
		  feed_dict: Feeds to the `Session.run()` call. See doc of `Session.run()`
		    for more details.
		
		Returns:
		  (str) A short description of the run() call, including information about
		    the fetche(s) and feed(s).
	**/
	static public function get_run_short_description(run_call_count:Dynamic, fetches:Dynamic, feed_dict:Dynamic):Dynamic;
	/**
		Generate formatted intro for run-start UI.
		
		Args:
		  run_call_count: (int) Run call counter.
		  fetches: Fetches of the `Session.run()` call. See doc of `Session.run()`
		    for more details.
		  feed_dict: Feeds to the `Session.run()` call. See doc of `Session.run()`
		    for more details.
		  tensor_filters: (dict) A dict from tensor-filter name to tensor-filter
		    callable.
		
		Returns:
		  (RichTextLines) Formatted intro message about the `Session.run()` call.
	**/
	static public function get_run_start_intro(run_call_count:Dynamic, fetches:Dynamic, feed_dict:Dynamic, tensor_filters:Dynamic):Dynamic;
	/**
		Make an ASCII representation of the tfdbg logo.
	**/
	static public function get_tfdbg_logo():Dynamic;
	/**
		Process ranges highlight string.
		
		Args:
		  ranges_string: (str) A string representing a numerical range of a list of
		    numerical ranges. See the help info of the -r flag of the print_tensor
		    command for more details.
		
		Returns:
		  An instance of tensor_format.HighlightOptions, if range_string is a valid
		    representation of a range or a list of ranges.
	**/
	static public function parse_ranges_highlight(ranges_string:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert time value to human-readable string.
		
		Args:
		  value_us: time value in microseconds.
		  force_time_unit: force the output to use the specified time unit. Must be
		    in TIME_UNITS.
		
		Returns:
		  Human-readable string representation of the time value.
		
		Raises:
		  ValueError: if force_time_unit value is not in TIME_UNITS.
	**/
	static public function time_to_readable_str(value_us:Dynamic, ?force_time_unit:Dynamic):Dynamic;
}