/* This file is generated, do not edit! */
package numpy.distutils;
@:pythonImport("numpy.distutils.conv_template") extern class Conv_template {
	static public var __all__ : Dynamic;
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
	static public var exclude_re : Dynamic;
	static public var exclude_vars_re : Dynamic;
	static public function get_exception():Dynamic;
	static public var global_names : Dynamic;
	static public var header : Dynamic;
	static public var include_src_re : Dynamic;
	static public var named_re : Dynamic;
	static public function paren_repl(obj:Dynamic):Dynamic;
	static public var parenrep : Dynamic;
	/**
		Find all named replacements in the header
		
		Returns a list of dictionaries, one for each loop iteration,
		where each key is a name to be substituted and the corresponding
		value is the replacement string.
		
		Also return a list of exclusions.  The exclusions are dictionaries
		 of key value pairs. There can be more than one exclusion.
		 [{'var1':'value1', 'var2', 'value2'[,...]}, ...]
	**/
	static public function parse_loop_header(loophead:Dynamic):Dynamic;
	static public function parse_string(astr:Dynamic, env:Dynamic, level:Dynamic, line:Dynamic):Dynamic;
	/**
		The returned line number is from the beginning of the string, starting
		at zero. Returns an empty list if no loops found.
	**/
	static public function parse_structure(astr:Dynamic, level:Dynamic):Dynamic;
	static public function parse_values(astr:Dynamic):Dynamic;
	static public var plainrep : Dynamic;
	static public var print_function : Dynamic;
	static public function process_file(source:Dynamic):Dynamic;
	static public function process_str(astr:Dynamic):Dynamic;
	static public var replace_re : Dynamic;
	static public function resolve_includes(source:Dynamic):Dynamic;
	static public var stripast : Dynamic;
	static public function unique_key(adict:Dynamic):Dynamic;
}