/* This file is generated, do not edit! */
package docutils.transforms;
@:pythonImport("docutils.transforms", "Transformer") extern class Transformer {
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
	public function ___init__(document:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(document:Dynamic):Void;
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
	/**
		Store a transform with an associated `pending` node.
	**/
	public function add_pending(pending:Dynamic, ?priority:Dynamic):Dynamic;
	/**
		Store a single transform.  Use `priority` to override the default.
		`kwargs` is a dictionary whose contents are passed as keyword
		arguments to the `apply` method of the transform.  This can be used to
		pass application-specific data to the transform instance.
	**/
	public function add_transform(transform_class:Dynamic, ?priority:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Store multiple transforms, with default priorities.
	**/
	public function add_transforms(transform_list:Dynamic):Dynamic;
	/**
		Apply all of the stored transforms, in priority order.
	**/
	public function apply_transforms():Dynamic;
	static public var default_transforms : Dynamic;
	/**
		Return a string, `priority` combined with `self.serialno`.
		
		This ensures FIFO order on transforms with identical priority.
	**/
	public function get_priority_string(priority:Dynamic):Dynamic;
	/**
		Transforms required by this class.  Override in subclasses.
	**/
	public function get_transforms():Dynamic;
	/**
		Store each component's default transforms, with default priorities.
		Also, store components by type name in a mapping for later lookup.
	**/
	public function populate_from_components(components:Dynamic):Dynamic;
	static public var unknown_reference_resolvers : Dynamic;
}