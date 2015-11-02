/* This file is generated, do not edit! */
package numpy.lib.user_array;
@:pythonImport("numpy.lib.user_array", "container") extern class Container {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	public function __array__(?t:Dynamic):Dynamic;
	public function __array_wrap__(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __complex__():Dynamic;
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
	public function __div__(other:Dynamic):Dynamic;
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __float__():Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(index:Dynamic):Dynamic;
	public function __getslice__(i:Dynamic, j:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __hex__():Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __iand__(other:Dynamic):Dynamic;
	public function __idiv__(other:Dynamic):Dynamic;
	public function __ilshift__(other:Dynamic):Dynamic;
	public function __imod__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	public function __int__():Dynamic;
	public function __invert__():Dynamic;
	public function __ior__(other:Dynamic):Dynamic;
	public function __ipow__(other:Dynamic):Dynamic;
	public function __irshift__(other:Dynamic):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __ixor__(other:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	public function __long__():Dynamic;
	public function __lshift__(other:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __oct__():Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pos__():Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
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
	public function __rlshift__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rrshift__(other:Dynamic):Dynamic;
	public function __rshift__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(attr:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(index:Dynamic, value:Dynamic):Dynamic;
	public function __setslice__(i:Dynamic, j:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
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
	public function __xor__(other:Dynamic):Dynamic;
	public function _rc(a:Dynamic):Dynamic;
	public function _scalarfunc(func:Dynamic):Dynamic;
	public function astype(typecode:Dynamic):Dynamic;
	public function byteswap():Dynamic;
	public function copy():Dynamic;
	public function tostring():Dynamic;
}