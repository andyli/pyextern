/* This file is generated, do not edit! */
package tensorflow.python.keras.mixed_precision.autocast_variable;
@:pythonImport("tensorflow.python.keras.mixed_precision.autocast_variable") extern class Autocast_variable_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _autocast_dtype : Dynamic;
	/**
		Creates an AutoCastVariable that wraps another variable.
		
		This typically just returns `AutoCastVariable(variable)`. But, if the variable
		is a DistributedVariable or one of its subclasses, we instead dynamically
		create a class that subclasses from both AutoCastVariable and
		variable.__class__. This is so the returned variable will still pass
		`isinstance(variable, variable.__class__)`, which is required for
		DistributedVariables and its subclasses to work properly.
		
		Args:
		  variable: A floating-point resource variable to wrap.
		
		Returns:
		  An AutoCastVariable that wraps the variable.
	**/
	static public function create_autocast_variable(variable:Dynamic):Dynamic;
	/**
		Human readable representation of a tensor's numpy value.
	**/
	static public function numpy_text(tensor:Dynamic, ?is_repr:Dynamic):Dynamic;
}