/* This file is generated, do not edit! */
package tensorflow.tools.common.public_api;
@:pythonImport("tensorflow.tools.common.public_api", "PublicAPIVisitor") extern class PublicAPIVisitor {
	/**
		Visitor interface, see `traverse` for details.
	**/
	public function __call__(path:Dynamic, parent:Dynamic, children:Dynamic):Dynamic;
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
		Constructor.
		
		`visitor` should be a callable suitable as a visitor for `traverse`. It will
		be called only for members of the public TensorFlow API.
		
		Args:
		  visitor: A visitor to call for the public API.
	**/
	@:native("__init__")
	public function ___init__(visitor:Dynamic):Dynamic;
	/**
		Constructor.
		
		`visitor` should be a callable suitable as a visitor for `traverse`. It will
		be called only for members of the public TensorFlow API.
		
		Args:
		  visitor: A visitor to call for the public API.
	**/
	public function new(visitor:Dynamic):Void;
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
		Safely queries if a specific fully qualified name should be excluded.
	**/
	public function _do_not_descend(path:Dynamic, name:Dynamic):Dynamic;
	/**
		Return whether a name is private.
	**/
	public function _is_private(path:Dynamic, name:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		A map from parents to symbols that should not be descended into.
		
		This map can be edited, but it should not be edited once traversal has
		begun.
		
		Returns:
		  The map marking symbols to not explore.
	**/
	public var do_not_descend_map : Dynamic;
	/**
		A map from parents to symbols that should not be included at all.
		
		This map can be edited, but it should not be edited once traversal has
		begun.
		
		Returns:
		  The map marking symbols to not include.
	**/
	public var private_map : Dynamic;
	/**
		Override the default root name of 'tf'.
	**/
	public function set_root_name(root_name:Dynamic):Dynamic;
}