/* This file is generated, do not edit! */
package tensorflow.python.training.tracking.data_structures;
@:pythonImport("tensorflow.python.training.tracking.data_structures") extern class Data_structures_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _is_function(x:Dynamic):Dynamic;
	static public function _set_list_item(list_object:Dynamic, index_string:Dynamic, value:Dynamic):Dynamic;
	static public function _set_tuple_item(list_object:Dynamic, index_string:Dynamic, value:Dynamic):Dynamic;
	/**
		Determine if a tuple has any trackable components.
	**/
	static public function _should_wrap_tuple(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Adds dependencies, generally called from __setattr__.
		
		This behavior is shared between Trackable and Model.
		
		Respects NoDependency indicators, but otherwise makes trackable objects
		out of common data structures and tracks objects by their attribute names.
		
		Args:
		  trackable: The object to add dependencies to (generally the one having
		    an attribute assigned).
		  name: The attribute name being assigned.
		  value: The value being assigned. Not necessarily a trackable object.
		
		Returns:
		  The value which should be stored in the attribute (unwrapped from a
		  NoDependency object if necessary).
	**/
	static public function sticky_attribute_assignment(trackable:Dynamic, name:Dynamic, value:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wraps input value into trackable data structures.
		
		This is mostly useful for containers like list, dict, etc, which could contain
		trackable objects in it. Wrapped data structure will be tracked when
		associated with a `tf.Module`, so that save model/checkpoint can properly
		track the dependency.
		
		It will also unwrap NoDependency objects.
		
		Args:
		  value: the input object to be wrapped.
		
		Returns:
		  Wrapped trackable data structure.
	**/
	static public function wrap_or_unwrap(value:Dynamic):Dynamic;
}