/* This file is generated, do not edit! */
package tensorflow.contrib.distributions.python.ops.seed_stream;
@:pythonImport("tensorflow.contrib.distributions.python.ops.seed_stream", "SeedStream") extern class SeedStream {
	/**
		Returns a fresh integer usable as a seed in downstream operations.
		
		If this `SeedStream` was initialized with `seed=None`, returns
		`None`.  This has the effect that downstream operations (both
		`SeedStream`s and primitive TensorFlow ops) will behave as though
		they were unseeded.
		
		The returned integer is non-negative, and uniformly distributed in
		the half-open interval `[0, 2**512)`.  This is consistent with
		TensorFlow, as TensorFlow operations internally use the residue of
		the given seed modulo `2**31 - 1` (see
		`tensorflow/python/framework/random_seed.py`).
		
		Returns:
		  seed: A fresh integer usable as a seed in downstream operations,
		    or `None`.
	**/
	public function __call__():Dynamic;
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
		Initializes a `SeedStream`.
		
		Args:
		  seed: Any Python object convertible to string, supplying the
		    initial entropy.  If `None`, operations seeded with seeds
		    drawn from this `SeedStream` will follow TensorFlow semantics
		    for not being seeded.
		  salt: Any Python object convertible to string, supplying
		    auxiliary entropy.  Must be unique across the Distributions
		    and TensorFlow Probability code base.  See class docstring for
		    rationale.
	**/
	@:native("__init__")
	public function ___init__(seed:Dynamic, salt:Dynamic):Dynamic;
	/**
		Initializes a `SeedStream`.
		
		Args:
		  seed: Any Python object convertible to string, supplying the
		    initial entropy.  If `None`, operations seeded with seeds
		    drawn from this `SeedStream` will follow TensorFlow semantics
		    for not being seeded.
		  salt: Any Python object convertible to string, supplying
		    auxiliary entropy.  Must be unique across the Distributions
		    and TensorFlow Probability code base.  See class docstring for
		    rationale.
	**/
	public function new(seed:Dynamic, salt:Dynamic):Void;
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
	public var original_seed : Dynamic;
	public var salt : Dynamic;
}