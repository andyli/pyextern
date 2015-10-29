/* This file is generated, do not edit! */
package numpy;
@:pythonImport("numpy", "broadcast") extern class Broadcast {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
		current index in broadcasted result
		
		Examples
		--------
		>>> x = np.array([[1], [2], [3]])
		>>> y = np.array([4, 5, 6])
		>>> b = np.broadcast(x, y)
		>>> b.index
		0
		>>> b.next(), b.next(), b.next()
		((1, 4), (1, 5), (1, 6))
		>>> b.index
		3
	**/
	static public var index : Dynamic;
	/**
		tuple of iterators along ``self``'s "components."
		
		Returns a tuple of `numpy.flatiter` objects, one for each "component"
		of ``self``.
		
		See Also
		--------
		numpy.flatiter
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]])
		>>> b = np.broadcast(x, y)
		>>> row, col = b.iters
		>>> row.next(), col.next()
		(1, 4)
	**/
	static public var iters : Dynamic;
	/**
		Number of dimensions of broadcasted result.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]])
		>>> b = np.broadcast(x, y)
		>>> b.nd
		2
	**/
	static public var nd : Dynamic;
	/**
		Number of iterators possessed by the broadcasted result.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]])
		>>> b = np.broadcast(x, y)
		>>> b.numiter
		2
	**/
	static public var numiter : Dynamic;
	/**
		reset()
		
		Reset the broadcasted result's iterator(s).
		
		Parameters
		----------
		None
		
		Returns
		-------
		None
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]]
		>>> b = np.broadcast(x, y)
		>>> b.index
		0
		>>> b.next(), b.next(), b.next()
		((1, 4), (2, 4), (3, 4))
		>>> b.index
		3
		>>> b.reset()
		>>> b.index
		0
	**/
	public function reset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Shape of broadcasted result.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]])
		>>> b = np.broadcast(x, y)
		>>> b.shape
		(3, 3)
	**/
	static public var shape : Dynamic;
	/**
		Total size of broadcasted result.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> y = np.array([[4], [5], [6]])
		>>> b = np.broadcast(x, y)
		>>> b.size
		9
	**/
	static public var size : Dynamic;
}