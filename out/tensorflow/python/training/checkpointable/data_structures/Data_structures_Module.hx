/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.data_structures;
@:pythonImport("tensorflow.python.training.checkpointable.data_structures") extern class Data_structures_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wraps basic data structures, unwraps NoDependency objects.
	**/
	static public function _wrap_or_unwrap(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds dependencies, generally called from __setattr__.
		
		This behavior is shared between Checkpointable and Model.
		
		Respects NoDependency indicators, but otherwise makes checkpointable objects
		out of common data structures and tracks objects by their attribute names.
		
		Args:
		  checkpointable: The object to add dependencies to (generally the one having
		    an attribute assigned).
		  name: The attribute name being assigned.
		  value: The value being assigned. Not necessarily a checkpointable object.
		
		Returns:
		  The value which should be stored in the attribute (unwrapped from a
		  NoDependency object if necessary).
	**/
	static public function sticky_attribute_assignment(checkpointable:Dynamic, name:Dynamic, value:Dynamic):Dynamic;
}