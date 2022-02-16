/* This file is generated, do not edit! */
package numpy.ma.core;
@:pythonImport("numpy.ma.core", "mvoid") extern class Mvoid {
	public var T : Dynamic;
	/**
		abs(self)
	**/
	public function __abs__():Dynamic;
	/**
		Add self to other, and return a new masked array.
	**/
	public function __add__(other:Dynamic):Dynamic;
	/**
		Return self&value.
	**/
	public function __and__(value:Dynamic):Dynamic;
	/**
		a.__array__([dtype], /) -> reference if type unchanged, copy otherwise.
		
		Returns either a new reference to self if dtype is not given or a new array
		of provided data type if dtype is different from the current dtype of the
		array.
	**/
	public function __array__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Finalizes the masked array.
	**/
	public function __array_finalize__(obj:Dynamic):Dynamic;
	public function __array_function__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Array protocol: Python side.
	**/
	public var __array_interface__ : Dynamic;
	/**
		a.__array_prepare__(array[, context], /)
		
		Returns a view of `array` with the same type as self.
	**/
	public function __array_prepare__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __array_priority__ : Dynamic;
	/**
		Array protocol: C-struct side.
	**/
	public var __array_struct__ : Dynamic;
	public function __array_ufunc__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Special hook for ufuncs.
		
		Wraps the numpy array and sets the mask according to context.
	**/
	public function __array_wrap__(obj:Dynamic, ?context:Dynamic):Dynamic;
	/**
		self != 0
	**/
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.__class_getitem__(item, /)
		
		Return a parametrized wrapper around the `~numpy.ndarray` type.
		
		.. versionadded:: 1.22
		
		Returns
		-------
		alias : types.GenericAlias
		    A parametrized `~numpy.ndarray` type.
		
		Examples
		--------
		>>> from typing import Any
		>>> import numpy as np
		
		>>> np.ndarray[Any, np.dtype[Any]]
		numpy.ndarray[typing.Any, numpy.dtype[typing.Any]]
		
		Notes
		-----
		This method is only available for python 3.9 and later.
		
		See Also
		--------
		:pep:`585` : Type hinting generics in standard collections.
		numpy.typing.NDArray : An ndarray alias :term:`generic <generic type>`
		                    w.r.t. its `dtype.type <numpy.dtype.type>`.
	**/
	public function __class_getitem__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __complex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return key in self.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		a.__copy__()
		
		Used if :func:`copy.copy` is called on an array. Returns a copy of the array.
		
		Equivalent to ``a.copy(order='K')``.
	**/
	public function __copy__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.__deepcopy__(memo, /) -> Deep copy of array.
		
		Used if :func:`copy.deepcopy` is called on an array.
	**/
	public function __deepcopy__(?memo:Dynamic):Dynamic;
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
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	/**
		Divide other into self, and return a new masked array.
	**/
	public function __div__(other:Dynamic):Dynamic;
	/**
		Return divmod(self, value).
	**/
	public function __divmod__(value:Dynamic):Dynamic;
	/**
		a.__dlpack__(*, stream=None)
		
		DLPack Protocol: Part of the Array API.
	**/
	public function __dlpack__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.__dlpack_device__()
		
		DLPack Protocol: Part of the Array API.
	**/
	public function __dlpack_device__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Check whether other equals self elementwise.
		
		When either of the elements is masked, the result is masked as well,
		but the underlying boolean data are still set, with self and other
		considered equal if both are masked, and unequal otherwise.
		
		For structured arrays, all fields are combined, with masked values
		ignored. The result is masked if all fields were masked, with self
		and other considered equal only if both were fully masked.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		Convert to float.
	**/
	public function __float__():Dynamic;
	/**
		Divide other into self, and return a new masked array.
	**/
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
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
		Get the index.
	**/
	public function __getitem__(indx:Dynamic):Dynamic;
	/**
		Return the internal state of the masked array, for pickling
		purposes.
	**/
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Add other to self in-place.
	**/
	public function __iadd__(other:Dynamic):Dynamic;
	/**
		Return self&=value.
	**/
	public function __iand__(value:Dynamic):Dynamic;
	/**
		Divide self by other in-place.
	**/
	public function __idiv__(other:Dynamic):Dynamic;
	/**
		Floor divide self by other in-place.
	**/
	public function __ifloordiv__(other:Dynamic):Dynamic;
	/**
		Return self<<=value.
	**/
	public function __ilshift__(value:Dynamic):Dynamic;
	/**
		Return self@=value.
	**/
	public function __imatmul__(value:Dynamic):Dynamic;
	/**
		Return self%=value.
	**/
	public function __imod__(value:Dynamic):Dynamic;
	/**
		Multiply self by other in-place.
	**/
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Return self converted to an integer, if self is suitable for use as an index into a list.
	**/
	public function __index__():Dynamic;
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
		Convert to int.
	**/
	public function __int__():Dynamic;
	/**
		~self
	**/
	public function __invert__():Dynamic;
	/**
		Return self|=value.
	**/
	public function __ior__(value:Dynamic):Dynamic;
	/**
		Raise self to the power other, in place.
	**/
	public function __ipow__(other:Dynamic):Dynamic;
	/**
		Return self>>=value.
	**/
	public function __irshift__(value:Dynamic):Dynamic;
	/**
		Subtract other from self in-place.
	**/
	public function __isub__(other:Dynamic):Dynamic;
	/**
		Defines an iterator for mvoid
	**/
	public function __iter__():Dynamic;
	/**
		True divide self by other in-place.
	**/
	public function __itruediv__(other:Dynamic):Dynamic;
	/**
		Return self^=value.
	**/
	public function __ixor__(value:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
	public function __len__():Dynamic;
	/**
		Return self<<value.
	**/
	public function __lshift__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	/**
		Return self@value.
	**/
	public function __matmul__(value:Dynamic):Dynamic;
	/**
		Return self%value.
	**/
	public function __mod__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Multiply self by other, and return a new masked array.
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Check whether other does not equal self elementwise.
		
		When either of the elements is masked, the result is masked as well,
		but the underlying boolean data are still set, with self and other
		considered equal if both are masked, and unequal otherwise.
		
		For structured arrays, all fields are combined, with masked values
		ignored. The result is masked if all fields were masked, with self
		and other considered equal only if both were fully masked.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		-self
	**/
	public function __neg__():Dynamic;
	/**
		Create a new masked array from scratch.
		
		Notes
		-----
		A masked array can also be created by taking a .view(MaskedArray).
	**/
	static public function __new__(self:Dynamic, data:Dynamic, ?mask:Dynamic, ?dtype:Dynamic, ?fill_value:Dynamic, ?hardmask:Dynamic, ?copy:Dynamic, ?subok:Dynamic):Dynamic;
	/**
		Return self|value.
	**/
	public function __or__(value:Dynamic):Dynamic;
	/**
		+self
	**/
	public function __pos__():Dynamic;
	/**
		Raise self to the power other, masking the potential NaNs/Infs
	**/
	public function __pow__(other:Dynamic):Dynamic;
	/**
		Add other to self, and return a new masked array.
	**/
	public function __radd__(other:Dynamic):Dynamic;
	/**
		Return value&self.
	**/
	public function __rand__(value:Dynamic):Dynamic;
	/**
		Return divmod(value, self).
	**/
	public function __rdivmod__(value:Dynamic):Dynamic;
	/**
		Return a 3-tuple for pickling a MaskedArray.
		
		        
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __repr__():Dynamic;
	/**
		Divide self into other, and return a new masked array.
	**/
	public function __rfloordiv__(other:Dynamic):Dynamic;
	/**
		Return value<<self.
	**/
	public function __rlshift__(value:Dynamic):Dynamic;
	/**
		Return value@self.
	**/
	public function __rmatmul__(value:Dynamic):Dynamic;
	/**
		Return value%self.
	**/
	public function __rmod__(value:Dynamic):Dynamic;
	/**
		Multiply other by self, and return a new masked array.
	**/
	public function __rmul__(other:Dynamic):Dynamic;
	/**
		Return value|self.
	**/
	public function __ror__(value:Dynamic):Dynamic;
	/**
		Raise other to the power self, masking the potential NaNs/Infs
	**/
	public function __rpow__(other:Dynamic):Dynamic;
	/**
		Return value>>self.
	**/
	public function __rrshift__(value:Dynamic):Dynamic;
	/**
		Return self>>value.
	**/
	public function __rshift__(value:Dynamic):Dynamic;
	/**
		Subtract self from other, and return a new masked array.
	**/
	public function __rsub__(other:Dynamic):Dynamic;
	/**
		Divide self into other, and return a new masked array.
	**/
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Return value^self.
	**/
	public function __rxor__(value:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		x.__setitem__(i, y) <==> x[i]=y
		
		Set item described by index. If value is masked, masks those
		locations.
	**/
	public function __setitem__(indx:Dynamic, value:Dynamic):Dynamic;
	/**
		Set the mask.
	**/
	public function __setmask__(mask:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Restore the internal state of the masked array, for
		pickling purposes.  ``state`` is typically the output of the
		``__getstate__`` output, and is a 5-tuple:
		
		- class name
		- a tuple giving the shape of the data
		- a typecode for the data
		- a binary string for the data
		- a binary string for the mask.
	**/
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Subtract other from self, and return a new masked array.
	**/
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Divide other into self, and return a new masked array.
	**/
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		Return self^value.
	**/
	public function __xor__(value:Dynamic):Dynamic;
	/**
		ndarray(shape, dtype=float, buffer=None, offset=0,
		        strides=None, order=None)
		
		An array object represents a multidimensional, homogeneous array
		of fixed-size items.  An associated data-type object describes the
		format of each element in the array (its byte-order, how many bytes it
		occupies in memory, whether it is an integer, a floating point number,
		or something else, etc.)
		
		Arrays should be constructed using `array`, `zeros` or `empty` (refer
		to the See Also section below).  The parameters given here refer to
		a low-level method (`ndarray(...)`) for instantiating an array.
		
		For more information, refer to the `numpy` module and examine the
		methods and attributes of an array.
		
		Parameters
		----------
		(for the __new__ method; see Notes below)
		
		shape : tuple of ints
		    Shape of created array.
		dtype : data-type, optional
		    Any object that can be interpreted as a numpy data type.
		buffer : object exposing buffer interface, optional
		    Used to fill the array with data.
		offset : int, optional
		    Offset of array data in buffer.
		strides : tuple of ints, optional
		    Strides of data in memory.
		order : {'C', 'F'}, optional
		    Row-major (C-style) or column-major (Fortran-style) order.
		
		Attributes
		----------
		T : ndarray
		    Transpose of the array.
		data : buffer
		    The array's elements, in memory.
		dtype : dtype object
		    Describes the format of the elements in the array.
		flags : dict
		    Dictionary containing information related to memory use, e.g.,
		    'C_CONTIGUOUS', 'OWNDATA', 'WRITEABLE', etc.
		flat : numpy.flatiter object
		    Flattened version of the array as an iterator.  The iterator
		    allows assignments, e.g., ``x.flat = 3`` (See `ndarray.flat` for
		    assignment examples; TODO).
		imag : ndarray
		    Imaginary part of the array.
		real : ndarray
		    Real part of the array.
		size : int
		    Number of elements in the array.
		itemsize : int
		    The memory use of each array element in bytes.
		nbytes : int
		    The total number of bytes required to store the array data,
		    i.e., ``itemsize * size``.
		ndim : int
		    The array's number of dimensions.
		shape : tuple of ints
		    Shape of the array.
		strides : tuple of ints
		    The step-size required to move from one element to the next in
		    memory. For example, a contiguous ``(3, 4)`` array of type
		    ``int16`` in C-order has strides ``(8, 2)``.  This implies that
		    to move from element to element in memory requires jumps of 2 bytes.
		    To move from row-to-row, one needs to jump 8 bytes at a time
		    (``2 * 4``).
		ctypes : ctypes object
		    Class containing properties of the array needed for interaction
		    with ctypes.
		base : ndarray
		    If the array is a view into another array, that array is its `base`
		    (unless that array is also a view).  The `base` array is where the
		    array data is actually stored.
		
		See Also
		--------
		array : Construct an array.
		zeros : Create an array, each element of which is zero.
		empty : Create an array, but leave its allocated memory unchanged (i.e.,
		        it contains "garbage").
		dtype : Create a data-type.
		numpy.typing.NDArray : An ndarray alias :term:`generic <generic type>`
		                       w.r.t. its `dtype.type <numpy.dtype.type>`.
		
		Notes
		-----
		There are two modes of creating an array using ``__new__``:
		
		1. If `buffer` is None, then only `shape`, `dtype`, and `order`
		   are used.
		2. If `buffer` is an object exposing the buffer interface, then
		   all keywords are interpreted.
		
		No ``__init__`` method is needed because the array is fully initialized
		after the ``__new__`` method.
		
		Examples
		--------
		These examples illustrate the low-level `ndarray` constructor.  Refer
		to the `See Also` section above for easier ways of constructing an
		ndarray.
		
		First mode, `buffer` is None:
		
		>>> np.ndarray(shape=(2,2), dtype=float, order='F')
		array([[0.0e+000, 0.0e+000], # random
		       [     nan, 2.5e-323]])
		
		Second mode:
		
		>>> np.ndarray((2,), buffer=np.array([1,2,3]),
		...            offset=np.int_().itemsize,
		...            dtype=int) # offset = 1*itemsize, i.e. skip first element
		array([2, 3])
	**/
	public function _baseclass(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare self with other using operator.eq or operator.ne.
		
		When either of the elements is masked, the result is masked as well,
		but the underlying boolean data are still set, with self and other
		considered equal if both are masked, and unequal otherwise.
		
		For structured arrays, all fields are combined, with masked values
		ignored. The result is masked if all fields were masked, with self
		and other considered equal only if both were fully masked.
	**/
	public function _comparison(other:Dynamic, compare:Dynamic):Dynamic;
	/**
		Returns the underlying data, as a view of the masked array.
		
		If the underlying data is a subclass of :class:`numpy.ndarray`, it is
		returned as such.
		
		>>> x = np.ma.array(np.matrix([[1, 2], [3, 4]]), mask=[[0, 1], [1, 0]])
		>>> x.data
		matrix([[1, 2],
		        [3, 4]])
		
		The type of the data can be accessed through the :attr:`baseclass`
		attribute.
	**/
	public var _data : Dynamic;
	static public var _defaulthardmask : Dynamic;
	static public var _defaultmask : Dynamic;
	public function _delegate_binop(other:Dynamic):Dynamic;
	/**
		Returns the underlying data, as a view of the masked array.
		
		If the underlying data is a subclass of :class:`numpy.ndarray`, it is
		returned as such.
		
		>>> x = np.ma.array(np.matrix([[1, 2], [3, 4]]), mask=[[0, 1], [1, 0]])
		>>> x.data
		matrix([[1, 2],
		        [3, 4]])
		
		The type of the data can be accessed through the :attr:`baseclass`
		attribute.
	**/
	public function _get_data():Dynamic;
	/**
		Replace masked values with masked_print_option, casting all innermost
		dtypes to object.
	**/
	public function _insert_masked_print():Dynamic;
	static public var _print_width : Dynamic;
	static public var _print_width_1d : Dynamic;
	/**
		Set the mask.
	**/
	public function _set_mask(mask:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Copies some attributes of obj to self.
	**/
	public function _update_from(obj:Dynamic):Dynamic;
	/**
		Returns True if all elements evaluate to True.
		
		The output array is masked where all the values along the given axis
		are masked: if the output would have been a scalar and that all the
		values are masked, then the output is `masked`.
		
		Refer to `numpy.all` for full documentation.
		
		See Also
		--------
		numpy.ndarray.all : corresponding function for ndarrays
		numpy.all : equivalent function
		
		Examples
		--------
		>>> np.ma.array([1,2,3]).all()
		True
		>>> a = np.ma.array([1,2,3], mask=True)
		>>> (a.all() is np.ma.masked)
		True
	**/
	public function all(?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Compute the anomalies (deviations from the arithmetic mean)
		along the given axis.
		
		Returns an array of anomalies, with the same shape as the input and
		where the arithmetic mean is computed along the given axis.
		
		Parameters
		----------
		axis : int, optional
		    Axis over which the anomalies are taken.
		    The default is to use the mean of the flattened array as reference.
		dtype : dtype, optional
		    Type to use in computing the variance. For arrays of integer type
		     the default is float32; for arrays of float types it is the same as
		     the array type.
		
		See Also
		--------
		mean : Compute the mean of the array.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3])
		>>> a.anom()
		masked_array(data=[-1.,  0.,  1.],
		             mask=False,
		       fill_value=1e+20)
	**/
	public function anom(?axis:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Returns True if any of the elements of `a` evaluate to True.
		
		Masked values are considered as False during computation.
		
		Refer to `numpy.any` for full documentation.
		
		See Also
		--------
		numpy.ndarray.any : corresponding function for ndarrays
		numpy.any : equivalent function
	**/
	public function any(?axis:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Returns array of indices of the maximum values along the given axis.
		Masked values are treated as if they had the value fill_value.
		
		Parameters
		----------
		axis : {None, integer}
		    If None, the index is into the flattened array, otherwise along
		    the specified axis
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.  If None, the output of
		    maximum_fill_value(self._data) is used instead.
		out : {None, array}, optional
		    Array into which the result can be placed. Its type is preserved
		    and it must be of the right shape to hold the output.
		
		Returns
		-------
		index_array : {integer_array}
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a.argmax()
		5
		>>> a.argmax(0)
		array([1, 1, 1])
		>>> a.argmax(1)
		array([2, 2])
	**/
	public function argmax(?axis:Dynamic, ?fill_value:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return array of indices to the minimum values along the given axis.
		
		Parameters
		----------
		axis : {None, integer}
		    If None, the index is into the flattened array, otherwise along
		    the specified axis
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.  If None, the output of
		    minimum_fill_value(self._data) is used instead.
		out : {None, array}, optional
		    Array into which the result can be placed. Its type is preserved
		    and it must be of the right shape to hold the output.
		
		Returns
		-------
		ndarray or scalar
		    If multi-dimension input, returns a new ndarray of indices to the
		    minimum values along the given axis.  Otherwise, returns a scalar
		    of index to the minimum values along the given axis.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(4), mask=[1,1,0,0])
		>>> x.shape = (2,2)
		>>> x
		masked_array(
		  data=[[--, --],
		        [2, 3]],
		  mask=[[ True,  True],
		        [False, False]],
		  fill_value=999999)
		>>> x.argmin(axis=0, fill_value=-1)
		array([0, 0])
		>>> x.argmin(axis=0, fill_value=9)
		array([1, 1])
	**/
	public function argmin(?axis:Dynamic, ?fill_value:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		a.argpartition(kth, axis=-1, kind='introselect', order=None)
		
		Returns the indices that would partition this array.
		
		Refer to `numpy.argpartition` for full documentation.
		
		.. versionadded:: 1.8.0
		
		See Also
		--------
		numpy.argpartition : equivalent function
	**/
	public function argpartition(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an ndarray of indices that sort the array along the
		specified axis.  Masked values are filled beforehand to
		`fill_value`.
		
		Parameters
		----------
		axis : int, optional
		    Axis along which to sort. If None, the default, the flattened array
		    is used.
		
		    ..  versionchanged:: 1.13.0
		        Previously, the default was documented to be -1, but that was
		        in error. At some future date, the default will change to -1, as
		        originally intended.
		        Until then, the axis should be given explicitly when
		        ``arr.ndim > 1``, to avoid a FutureWarning.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    The sorting algorithm used.
		order : list, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc.  Not all fields need be
		    specified.
		endwith : {True, False}, optional
		    Whether missing values (if any) should be treated as the largest values
		    (True) or the smallest values (False)
		    When the array contains unmasked values at the same extremes of the
		    datatype, the ordering of these values and the masked values is
		    undefined.
		fill_value : scalar or None, optional
		    Value used internally for the masked values.
		    If ``fill_value`` is not None, it supersedes ``endwith``.
		
		Returns
		-------
		index_array : ndarray, int
		    Array of indices that sort `a` along the specified axis.
		    In other words, ``a[index_array]`` yields a sorted `a`.
		
		See Also
		--------
		ma.MaskedArray.sort : Describes sorting algorithms used.
		lexsort : Indirect stable sort with multiple keys.
		numpy.ndarray.sort : Inplace sort.
		
		Notes
		-----
		See `sort` for notes on the different sorting algorithms.
		
		Examples
		--------
		>>> a = np.ma.array([3,2,1], mask=[False, False, True])
		>>> a
		masked_array(data=[3, 2, --],
		             mask=[False, False,  True],
		       fill_value=999999)
		>>> a.argsort()
		array([1, 0, 2])
	**/
	public function argsort(?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?endwith:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		a.astype(dtype, order='K', casting='unsafe', subok=True, copy=True)
		
		Copy of the array, cast to a specified type.
		
		Parameters
		----------
		dtype : str or dtype
		    Typecode or data-type to which the array is cast.
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout order of the result.
		    'C' means C order, 'F' means Fortran order, 'A'
		    means 'F' order if all the arrays are Fortran contiguous,
		    'C' order otherwise, and 'K' means as close to the
		    order the array elements appear in memory as possible.
		    Default is 'K'.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur. Defaults to 'unsafe'
		    for backwards compatibility.
		
		      * 'no' means the data types should not be cast at all.
		      * 'equiv' means only byte-order changes are allowed.
		      * 'safe' means only casts which can preserve values are allowed.
		      * 'same_kind' means only safe casts or casts within a kind,
		        like float64 to float32, are allowed.
		      * 'unsafe' means any data conversions may be done.
		subok : bool, optional
		    If True, then sub-classes will be passed-through (default), otherwise
		    the returned array will be forced to be a base-class array.
		copy : bool, optional
		    By default, astype always returns a newly allocated array. If this
		    is set to false, and the `dtype`, `order`, and `subok`
		    requirements are satisfied, the input array is returned instead
		    of a copy.
		
		Returns
		-------
		arr_t : ndarray
		    Unless `copy` is False and the other conditions for returning the input
		    array are satisfied (see description for `copy` input parameter), `arr_t`
		    is a new array of the same shape as the input array, with dtype, order
		    given by `dtype`, `order`.
		
		Notes
		-----
		.. versionchanged:: 1.17.0
		   Casting between a simple data type and a structured one is possible only
		   for "unsafe" casting.  Casting to multiple fields is allowed, but
		   casting from multiple fields is not.
		
		.. versionchanged:: 1.9.0
		   Casting from numeric to string types in 'safe' casting mode requires
		   that the string dtype length is long enough to store the max
		   integer/float value converted.
		
		Raises
		------
		ComplexWarning
		    When casting from complex to float or int. To avoid this,
		    one should use ``a.real.astype(t)``.
		
		Examples
		--------
		>>> x = np.array([1, 2, 2.5])
		>>> x
		array([1. ,  2. ,  2.5])
		
		>>> x.astype(int)
		array([1, 2, 2])
	**/
	public function astype(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Base object if memory is from some other object.
		
		Examples
		--------
		The base of an array that owns its memory is None:
		
		>>> x = np.array([1,2,3,4])
		>>> x.base is None
		True
		
		Slicing creates a view, whose memory is shared with x:
		
		>>> y = x[2:]
		>>> y.base is x
		True
	**/
	public var base : Dynamic;
	/**
		Class of the underlying data (read-only). 
	**/
	public var baseclass : Dynamic;
	/**
		a.byteswap(inplace=False)
		
		Swap the bytes of the array elements
		
		Toggle between low-endian and big-endian data representation by
		returning a byteswapped array, optionally swapped in-place.
		Arrays of byte-strings are not swapped. The real and imaginary
		parts of a complex number are swapped individually.
		
		Parameters
		----------
		inplace : bool, optional
		    If ``True``, swap bytes in-place, default is ``False``.
		
		Returns
		-------
		out : ndarray
		    The byteswapped array. If `inplace` is ``True``, this is
		    a view to self.
		
		Examples
		--------
		>>> A = np.array([1, 256, 8755], dtype=np.int16)
		>>> list(map(hex, A))
		['0x1', '0x100', '0x2233']
		>>> A.byteswap(inplace=True)
		array([  256,     1, 13090], dtype=int16)
		>>> list(map(hex, A))
		['0x100', '0x1', '0x3322']
		
		Arrays of byte-strings are not swapped
		
		>>> A = np.array([b'ceg', b'fac'])
		>>> A.byteswap()
		array([b'ceg', b'fac'], dtype='|S3')
		
		``A.newbyteorder().byteswap()`` produces an array with the same values
		  but different representation in memory
		
		>>> A = np.array([1, 2, 3])
		>>> A.view(np.uint8)
		array([1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0,
		       0, 0], dtype=uint8)
		>>> A.newbyteorder().byteswap(inplace=True)
		array([1, 2, 3])
		>>> A.view(np.uint8)
		array([0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0,
		       0, 3], dtype=uint8)
	**/
	public function byteswap(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.choose(choices, out=None, mode='raise')
		
		Use an index array to construct a new array from a set of choices.
		
		Refer to `numpy.choose` for full documentation.
		
		See Also
		--------
		numpy.choose : equivalent function
	**/
	public function choose(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.clip(min=None, max=None, out=None, **kwargs)
		
		Return an array whose values are limited to ``[min, max]``.
		One of max or min must be given.
		
		Refer to `numpy.clip` for full documentation.
		
		See Also
		--------
		numpy.clip : equivalent function
	**/
	public function clip(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return `a` where condition is ``True``.
		
		If condition is a `~ma.MaskedArray`, missing values are considered
		as ``False``.
		
		Parameters
		----------
		condition : var
		    Boolean 1-d array selecting which entries to return. If len(condition)
		    is less than the size of a along the axis, then output is truncated
		    to length of condition array.
		axis : {None, int}, optional
		    Axis along which the operation must be performed.
		out : {None, ndarray}, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type will be cast if
		    necessary.
		
		Returns
		-------
		result : MaskedArray
		    A :class:`~ma.MaskedArray` object.
		
		Notes
		-----
		Please note the difference with :meth:`compressed` !
		The output of :meth:`compress` has a mask, the output of
		:meth:`compressed` does not.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.compress([1, 0, 1])
		masked_array(data=[1, 3],
		             mask=[False, False],
		       fill_value=999999)
		
		>>> x.compress([1, 0, 1], axis=1)
		masked_array(
		  data=[[1, 3],
		        [--, --],
		        [7, 9]],
		  mask=[[False, False],
		        [ True,  True],
		        [False, False]],
		  fill_value=999999)
	**/
	public function compress(condition:Dynamic, ?axis:Dynamic, ?out:Dynamic):numpy.ma.MaskedArray;
	/**
		Return all the non-masked data as a 1-D array.
		
		Returns
		-------
		data : ndarray
		    A new `ndarray` holding the non-masked data is returned.
		
		Notes
		-----
		The result is **not** a MaskedArray!
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(5), mask=[0]*2 + [1]*3)
		>>> x.compressed()
		array([0, 1])
		>>> type(x.compressed())
		<class 'numpy.ndarray'>
	**/
	public function compressed():numpy.Ndarray;
	/**
		a.conj()
		
		Complex-conjugate all elements.
		
		Refer to `numpy.conjugate` for full documentation.
		
		See Also
		--------
		numpy.conjugate : equivalent function
	**/
	public function conj(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.conjugate()
		
		Return the complex conjugate, element-wise.
		
		Refer to `numpy.conjugate` for full documentation.
		
		See Also
		--------
		numpy.conjugate : equivalent function
	**/
	public function conjugate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.copy(order='C')
		
		Return a copy of the array.
		
		Parameters
		----------
		order : {'C', 'F', 'A', 'K'}, optional
		    Controls the memory layout of the copy. 'C' means C-order,
		    'F' means F-order, 'A' means 'F' if `a` is Fortran contiguous,
		    'C' otherwise. 'K' means match the layout of `a` as closely
		    as possible. (Note that this function and :func:`numpy.copy` are very
		    similar but have different default values for their order=
		    arguments, and this function always passes sub-classes through.)
		
		See also
		--------
		numpy.copy : Similar function with different default behavior
		numpy.copyto
		
		Notes
		-----
		This function is the preferred method for creating an array copy.  The
		function :func:`numpy.copy` is similar, but it defaults to using order 'K',
		and will not pass sub-classes through by default.
		
		Examples
		--------
		>>> x = np.array([[1,2,3],[4,5,6]], order='F')
		
		>>> y = x.copy()
		
		>>> x.fill(0)
		
		>>> x
		array([[0, 0, 0],
		       [0, 0, 0]])
		
		>>> y
		array([[1, 2, 3],
		       [4, 5, 6]])
		
		>>> y.flags['C_CONTIGUOUS']
		True
	**/
	public function copy(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Count the non-masked elements of the array along the given axis.
		
		Parameters
		----------
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the count is performed.
		    The default, None, performs the count over all
		    the dimensions of the input array. `axis` may be negative, in
		    which case it counts from the last to the first axis.
		
		    .. versionadded:: 1.10.0
		
		    If this is a tuple of ints, the count is performed on multiple
		    axes, instead of a single axis or all the axes as before.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		result : ndarray or scalar
		    An array with the same shape as the input array, with the specified
		    axis removed. If the array is a 0-d array, or if `axis` is None, a
		    scalar is returned.
		
		See Also
		--------
		ma.count_masked : Count masked elements in array or along a given axis.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> a = ma.arange(6).reshape((2, 3))
		>>> a[1, :] = ma.masked
		>>> a
		masked_array(
		  data=[[0, 1, 2],
		        [--, --, --]],
		  mask=[[False, False, False],
		        [ True,  True,  True]],
		  fill_value=999999)
		>>> a.count()
		3
		
		When the `axis` keyword is specified an array of appropriate size is
		returned.
		
		>>> a.count(axis=0)
		array([1, 1, 1])
		>>> a.count(axis=1)
		array([3, 0])
	**/
	public function count(?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		An object to simplify the interaction of the array with the ctypes
		module.
		
		This attribute creates an object that makes it easier to use arrays
		when calling shared libraries with the ctypes module. The returned
		object has, among others, data, shape, and strides attributes (see
		Notes below) which themselves return ctypes objects that can be used
		as arguments to a shared library.
		
		Parameters
		----------
		None
		
		Returns
		-------
		c : Python object
		    Possessing attributes data, shape, strides, etc.
		
		See Also
		--------
		numpy.ctypeslib
		
		Notes
		-----
		Below are the public attributes of this object which were documented
		in "Guide to NumPy" (we have omitted undocumented public attributes,
		as well as documented private attributes):
		
		.. autoattribute:: numpy.core._internal._ctypes.data
		    :noindex:
		
		.. autoattribute:: numpy.core._internal._ctypes.shape
		    :noindex:
		
		.. autoattribute:: numpy.core._internal._ctypes.strides
		    :noindex:
		
		.. automethod:: numpy.core._internal._ctypes.data_as
		    :noindex:
		
		.. automethod:: numpy.core._internal._ctypes.shape_as
		    :noindex:
		
		.. automethod:: numpy.core._internal._ctypes.strides_as
		    :noindex:
		
		If the ctypes module is not available, then the ctypes attribute
		of array objects still returns something useful, but ctypes objects
		are not returned and errors may be raised instead. In particular,
		the object will still have the ``as_parameter`` attribute which will
		return an integer equal to the data attribute.
		
		Examples
		--------
		>>> import ctypes
		>>> x = np.array([[0, 1], [2, 3]], dtype=np.int32)
		>>> x
		array([[0, 1],
		       [2, 3]], dtype=int32)
		>>> x.ctypes.data
		31962608 # may vary
		>>> x.ctypes.data_as(ctypes.POINTER(ctypes.c_uint32))
		<__main__.LP_c_uint object at 0x7ff2fc1fc200> # may vary
		>>> x.ctypes.data_as(ctypes.POINTER(ctypes.c_uint32)).contents
		c_uint(0)
		>>> x.ctypes.data_as(ctypes.POINTER(ctypes.c_uint64)).contents
		c_ulong(4294967296)
		>>> x.ctypes.shape
		<numpy.core._internal.c_long_Array_2 object at 0x7ff2fc1fce60> # may vary
		>>> x.ctypes.strides
		<numpy.core._internal.c_long_Array_2 object at 0x7ff2fc1ff320> # may vary
	**/
	public var ctypes : Dynamic;
	/**
		Return the cumulative product of the array elements over the given axis.
		
		Masked values are set to 1 internally during the computation.
		However, their position is saved, and the result will be masked at
		the same locations.
		
		Refer to `numpy.cumprod` for full documentation.
		
		Notes
		-----
		The mask is lost if `out` is not a valid MaskedArray !
		
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		See Also
		--------
		numpy.ndarray.cumprod : corresponding function for ndarrays
		numpy.cumprod : equivalent function
	**/
	public function cumprod(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Return the cumulative sum of the array elements over the given axis.
		
		Masked values are set to 0 internally during the computation.
		However, their position is saved, and the result will be masked at
		the same locations.
		
		Refer to `numpy.cumsum` for full documentation.
		
		Notes
		-----
		The mask is lost if `out` is not a valid :class:`ma.MaskedArray` !
		
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.
		
		See Also
		--------
		numpy.ndarray.cumsum : corresponding function for ndarrays
		numpy.cumsum : equivalent function
		
		Examples
		--------
		>>> marr = np.ma.array(np.arange(10), mask=[0,0,0,1,1,1,0,0,0,0])
		>>> marr.cumsum()
		masked_array(data=[0, 1, 3, --, --, --, 9, 16, 24, 33],
		             mask=[False, False, False,  True,  True,  True, False, False,
		                   False, False],
		       fill_value=999999)
	**/
	public function cumsum(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Returns the underlying data, as a view of the masked array.
		
		If the underlying data is a subclass of :class:`numpy.ndarray`, it is
		returned as such.
		
		>>> x = np.ma.array(np.matrix([[1, 2], [3, 4]]), mask=[[0, 1], [1, 0]])
		>>> x.data
		matrix([[1, 2],
		        [3, 4]])
		
		The type of the data can be accessed through the :attr:`baseclass`
		attribute.
	**/
	public var data : Dynamic;
	/**
		a.diagonal(offset=0, axis1=0, axis2=1)
		
		Return specified diagonals. In NumPy 1.9 the returned array is a
		read-only view instead of a copy as in previous NumPy versions.  In
		a future version the read-only restriction will be removed.
		
		Refer to :func:`numpy.diagonal` for full documentation.
		
		See Also
		--------
		numpy.diagonal : equivalent function
	**/
	public function diagonal(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		a.dot(b, out=None)
		
		Masked dot product of two arrays. Note that `out` and `strict` are
		located in different positions than in `ma.dot`. In order to
		maintain compatibility with the functional version, it is
		recommended that the optional arguments be treated as keyword only.
		At some point that may be mandatory.
		
		.. versionadded:: 1.10.0
		
		Parameters
		----------
		b : masked_array_like
		    Inputs array.
		out : masked_array, optional
		    Output argument. This must have the exact kind that would be
		    returned if it was not used. In particular, it must have the
		    right type, must be C-contiguous, and its dtype must be the
		    dtype that would be returned for `ma.dot(a,b)`. This is a
		    performance feature. Therefore, if these conditions are not
		    met, an exception is raised, instead of attempting to be
		    flexible.
		strict : bool, optional
		    Whether masked data are propagated (True) or set to 0 (False)
		    for the computation. Default is False.  Propagating the mask
		    means that if a masked value appears in a row or column, the
		    whole row or column is considered masked.
		
		    .. versionadded:: 1.10.2
		
		See Also
		--------
		numpy.ma.dot : equivalent function
	**/
	public function dot(b:Dynamic, ?out:Dynamic, ?strict:Dynamic):Dynamic;
	/**
		Data-type of the array's elements.
		
		Parameters
		----------
		None
		
		Returns
		-------
		d : numpy dtype object
		
		See Also
		--------
		numpy.dtype
		
		Examples
		--------
		>>> x
		array([[0, 1],
		       [2, 3]])
		>>> x.dtype
		dtype('int32')
		>>> type(x.dtype)
		<type 'numpy.dtype'>
	**/
	public var dtype : Dynamic;
	/**
		a.dump(file)
		
		Dump a pickle of the array to the specified file.
		The array can be read back with pickle.load or numpy.load.
		
		Parameters
		----------
		file : str or Path
		    A string naming the dump file.
		
		    .. versionchanged:: 1.17.0
		        `pathlib.Path` objects are now accepted.
	**/
	public function dump(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.dumps()
		
		Returns the pickle of the array as a string.
		pickle.loads will convert the string back to an array.
		
		Parameters
		----------
		None
	**/
	public function dumps(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.fill(value)
		
		Fill the array with a scalar value.
		
		Parameters
		----------
		value : scalar
		    All elements of `a` will be assigned this value.
		
		Examples
		--------
		>>> a = np.array([1, 2])
		>>> a.fill(0)
		>>> a
		array([0, 0])
		>>> a = np.empty(2)
		>>> a.fill(1)
		>>> a
		array([1.,  1.])
	**/
	public function fill(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		The filling value of the masked array is a scalar. When setting, None
		will set to a default based on the data type.
		
		Examples
		--------
		>>> for dt in [np.int32, np.int64, np.float64, np.complex128]:
		...     np.ma.array([0, 1], dtype=dt).get_fill_value()
		...
		999999
		999999
		1e+20
		(1e+20+0j)
		
		>>> x = np.ma.array([0, 1.], fill_value=-np.inf)
		>>> x.fill_value
		-inf
		>>> x.fill_value = np.pi
		>>> x.fill_value
		3.1415926535897931 # may vary
		
		Reset to default:
		
		>>> x.fill_value = None
		>>> x.fill_value
		1e+20
	**/
	public var fill_value : Dynamic;
	/**
		Return a copy with masked fields filled with a given value.
		
		Parameters
		----------
		fill_value : array_like, optional
		    The value to use for invalid entries. Can be scalar or
		    non-scalar. If latter is the case, the filled array should
		    be broadcastable over input array. Default is None, in
		    which case the `fill_value` attribute is used instead.
		
		Returns
		-------
		filled_void
		    A `np.void` object
		
		See Also
		--------
		MaskedArray.filled
	**/
	public function filled(?fill_value:Dynamic):Dynamic;
	/**
		Information about the memory layout of the array.
		
		Attributes
		----------
		C_CONTIGUOUS (C)
		    The data is in a single, C-style contiguous segment.
		F_CONTIGUOUS (F)
		    The data is in a single, Fortran-style contiguous segment.
		OWNDATA (O)
		    The array owns the memory it uses or borrows it from another object.
		WRITEABLE (W)
		    The data area can be written to.  Setting this to False locks
		    the data, making it read-only.  A view (slice, etc.) inherits WRITEABLE
		    from its base array at creation time, but a view of a writeable
		    array may be subsequently locked while the base array remains writeable.
		    (The opposite is not true, in that a view of a locked array may not
		    be made writeable.  However, currently, locking a base object does not
		    lock any views that already reference it, so under that circumstance it
		    is possible to alter the contents of a locked array via a previously
		    created writeable view onto it.)  Attempting to change a non-writeable
		    array raises a RuntimeError exception.
		ALIGNED (A)
		    The data and all elements are aligned appropriately for the hardware.
		WRITEBACKIFCOPY (X)
		    This array is a copy of some other array. The C-API function
		    PyArray_ResolveWritebackIfCopy must be called before deallocating
		    to the base array will be updated with the contents of this array.
		UPDATEIFCOPY (U)
		    (Deprecated, use WRITEBACKIFCOPY) This array is a copy of some other array.
		    When this array is
		    deallocated, the base array will be updated with the contents of
		    this array.
		FNC
		    F_CONTIGUOUS and not C_CONTIGUOUS.
		FORC
		    F_CONTIGUOUS or C_CONTIGUOUS (one-segment test).
		BEHAVED (B)
		    ALIGNED and WRITEABLE.
		CARRAY (CA)
		    BEHAVED and C_CONTIGUOUS.
		FARRAY (FA)
		    BEHAVED and F_CONTIGUOUS and not C_CONTIGUOUS.
		
		Notes
		-----
		The `flags` object can be accessed dictionary-like (as in ``a.flags['WRITEABLE']``),
		or by using lowercased attribute names (as in ``a.flags.writeable``). Short flag
		names are only supported in dictionary access.
		
		Only the WRITEBACKIFCOPY, UPDATEIFCOPY, WRITEABLE, and ALIGNED flags can be
		changed by the user, via direct assignment to the attribute or dictionary
		entry, or by calling `ndarray.setflags`.
		
		The array flags cannot be set arbitrarily:
		
		- UPDATEIFCOPY can only be set ``False``.
		- WRITEBACKIFCOPY can only be set ``False``.
		- ALIGNED can only be set ``True`` if the data is truly aligned.
		- WRITEABLE can only be set ``True`` if the array owns its own memory
		  or the ultimate owner of the memory exposes a writeable buffer
		  interface or is a string.
		
		Arrays can be both C-style and Fortran-style contiguous simultaneously.
		This is clear for 1-dimensional arrays, but can also be true for higher
		dimensional arrays.
		
		Even for contiguous arrays a stride for a given dimension
		``arr.strides[dim]`` may be *arbitrary* if ``arr.shape[dim] == 1``
		or the array has no elements.
		It does *not* generally hold that ``self.strides[-1] == self.itemsize``
		for C-style contiguous arrays or ``self.strides[0] == self.itemsize`` for
		Fortran-style contiguous arrays is true.
	**/
	public var flags : Dynamic;
	/**
		Return a flat iterator, or set a flattened version of self to value. 
	**/
	public var flat : Dynamic;
	/**
		a.flatten(order='C')
		
		Return a copy of the array collapsed into one dimension.
		
		Parameters
		----------
		order : {'C', 'F', 'A', 'K'}, optional
		    'C' means to flatten in row-major (C-style) order.
		    'F' means to flatten in column-major (Fortran-
		    style) order. 'A' means to flatten in column-major
		    order if `a` is Fortran *contiguous* in memory,
		    row-major order otherwise. 'K' means to flatten
		    `a` in the order the elements occur in memory.
		    The default is 'C'.
		
		Returns
		-------
		y : ndarray
		    A copy of the input array, flattened to one dimension.
		
		See Also
		--------
		ravel : Return a flattened array.
		flat : A 1-D flat iterator over the array.
		
		Examples
		--------
		>>> a = np.array([[1,2], [3,4]])
		>>> a.flatten()
		array([1, 2, 3, 4])
		>>> a.flatten('F')
		array([1, 3, 2, 4])
	**/
	public function flatten(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		The filling value of the masked array is a scalar. When setting, None
		will set to a default based on the data type.
		
		Examples
		--------
		>>> for dt in [np.int32, np.int64, np.float64, np.complex128]:
		...     np.ma.array([0, 1], dtype=dt).get_fill_value()
		...
		999999
		999999
		1e+20
		(1e+20+0j)
		
		>>> x = np.ma.array([0, 1.], fill_value=-np.inf)
		>>> x.fill_value
		-inf
		>>> x.fill_value = np.pi
		>>> x.fill_value
		3.1415926535897931 # may vary
		
		Reset to default:
		
		>>> x.fill_value = None
		>>> x.fill_value
		1e+20
	**/
	public function get_fill_value():Dynamic;
	/**
		The imaginary part of the masked array.
		
		This property is a view on the imaginary part of this `MaskedArray`.
		
		See Also
		--------
		real
		
		Examples
		--------
		>>> x = np.ma.array([1+1.j, -2j, 3.45+1.6j], mask=[False, True, False])
		>>> x.imag
		masked_array(data=[1.0, --, 1.6],
		             mask=[False,  True, False],
		       fill_value=1e+20)
	**/
	public function get_imag():Dynamic;
	/**
		The real part of the masked array.
		
		This property is a view on the real part of this `MaskedArray`.
		
		See Also
		--------
		imag
		
		Examples
		--------
		>>> x = np.ma.array([1+1.j, -2j, 3.45+1.6j], mask=[False, True, False])
		>>> x.real
		masked_array(data=[1.0, --, 3.45],
		             mask=[False,  True, False],
		       fill_value=1e+20)
	**/
	public function get_real():Dynamic;
	/**
		a.getfield(dtype, offset=0)
		
		Returns a field of the given array as a certain type.
		
		A field is a view of the array data with a given data-type. The values in
		the view are determined by the given type and the offset into the current
		array in bytes. The offset needs to be such that the view dtype fits in the
		array dtype; for example an array of dtype complex128 has 16-byte elements.
		If taking a view with a 32-bit integer (4 bytes), the offset needs to be
		between 0 and 12 bytes.
		
		Parameters
		----------
		dtype : str or dtype
		    The data type of the view. The dtype size of the view can not be larger
		    than that of the array itself.
		offset : int
		    Number of bytes to skip before beginning the element view.
		
		Examples
		--------
		>>> x = np.diag([1.+1.j]*2)
		>>> x[1, 1] = 2 + 4.j
		>>> x
		array([[1.+1.j,  0.+0.j],
		       [0.+0.j,  2.+4.j]])
		>>> x.getfield(np.float64)
		array([[1.,  0.],
		       [0.,  2.]])
		
		By choosing an offset of 8 bytes we can select the complex part of the
		array for our view:
		
		>>> x.getfield(np.float64, offset=8)
		array([[1.,  0.],
		       [0.,  4.]])
	**/
	public function getfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Force the mask to hard.
		
		Whether the mask of a masked array is hard or soft is determined by
		its `~ma.MaskedArray.hardmask` property. `harden_mask` sets
		`~ma.MaskedArray.hardmask` to ``True``.
		
		See Also
		--------
		ma.MaskedArray.hardmask
	**/
	public function harden_mask():Dynamic;
	/**
		Hardness of the mask 
	**/
	public var hardmask : Dynamic;
	/**
		Return the addresses of the data and mask areas.
		
		Parameters
		----------
		None
		
		Examples
		--------
		>>> x = np.ma.array([1, 2, 3], mask=[0, 1, 1])
		>>> x.ids()
		(166670640, 166659832) # may vary
		
		If the array has no mask, the address of `nomask` is returned. This address
		is typically not close to the data in memory:
		
		>>> x = np.ma.array([1, 2, 3])
		>>> x.ids()
		(166691080, 3083169284) # may vary
	**/
	public function ids():Dynamic;
	/**
		The imaginary part of the masked array.
		
		This property is a view on the imaginary part of this `MaskedArray`.
		
		See Also
		--------
		real
		
		Examples
		--------
		>>> x = np.ma.array([1+1.j, -2j, 3.45+1.6j], mask=[False, True, False])
		>>> x.imag
		masked_array(data=[1.0, --, 1.6],
		             mask=[False,  True, False],
		       fill_value=1e+20)
	**/
	public var imag : Dynamic;
	/**
		Return a boolean indicating whether the data is contiguous.
		
		Parameters
		----------
		None
		
		Examples
		--------
		>>> x = np.ma.array([1, 2, 3])
		>>> x.iscontiguous()
		True
		
		`iscontiguous` returns one of the flags of the masked array:
		
		>>> x.flags
		  C_CONTIGUOUS : True
		  F_CONTIGUOUS : True
		  OWNDATA : False
		  WRITEABLE : True
		  ALIGNED : True
		  WRITEBACKIFCOPY : False
		  UPDATEIFCOPY : False
	**/
	public function iscontiguous():Dynamic;
	/**
		a.item(*args)
		
		Copy an element of an array to a standard Python scalar and return it.
		
		Parameters
		----------
		\*args : Arguments (variable number and type)
		
		    * none: in this case, the method only works for arrays
		      with one element (`a.size == 1`), which element is
		      copied into a standard Python scalar object and returned.
		
		    * int_type: this argument is interpreted as a flat index into
		      the array, specifying which element to copy and return.
		
		    * tuple of int_types: functions as does a single int_type argument,
		      except that the argument is interpreted as an nd-index into the
		      array.
		
		Returns
		-------
		z : Standard Python scalar object
		    A copy of the specified element of the array as a suitable
		    Python scalar
		
		Notes
		-----
		When the data type of `a` is longdouble or clongdouble, item() returns
		a scalar array object because there is no available Python scalar that
		would not lose information. Void arrays return a buffer object for item(),
		unless fields are defined, in which case a tuple is returned.
		
		`item` is very similar to a[args], except, instead of an array scalar,
		a standard Python scalar is returned. This can be useful for speeding up
		access to elements of the array and doing arithmetic on elements of the
		array using Python's optimized math.
		
		Examples
		--------
		>>> np.random.seed(123)
		>>> x = np.random.randint(9, size=(3, 3))
		>>> x
		array([[2, 2, 6],
		       [1, 3, 6],
		       [1, 0, 1]])
		>>> x.item(3)
		1
		>>> x.item(7)
		0
		>>> x.item((0, 1))
		2
		>>> x.item((2, 2))
		1
	**/
	public function item(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.itemset(*args)
		
		Insert scalar into an array (scalar is cast to array's dtype, if possible)
		
		There must be at least 1 argument, and define the last argument
		as *item*.  Then, ``a.itemset(*args)`` is equivalent to but faster
		than ``a[args] = item``.  The item should be a scalar value and `args`
		must select a single item in the array `a`.
		
		Parameters
		----------
		\*args : Arguments
		    If one argument: a scalar, only used in case `a` is of size 1.
		    If two arguments: the last argument is the value to be set
		    and must be a scalar, the first argument specifies a single array
		    element location. It is either an int or a tuple.
		
		Notes
		-----
		Compared to indexing syntax, `itemset` provides some speed increase
		for placing a scalar into a particular location in an `ndarray`,
		if you must do this.  However, generally this is discouraged:
		among other problems, it complicates the appearance of the code.
		Also, when using `itemset` (and `item`) inside a loop, be sure
		to assign the methods to a local variable to avoid the attribute
		look-up at each loop iteration.
		
		Examples
		--------
		>>> np.random.seed(123)
		>>> x = np.random.randint(9, size=(3, 3))
		>>> x
		array([[2, 2, 6],
		       [1, 3, 6],
		       [1, 0, 1]])
		>>> x.itemset(4, 0)
		>>> x.itemset((2, 2), 9)
		>>> x
		array([[2, 2, 6],
		       [1, 0, 6],
		       [1, 0, 9]])
	**/
	public function itemset(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Length of one array element in bytes.
		
		Examples
		--------
		>>> x = np.array([1,2,3], dtype=np.float64)
		>>> x.itemsize
		8
		>>> x = np.array([1,2,3], dtype=np.complex128)
		>>> x.itemsize
		16
	**/
	public var itemsize : Dynamic;
	/**
		Current mask. 
	**/
	public var mask : Dynamic;
	/**
		Return the maximum along a given axis.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to operate.  By default, ``axis`` is None and the
		    flattened input is used.
		out : array_like, optional
		    Alternative output array in which to place the result.  Must
		    be of the same shape and buffer length as the expected output.
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		    If None, use the output of maximum_fill_value().
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		amax : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		ma.maximum_fill_value
		    Returns the maximum filling value for a given datatype.
	**/
	public function max(?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Returns the average of the array elements along given axis.
		
		Masked entries are ignored, and result elements which are not
		finite will be masked.
		
		Refer to `numpy.mean` for full documentation.
		
		See Also
		--------
		numpy.ndarray.mean : corresponding function for ndarrays
		numpy.mean : Equivalent function
		numpy.ma.average : Weighted average.
		
		Examples
		--------
		>>> a = np.ma.array([1,2,3], mask=[False, False, True])
		>>> a
		masked_array(data=[1, 2, --],
		             mask=[False, False,  True],
		       fill_value=999999)
		>>> a.mean()
		1.5
	**/
	public function mean(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the minimum along a given axis.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to operate.  By default, ``axis`` is None and the
		    flattened input is used.
		out : array_like, optional
		    Alternative output array in which to place the result.  Must be of
		    the same shape and buffer length as the expected output.
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		    If None, use the output of `minimum_fill_value`.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		amin : array_like
		    New array holding the result.
		    If ``out`` was specified, ``out`` is returned.
		
		See Also
		--------
		ma.minimum_fill_value
		    Returns the minimum filling value for a given datatype.
	**/
	public function min(?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):python.NativeIterable<Dynamic>;
	/**
		Return the array minimum along the specified axis.
		
		.. deprecated:: 1.13.0
		   This function is identical to both:
		
		    * ``self.min(keepdims=True, axis=axis).squeeze(axis=axis)``
		    * ``np.ma.minimum.reduce(self, axis=axis)``
		
		   Typically though, ``self.min(axis=axis)`` is sufficient.
		
		Parameters
		----------
		axis : int, optional
		    The axis along which to find the minima. Default is None, in which case
		    the minimum value in the whole array is returned.
		
		Returns
		-------
		min : scalar or MaskedArray
		    If `axis` is None, the result is a scalar. Otherwise, if `axis` is
		    given and the array is at least 2-D, the result is a masked array with
		    dimension one smaller than the array on which `mini` is called.
		
		Examples
		--------
		>>> x = np.ma.array(np.arange(6), mask=[0 ,1, 0, 0, 0 ,1]).reshape(3, 2)
		>>> x
		masked_array(
		  data=[[0, --],
		        [2, 3],
		        [4, --]],
		  mask=[[False,  True],
		        [False, False],
		        [False,  True]],
		  fill_value=999999)
		>>> x.mini()
		masked_array(data=0,
		             mask=False,
		       fill_value=999999)
		>>> x.mini(axis=0)
		masked_array(data=[0, 3],
		             mask=[False, False],
		       fill_value=999999)
		>>> x.mini(axis=1)
		masked_array(data=[0, 2, 4],
		             mask=[False, False, False],
		       fill_value=999999)
		
		There is a small difference between `mini` and `min`:
		
		>>> x[:,1].mini(axis=0)
		masked_array(data=3,
		             mask=False,
		       fill_value=999999)
		>>> x[:,1].min(axis=0)
		3
	**/
	public function mini(?axis:Dynamic):Dynamic;
	/**
		Total bytes consumed by the elements of the array.
		
		Notes
		-----
		Does not include memory consumed by non-element attributes of the
		array object.
		
		Examples
		--------
		>>> x = np.zeros((3,5,2), dtype=np.complex128)
		>>> x.nbytes
		480
		>>> np.prod(x.shape) * x.itemsize
		480
	**/
	public var nbytes : Dynamic;
	/**
		Number of array dimensions.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3])
		>>> x.ndim
		1
		>>> y = np.zeros((2, 3, 4))
		>>> y.ndim
		3
	**/
	public var ndim : Dynamic;
	/**
		arr.newbyteorder(new_order='S', /)
		
		Return the array with the same data viewed with a different byte order.
		
		Equivalent to::
		
		    arr.view(arr.dtype.newbytorder(new_order))
		
		Changes are also made in all fields and sub-arrays of the array data
		type.
		
		
		
		Parameters
		----------
		new_order : string, optional
		    Byte order to force; a value from the byte order specifications
		    below. `new_order` codes can be any of:
		
		    * 'S' - swap dtype from current to opposite endian
		    * {'<', 'little'} - little endian
		    * {'>', 'big'} - big endian
		    * {'=', 'native'} - native order, equivalent to `sys.byteorder`
		    * {'|', 'I'} - ignore (no change to byte order)
		
		    The default value ('S') results in swapping the current
		    byte order.
		
		
		Returns
		-------
		new_arr : array
		    New array object with the dtype reflecting given change to the
		    byte order.
	**/
	public function newbyteorder(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the indices of unmasked elements that are not zero.
		
		Returns a tuple of arrays, one for each dimension, containing the
		indices of the non-zero elements in that dimension. The corresponding
		non-zero values can be obtained with::
		
		    a[a.nonzero()]
		
		To group the indices by element, rather than dimension, use
		instead::
		
		    np.transpose(a.nonzero())
		
		The result of this is always a 2d array, with a row for each non-zero
		element.
		
		Parameters
		----------
		None
		
		Returns
		-------
		tuple_of_arrays : tuple
		    Indices of elements that are non-zero.
		
		See Also
		--------
		numpy.nonzero :
		    Function operating on ndarrays.
		flatnonzero :
		    Return indices that are non-zero in the flattened version of the input
		    array.
		numpy.ndarray.nonzero :
		    Equivalent ndarray method.
		count_nonzero :
		    Counts the number of non-zero elements in the input array.
		
		Examples
		--------
		>>> import numpy.ma as ma
		>>> x = ma.array(np.eye(3))
		>>> x
		masked_array(
		  data=[[1., 0., 0.],
		        [0., 1., 0.],
		        [0., 0., 1.]],
		  mask=False,
		  fill_value=1e+20)
		>>> x.nonzero()
		(array([0, 1, 2]), array([0, 1, 2]))
		
		Masked elements are ignored.
		
		>>> x[1, 1] = ma.masked
		>>> x
		masked_array(
		  data=[[1.0, 0.0, 0.0],
		        [0.0, --, 0.0],
		        [0.0, 0.0, 1.0]],
		  mask=[[False, False, False],
		        [False,  True, False],
		        [False, False, False]],
		  fill_value=1e+20)
		>>> x.nonzero()
		(array([0, 2]), array([0, 2]))
		
		Indices can also be grouped by element.
		
		>>> np.transpose(x.nonzero())
		array([[0, 0],
		       [2, 2]])
		
		A common use for ``nonzero`` is to find the indices of an array, where
		a condition is True.  Given an array `a`, the condition `a` > 3 is a
		boolean array and since False is interpreted as 0, ma.nonzero(a > 3)
		yields the indices of the `a` where the condition is true.
		
		>>> a = ma.array([[1,2,3],[4,5,6],[7,8,9]])
		>>> a > 3
		masked_array(
		  data=[[False, False, False],
		        [ True,  True,  True],
		        [ True,  True,  True]],
		  mask=False,
		  fill_value=True)
		>>> ma.nonzero(a > 3)
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
		
		The ``nonzero`` method of the condition array can also be called.
		
		>>> (a > 3).nonzero()
		(array([1, 1, 1, 2, 2, 2]), array([0, 1, 2, 0, 1, 2]))
	**/
	public function nonzero():python.Tuple<Dynamic>;
	/**
		a.partition(kth, axis=-1, kind='introselect', order=None)
		
		Rearranges the elements in the array in such a way that the value of the
		element in kth position is in the position it would be in a sorted array.
		All elements smaller than the kth element are moved before this element and
		all equal or greater are moved behind it. The ordering of the elements in
		the two partitions is undefined.
		
		.. versionadded:: 1.8.0
		
		Parameters
		----------
		kth : int or sequence of ints
		    Element index to partition by. The kth element value will be in its
		    final sorted position and all smaller elements will be moved before it
		    and all equal or greater elements behind it.
		    The order of all elements in the partitions is undefined.
		    If provided with a sequence of kth it will partition all elements
		    indexed by kth of them into their sorted position at once.
		
		    .. deprecated:: 1.22.0
		        Passing booleans as index is deprecated.
		axis : int, optional
		    Axis along which to sort. Default is -1, which means sort along the
		    last axis.
		kind : {'introselect'}, optional
		    Selection algorithm. Default is 'introselect'.
		order : str or list of str, optional
		    When `a` is an array with fields defined, this argument specifies
		    which fields to compare first, second, etc. A single field can
		    be specified as a string, and not all fields need to be specified,
		    but unspecified fields will still be used, in the order in which
		    they come up in the dtype, to break ties.
		
		See Also
		--------
		numpy.partition : Return a parititioned copy of an array.
		argpartition : Indirect partition.
		sort : Full sort.
		
		Notes
		-----
		See ``np.partition`` for notes on the different algorithms.
		
		Examples
		--------
		>>> a = np.array([3, 4, 2, 1])
		>>> a.partition(3)
		>>> a
		array([2, 1, 3, 4])
		
		>>> a.partition((1, 3))
		>>> a
		array([1, 2, 3, 4])
	**/
	public function partition(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		numpy.ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	public function prod(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return the product of the array elements over the given axis.
		
		Masked elements are set to 1 internally for computation.
		
		Refer to `numpy.prod` for full documentation.
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is raised
		on overflow.
		
		See Also
		--------
		numpy.ndarray.prod : corresponding function for ndarrays
		numpy.prod : equivalent function
	**/
	public function product(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return (maximum - minimum) along the given dimension
		(i.e. peak-to-peak value).
		
		.. warning::
		    `ptp` preserves the data type of the array. This means the
		    return value for an input of signed integers with n bits
		    (e.g. `np.int8`, `np.int16`, etc) is also a signed integer
		    with n bits.  In that case, peak-to-peak values greater than
		    ``2**(n-1)-1`` will be returned as negative values. An example
		    with a work-around is shown below.
		
		Parameters
		----------
		axis : {None, int}, optional
		    Axis along which to find the peaks.  If None (default) the
		    flattened array is used.
		out : {None, array_like}, optional
		    Alternative output array in which to place the result. It must
		    have the same shape and buffer length as the expected output
		    but the type will be cast if necessary.
		fill_value : scalar or None, optional
		    Value used to fill in the masked values.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the array.
		
		Returns
		-------
		ptp : ndarray.
		    A new array holding the result, unless ``out`` was
		    specified, in which case a reference to ``out`` is returned.
		
		Examples
		--------
		>>> x = np.ma.MaskedArray([[4, 9, 2, 10],
		...                        [6, 9, 7, 12]])
		
		>>> x.ptp(axis=1)
		masked_array(data=[8, 6],
		             mask=False,
		       fill_value=999999)
		
		>>> x.ptp(axis=0)
		masked_array(data=[2, 0, 5, 2],
		             mask=False,
		       fill_value=999999)
		
		>>> x.ptp()
		10
		
		This example shows that a negative value can be returned when
		the input is an array of signed integers.
		
		>>> y = np.ma.MaskedArray([[1, 127],
		...                        [0, 127],
		...                        [-1, 127],
		...                        [-2, 127]], dtype=np.int8)
		>>> y.ptp(axis=1)
		masked_array(data=[ 126,  127, -128, -127],
		             mask=False,
		       fill_value=999999,
		            dtype=int8)
		
		A work-around is to use the `view()` method to view the result as
		unsigned integers with the same bit width:
		
		>>> y.ptp(axis=1).view(np.uint8)
		masked_array(data=[126, 127, 128, 129],
		             mask=False,
		       fill_value=999999,
		            dtype=uint8)
	**/
	public function ptp(?axis:Dynamic, ?out:Dynamic, ?fill_value:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Set storage-indexed locations to corresponding values.
		
		Sets self._data.flat[n] = values[n] for each n in indices.
		If `values` is shorter than `indices` then it will repeat.
		If `values` has some masked values, the initial mask is updated
		in consequence, else the corresponding values are unmasked.
		
		Parameters
		----------
		indices : 1-D array_like
		    Target indices, interpreted as integers.
		values : array_like
		    Values to place in self._data copy at target indices.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		    'raise' : raise an error.
		    'wrap' : wrap around.
		    'clip' : clip to the range.
		
		Notes
		-----
		`values` can be a scalar or length 1 array.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.put([0,4,8],[10,20,30])
		>>> x
		masked_array(
		  data=[[10, --, 3],
		        [--, 20, --],
		        [7, --, 30]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		
		>>> x.put(4,999)
		>>> x
		masked_array(
		  data=[[10, --, 3],
		        [--, 999, --],
		        [7, --, 30]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
	**/
	public function put(indices:Dynamic, values:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Returns a 1D version of self, as a view.
		
		Parameters
		----------
		order : {'C', 'F', 'A', 'K'}, optional
		    The elements of `a` are read using this index order. 'C' means to
		    index the elements in C-like order, with the last axis index
		    changing fastest, back to the first axis index changing slowest.
		    'F' means to index the elements in Fortran-like index order, with
		    the first index changing fastest, and the last index changing
		    slowest. Note that the 'C' and 'F' options take no account of the
		    memory layout of the underlying array, and only refer to the order
		    of axis indexing.  'A' means to read the elements in Fortran-like
		    index order if `m` is Fortran *contiguous* in memory, C-like order
		    otherwise.  'K' means to read the elements in the order they occur
		    in memory, except for reversing the data when strides are negative.
		    By default, 'C' index order is used.
		
		Returns
		-------
		MaskedArray
		    Output view is of shape ``(self.size,)`` (or
		    ``(np.ma.product(self.shape),)``).
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.ravel()
		masked_array(data=[1, --, 3, --, 5, --, 7, --, 9],
		             mask=[False,  True, False,  True, False,  True, False,  True,
		                   False],
		       fill_value=999999)
	**/
	public function ravel(?order:Dynamic):Dynamic;
	/**
		The real part of the masked array.
		
		This property is a view on the real part of this `MaskedArray`.
		
		See Also
		--------
		imag
		
		Examples
		--------
		>>> x = np.ma.array([1+1.j, -2j, 3.45+1.6j], mask=[False, True, False])
		>>> x.real
		masked_array(data=[1.0, --, 3.45],
		             mask=[False,  True, False],
		       fill_value=1e+20)
	**/
	public var real : Dynamic;
	/**
		Get or set the mask of the array if it has no named fields. For
		structured arrays, returns a ndarray of booleans where entries are
		``True`` if **all** the fields are masked, ``False`` otherwise:
		
		>>> x = np.ma.array([(1, 1), (2, 2), (3, 3), (4, 4), (5, 5)],
		...         mask=[(0, 0), (1, 0), (1, 1), (0, 1), (0, 0)],
		...        dtype=[('a', int), ('b', int)])
		>>> x.recordmask
		array([False, False,  True, False, False])
	**/
	public var recordmask : Dynamic;
	/**
		a.repeat(repeats, axis=None)
		
		Repeat elements of an array.
		
		Refer to `numpy.repeat` for full documentation.
		
		See Also
		--------
		numpy.repeat : equivalent function
	**/
	public function repeat(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Give a new shape to the array without changing its data.
		
		Returns a masked array containing the same data, but with a new shape.
		The result is a view on the original array; if this is not possible, a
		ValueError is raised.
		
		Parameters
		----------
		shape : int or tuple of ints
		    The new shape should be compatible with the original shape. If an
		    integer is supplied, then the result will be a 1-D array of that
		    length.
		order : {'C', 'F'}, optional
		    Determines whether the array data should be viewed as in C
		    (row-major) or FORTRAN (column-major) order.
		
		Returns
		-------
		reshaped_array : array
		    A new view on the array.
		
		See Also
		--------
		reshape : Equivalent function in the masked array module.
		numpy.ndarray.reshape : Equivalent method on ndarray object.
		numpy.reshape : Equivalent function in the NumPy module.
		
		Notes
		-----
		The reshaping operation cannot guarantee that a copy will not be made,
		to modify the shape in place, use ``a.shape = s``
		
		Examples
		--------
		>>> x = np.ma.array([[1,2],[3,4]], mask=[1,0,0,1])
		>>> x
		masked_array(
		  data=[[--, 2],
		        [3, --]],
		  mask=[[ True, False],
		        [False,  True]],
		  fill_value=999999)
		>>> x = x.reshape((4,1))
		>>> x
		masked_array(
		  data=[[--],
		        [2],
		        [3],
		        [--]],
		  mask=[[ True],
		        [False],
		        [False],
		        [ True]],
		  fill_value=999999)
	**/
	public function reshape(?s:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Array<Dynamic>;
	/**
		.. warning::
		
		    This method does nothing, except raise a ValueError exception. A
		    masked array does not own its data and therefore cannot safely be
		    resized in place. Use the `numpy.ma.resize` function instead.
		
		This method is difficult to implement safely and may be deprecated in
		future releases of NumPy.
	**/
	public function resize(newshape:Dynamic, ?refcheck:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Return each element rounded to the given number of decimals.
		
		Refer to `numpy.around` for full documentation.
		
		See Also
		--------
		numpy.ndarray.round : corresponding function for ndarrays
		numpy.around : equivalent function
	**/
	public function round(?decimals:Dynamic, ?out:Dynamic):Dynamic;
	/**
		a.searchsorted(v, side='left', sorter=None)
		
		Find indices where elements of v should be inserted in a to maintain order.
		
		For full documentation, see `numpy.searchsorted`
		
		See Also
		--------
		numpy.searchsorted : equivalent function
	**/
	public function searchsorted(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function set_fill_value(?value:Dynamic):Dynamic;
	/**
		a.setfield(val, dtype, offset=0)
		
		Put a value into a specified place in a field defined by a data-type.
		
		Place `val` into `a`'s field defined by `dtype` and beginning `offset`
		bytes into the field.
		
		Parameters
		----------
		val : object
		    Value to be placed in field.
		dtype : dtype object
		    Data-type of the field in which to place `val`.
		offset : int, optional
		    The number of bytes into the field at which to place `val`.
		
		Returns
		-------
		None
		
		See Also
		--------
		getfield
		
		Examples
		--------
		>>> x = np.eye(3)
		>>> x.getfield(np.float64)
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]])
		>>> x.setfield(3, np.int32)
		>>> x.getfield(np.int32)
		array([[3, 3, 3],
		       [3, 3, 3],
		       [3, 3, 3]], dtype=int32)
		>>> x
		array([[1.0e+000, 1.5e-323, 1.5e-323],
		       [1.5e-323, 1.0e+000, 1.5e-323],
		       [1.5e-323, 1.5e-323, 1.0e+000]])
		>>> x.setfield(np.eye(3), np.int32)
		>>> x
		array([[1.,  0.,  0.],
		       [0.,  1.,  0.],
		       [0.,  0.,  1.]])
	**/
	public function setfield(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a.setflags(write=None, align=None, uic=None)
		
		Set array flags WRITEABLE, ALIGNED, (WRITEBACKIFCOPY and UPDATEIFCOPY),
		respectively.
		
		These Boolean-valued flags affect how numpy interprets the memory
		area used by `a` (see Notes below). The ALIGNED flag can only
		be set to True if the data is actually aligned according to the type.
		The WRITEBACKIFCOPY and (deprecated) UPDATEIFCOPY flags can never be set
		to True. The flag WRITEABLE can only be set to True if the array owns its
		own memory, or the ultimate owner of the memory exposes a writeable buffer
		interface, or is a string. (The exception for string is made so that
		unpickling can be done without copying memory.)
		
		Parameters
		----------
		write : bool, optional
		    Describes whether or not `a` can be written to.
		align : bool, optional
		    Describes whether or not `a` is aligned properly for its type.
		uic : bool, optional
		    Describes whether or not `a` is a copy of another "base" array.
		
		Notes
		-----
		Array flags provide information about how the memory area used
		for the array is to be interpreted. There are 7 Boolean flags
		in use, only four of which can be changed by the user:
		WRITEBACKIFCOPY, UPDATEIFCOPY, WRITEABLE, and ALIGNED.
		
		WRITEABLE (W) the data area can be written to;
		
		ALIGNED (A) the data and strides are aligned appropriately for the hardware
		(as determined by the compiler);
		
		UPDATEIFCOPY (U) (deprecated), replaced by WRITEBACKIFCOPY;
		
		WRITEBACKIFCOPY (X) this array is a copy of some other array (referenced
		by .base). When the C-API function PyArray_ResolveWritebackIfCopy is
		called, the base array will be updated with the contents of this array.
		
		All flags can be accessed using the single (upper case) letter as well
		as the full name.
		
		Examples
		--------
		>>> y = np.array([[3, 1, 7],
		...               [2, 0, 0],
		...               [8, 5, 9]])
		>>> y
		array([[3, 1, 7],
		       [2, 0, 0],
		       [8, 5, 9]])
		>>> y.flags
		  C_CONTIGUOUS : True
		  F_CONTIGUOUS : False
		  OWNDATA : True
		  WRITEABLE : True
		  ALIGNED : True
		  WRITEBACKIFCOPY : False
		  UPDATEIFCOPY : False
		>>> y.setflags(write=0, align=0)
		>>> y.flags
		  C_CONTIGUOUS : True
		  F_CONTIGUOUS : False
		  OWNDATA : True
		  WRITEABLE : False
		  ALIGNED : False
		  WRITEBACKIFCOPY : False
		  UPDATEIFCOPY : False
		>>> y.setflags(uic=1)
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: cannot set WRITEBACKIFCOPY flag to True
	**/
	public function setflags(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Tuple of array dimensions.
		
		The shape property is usually used to get the current shape of an array,
		but may also be used to reshape the array in-place by assigning a tuple of
		array dimensions to it.  As with `numpy.reshape`, one of the new shape
		dimensions can be -1, in which case its value is inferred from the size of
		the array and the remaining dimensions. Reshaping an array in-place will
		fail if a copy is required.
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 4])
		>>> x.shape
		(4,)
		>>> y = np.zeros((2, 3, 4))
		>>> y.shape
		(2, 3, 4)
		>>> y.shape = (3, 8)
		>>> y
		array([[ 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  0.,  0.,  0.,  0.,  0.]])
		>>> y.shape = (3, 6)
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		ValueError: total size of new array must be unchanged
		>>> np.zeros((4,2))[::2].shape = (-1,)
		Traceback (most recent call last):
		  File "<stdin>", line 1, in <module>
		AttributeError: Incompatible shape for in-place modification. Use
		`.reshape()` to make a copy with the desired shape.
		
		See Also
		--------
		numpy.reshape : similar function
		ndarray.reshape : similar method
	**/
	public var shape : Dynamic;
	/**
		Share status of the mask (read-only). 
	**/
	public var sharedmask : Dynamic;
	/**
		Reduce a mask to nomask when possible.
		
		Parameters
		----------
		None
		
		Returns
		-------
		None
		
		Examples
		--------
		>>> x = np.ma.array([[1,2 ], [3, 4]], mask=[0]*4)
		>>> x.mask
		array([[False, False],
		       [False, False]])
		>>> x.shrink_mask()
		masked_array(
		  data=[[1, 2],
		        [3, 4]],
		  mask=False,
		  fill_value=999999)
		>>> x.mask
		False
	**/
	public function shrink_mask():Dynamic;
	/**
		Number of elements in the array.
		
		Equal to ``np.prod(a.shape)``, i.e., the product of the array's
		dimensions.
		
		Notes
		-----
		`a.size` returns a standard arbitrary precision Python integer. This
		may not be the case with other methods of obtaining the same value
		(like the suggested ``np.prod(a.shape)``, which returns an instance
		of ``np.int_``), and may be relevant if the value is used further in
		calculations that may overflow a fixed size integer type.
		
		Examples
		--------
		>>> x = np.zeros((3, 5, 2), dtype=np.complex128)
		>>> x.size
		30
		>>> np.prod(x.shape)
		30
	**/
	public var size : Dynamic;
	/**
		Force the mask to soft.
		
		Whether the mask of a masked array is hard or soft is determined by
		its `~ma.MaskedArray.hardmask` property. `soften_mask` sets
		`~ma.MaskedArray.hardmask` to ``False``.
		
		See Also
		--------
		ma.MaskedArray.hardmask
	**/
	public function soften_mask():Dynamic;
	/**
		Sort the array, in-place
		
		Parameters
		----------
		a : array_like
		    Array to be sorted.
		axis : int, optional
		    Axis along which to sort. If None, the array is flattened before
		    sorting. The default is -1, which sorts along the last axis.
		kind : {'quicksort', 'mergesort', 'heapsort', 'stable'}, optional
		    The sorting algorithm used.
		order : list, optional
		    When `a` is a structured array, this argument specifies which fields
		    to compare first, second, and so on.  This list does not need to
		    include all of the fields.
		endwith : {True, False}, optional
		    Whether missing values (if any) should be treated as the largest values
		    (True) or the smallest values (False)
		    When the array contains unmasked values sorting at the same extremes of the
		    datatype, the ordering of these values and the masked values is
		    undefined.
		fill_value : scalar or None, optional
		    Value used internally for the masked values.
		    If ``fill_value`` is not None, it supersedes ``endwith``.
		
		Returns
		-------
		sorted_array : ndarray
		    Array of the same type and shape as `a`.
		
		See Also
		--------
		numpy.ndarray.sort : Method to sort an array in-place.
		argsort : Indirect sort.
		lexsort : Indirect stable sort on multiple keys.
		searchsorted : Find elements in a sorted array.
		
		Notes
		-----
		See ``sort`` for notes on the different sorting algorithms.
		
		Examples
		--------
		>>> a = np.ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # Default
		>>> a.sort()
		>>> a
		masked_array(data=[1, 3, 5, --, --],
		             mask=[False, False, False,  True,  True],
		       fill_value=999999)
		
		>>> a = np.ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # Put missing values in the front
		>>> a.sort(endwith=False)
		>>> a
		masked_array(data=[--, --, 1, 3, 5],
		             mask=[ True,  True, False, False, False],
		       fill_value=999999)
		
		>>> a = np.ma.array([1, 2, 5, 4, 3],mask=[0, 1, 0, 1, 0])
		>>> # fill_value takes over endwith
		>>> a.sort(endwith=False, fill_value=3)
		>>> a
		masked_array(data=[1, --, --, 3, 5],
		             mask=[False,  True,  True, False, False],
		       fill_value=999999)
	**/
	public function sort(?axis:Dynamic, ?kind:Dynamic, ?order:Dynamic, ?endwith:Dynamic, ?fill_value:Dynamic):numpy.Ndarray;
	/**
		a.squeeze(axis=None)
		
		Remove axes of length one from `a`.
		
		Refer to `numpy.squeeze` for full documentation.
		
		See Also
		--------
		numpy.squeeze : equivalent function
	**/
	public function squeeze(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the standard deviation of the array elements along given axis.
		
		Masked entries are ignored.
		
		Refer to `numpy.std` for full documentation.
		
		See Also
		--------
		numpy.ndarray.std : corresponding function for ndarrays
		numpy.std : Equivalent function
	**/
	public function std(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Tuple of bytes to step in each dimension when traversing an array.
		
		The byte offset of element ``(i[0], i[1], ..., i[n])`` in an array `a`
		is::
		
		    offset = sum(np.array(i) * a.strides)
		
		A more detailed explanation of strides can be found in the
		"ndarray.rst" file in the NumPy reference guide.
		
		Notes
		-----
		Imagine an array of 32-bit integers (each 4 bytes)::
		
		  x = np.array([[0, 1, 2, 3, 4],
		                [5, 6, 7, 8, 9]], dtype=np.int32)
		
		This array is stored in memory as 40 bytes, one after the other
		(known as a contiguous block of memory).  The strides of an array tell
		us how many bytes we have to skip in memory to move to the next position
		along a certain axis.  For example, we have to skip 4 bytes (1 value) to
		move to the next column, but 20 bytes (5 values) to get to the same
		position in the next row.  As such, the strides for the array `x` will be
		``(20, 4)``.
		
		See Also
		--------
		numpy.lib.stride_tricks.as_strided
		
		Examples
		--------
		>>> y = np.reshape(np.arange(2*3*4), (2,3,4))
		>>> y
		array([[[ 0,  1,  2,  3],
		        [ 4,  5,  6,  7],
		        [ 8,  9, 10, 11]],
		       [[12, 13, 14, 15],
		        [16, 17, 18, 19],
		        [20, 21, 22, 23]]])
		>>> y.strides
		(48, 16, 4)
		>>> y[1,1,1]
		17
		>>> offset=sum(y.strides * np.array((1,1,1)))
		>>> offset/y.itemsize
		17
		
		>>> x = np.reshape(np.arange(5*6*7*8), (5,6,7,8)).transpose(2,3,1,0)
		>>> x.strides
		(32, 4, 224, 1344)
		>>> i = np.array([3,5,2,2])
		>>> offset = sum(i * x.strides)
		>>> x[3,5,2,2]
		813
		>>> offset / x.itemsize
		813
	**/
	public var strides : Dynamic;
	/**
		Return the sum of the array elements over the given axis.
		
		Masked elements are set to 0 internally.
		
		Refer to `numpy.sum` for full documentation.
		
		See Also
		--------
		numpy.ndarray.sum : corresponding function for ndarrays
		numpy.sum : equivalent function
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.sum()
		25
		>>> x.sum(axis=1)
		masked_array(data=[4, 5, 16],
		             mask=[False, False, False],
		       fill_value=999999)
		>>> x.sum(axis=0)
		masked_array(data=[8, 5, 12],
		             mask=[False, False, False],
		       fill_value=999999)
		>>> print(type(x.sum(axis=0, dtype=np.int64)[0]))
		<class 'numpy.int64'>
	**/
	public function sum(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		a.swapaxes(axis1, axis2)
		
		Return a view of the array with `axis1` and `axis2` interchanged.
		
		Refer to `numpy.swapaxes` for full documentation.
		
		See Also
		--------
		numpy.swapaxes : equivalent function
	**/
	public function swapaxes(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		        
	**/
	public function take(indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Return the array data as a string containing the raw bytes in the array.
		
		The array is filled with a fill value before the string conversion.
		
		.. versionadded:: 1.9.0
		
		Parameters
		----------
		fill_value : scalar, optional
		    Value used to fill in the masked values. Default is None, in which
		    case `MaskedArray.fill_value` is used.
		order : {'C','F','A'}, optional
		    Order of the data item in the copy. Default is 'C'.
		
		    - 'C'   -- C order (row major).
		    - 'F'   -- Fortran order (column major).
		    - 'A'   -- Any, current order of array.
		    - None  -- Same as 'A'.
		
		See Also
		--------
		numpy.ndarray.tobytes
		tolist, tofile
		
		Notes
		-----
		As for `ndarray.tobytes`, information about the shape, dtype, etc.,
		but also about `fill_value`, will be lost.
		
		Examples
		--------
		>>> x = np.ma.array(np.array([[1, 2], [3, 4]]), mask=[[0, 1], [1, 0]])
		>>> x.tobytes()
		b'\x01\x00\x00\x00\x00\x00\x00\x00?B\x0f\x00\x00\x00\x00\x00?B\x0f\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00'
	**/
	public function tobytes(?fill_value:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Save a masked array to a file in binary format.
		
		.. warning::
		  This function is not implemented yet.
		
		Raises
		------
		NotImplementedError
		    When `tofile` is called.
	**/
	public function tofile(fid:Dynamic, ?sep:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Transforms a masked array into a flexible-type array.
		
		The flexible type array that is returned will have two fields:
		
		* the ``_data`` field stores the ``_data`` part of the array.
		* the ``_mask`` field stores the ``_mask`` part of the array.
		
		Parameters
		----------
		None
		
		Returns
		-------
		record : ndarray
		    A new flexible-type `ndarray` with two fields: the first element
		    containing a value, the second element containing the corresponding
		    mask boolean. The returned record shape matches self.shape.
		
		Notes
		-----
		A side-effect of transforming a masked array into a flexible `ndarray` is
		that meta information (``fill_value``, ...) will be lost.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.toflex()
		array([[(1, False), (2,  True), (3, False)],
		       [(4,  True), (5, False), (6,  True)],
		       [(7, False), (8,  True), (9, False)]],
		      dtype=[('_data', '<i8'), ('_mask', '?')])
	**/
	public function toflex():numpy.Ndarray;
	/**
		Transforms the mvoid object into a tuple.
		
		Masked fields are replaced by None.
		
		Returns
		-------
		returned_tuple
		    Tuple of fields
		    
	**/
	public function tolist():Dynamic;
	/**
		Transforms a masked array into a flexible-type array.
		
		The flexible type array that is returned will have two fields:
		
		* the ``_data`` field stores the ``_data`` part of the array.
		* the ``_mask`` field stores the ``_mask`` part of the array.
		
		Parameters
		----------
		None
		
		Returns
		-------
		record : ndarray
		    A new flexible-type `ndarray` with two fields: the first element
		    containing a value, the second element containing the corresponding
		    mask boolean. The returned record shape matches self.shape.
		
		Notes
		-----
		A side-effect of transforming a masked array into a flexible `ndarray` is
		that meta information (``fill_value``, ...) will be lost.
		
		Examples
		--------
		>>> x = np.ma.array([[1,2,3],[4,5,6],[7,8,9]], mask=[0] + [1,0]*4)
		>>> x
		masked_array(
		  data=[[1, --, 3],
		        [--, 5, --],
		        [7, --, 9]],
		  mask=[[False,  True, False],
		        [ True, False,  True],
		        [False,  True, False]],
		  fill_value=999999)
		>>> x.toflex()
		array([[(1, False), (2,  True), (3, False)],
		       [(4,  True), (5, False), (6,  True)],
		       [(7, False), (8,  True), (9, False)]],
		      dtype=[('_data', '<i8'), ('_mask', '?')])
	**/
	public function torecords():numpy.Ndarray;
	/**
		A compatibility alias for `tobytes`, with exactly the same behavior.
		
		Despite its name, it returns `bytes` not `str`\ s.
		
		.. deprecated:: 1.19.0
	**/
	public function tostring(?fill_value:Dynamic, ?order:Dynamic):Dynamic;
	/**
		a.trace(offset=0, axis1=0, axis2=1, dtype=None, out=None)
		
		Return the sum along diagonals of the array.
		
		Refer to `numpy.trace` for full documentation.
		
		See Also
		--------
		numpy.trace : equivalent function
	**/
	public function trace(?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		a.transpose(*axes)
		
		Returns a view of the array with axes transposed.
		
		For a 1-D array this has no effect, as a transposed vector is simply the
		same vector. To convert a 1-D array into a 2D column vector, an additional
		dimension must be added. `np.atleast2d(a).T` achieves this, as does
		`a[:, np.newaxis]`.
		For a 2-D array, this is a standard matrix transpose.
		For an n-D array, if axes are given, their order indicates how the
		axes are permuted (see Examples). If axes are not provided and
		``a.shape = (i[0], i[1], ... i[n-2], i[n-1])``, then
		``a.transpose().shape = (i[n-1], i[n-2], ... i[1], i[0])``.
		
		Parameters
		----------
		axes : None, tuple of ints, or `n` ints
		
		 * None or no argument: reverses the order of the axes.
		
		 * tuple of ints: `i` in the `j`-th place in the tuple means `a`'s
		   `i`-th axis becomes `a.transpose()`'s `j`-th axis.
		
		 * `n` ints: same as an n-tuple of the same ints (this form is
		   intended simply as a "convenience" alternative to the tuple form)
		
		Returns
		-------
		out : ndarray
		    View of `a`, with axes suitably permuted.
		
		See Also
		--------
		transpose : Equivalent function
		ndarray.T : Array property returning the array transposed.
		ndarray.reshape : Give a new shape to an array without changing its data.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> a
		array([[1, 2],
		       [3, 4]])
		>>> a.transpose()
		array([[1, 3],
		       [2, 4]])
		>>> a.transpose((1, 0))
		array([[1, 3],
		       [2, 4]])
		>>> a.transpose(1, 0)
		array([[1, 3],
		       [2, 4]])
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):numpy.Ndarray;
	/**
		Copy the mask and set the sharedmask flag to False.
		
		Whether the mask is shared between masked arrays can be seen from
		the `sharedmask` property. `unshare_mask` ensures the mask is not shared.
		A copy of the mask is only made if it was shared.
		
		See Also
		--------
		sharedmask
	**/
	public function unshare_mask():Dynamic;
	/**
		Compute the variance along the specified axis.
		
		Returns the variance of the array elements, a measure of the spread of a
		distribution.  The variance is computed for the flattened array by
		default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose variance is desired.  If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the variance is computed.  The default is to
		    compute the variance of the flattened array.
		
		    .. versionadded:: 1.7.0
		
		    If this is a tuple of ints, a variance is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the variance.  For arrays of integer type
		    the default is `float64`; for arrays of float types it is the same as
		    the array type.
		out : ndarray, optional
		    Alternate output array in which to place the result.  It must have
		    the same shape as the expected output, but the type is cast if
		    necessary.
		ddof : int, optional
		    "Delta Degrees of Freedom": the divisor used in the calculation is
		    ``N - ddof``, where ``N`` represents the number of elements. By
		    default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `var` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		
		where : array_like of bool, optional
		    Elements to include in the variance. See `~numpy.ufunc.reduce` for
		    details.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		variance : ndarray, see dtype parameter above
		    If ``out=None``, returns a new array containing the variance;
		    otherwise, a reference to the output array is returned.
		
		See Also
		--------
		std, mean, nanmean, nanstd, nanvar
		:ref:`ufuncs-output-type`
		
		Notes
		-----
		The variance is the average of the squared deviations from the mean,
		i.e.,  ``var = mean(x)``, where ``x = abs(a - a.mean())**2``.
		
		The mean is typically calculated as ``x.sum() / N``, where ``N = len(x)``.
		If, however, `ddof` is specified, the divisor ``N - ddof`` is used
		instead.  In standard statistical practice, ``ddof=1`` provides an
		unbiased estimator of the variance of a hypothetical infinite population.
		``ddof=0`` provides a maximum likelihood estimate of the variance for
		normally distributed variables.
		
		Note that for complex numbers, the absolute value is taken before
		squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the variance is computed using the same
		precision the input has.  Depending on the input data, this can cause
		the results to be inaccurate, especially for `float32` (see example
		below).  Specifying a higher-accuracy accumulator using the ``dtype``
		keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.var(a)
		1.25
		>>> np.var(a, axis=0)
		array([1.,  1.])
		>>> np.var(a, axis=1)
		array([0.25,  0.25])
		
		In single precision, var() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.var(a)
		0.20250003
		
		Computing the variance in float64 is more accurate:
		
		>>> np.var(a, dtype=np.float64)
		0.20249999932944759 # may vary
		>>> ((1-0.55)**2 + (0.1-0.55)**2)/2
		0.2025
		
		Specifying a where argument:
		
		>>> a = np.array([[14, 8, 11, 10], [7, 9, 10, 11], [10, 15, 5, 10]])
		>>> np.var(a)
		6.833333333333333 # may vary
		>>> np.var(a, where=[[True], [True], [False]])
		4.0
	**/
	@:native("var")
	public function _var(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Return a view of the MaskedArray data.
		
		Parameters
		----------
		dtype : data-type or ndarray sub-class, optional
		    Data-type descriptor of the returned view, e.g., float32 or int16.
		    The default, None, results in the view having the same data-type
		    as `a`. As with ``ndarray.view``, dtype can also be specified as
		    an ndarray sub-class, which then specifies the type of the
		    returned object (this is equivalent to setting the ``type``
		    parameter).
		type : Python type, optional
		    Type of the returned view, either ndarray or a subclass.  The
		    default None results in type preservation.
		fill_value : scalar, optional
		    The value to use for invalid entries (None by default).
		    If None, then this argument is inferred from the passed `dtype`, or
		    in its absence the original array, as discussed in the notes below.
		
		See Also
		--------
		numpy.ndarray.view : Equivalent method on ndarray object.
		
		Notes
		-----
		
		``a.view()`` is used two different ways:
		
		``a.view(some_dtype)`` or ``a.view(dtype=some_dtype)`` constructs a view
		of the array's memory with a different data-type.  This can cause a
		reinterpretation of the bytes of memory.
		
		``a.view(ndarray_subclass)`` or ``a.view(type=ndarray_subclass)`` just
		returns an instance of `ndarray_subclass` that looks at the same array
		(same shape, dtype, etc.)  This does not cause a reinterpretation of the
		memory.
		
		If `fill_value` is not specified, but `dtype` is specified (and is not
		an ndarray sub-class), the `fill_value` of the MaskedArray will be
		reset. If neither `fill_value` nor `dtype` are specified (or if
		`dtype` is an ndarray sub-class), then the fill value is preserved.
		Finally, if `fill_value` is specified, but `dtype` is not, the fill
		value is set to the specified value.
		
		For ``a.view(some_dtype)``, if ``some_dtype`` has a different number of
		bytes per entry than the previous dtype (for example, converting a
		regular array to a structured array), then the behavior of the view
		cannot be predicted just from the superficial appearance of ``a`` (shown
		by ``print(a)``). It also depends on exactly how ``a`` is stored in
		memory. Therefore if ``a`` is C-ordered versus fortran-ordered, versus
		defined as a slice or transpose, etc., the view may give different
		results.
	**/
	public function view(?dtype:Dynamic, ?type:Dynamic, ?fill_value:Dynamic):Dynamic;
}