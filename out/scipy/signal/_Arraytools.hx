/* This file is generated, do not edit! */
package scipy.signal;
@:pythonImport("scipy.signal._arraytools") extern class _Arraytools {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Reverse the 1-d slices of `a` along axis `axis`.
		
		Returns axis_slice(a, step=-1, axis=axis).
	**/
	static public function axis_reverse(a:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Take a slice along axis 'axis' from 'a'.
		
		Parameters
		----------
		a : numpy.ndarray
		    The array to be sliced.
		start, stop, step : int or None
		    The slice parameters.
		axis : int, optional
		    The axis of `a` to be sliced.
		
		Examples
		--------
		>>> a = array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
		>>> axis_slice(a, start=0, stop=1, axis=1)
		array([[1],
		       [4],
		       [7]])
		>>> axis_slice(a, start=1, axis=0)
		array([[4, 5, 6],
		       [7, 8, 9]])
		
		Notes
		-----
		The keyword arguments start, stop and step are used by calling
		slice(start, stop, step).  This implies axis_slice() does not
		handle its arguments the exacty the same as indexing.  To select
		a single index k, for example, use
		    axis_slice(a, start=k, stop=k+1)
		In this case, the length of the axis 'axis' in the result will
		be 1; the trivial dimension is not removed. (Use numpy.squeeze()
		to remove trivial axes.)
	**/
	static public function axis_slice(a:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Create an ndarray that is a constant extension of x along an axis.
		
		The extension repeats the values at the first and last element of
		the axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _const_ext(a, 2)
		array([[  1.,   1.,   1.,   2.,   3.,   4.,   5.,   5.,   5.],
		       [  0.,   0.,   0.,   1.,   4.,   9.,  16.,  16.,  16.]])
	**/
	static public function const_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Create an ndarray that is an even extension of x along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _even_ext(a, 2)
		array([[  3.,   2.,   1.,   2.,   3.,   4.,   5.,   4.,   3.],
		       [  4.,   1.,   0.,   1.,   4.,   9.,  16.,   9.,   4.]])
	**/
	static public function even_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Generate a new ndarray by making an odd extension of x along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend x at each end of the axis.
		axis : int, optional
		    The axis along which to extend x.  Default is -1.
		
		Examples
		--------
		>>> a = array([[1.0,2.0,3.0,4.0,5.0], [0.0, 1.0, 4.0, 9.0, 16.0]])
		>>> _odd_ext(a, 2)
		array([[-1.,  0.,  1.,  2.,  3.,  4.,  5.,  6.,  7.],
		       [-4., -1,   0.,  1.,  4.,  9., 16., 23., 28.]])
	**/
	static public function odd_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}