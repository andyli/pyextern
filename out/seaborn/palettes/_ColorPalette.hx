/* This file is generated, do not edit! */
package seaborn.palettes;
@:pythonImport("seaborn.palettes", "_ColorPalette") extern class _ColorPalette {
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
		Open the context.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Close the context.
	**/
	public function __exit__(args:Dynamic):Dynamic;
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
		Implement self+=value.
	**/
	public function __iadd__(value:Dynamic):Dynamic;
	/**
		Implement self*=value.
	**/
	public function __imul__(value:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		L.__sizeof__() -- size of L in memory, in bytes
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
	/**
		L.append(object) -> None -- append object to end
	**/
	public function append(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a color palette with hex codes instead of RGB values.
	**/
	public function as_hex():Dynamic;
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
		L.extend(iterable) -> None -- extend list by appending elements from the iterable
	**/
	public function extend(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.index(value, [start, [stop]]) -> integer -- return first index of value.
		Raises ValueError if the value is not present.
	**/
	public function index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.insert(index, object) -- insert object before index
	**/
	public function insert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.pop([index]) -> item -- remove and return item at index (default last).
		Raises IndexError if list is empty or index is out of range.
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.remove(value) -> None -- remove first occurrence of value.
		Raises ValueError if the value is not present.
	**/
	public function remove(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.reverse() -- reverse *IN PLACE*
	**/
	public function reverse(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		L.sort(key=None, reverse=False) -> None -- stable sort *IN PLACE*
	**/
	public function sort(args:haxe.extern.Rest<Dynamic>):Dynamic;
}