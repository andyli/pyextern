/* This file is generated, do not edit! */
package docutils.examples;
@:pythonImport("docutils.examples") extern class Examples_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Given an input string, returns an HTML fragment as a string.
		
		The return value is the contents of the <body> element.
		
		Parameters (see `html_parts()` for the remainder):
		
		- `output_encoding`: The desired encoding of the output.  If a Unicode
		  string is desired, use the default value of "unicode" .
	**/
	static public function html_body(input_string:Dynamic, ?source_path:Dynamic, ?destination_path:Dynamic, ?input_encoding:Dynamic, ?output_encoding:Dynamic, ?doctitle:Dynamic, ?initial_header_level:Dynamic):Dynamic;
	/**
		Given an input string, returns a dictionary of HTML document parts.
		
		Dictionary keys are the names of parts, and values are Unicode strings;
		encoding is up to the client.
		
		Parameters:
		
		- `input_string`: A multi-line text string; required.
		- `source_path`: Path to the source file or object.  Optional, but useful
		  for diagnostic output (system messages).
		- `destination_path`: Path to the file or object which will receive the
		  output; optional.  Used for determining relative paths (stylesheets,
		  source links, etc.).
		- `input_encoding`: The encoding of `input_string`.  If it is an encoded
		  8-bit string, provide the correct encoding.  If it is a Unicode string,
		  use "unicode", the default.
		- `doctitle`: Disable the promotion of a lone top-level section title to
		  document title (and subsequent section title to document subtitle
		  promotion); enabled by default.
		- `initial_header_level`: The initial level for header elements (e.g. 1
		  for "<h1>").
	**/
	static public function html_parts(input_string:Dynamic, ?source_path:Dynamic, ?destination_path:Dynamic, ?input_encoding:Dynamic, ?doctitle:Dynamic, ?initial_header_level:Dynamic):Dynamic;
	/**
		Return the document tree and publisher, for exploring Docutils internals.
		
		Parameters: see `html_parts()`.
	**/
	static public function internals(input_string:Dynamic, ?source_path:Dynamic, ?destination_path:Dynamic, ?input_encoding:Dynamic, ?settings_overrides:Dynamic):Dynamic;
}