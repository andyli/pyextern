/* This file is generated, do not edit! */
package tensorflow.python.framework.extension_type;
@:pythonImport("tensorflow.python.framework.extension_type", "ExtensionTypeMetaclass") extern class ExtensionTypeMetaclass {
	public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __base__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __bases__ : Dynamic;
	static public var __basicsize__ : Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __eq__(value:Dynamic):Dynamic;
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
	public function ___init__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(name:Dynamic, bases:Dynamic, namespace:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Override for isinstance(instance, cls).
	**/
	static public function __instancecheck__(cls:Dynamic, instance:Dynamic):Dynamic;
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
	static public function __new__(mcls:Dynamic, name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function __str__():Dynamic;
	/**
		Override for issubclass(subclass, cls).
	**/
	static public function __subclasscheck__(cls:Dynamic, subclass:Dynamic):Dynamic;
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
		Clear the caches (for debugging or testing).
	**/
	static public function _abc_caches_clear(cls:Dynamic):Dynamic;
	/**
		Clear the registry (for debugging or testing).
	**/
	static public function _abc_registry_clear(cls:Dynamic):Dynamic;
	/**
		Debug helper to print the ABC registry.
	**/
	static public function _dump_registry(cls:Dynamic, ?file:Dynamic):Dynamic;
	/**
		Return a type's method resolution order.
	**/
	public function mro():Dynamic;
	/**
		Register a virtual subclass of an ABC.
		
		Returns the subclass, to allow usage as a class decorator.
	**/
	static public function register(cls:Dynamic, subclass:Dynamic):Dynamic;
}