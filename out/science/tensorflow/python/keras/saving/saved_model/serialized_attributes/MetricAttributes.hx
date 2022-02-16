/* This file is generated, do not edit! */
package tensorflow.python.keras.saving.saved_model.serialized_attributes;
@:pythonImport("tensorflow.python.keras.saving.saved_model.serialized_attributes", "MetricAttributes") extern class MetricAttributes {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var all_checkpointable_objects : Dynamic;
	static public var all_functions : Dynamic;
	/**
		Returns dictionary of all checkpointable objects.
	**/
	public var checkpointable_objects : Dynamic;
	/**
		Returns dictionary of all functions.
	**/
	public var functions : Dynamic;
	/**
		Returns functions to attach to the root object during serialization.
	**/
	public var functions_to_serialize : Dynamic;
	/**
		Returns a new SerializedAttribute object.
	**/
	@:native("new")
	static public function _new(obj:Dynamic):Dynamic;
	/**
		Returns objects to attach to the root object during serialization.
	**/
	public var objects_to_serialize : Dynamic;
	/**
		Saves function dictionary, and validates dictionary values.
	**/
	public function set_and_validate_functions(function_dict:Dynamic):Dynamic;
	/**
		Saves objects to a dictionary, and validates the values.
	**/
	public function set_and_validate_objects(object_dict:Dynamic):Dynamic;
	/**
		Creates a subclass with all attributes as specified in the arguments.
		
		Args:
		  name: Name of subclass
		  checkpointable_objects: List of checkpointable objects to be serialized
		    in the SavedModel.
		  functions: List of functions to be serialized in the SavedModel.
		  copy_from: List of other SerializedAttributes subclasses. The returned
		    class will copy checkpoint objects/functions from each subclass.
		
		Returns:
		  Child class with attributes as defined in the `checkpointable_objects`
		  and `functions` lists.
	**/
	static public function with_attributes(name:Dynamic, ?checkpointable_objects:Dynamic, ?functions:Dynamic, ?copy_from:Dynamic):Dynamic;
}