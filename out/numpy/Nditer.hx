/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "nditer") extern class Nditer {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
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
		copy()
		
		Get a copy of the iterator in its current state.
		
		Examples
		--------
		>>> x = np.arange(10)
		>>> y = x + 1
		>>> it = np.nditer([x, y])
		>>> it.next()
		(array(0), array(1))
		>>> it2 = it.copy()
		>>> it2.next()
		(array(1), array(2))
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		debug_print()
		
		Print the current state of the `nditer` instance and debug info to stdout.
	**/
	public function debug_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var dtypes : Dynamic;
	/**
		enable_external_loop()
		
		When the "external_loop" was not used during construction, but
		is desired, this modifies the iterator to behave as if the flag
		was specified.
	**/
	public function enable_external_loop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var finished : Dynamic;
	static public var has_delayed_bufalloc : Dynamic;
	static public var has_index : Dynamic;
	static public var has_multi_index : Dynamic;
	static public var index : Dynamic;
	static public var iterationneedsapi : Dynamic;
	static public var iterindex : Dynamic;
	/**
		iternext()
		
		Check whether iterations are left, and perform a single internal iteration
		without returning the result.  Used in the C-style pattern do-while
		pattern.  For an example, see `nditer`.
		
		Returns
		-------
		iternext : bool
		    Whether or not there are iterations left.
	**/
	public function iternext(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iterrange : Dynamic;
	static public var itersize : Dynamic;
	static public var itviews : Dynamic;
	static public var multi_index : Dynamic;
	static public var ndim : Dynamic;
	static public var nop : Dynamic;
	static public var operands : Dynamic;
	/**
		remove_axis(i)
		
		Removes axis `i` from the iterator. Requires that the flag "multi_index"
		be enabled.
	**/
	public function remove_axis(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		remove_multi_index()
		
		When the "multi_index" flag was specified, this removes it, allowing
		the internal iteration structure to be optimized further.
	**/
	public function remove_multi_index(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		reset()
		
		Reset the iterator to its initial state.
	**/
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var shape : Dynamic;
	static public var value : Dynamic;
}