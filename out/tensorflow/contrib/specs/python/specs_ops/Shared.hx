/* This file is generated, do not edit! */
package tensorflow.contrib.specs.python.specs_ops;
@:pythonImport("tensorflow.contrib.specs.python.specs_ops", "Shared") extern class Shared {
	public function __add__(g:Dynamic):Dynamic;
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
		Create the Shared operator.
		
		Use this as:
		
		    f = Shared(Cr(100, 3))
		    g = f | f | f
		
		Ordinarily, you do not need to provide either a name or a scope.
		Providing a name is useful if you want a well-defined namespace
		for the variables (e.g., for saving a subnet).
		
		Args:
		    subnet: Definition of the shared network.
		    name: Optional name for the shared context.
		    scope: Optional shared scope (must be a Scope, not a string).
		
		Raises:
		    ValueError: Scope is not of type tf.Scope, name is not
		    of type string, or both scope and name are given together.
	**/
	@:native("__init__")
	public function ___init__(subnet:Dynamic, ?name:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Create the Shared operator.
		
		Use this as:
		
		    f = Shared(Cr(100, 3))
		    g = f | f | f
		
		Ordinarily, you do not need to provide either a name or a scope.
		Providing a name is useful if you want a well-defined namespace
		for the variables (e.g., for saving a subnet).
		
		Args:
		    subnet: Definition of the shared network.
		    name: Optional name for the shared context.
		    scope: Optional shared scope (must be a Scope, not a string).
		
		Raises:
		    ValueError: Scope is not of type tf.Scope, name is not
		    of type string, or both scope and name are given together.
	**/
	public function new(subnet:Dynamic, ?name:Dynamic, ?scope:Dynamic):Void;
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
	public function __mul__(g:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(f:Dynamic):Dynamic;
	public function __pow__(n:Dynamic):Dynamic;
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
		Apply the shared operator to an input.
		
		This wraps a variable scope around the creation of the subnet.
		
		Args:
		    x: The input argument on which the subnet is invoked.
		
		Returns:
		    The output tensor from invoking the subnet constructor.
	**/
	public function funcall(x:Dynamic):Dynamic;
	static public var shared_number : Dynamic;
}