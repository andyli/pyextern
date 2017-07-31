/* This file is generated, do not edit! */
package tensorflow.python.ops.distributions.bijector_impl;
@:pythonImport("tensorflow.python.ops.distributions.bijector_impl", "_Mapping") extern class _Mapping {
	/**
		Return self+value.
	**/
	public function __add__(value:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
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
		Return self[key].
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self as a plain tuple.  Used by copy and pickle.
	**/
	public function __getnewargs__():Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement iter(self).
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self*value.n
	**/
	public function __mul__(value:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Custom __new__ so namedtuple items have defaults.
		
		Args:
		  x: `Tensor`. Forward.
		  y: `Tensor`. Inverse.
		  ildj: `Tensor`. Inverse log det Jacobian.
		  kwargs: Python dictionary. Extra args supplied to
		    forward/inverse/etc functions.
		
		Returns:
		  mapping: New instance of _Mapping.
	**/
	static public function __new__(cls:Dynamic, ?x:Dynamic, ?y:Dynamic, ?ildj:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a nicely formatted representation string
	**/
	public function __repr__():Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __slots__ : Dynamic;
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
		Return a new OrderedDict which maps field names to their values.
	**/
	public function _asdict():Dynamic;
	/**
		Converts lists of lists to tuples of tuples.
	**/
	public function _deep_tuple(x:Dynamic):Dynamic;
	static public var _fields : Dynamic;
	/**
		Make a new _Mapping object from a sequence or iterable
	**/
	static public function _make(iterable:Dynamic, ?_new:Dynamic, ?len:Dynamic):Dynamic;
	/**
		Helper to merge which handles merging one value.
	**/
	public function _merge(old:Dynamic, _new:Dynamic):Dynamic;
	/**
		Return a new _Mapping object replacing specified fields with new values
	**/
	public function _replace(?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _source : Dynamic;
	/**
		T.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 2
	**/
	public var ildj : Dynamic;
	/**
		T.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Alias for field number 3
	**/
	public var kwargs : Dynamic;
	/**
		Returns new _Mapping with args merged with self.
		
		Args:
		  x: `Tensor`. Forward.
		  y: `Tensor`. Inverse.
		  ildj: `Tensor`. Inverse log det Jacobian.
		  kwargs: Python dictionary. Extra args supplied to
		    forward/inverse/etc functions.
		  mapping: Instance of _Mapping to merge. Can only be specified if no other
		    arg is specified.
		
		Returns:
		  mapping: New instance of `_Mapping` which has inputs merged with self.
		
		Raises:
		  ValueError: if mapping and any other arg is not `None`.
	**/
	public function merge(?x:Dynamic, ?y:Dynamic, ?ildj:Dynamic, ?kwargs:Dynamic, ?mapping:Dynamic):Dynamic;
	/**
		Alias for field number 0
	**/
	public var x : Dynamic;
	/**
		Returns key used for caching Y=g(X).
	**/
	public var x_key : Dynamic;
	/**
		Alias for field number 1
	**/
	public var y : Dynamic;
	/**
		Returns key used for caching X=g^{-1}(Y).
	**/
	public var y_key : Dynamic;
}