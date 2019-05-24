/* This file is generated, do not edit! */
package scipy.signal._arraytools;
@:pythonImport("scipy.signal._arraytools") extern class _Arraytools_Module {
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
		handle its arguments the exactly the same as indexing.  To select
		a single index k, for example, use
		    axis_slice(a, start=k, stop=k+1)
		In this case, the length of the axis 'axis' in the result will
		be 1; the trivial dimension is not removed. (Use numpy.squeeze()
		to remove trivial axes.)
	**/
	static public function axis_slice(a:Dynamic, ?start:Dynamic, ?stop:Dynamic, ?step:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Constant extension at the boundaries of an array
		
		Generate a new ndarray that is a constant extension of `x` along an axis.
		
		The extension repeats the values at the first and last element of
		the axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`.  Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import const_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> const_ext(a, 2)
		array([[ 1,  1,  1,  2,  3,  4,  5,  5,  5],
		       [ 0,  0,  0,  1,  4,  9, 16, 16, 16]])
		
		Constant extension continues with the same values as the endpoints of the
		array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = const_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='constant extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function const_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Even extension at the boundaries of an array
		
		Generate a new ndarray by making an even extension of `x` along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`.  Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import even_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> even_ext(a, 2)
		array([[ 3,  2,  1,  2,  3,  4,  5,  4,  3],
		       [ 4,  1,  0,  1,  4,  9, 16,  9,  4]])
		
		Even extension is a "mirror image" at the boundaries of the original array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = even_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='even extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function even_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Odd extension at the boundaries of an array
		
		Generate a new ndarray by making an odd extension of `x` along an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the axis.
		axis : int, optional
		    The axis along which to extend `x`.  Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import odd_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> odd_ext(a, 2)
		array([[-1,  0,  1,  2,  3,  4,  5,  6,  7],
		       [-4, -1,  0,  1,  4,  9, 16, 23, 28]])
		
		Odd extension is a "180 degree rotation" at the endpoints of the original
		array:
		
		>>> t = np.linspace(0, 1.5, 100)
		>>> a = 0.9 * np.sin(2 * np.pi * t**2)
		>>> b = odd_ext(a, 40)
		>>> import matplotlib.pyplot as plt
		>>> plt.plot(arange(-40, 140), b, 'b', lw=1, label='odd extension')
		>>> plt.plot(arange(100), a, 'r', lw=2, label='original')
		>>> plt.legend(loc='best')
		>>> plt.show()
	**/
	static public function odd_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Zero padding at the boundaries of an array
		
		Generate a new ndarray that is a zero padded extension of `x` along
		an axis.
		
		Parameters
		----------
		x : ndarray
		    The array to be extended.
		n : int
		    The number of elements by which to extend `x` at each end of the
		    axis.
		axis : int, optional
		    The axis along which to extend `x`.  Default is -1.
		
		Examples
		--------
		>>> from scipy.signal._arraytools import zero_ext
		>>> a = np.array([[1, 2, 3, 4, 5], [0, 1, 4, 9, 16]])
		>>> zero_ext(a, 2)
		array([[ 0,  0,  1,  2,  3,  4,  5,  0,  0],
		       [ 0,  0,  0,  1,  4,  9, 16,  0,  0]])
	**/
	static public function zero_ext(x:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
}