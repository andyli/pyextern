/* This file is generated, do not edit! */
package tensorflow.python.platform.flags;
@:pythonImport("tensorflow.python.platform.flags") extern class Flags_Module {
	/**
		Defines a flag of type 'boolean'.
		
		Args:
		  flag_name: The name of the flag as a string.
		  default_value: The default value the flag should take as a boolean.
		  docstring: A helpful message explaining the use of the flag.
	**/
	static public function DEFINE_bool(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic):Dynamic;
	/**
		Defines a flag of type 'boolean'.
		
		Args:
		  flag_name: The name of the flag as a string.
		  default_value: The default value the flag should take as a boolean.
		  docstring: A helpful message explaining the use of the flag.
	**/
	static public function DEFINE_boolean(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic):Dynamic;
	/**
		Defines a flag of type 'float'.
		
		Args:
		  flag_name: The name of the flag as a string.
		  default_value: The default value the flag should take as a float.
		  docstring: A helpful message explaining the use of the flag.
	**/
	static public function DEFINE_float(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic):Dynamic;
	/**
		Defines a flag of type 'int'.
		
		Args:
		  flag_name: The name of the flag as a string.
		  default_value: The default value the flag should take as an int.
		  docstring: A helpful message explaining the use of the flag.
	**/
	static public function DEFINE_integer(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic):Dynamic;
	/**
		Defines a flag of type 'string'.
		
		Args:
		  flag_name: The name of the flag as a string.
		  default_value: The default value the flag should take as a string.
		  docstring: A helpful message explaining the use of the flag.
	**/
	static public function DEFINE_string(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic):Dynamic;
	static public var FLAGS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
	/**
		Registers 'flag_name' with 'default_value' and 'docstring'.
	**/
	static public function _define_helper(flag_name:Dynamic, default_value:Dynamic, docstring:Dynamic, flagtype:Dynamic):Dynamic;
	static public var _global_parser : Dynamic;
}