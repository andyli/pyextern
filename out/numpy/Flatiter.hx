/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "flatiter") extern class Flatiter {
	/**
		__array__(type=None) Get array from iterator
	**/
	public function __array__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Implement next(self).
	**/
	public function __next__():Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
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
		A reference to the array that is iterated over.
		
		Examples
		--------
		>>> x = np.arange(5)
		>>> fl = x.flat
		>>> fl.base is x
		True
	**/
	static public var base : Dynamic;
	/**
		An N-dimensional tuple of current coordinates.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> fl = x.flat
		>>> fl.coords
		(0, 0)
		>>> fl.next()
		0
		>>> fl.coords
		(0, 1)
	**/
	static public var coords : Dynamic;
	/**
		copy()
		
		Get a copy of the iterator as a 1-D array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> fl = x.flat
		>>> fl.copy()
		array([0, 1, 2, 3, 4, 5])
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Current flat index into the array.
		
		Examples
		--------
		>>> x = np.arange(6).reshape(2, 3)
		>>> fl = x.flat
		>>> fl.index
		0
		>>> fl.next()
		0
		>>> fl.index
		1
	**/
	static public var index : Dynamic;
}