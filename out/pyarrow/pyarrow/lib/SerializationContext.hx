/* This file is generated, do not edit! */
package pyarrow.lib;
@:pythonImport("pyarrow.lib", "SerializationContext") extern class SerializationContext {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		SerializationContext.__reduce_cython__(self)
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		SerializationContext.__setstate_cython__(self, __pyx_state)
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		SerializationContext._deserialize_callback(self, serialized_obj)
	**/
	public function _deserialize_callback(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext._serialize_callback(self, obj)
	**/
	public function _serialize_callback(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.clone(self)
		
		Return copy of this SerializationContext.
		
		Returns
		-------
		clone : SerializationContext
	**/
	public function clone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.deserialize(self, what)
		
		Call pyarrow.deserialize and pass this SerializationContext.
	**/
	public function deserialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.deserialize_components(self, what)
		
		Call pyarrow.deserialize_components and pass this SerializationContext.
	**/
	public function deserialize_components(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.register_type(self, type_, type_id, pickle=False, custom_serializer=None, custom_deserializer=None)
		
		EXPERIMENTAL: Add type to the list of types we can serialize.
		
		Parameters
		----------
		type\_ : type
		    The type that we can serialize.
		type_id : string
		    A string used to identify the type.
		pickle : bool
		    True if the serialization should be done with pickle.
		    False if it should be done efficiently with Arrow.
		custom_serializer : callable
		    This argument is optional, but can be provided to
		    serialize objects of the class in a particular way.
		custom_deserializer : callable
		    This argument is optional, but can be provided to
		    deserialize objects of the class in a particular way.
	**/
	public function register_type(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.serialize(self, obj)
		
		Call pyarrow.serialize and pass this SerializationContext.
	**/
	public function serialize(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.serialize_to(self, value, sink)
		
		Call pyarrow.serialize_to and pass this SerializationContext.
	**/
	public function serialize_to(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		SerializationContext.set_pickle(self, serializer, deserializer)
		
		Set the serializer and deserializer to use for objects that are to be
		pickled.
		
		Parameters
		----------
		serializer : callable
		    The serializer to use (e.g., pickle.dumps or cloudpickle.dumps).
		deserializer : callable
		    The deserializer to use (e.g., pickle.dumps or cloudpickle.dumps).
	**/
	public function set_pickle(args:haxe.extern.Rest<Dynamic>):Dynamic;
}