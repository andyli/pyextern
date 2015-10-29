/* This file is generated, do not edit! */
package pandas.compat;
@:pythonImport("pandas.compat", "_OrderedDict") extern class _OrderedDict {
	static public var _OrderedDict__marker : Dynamic;
	/**
		od.update(E, **F) -> None.  Update od from dict/iterable E and F.
		
		If E is a dict instance, does:        for k in E: od[k] = E[k]
		If E has a .keys() method, does:      for k in E.keys(): od[k] = E[k]
		Or if E is an iterable of items, does:for k, v in E: od[k] = v
		In either case, this is followed by:  for k, v in F.items(): od[k] = v
	**/
	public function _OrderedDict__update(kwds:Dynamic):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if D has a key k, else False.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		od.__delitem__(y) <==> del od[y]
	**/
	public function __delitem__(key:Dynamic, ?dict_delitem:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		od.__eq__(y) <==> od==y.  Comparison to another OD is
		order-sensitive while comparison to a regular mapping is
		order-insensitive.
	**/
	public function __eq__(other:Dynamic):Dynamic;
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
	public function __getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize an ordered dictionary. Signature is the same as for
		regular dictionaries, but keyword arguments are not recommended
		because their insertion order is arbitrary.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwds:Dynamic):Dynamic;
	/**
		od.__iter__() <==> iter(od)
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
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return state information for pickling
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.__repr__() <==> repr(od)
	**/
	public function __repr__(?_repr_running:Dynamic):Dynamic;
	/**
		od.__reversed__() <==> reversed(od)
	**/
	public function __reversed__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		od.__setitem__(i, y) <==> od[i]=y
	**/
	public function __setitem__(key:Dynamic, value:Dynamic, ?dict_setitem:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		od.clear() -> None.  Remove all items from od.
	**/
	public function clear():Dynamic;
	/**
		od.copy() -> a shallow copy of od
	**/
	public function copy():Dynamic;
	/**
		OD.fromkeys(S[, v]) -> New ordered dictionary with keys from S and
		values equal to v (which defaults to None).
	**/
	static public function fromkeys(iterable:Dynamic, ?value:Dynamic):Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		od.items() -> list of (key, value) pairs in od
	**/
	public function items():Dynamic;
	/**
		od.iteritems -> an iterator over the (key, value) items in od
	**/
	public function iteritems():Dynamic;
	/**
		od.iterkeys() -> an iterator over the keys in od
	**/
	public function iterkeys():Dynamic;
	/**
		od.itervalues -> an iterator over the values in od
	**/
	public function itervalues():Dynamic;
	/**
		od.keys() -> list of keys in od
	**/
	public function keys():Dynamic;
	/**
		od.pop(k[,d]) -> v, remove specified key and return the
		corresponding value.  If key is not found, d is returned if given,
		otherwise KeyError is raised.
	**/
	public function pop(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		od.popitem() -> (k, v), return and remove a (key, value) pair.
		
		Pairs are returned in LIFO order if last is true or FIFO order if
		false.
	**/
	public function popitem(?last:Dynamic):Dynamic;
	/**
		od.setdefault(k[,d]) -> od.get(k,d), also set od[k]=d if k not in od
		        
	**/
	public function setdefault(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		od.update(E, **F) -> None.  Update od from dict/iterable E and F.
		
		If E is a dict instance, does:        for k in E: od[k] = E[k]
		If E has a .keys() method, does:      for k in E.keys(): od[k] = E[k]
		Or if E is an iterable of items, does:for k, v in E: od[k] = v
		In either case, this is followed by:  for k, v in F.items(): od[k] = v
	**/
	public function update(kwds:Dynamic):Dynamic;
	/**
		od.values() -> list of values in od
	**/
	public function values():Dynamic;
	/**
		od.viewitems() -> a set-like object providing a view on od's items
		        
	**/
	public function viewitems():Dynamic;
	/**
		od.viewkeys() -> a set-like object providing a view on od's keys
	**/
	public function viewkeys():Dynamic;
	/**
		od.viewvalues() -> an object providing a view on od's values
	**/
	public function viewvalues():Dynamic;
}