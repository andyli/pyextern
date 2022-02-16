/* This file is generated, do not edit! */
package pyQt5.uic.compiler.proxy_metaclass;
@:pythonImport("PyQt5.uic.Compiler.proxy_metaclass", "ProxyMetaclass") extern class ProxyMetaclass {
	public var __abstractmethods__ : Dynamic;
	static public function __base__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __bases__ : Dynamic;
	static public var __basicsize__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	static public var __dictoffset__ : Dynamic;
	/**
		Specialized __dir__ implementation for types.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	static public var __flags__ : Dynamic;
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
	static public function __getattribute__(cls:Dynamic, name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialise the meta-class. 
	**/
	@:native("__init__")
	public function ___init__():Dynamic;
	/**
		Initialise the meta-class. 
	**/
	public function new():Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if an object is an instance.
	**/
	public function __instancecheck__(instance:Dynamic):Dynamic;
	static public var __itemsize__ : Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	static public var __mro__ : Dynamic;
	static public var __name__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(r_op:Dynamic):Dynamic;
	/**
		__prepare__() -> dict
		used to create the namespace for the class statement
	**/
	public function __prepare__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __qualname__ : Dynamic;
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
		Return memory consumption of the type object.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	static public function __str__(cls:Dynamic):Dynamic;
	/**
		Check if a class is a subclass.
	**/
	public function __subclasscheck__(subclass:Dynamic):Dynamic;
	/**
		Return a list of immediate subclasses.
	**/
	public function __subclasses__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __text_signature__ : Dynamic;
	static public var __weakrefoffset__ : Dynamic;
	/**
		Return a type's method resolution order.
	**/
	public function mro():Dynamic;
}