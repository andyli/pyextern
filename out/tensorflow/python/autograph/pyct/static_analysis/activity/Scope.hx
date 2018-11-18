/* This file is generated, do not edit! */
package tensorflow.python.autograph.pyct.static_analysis.activity;
@:pythonImport("tensorflow.python.autograph.pyct.static_analysis.activity", "Scope") extern class Scope {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a new scope.
		
		Args:
		  parent: A Scope or None.
		  isolated: Whether the scope is isolated, that is, whether variables
		      created in this scope should be visible to the parent scope.
		  add_unknown_symbols: Whether to handle attributed and subscripts
		      without having first seen the base name.
		      E.g., analyzing the statement 'x.y = z' without first having seen 'x'.
	**/
	@:native("__init__")
	public function ___init__(parent:Dynamic, ?isolated:Dynamic, ?add_unknown_symbols:Dynamic):Dynamic;
	/**
		Create a new scope.
		
		Args:
		  parent: A Scope or None.
		  isolated: Whether the scope is isolated, that is, whether variables
		      created in this scope should be visible to the parent scope.
		  add_unknown_symbols: Whether to handle attributed and subscripts
		      without having first seen the base name.
		      E.g., analyzing the statement 'x.y = z' without first having seen 'x'.
	**/
	public function new(parent:Dynamic, ?isolated:Dynamic, ?add_unknown_symbols:Dynamic):Void;
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
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Recursively copies the contents of this scope from another scope.
	**/
	public function copy_from(other:Dynamic):Dynamic;
	static public function copy_of(other:Dynamic):Dynamic;
	public function has(name:Dynamic):Dynamic;
	/**
		Mark a qualified name as created.
	**/
	public function mark_creation(name:Dynamic, ?writes_create_symbol:Dynamic):Dynamic;
	public function mark_param(name:Dynamic, owner:Dynamic):Dynamic;
	public function mark_read(name:Dynamic):Dynamic;
	public function mark_returned(name:Dynamic):Dynamic;
	/**
		Marks the given symbol as modified in the current scope.
	**/
	public function mark_write(name:Dynamic):Dynamic;
	public function merge_from(other:Dynamic):Dynamic;
	public var referenced : Dynamic;
}