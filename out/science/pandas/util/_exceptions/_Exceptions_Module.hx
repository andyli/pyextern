/* This file is generated, do not edit! */
package pandas.util._exceptions;
@:pythonImport("pandas.util._exceptions") extern class _Exceptions_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var annotations : Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Rewrite the message of an exception.
	**/
	static public function rewrite_exception(old_name:Dynamic, new_name:Dynamic):Dynamic;
}