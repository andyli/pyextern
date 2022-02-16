/* This file is generated, do not edit! */
package tensorflow.python.saved_model.registration;
@:pythonImport("tensorflow.python.saved_model.registration") extern class Registration_Module {
	static public var _CLASS_REGISTRY : Dynamic;
	static public var _REGISTERED_NAMES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function get_registered_class(registered_name:Dynamic):Dynamic;
	static public function get_registered_name(obj:Dynamic):Dynamic;
	/**
		Decorator for registering a serializable class.
		
		THIS METHOD IS STILL EXPERIMENTAL AND MAY CHANGE AT ANY TIME.
		
		Registered classes will be saved with a name generated by combining the
		`package` and `name` arguments. When loading a SavedModel, modules saved with
		this registered name will be created using the `_deserialize_from_proto`
		method.
		
		By default, only direct instances of the registered class will be saved/
		restored with the `serialize_from_proto`/`deserialize_from_proto` methods. To
		extend the registration to subclasses, use the `predicate argument`:
		
		```python
		class A(tf.Module):
		  pass
		
		register_serializable(
		    package="Example", predicate=lambda obj: isinstance(obj, A))(A)
		```
		
		Args:
		  package: The package that this class belongs to.
		  name: The name to serialize this class under in this package. If None, the
		    class's name will be used.
		  predicate: An optional function that takes a single Trackable argument, and
		    determines whether that object should be serialized with this `package`
		    and `name`. The default predicate checks whether the object's type exactly
		    matches the registered class. Predicates are executed in the reverse order
		    that they are added (later registrations are checked first).
		
		Returns:
		  A decorator that registers the decorated class with the passed names and
		  predicate.
		
		Raises:
		  ValueError if predicate is not callable.
	**/
	static public function register_serializable(?_package:Dynamic, ?name:Dynamic, ?predicate:Dynamic):Dynamic;
}