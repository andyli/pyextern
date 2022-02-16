/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.base;
@:pythonImport("tensorflow.python.training.tracking.base") extern class Base_Module {
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
		
		Use to decorate any method of a Trackable object. Attribute assignment in
		that method will not add dependencies (also respected in Model). Harmless if
		used in a class which does not do automatic dependency tracking (which means
		it's safe to use in base classes which may have subclasses which also inherit
		from Trackable).
		
		Args:
		  method: The method to decorate.
		
		Returns:
		  A decorated method which sets and un-sets automatic dependency tracking for
		  the object the method is called on (not thread safe).
	**/
	static public function no_automatic_dependency_tracking(method:Dynamic):Dynamic;
	/**
		A context that disables automatic dependency tracking when assigning attrs.
		
		Objects that inherit from Autotrackable automatically creates dependencies
		to trackable objects through attribute assignments, and wraps data structures
		(lists or dicts) with trackable classes. This scope may be used to temporarily
		disable this behavior. This works similar to the decorator
		`no_automatic_dependency_tracking`.
		
		Example usage:
		```
		model = tf.keras.Model()
		model.arr1 = []  # Creates a ListWrapper object
		with no_automatic_dependency_tracking_scope(model):
		  model.arr2 = []  # Creates a regular, untracked python list
		```
		
		Args:
		  obj: A trackable object.
		
		Yields:
		  a scope in which the object doesn't track dependencies.
	**/
	static public function no_automatic_dependency_tracking_scope(obj:Dynamic):Dynamic;
	/**
		A context that disables manual dependency tracking for the given `obj`.
		
		Sometimes library methods might track objects on their own and we might want
		to disable that and do the tracking on our own. One can then use this context
		manager to disable the tracking the library method does and do your own
		tracking.
		
		For example:
		
		class TestLayer(tf.keras.Layer):
		  def build():
		    with no_manual_dependency_tracking_scope(self):
		      var = self.add_variable("name1")  # Creates a var and doesn't track it
		    self._track_trackable("name2", var)  # We track variable with name `name2`
		
		Args:
		  obj: A trackable object.
		
		Yields:
		  a scope in which the object doesn't track dependencies manually.
	**/
	static public function no_manual_dependency_tracking_scope(obj:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}