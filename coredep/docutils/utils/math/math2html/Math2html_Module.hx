/* This file is generated, do not edit! */
package docutils.utils.math.math2html;
@:pythonImport("docutils.utils.math.math2html") extern class Math2html_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Main function, called if invoked from the command line
	**/
	static public function main():Dynamic;
	/**
		Convert some TeX math to HTML.
	**/
	static public function math2html(formula:Dynamic):Dynamic;
	/**
		Like quote(), but also replace ' ' with '+', as required for quoting
		HTML form values. Plus signs in the original string are escaped unless
		they are included in safe. It also does not have safe default to '/'.
	**/
	static public function quote_plus(string:Dynamic, ?safe:Dynamic, ?encoding:Dynamic, ?errors:Dynamic):Dynamic;
}