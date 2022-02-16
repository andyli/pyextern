/* This file is generated, do not edit! */
package tensorflow.python.saved_model.revived_types;
@:pythonImport("tensorflow.python.saved_model.revived_types", "VersionedTypeRegistration") extern class VersionedTypeRegistration {
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
		Identify a revived type version.
		
		Args:
		  object_factory: A callable which takes a SavedUserObject proto and returns
		    a trackable object. Dependencies are added later via `setter`.
		  version: An integer, the producer version of this wrapper type. When
		    making incompatible changes to a wrapper, add a new
		    `VersionedTypeRegistration` with an incremented `version`. The most
		    recent version will be saved, and all registrations with a matching
		    identifier will be searched for the highest compatible version to use
		    when loading.
		  min_producer_version: The minimum producer version number required to use
		    this `VersionedTypeRegistration` when loading a proto.
		  min_consumer_version: `VersionedTypeRegistration`s with a version number
		    less than `min_consumer_version` will not be used to load a proto saved
		    with this object. `min_consumer_version` should be set to the lowest
		    version number which can successfully load protos saved by this
		    object. If no matching registration is available on load, the object
		    will be revived with a generic trackable type.
		
		    `min_consumer_version` and `bad_consumers` are a blunt tool, and using
		    them will generally break forward compatibility: previous versions of
		    TensorFlow will revive newly saved objects as opaque trackable
		    objects rather than wrapped objects. When updating wrappers, prefer
		    saving new information but preserving compatibility with previous
		    wrapper versions. They are, however, useful for ensuring that
		    previously-released buggy wrapper versions degrade gracefully rather
		    than throwing exceptions when presented with newly-saved SavedModels.
		  bad_consumers: A list of consumer versions which are incompatible (in
		    addition to any version less than `min_consumer_version`).
		  setter: A callable with the same signature as `setattr` to use when adding
		    dependencies to generated objects.
	**/
	@:native("__init__")
	public function ___init__(object_factory:Dynamic, version:Dynamic, min_producer_version:Dynamic, min_consumer_version:Dynamic, ?bad_consumers:Dynamic, ?setter:Dynamic):Dynamic;
	/**
		Identify a revived type version.
		
		Args:
		  object_factory: A callable which takes a SavedUserObject proto and returns
		    a trackable object. Dependencies are added later via `setter`.
		  version: An integer, the producer version of this wrapper type. When
		    making incompatible changes to a wrapper, add a new
		    `VersionedTypeRegistration` with an incremented `version`. The most
		    recent version will be saved, and all registrations with a matching
		    identifier will be searched for the highest compatible version to use
		    when loading.
		  min_producer_version: The minimum producer version number required to use
		    this `VersionedTypeRegistration` when loading a proto.
		  min_consumer_version: `VersionedTypeRegistration`s with a version number
		    less than `min_consumer_version` will not be used to load a proto saved
		    with this object. `min_consumer_version` should be set to the lowest
		    version number which can successfully load protos saved by this
		    object. If no matching registration is available on load, the object
		    will be revived with a generic trackable type.
		
		    `min_consumer_version` and `bad_consumers` are a blunt tool, and using
		    them will generally break forward compatibility: previous versions of
		    TensorFlow will revive newly saved objects as opaque trackable
		    objects rather than wrapped objects. When updating wrappers, prefer
		    saving new information but preserving compatibility with previous
		    wrapper versions. They are, however, useful for ensuring that
		    previously-released buggy wrapper versions degrade gracefully rather
		    than throwing exceptions when presented with newly-saved SavedModels.
		  bad_consumers: A list of consumer versions which are incompatible (in
		    addition to any version less than `min_consumer_version`).
		  setter: A callable with the same signature as `setattr` to use when adding
		    dependencies to generated objects.
	**/
	public function new(object_factory:Dynamic, version:Dynamic, min_producer_version:Dynamic, min_consumer_version:Dynamic, ?bad_consumers:Dynamic, ?setter:Dynamic):Void;
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
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Recreate a trackable object from a SavedUserObject proto.
	**/
	public function from_proto(proto:Dynamic):Dynamic;
	/**
		Checks if this object should load the SavedUserObject `proto`.
	**/
	public function should_load(proto:Dynamic):Dynamic;
	/**
		Create a SavedUserObject proto.
	**/
	public function to_proto():Dynamic;
}