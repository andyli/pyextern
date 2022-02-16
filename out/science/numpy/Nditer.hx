/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "nditer") extern class Nditer {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	public function __enter__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	public function __exit__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Implement next(self).
	**/
	public function __next__():Dynamic;
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
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Set self[key] to value.
	**/
	public function __setitem__(key:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		close()
		
		Resolve all writeback semantics in writeable operands.
		
		.. versionadded:: 1.15.0
		
		See Also
		--------
		
		:ref:`nditer-context-manager`
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		copy()
		
		Get a copy of the iterator in its current state.
		
		Examples
		--------
		>>> x = np.arange(10)
		>>> y = x + 1
		>>> it = np.nditer([x, y])
		>>> next(it)
		(array(0), array(1))
		>>> it2 = it.copy()
		>>> next(it2)
		(array(1), array(2))
	**/
	public function copy(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		debug_print()
		
		Print the current state of the `nditer` instance and debug info to stdout.
	**/
	public function debug_print(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var dtypes : Dynamic;
	/**
		enable_external_loop()
		
		When the "external_loop" was not used during construction, but
		is desired, this modifies the iterator to behave as if the flag
		was specified.
	**/
	public function enable_external_loop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var finished : Dynamic;
	public var has_delayed_bufalloc : Dynamic;
	public var has_index : Dynamic;
	public var has_multi_index : Dynamic;
	public var index : Dynamic;
	public var iterationneedsapi : Dynamic;
	public var iterindex : Dynamic;
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
	public var iterrange : Dynamic;
	public var itersize : Dynamic;
	public var itviews : Dynamic;
	public var multi_index : Dynamic;
	public var ndim : Dynamic;
	public var nop : Dynamic;
	/**
		operands[`Slice`]
		
		The array(s) to be iterated over. Valid only before the iterator is closed.
	**/
	public var operands : Dynamic;
	/**
		remove_axis(i, /)
		
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
	public var shape : Dynamic;
	public var value : Dynamic;
}