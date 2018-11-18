/* This file is generated, do not edit! */
package tensorflow.python.training.checkpointable.base;
@:pythonImport("tensorflow.python.training.checkpointable.base") extern class Base_Module {
	static public var OBJECT_CONFIG_JSON_KEY : Dynamic;
	static public var OBJECT_GRAPH_PROTO_KEY : Dynamic;
	static public var VARIABLE_VALUE_KEY : Dynamic;
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
	/**
		Disables automatic dependency tracking on attribute assignment.
		
		Use to decorate any method of a Checkpointable object. Attribute assignment in
		that method will not add dependencies (also respected in Model). Harmless if
		used in a class which does not do automatic dependency tracking (which means
		it's safe to use in base classes which may have subclasses which also inherit
		from Checkpointable).
		
		Args:
		  method: The method to decorate.
		Returns:
		  A decorated method which sets and un-sets automatic dependency tracking for
		  the object the method is called on (not thread safe).
	**/
	static public function no_automatic_dependency_tracking(method:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}