/* This file is generated, do not edit! */
package theano.compat;
@:pythonImport("theano.compat", "DefaultOrderedDict") extern class DefaultOrderedDict {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if D has a key k, else False.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	public function __copy__():Dynamic;
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
		x.__getitem__(y) <==> x[y]
	**/
	public function __getitem__(key:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?default_factory:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?default_factory:Dynamic, ?a:python.VarArgs<Dynamic>, ?kw:python.KwArgs<Dynamic>):Void;
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
	public function __missing__(key:Dynamic):Dynamic;
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
		Return state information for pickling
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		od.__reversed__() <==> reversed(od)
	**/
	public function __reversed__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		od.clear() -> None.  Remove all items from od.
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.copy() -> a shallow copy of od
	**/
	public function copy():Dynamic;
	/**
		OD.fromkeys(S[, v]) -> New ordered dictionary with keys from S.
		If not specified, the value defaults to None.
	**/
	public function fromkeys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Move an existing element to the end (or beginning if last==False).
		
		Raises KeyError if the element does not exist.
		When last=True, acts like a fast version of self[key]=self.pop(key).
	**/
	public function move_to_end(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.pop(k[,d]) -> v, remove specified key and return the corresponding
		value.  If key is not found, d is returned if given, otherwise KeyError
		is raised.
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Remove and return a (key, value) pair from the dictionary.
		
		Pairs are returned in LIFO order if last is true or FIFO order if false.
	**/
	public function popitem(?last:Dynamic):Dynamic;
	/**
		od.setdefault(k[,d]) -> od.get(k,d), also set od[k]=d if k not in od
	**/
	public function setdefault(args:haxe.extern.Rest<Dynamic>):Dynamic;
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