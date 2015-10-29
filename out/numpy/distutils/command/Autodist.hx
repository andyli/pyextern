/* This file is generated, do not edit! */
package numpy.distutils.command;
@:pythonImport("numpy.distutils.command.autodist") extern class Autodist {
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
		Return True if the C compiler is GCC 4.x.
	**/
	static public function check_compiler_gcc4(cmd:Dynamic):Dynamic;
	/**
		Return True if the given function attribute is supported.
	**/
	static public function check_gcc_function_attribute(cmd:Dynamic, attribute:Dynamic, name:Dynamic):Dynamic;
	/**
		Return True if the given variable attribute is supported.
	**/
	static public function check_gcc_variable_attribute(cmd:Dynamic, attribute:Dynamic):Dynamic;
	/**
		Return the inline identifier (may be empty).
	**/
	static public function check_inline(cmd:Dynamic):Dynamic;
	/**
		Return the restrict identifier (may be empty).
	**/
	static public function check_restrict(cmd:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}