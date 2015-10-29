/* This file is generated, do not edit! */
package pandas.core.base;
@:pythonImport("pandas.core.base", "FrozenList") extern class FrozenList {
	/**
		Return self+value.
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function __delitem__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function __delslice__(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
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
	public function __getitem__(n:Dynamic):Dynamic;
	public function __getslice__(i:Dynamic, j:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Return self+value.
	**/
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Return self*value.n
	**/
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function __init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Return self==value.
	**/
	public function __req__(other:Dynamic):Dynamic;
	/**
		L.__reversed__() -- return a reverse iterator over the list
	**/
	public function __reversed__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self*value.
	**/
	public function __rmul__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function __setitem__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function __setslice__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		L.__sizeof__() -- size of L in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
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
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	static public var _constructor : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function _disabled(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function append(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		L.clear() -> None -- remove all items from L
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.copy() -> list -- a shallow copy of L
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.count(value) -> integer -- return number of occurrences of value
	**/
	public function count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function extend(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		L.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function insert(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function pop(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function remove(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		L.reverse() -- reverse *IN PLACE*
	**/
	public function reverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		This method will not function because object is immutable.
	**/
	public function sort(args:Dynamic, kwargs:Dynamic):Dynamic;
}