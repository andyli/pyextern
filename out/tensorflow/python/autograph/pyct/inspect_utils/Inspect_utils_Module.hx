/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.inspect_utils;
@:pythonImport("tensorflow.python.autograph.pyct.inspect_utils") extern class Inspect_utils_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_unbound_function(m:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Resolves the class (e.g. one of the superclasses) that defined a method.
	**/
	static public function getdefiningclass(m:Dynamic, owner_class:Dynamic):Dynamic;
	/**
		Resolves a function's owner, e.g. a method's class.
		
		Note that this returns the object that the function was retrieved from, not
		necessarily the class where it was defined.
		
		This function relies on Python stack frame support in the interpreter, and
		has the same limitations that inspect.currentframe.
		
		Limitations. This function will only work correctly if the owned class is
		visible in the caller's global or local variables.
		
		Args:
		  m: A user defined function
		
		Returns:
		  The class that this function was retrieved from, or None if the function
		  is not an object or class method, or the class that owns the object or
		  method is not visible to m.
		
		Raises:
		  ValueError: if the class could not be resolved for any unexpected reason.
	**/
	static public function getmethodclass(m:Dynamic):Dynamic;
	/**
		Returns the complete namespace of a function.
		
		Namespace is defined here as the mapping of all non-local variables to values.
		This includes the globals and the closure variables. Note that this captures
		the entire globals collection of the function, and may contain extra symbols
		that it does not actually use.
		
		Args:
		  f: User defined function.
		Returns:
		  A dict mapping symbol names to values.
	**/
	static public function getnamespace(f:Dynamic):Dynamic;
	static public function isbuiltin(f:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}