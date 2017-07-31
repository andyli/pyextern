/* This file is generated, do not edit! */
package tensorflow.tensorboard.plugins.text.text_plugin;
@:pythonImport("tensorflow.tensorboard.plugins.text.text_plugin") extern class Text_plugin_Module {
	static public var ALLOWED_ATTRIBUTES : Dynamic;
	static public var ALLOWED_TAGS : Dynamic;
	static public var RUNS_ROUTE : Dynamic;
	static public var TEXT_ROUTE : Dynamic;
	static public var WARNING_TEMPLATE : Dynamic;
	static public var _PLUGIN_PREFIX_ROUTE : Dynamic;
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
		Given a numpy ndarray of strings, concatenate them into a html table.
		
		Args:
		  contents: A np.ndarray of strings. May be 1d or 2d. In the 1d case, the
		    table is laid out vertically (i.e. row-major).
		  headers: A np.ndarray or list of string header names for the table.
		
		Returns:
		  A string containing all of the content strings, organized into a table.
		
		Raises:
		  ValueError: If contents is not a np.ndarray.
		  ValueError: If contents is not 1d or 2d.
		  ValueError: If contents is empty.
		  ValueError: If headers is present and not a list, tuple, or ndarray.
		  ValueError: If headers is not 1d.
		  ValueError: If number of elements in headers does not correspond to number
		    of columns in contents.
	**/
	static public function make_table(contents:Dynamic, ?headers:Dynamic):Dynamic;
	/**
		Given an iterable of string contents, make a table row.
		
		Args:
		  contents: An iterable yielding strings.
		  tag: The tag to place contents in. Defaults to 'td', you might want 'th'.
		
		Returns:
		  A string containing the content strings, organized into a table row.
		
		Example: make_table_row(['one', 'two', 'three']) == '''
		<tr>
		<td>one</td>
		<td>two</td>
		<td>three</td>
		</tr>'''
	**/
	static public function make_table_row(contents:Dynamic, ?tag:Dynamic):Dynamic;
	/**
		Takes a markdown string and converts it into sanitized html.
		
		It uses the table extension; while that's not a part of standard
		markdown, it is sure to be useful for TensorBoard users.
		
		The sanitizer uses the allowed_tags and attributes specified above. Mostly,
		we ensure that our standard use cases like tables and links are supported.
		
		Args:
		  markdown_string: Markdown string to sanitize
		
		Returns:
		  a string containing sanitized html for input markdown
	**/
	static public function markdown_and_sanitize(markdown_string:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert a TensorEvent into a JSON-compatible response.
	**/
	static public function process_string_tensor_event(event:Dynamic):Dynamic;
	/**
		Given a np.npdarray with nDims > 2, reduce it to 2d.
		
		It does this by selecting the zeroth coordinate for every dimension greater
		than two.
		
		Args:
		  arr: a numpy ndarray of dimension at least 2.
		
		Returns:
		  A two-dimensional subarray from the input array.
		
		Raises:
		  ValueError: If the argument is not a numpy ndarray, or the dimensionality
		    is too low.
	**/
	static public function reduce_to_2d(arr:Dynamic):Dynamic;
	/**
		Take a numpy.ndarray containing strings, and convert it into html.
		
		If the ndarray contains a single scalar string, that string is converted to
		html via our sanitized markdown parser. If it contains an array of strings,
		the strings are individually converted to html and then composed into a table
		using make_table. If the array contains dimensionality greater than 2,
		all but two of the dimensions are removed, and a warning message is prefixed
		to the table.
		
		Args:
		  text_arr: A numpy.ndarray containing strings.
		
		Returns:
		  The array converted to html.
	**/
	static public function text_array_to_html(text_arr:Dynamic):Dynamic;
}