/* This file is generated, do not edit! */
package tensorflow.python.saved_model.revived_types;
@:pythonImport("tensorflow.python.saved_model.revived_types") extern class Revived_types_Module {
	static public var _REVIVED_TYPE_REGISTRY : Dynamic;
	static public var _TYPE_IDENTIFIERS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Create a trackable object from a SavedUserObject proto.
		
		Args:
		  proto: A SavedUserObject to deserialize.
		
		Returns:
		  A tuple of (trackable, assignment_fn) where assignment_fn has the same
		  signature as setattr and should be used to add dependencies to
		  `trackable` when they are available.
	**/
	static public function deserialize(proto:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Gets the registered setter function for the SavedUserObject proto.
		
		See VersionedTypeRegistration for info about the setter function.
		
		Args:
		  proto: SavedUserObject proto
		
		Returns:
		  setter function
	**/
	static public function get_setter(proto:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Register a type for revived objects.
		
		Args:
		  identifier: A unique string identifying this class of objects.
		  predicate: A Boolean predicate for this registration. Takes a
		    trackable object as an argument. If True, `type_registration` may be
		    used to save and restore the object.
		  versions: A list of `VersionedTypeRegistration` objects.
	**/
	static public function register_revived_type(identifier:Dynamic, predicate:Dynamic, versions:Dynamic):Dynamic;
	/**
		Return all the current registered revived object identifiers.
		
		Returns:
		  A set of strings.
	**/
	static public function registered_identifiers():Dynamic;
	/**
		Create a SavedUserObject from a trackable object.
	**/
	static public function serialize(obj:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}