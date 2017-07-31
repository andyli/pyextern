/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.specs_lib;
@:pythonImport("tensorflow.contrib.specs.python.specs_lib") extern class Specs_lib_Module {
	/**
		Import a function from an external module.
		
		Note that the `module_name` must be a module name
		that works with the usual import mechanisms. Shorthands
		like "tf.nn" will not work.
		
		Args:
		    module_name: name of the module
		    function_name: name of the function within the module
		
		Returns:
		    Function-wrapped value of symbol.
	**/
	static public function External(module_name:Dynamic, function_name:Dynamic):Dynamic;
	/**
		Import a function by exec.
		
		Args:
		    statements: Python statements
		
		Returns:
		    Function-wrapped value of `f`.
		
		Raises:
		    ValueError: the statements didn't define a value for "f"
	**/
	static public function Import(statements:Dynamic):Dynamic;
	static public var KEYWORDS : Dynamic;
	static public var QUOTED : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Check for common Python keywords in spec.
		
		This function discourages the use of complex constructs
		in TensorFlow specs; it doesn't completely prohibit them
		(if necessary, we could check the AST).
		
		Args:
		    spec: spec string
		
		Raises:
		    ValueError: raised if spec contains a prohibited keyword.
	**/
	static public function check_keywords(spec:Dynamic):Dynamic;
	/**
		Turn on/off debugging mode.
		
		Debugging mode prints more information about the construction
		of a network.
		
		Args:
		    mode: True if turned on, False otherwise
	**/
	static public function debug(?mode:Dynamic):Dynamic;
	static public var debug_ : Dynamic;
	static public var division : Dynamic;
	/**
		Execute the given source in the context of globals and locals.
		
		The source may be a string representing one or more Python statements
		or a code object as returned by compile().
		The globals must be a dictionary and locals can be any mapping,
		defaulting to the current globals and locals.
		If only globals is given, locals defaults to it.
	**/
	static public function exec_(source:Dynamic, ?globals:Dynamic, ?locals:Dynamic):Dynamic;
	/**
		Interpolates keyword arguments into argument lists.
		
		If `kw` contains keywords of the form "_0", "_1", etc., these
		are positionally interpolated into the argument list.
		
		Args:
		    args: argument list
		    kw: keyword dictionary
		    kw_overrides: key/value pairs that override kw
		
		Returns:
		    (new_args, new_kw), new argument lists and keyword dictionaries
		    with values interpolated.
	**/
	static public function get_positional(args:Dynamic, kw:Dynamic, ?kw_overrides:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}