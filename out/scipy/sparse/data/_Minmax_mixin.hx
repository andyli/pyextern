/* This file is generated, do not edit! */
package scipy.sparse.data;
@:pythonImport("scipy.sparse.data", "_minmax_mixin") extern class _Minmax_mixin {
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
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
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
	public function _arg_min_or_max(axis:Dynamic, out:Dynamic, op:Dynamic, compare:Dynamic):Dynamic;
	public function _arg_min_or_max_axis(axis:Dynamic, op:Dynamic, compare:Dynamic):Dynamic;
	public function _min_or_max(axis:Dynamic, out:Dynamic, min_or_max:Dynamic):Dynamic;
	public function _min_or_max_axis(axis:Dynamic, min_or_max:Dynamic):Dynamic;
	/**
		Return indices of maximum elements along an axis.
		
		Implicit zero elements are also taken into account. If there are
		several maximum values, the index of the first occurrence is returned.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None}, optional
		    Axis along which the argmax is computed. If None (default), index
		    of the maximum element in the flatten data is returned.
		out : None, optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except for
		    the default value, as this argument is not used.
		
		Returns
		-------
		ind : numpy.matrix or int
		    Indices of maximum elements. If matrix, its size along `axis` is 1.
	**/
	public function argmax(?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return indices of minimum elements along an axis.
		
		Implicit zero elements are also taken into account. If there are
		several minimum values, the index of the first occurrence is returned.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None}, optional
		    Axis along which the argmin is computed. If None (default), index
		    of the minimum element in the flatten data is returned.
		out : None, optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except for
		    the default value, as this argument is not used.
		
		Returns
		-------
		 ind : numpy.matrix or int
		    Indices of minimum elements. If matrix, its size along `axis` is 1.
	**/
	public function argmin(?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the maximum of the matrix or maximum along an axis.
		This takes all elements into account, not just the non-zero ones.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None} optional
		    Axis along which the sum is computed. The default is to
		    compute the maximum over all the matrix elements, returning
		    a scalar (i.e. `axis` = `None`).
		
		out : None, optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except
		    for the default value, as this argument is not used.
		
		Returns
		-------
		amax : coo_matrix or scalar
		    Maximum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is a sparse.coo_matrix of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		min : The minimum value of a sparse matrix along a given axis.
		numpy.matrix.max : NumPy's implementation of 'max' for matrices
	**/
	public function max(?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the minimum of the matrix or maximum along an axis.
		This takes all elements into account, not just the non-zero ones.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None} optional
		    Axis along which the sum is computed. The default is to
		    compute the minimum over all the matrix elements, returning
		    a scalar (i.e. `axis` = `None`).
		
		out : None, optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except for
		    the default value, as this argument is not used.
		
		Returns
		-------
		amin : coo_matrix or scalar
		    Minimum of `a`. If `axis` is None, the result is a scalar value.
		    If `axis` is given, the result is a sparse.coo_matrix of dimension
		    ``a.ndim - 1``.
		
		See Also
		--------
		max : The maximum value of a sparse matrix along a given axis.
		numpy.matrix.min : NumPy's implementation of 'min' for matrices
	**/
	public function min(?axis:Dynamic, ?out:Dynamic):Dynamic;
}