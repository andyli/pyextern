/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.kullback_leibler;
@:pythonImport("tensorflow.contrib.distributions.python.ops.kullback_leibler", "RegisterKL") extern class RegisterKL {
	/**
		Perform the KL registration.
		
		Args:
		  kl_fn: The function to use for the KL divergence.
		
		Returns:
		  kl_fn
		
		Raises:
		  TypeError: if kl_fn is not a callable.
		  ValueError: if a KL divergence function has already been registered for
		    the given argument classes.
	**/
	public function __call__(kl_fn:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize the KL registrar.
		
		Args:
		  dist_cls_a: the class of the first argument of the KL divergence.
		  dist_cls_b: the class of the second argument of the KL divergence.
		
		Raises:
		  TypeError: if dist_cls_a or dist_cls_b are not subclasses of
		    Distribution.
	**/
	@:native("__init__")
	public function ___init__(dist_cls_a:Dynamic, dist_cls_b:Dynamic):Dynamic;
	/**
		Initialize the KL registrar.
		
		Args:
		  dist_cls_a: the class of the first argument of the KL divergence.
		  dist_cls_b: the class of the second argument of the KL divergence.
		
		Raises:
		  TypeError: if dist_cls_a or dist_cls_b are not subclasses of
		    Distribution.
	**/
	public function new(dist_cls_a:Dynamic, dist_cls_b:Dynamic):Void;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
}