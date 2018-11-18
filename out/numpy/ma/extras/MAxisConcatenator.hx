/* This file is generated, do not edit! */
package numpy.ma.extras;
@:pythonImport("numpy.ma.extras", "MAxisConcatenator") extern class MAxisConcatenator {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(?axis:Dynamic, ?matrix:Dynamic, ?ndmin:Dynamic, ?trans1d:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?axis:Dynamic, ?matrix:Dynamic, ?ndmin:Dynamic, ?trans1d:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Concatenate a sequence of arrays along the given axis.
		
		Parameters
		----------
		arrays : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined. Default is 0.
		
		Returns
		-------
		result : MaskedArray
		    The concatenated array with any masked entries preserved.
		
		See Also
		--------
		numpy.concatenate : Equivalent function in the top-level NumPy module.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.arange(3)
		>>> a[1] = ma.masked
		>>> b = ma.arange(2, 5)
		>>> a
		masked_array(data = [0 -- 2],
		             mask = [False  True False],
		       fill_value = 999999)
		>>> b
		masked_array(data = [2 3 4],
		             mask = False,
		       fill_value = 999999)
		>>> ma.concatenate([a, b])
		masked_array(data = [0 -- 2 2 3 4],
		             mask = [False  True False False False False],
		       fill_value = 999999)
	**/
	static public function concatenate(arrays:Dynamic, ?axis:Dynamic):numpy.ma.MaskedArray;
	/**
		matrix(data, dtype=None, copy=True)
		
		.. note:: It is no longer recommended to use this class, even for linear
		          algebra. Instead use regular arrays. The class may be removed
		          in the future.
		
		Returns a matrix from an array-like object, or from a string of data.
		A matrix is a specialized 2-D array that retains its 2-D nature
		through operations.  It has certain special operators, such as ``*``
		(matrix multiplication) and ``**`` (matrix power).
		
		Parameters
		----------
		data : array_like or string
		   If `data` is a string, it is interpreted as a matrix with commas
		   or spaces separating columns, and semicolons separating rows.
		dtype : data-type
		   Data-type of the output matrix.
		copy : bool
		   If `data` is already an `ndarray`, then this flag determines
		   whether the data is copied (the default), or whether a view is
		   constructed.
		
		See Also
		--------
		array
		
		Examples
		--------
		>>> a = np.matrix('1 2; 3 4')
		>>> print(a)
		[[1 2]
		 [3 4]]
		
		>>> np.matrix([[1, 2], [3, 4]])
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function makemat(arr:Dynamic):Dynamic;
}