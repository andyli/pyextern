/* This file is generated, do not edit! */
package seaborn.rcmod;
@:pythonImport("seaborn.rcmod", "_RCAesthetics") extern class _RCAesthetics {
	/**
		Call self as a function.
	**/
	public function __call__(func:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if the dictionary has the specified key, else False.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(exc_type:Dynamic, exc_value:Dynamic, exc_tb:Dynamic):Dynamic;
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
		x.__getitem__(y) <==> x[y]
	**/
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
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
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return a reverse iterator over the dict keys.
	**/
	public function __reversed__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		D.__sizeof__() -> size of D in memory, in bytes
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
		D.clear() -> None.  Remove all items from D.
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.copy() -> a shallow copy of D
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Create a new dictionary with keys from iterable and values set to value.
	**/
	static public function fromkeys(iterable:Dynamic, ?value:Dynamic):Dynamic;
	/**
		Return the value for key if key is in the dictionary, else default.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
		If key is not found, d is returned if given, otherwise KeyError is raised
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove and return a (key, value) pair as a 2-tuple.
		
		Pairs are returned in LIFO (last-in, first-out) order.
		Raises KeyError if the dict is empty.
	**/
	public function popitem():Dynamic;
	/**
		Insert key with a value of default if key is not in the dictionary.
		
		Return the value for key if key is in the dictionary, else default.
	**/
	public function setdefault(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.update([E, ]**F) -> None.  Update D from dict/iterable E and F.
		If E is present and has a .keys() method, then does:  for k in E: D[k] = E[k]
		If E is present and lacks a .keys() method, then does:  for k, v in E: D[k] = v
		In either case, this is followed by: for k in F:  D[k] = F[k]
	**/
	public function update(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}