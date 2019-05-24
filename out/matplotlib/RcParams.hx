/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib", "RcParams") extern class RcParams {
	static public var _MutableMapping__marker : Dynamic;
	static public var __abstractmethods__ : Dynamic;
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		Yield sorted list of keys.
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
	static public var __reversed__ : Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, val:Dynamic):Dynamic;
	/**
		D.__sizeof__() -> size of D in memory, in bytes
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
	static public function __subclasshook__(C:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		D.clear() -> None.  Remove all items from D.
	**/
	public function clear():Dynamic;
	/**
		D.copy() -> a shallow copy of D
	**/
	public function copy():Dynamic;
	/**
		Return the subset of this RcParams dictionary whose keys match,
		using :func:`re.search`, the given ``pattern``.
		
		.. note::
		
		    Changes to the returned dictionary are *not* propagated to
		    the parent RcParams dictionary.
	**/
	public function find_all(pattern:Dynamic):Dynamic;
	/**
		Returns a new dict with keys from iterable and values equal to value.
	**/
	static public function fromkeys(iterable:Dynamic, ?value:Dynamic):Dynamic;
	/**
		D.get(k[,d]) -> D[k] if k in D, else d.  d defaults to None.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items():Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys():Dynamic;
	public var msg_backend_obsolete : Dynamic;
	public var msg_depr : Dynamic;
	public var msg_depr_ignore : Dynamic;
	public var msg_depr_set : Dynamic;
	public var msg_obsolete : Dynamic;
	/**
		D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
		If key is not found, d is returned if given, otherwise KeyError is raised.
	**/
	public function pop(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.popitem() -> (k, v), remove and return some (key, value) pair
		as a 2-tuple; but raise KeyError if D is empty.
	**/
	public function popitem():Dynamic;
	/**
		D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D
	**/
	public function setdefault(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		D.update([E, ]**F) -> None.  Update D from mapping/iterable E and F.
		If E present and has a .keys() method, does:     for k in E: D[k] = E[k]
		If E present and lacks .keys() method, does:     for (k, v) in E: D[k] = v
		In either case, this is followed by: for k, v in F.items(): D[k] = v
	**/
	static public function update(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var validate : Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values():Dynamic;
}