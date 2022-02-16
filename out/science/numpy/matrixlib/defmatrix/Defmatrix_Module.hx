/* This file is generated, do not edit! */
package numpy.matrixlib.defmatrix;
@:pythonImport("numpy.matrixlib.defmatrix") extern class Defmatrix_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _convert_from_string(data:Dynamic):Dynamic;
	static public function _from_string(str:Dynamic, gdict:Dynamic, ldict:Dynamic):Dynamic;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function asmatrix(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		Build a matrix object from a string, nested sequence, or array.
		
		Parameters
		----------
		obj : str or array_like
		    Input data. If a string, variables in the current scope may be
		    referenced by name.
		ldict : dict, optional
		    A dictionary that replaces local operands in current frame.
		    Ignored if `obj` is not a string or `gdict` is None.
		gdict : dict, optional
		    A dictionary that replaces global operands in current frame.
		    Ignored if `obj` is not a string.
		
		Returns
		-------
		out : matrix
		    Returns a matrix object, which is a specialized 2-D array.
		
		See Also
		--------
		block :
		    A generalization of this function for N-d arrays, that returns normal
		    ndarrays.
		
		Examples
		--------
		>>> A = np.mat('1 1; 1 1')
		>>> B = np.mat('2 2; 2 2')
		>>> C = np.mat('3 4; 5 6')
		>>> D = np.mat('7 8; 9 0')
		
		All the following expressions construct the same block matrix:
		
		>>> np.bmat([[A, B], [C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat(np.r_[np.c_[A, B], np.c_[C, D]])
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
		>>> np.bmat('A,B; C,D')
		matrix([[1, 1, 2, 2],
		        [1, 1, 2, 2],
		        [3, 4, 7, 8],
		        [5, 6, 9, 0]])
	**/
	static public function bmat(obj:Dynamic, ?ldict:Dynamic, ?gdict:Dynamic):numpy.Matrix;
	/**
		concatenate((a1, a2, ...), axis=0, out=None, dtype=None, casting="same_kind")
		
		Join a sequence of arrays along an existing axis.
		
		Parameters
		----------
		a1, a2, ... : sequence of array_like
		    The arrays must have the same shape, except in the dimension
		    corresponding to `axis` (the first, by default).
		axis : int, optional
		    The axis along which the arrays will be joined.  If axis is None,
		    arrays are flattened before use.  Default is 0.
		out : ndarray, optional
		    If provided, the destination to place the result. The shape must be
		    correct, matching that of what concatenate would have returned if no
		    out argument were specified.
		dtype : str or dtype
		    If provided, the destination array will have this dtype. Cannot be
		    provided together with `out`.
		
		    .. versionadded:: 1.20.0
		
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur. Defaults to 'same_kind'.
		
		    .. versionadded:: 1.20.0
		
		Returns
		-------
		res : ndarray
		    The concatenated array.
		
		See Also
		--------
		ma.concatenate : Concatenate function that preserves input masks.
		array_split : Split an array into multiple sub-arrays of equal or
		              near-equal size.
		split : Split array into a list of multiple sub-arrays of equal size.
		hsplit : Split array into multiple sub-arrays horizontally (column wise).
		vsplit : Split array into multiple sub-arrays vertically (row wise).
		dsplit : Split array into multiple sub-arrays along the 3rd axis (depth).
		stack : Stack a sequence of arrays along a new axis.
		block : Assemble arrays from blocks.
		hstack : Stack arrays in sequence horizontally (column wise).
		vstack : Stack arrays in sequence vertically (row wise).
		dstack : Stack arrays in sequence depth wise (along third dimension).
		column_stack : Stack 1-D arrays as columns into a 2-D array.
		
		Notes
		-----
		When one or more of the arrays to be concatenated is a MaskedArray,
		this function will return a MaskedArray object instead of an ndarray,
		but the input masks are *not* preserved. In cases where a MaskedArray
		is expected as input, use the ma.concatenate function from the masked
		array module instead.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> b = np.array([[5, 6]])
		>>> np.concatenate((a, b), axis=0)
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
		>>> np.concatenate((a, b.T), axis=1)
		array([[1, 2, 5],
		       [3, 4, 6]])
		>>> np.concatenate((a, b), axis=None)
		array([1, 2, 3, 4, 5, 6])
		
		This function will not preserve masking of MaskedArray inputs.
		
		>>> a = np.ma.arange(3)
		>>> a[1] = np.ma.masked
		>>> b = np.arange(2, 5)
		>>> a
		masked_array(data=[0, --, 2],
		             mask=[False,  True, False],
		       fill_value=999999)
		>>> b
		array([2, 3, 4])
		>>> np.concatenate([a, b])
		masked_array(data=[0, 1, 2, 2, 3, 4],
		             mask=False,
		       fill_value=999999)
		>>> np.ma.concatenate([a, b])
		masked_array(data=[0, --, 2, 2, 3, 4],
		             mask=[False,  True, False, False, False, False],
		       fill_value=999999)
	**/
	static public function concatenate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns True if the type of `element` is a scalar type.
		
		Parameters
		----------
		element : any
		    Input argument, can be of any type and shape.
		
		Returns
		-------
		val : bool
		    True if `element` is a scalar type, False if it is not.
		
		See Also
		--------
		ndim : Get the number of dimensions of an array
		
		Notes
		-----
		If you need a stricter way to identify a *numerical* scalar, use
		``isinstance(x, numbers.Number)``, as that returns ``False`` for most
		non-numerical elements such as strings.
		
		In most cases ``np.ndim(x) == 0`` should be used instead of this function,
		as that will also return true for 0d arrays. This is how numpy overloads
		functions in the style of the ``dx`` arguments to `gradient` and the ``bins``
		argument to `histogram`. Some key differences:
		
		+--------------------------------------+---------------+-------------------+
		| x                                    |``isscalar(x)``|``np.ndim(x) == 0``|
		+======================================+===============+===================+
		| PEP 3141 numeric objects (including  | ``True``      | ``True``          |
		| builtins)                            |               |                   |
		+--------------------------------------+---------------+-------------------+
		| builtin string and buffer objects    | ``True``      | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other builtin objects, like          | ``False``     | ``True``          |
		| `pathlib.Path`, `Exception`,         |               |                   |
		| the result of `re.compile`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| third-party objects like             | ``False``     | ``True``          |
		| `matplotlib.figure.Figure`           |               |                   |
		+--------------------------------------+---------------+-------------------+
		| zero-dimensional numpy arrays        | ``False``     | ``True``          |
		+--------------------------------------+---------------+-------------------+
		| other numpy arrays                   | ``False``     | ``False``         |
		+--------------------------------------+---------------+-------------------+
		| `list`, `tuple`, and other sequence  | ``False``     | ``False``         |
		| objects                              |               |                   |
		+--------------------------------------+---------------+-------------------+
		
		Examples
		--------
		>>> np.isscalar(3.1)
		True
		>>> np.isscalar(np.array(3.1))
		False
		>>> np.isscalar([3.1])
		False
		>>> np.isscalar(False)
		True
		>>> np.isscalar('numpy')
		True
		
		NumPy supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> np.isscalar(Fraction(5, 17))
		True
		>>> from numbers import Number
		>>> np.isscalar(Number())
		True
	**/
	static public function isscalar(element:Dynamic):Bool;
	/**
		Interpret the input as a matrix.
		
		Unlike `matrix`, `asmatrix` does not make a copy if the input is already
		a matrix or an ndarray.  Equivalent to ``matrix(data, copy=False)``.
		
		Parameters
		----------
		data : array_like
		    Input data.
		dtype : data-type
		   Data-type of the output matrix.
		
		Returns
		-------
		mat : matrix
		    `data` interpreted as a matrix.
		
		Examples
		--------
		>>> x = np.array([[1, 2], [3, 4]])
		
		>>> m = np.asmatrix(x)
		
		>>> x[0,0] = 5
		
		>>> m
		matrix([[5, 2],
		        [3, 4]])
	**/
	static public function mat(data:Dynamic, ?dtype:Dynamic):numpy.Matrix;
	/**
		Raise a square matrix to the (integer) power `n`.
		
		For positive integers `n`, the power is computed by repeated matrix
		squarings and matrix multiplications. If ``n == 0``, the identity matrix
		of the same shape as M is returned. If ``n < 0``, the inverse
		is computed and then raised to the ``abs(n)``.
		
		.. note:: Stacks of object matrices are not currently supported.
		
		Parameters
		----------
		a : (..., M, M) array_like
		    Matrix to be "powered".
		n : int
		    The exponent can be any integer or long integer, positive,
		    negative, or zero.
		
		Returns
		-------
		a**n : (..., M, M) ndarray or matrix object
		    The return value is the same shape and type as `M`;
		    if the exponent is positive or zero then the type of the
		    elements is the same as those of `M`. If the exponent is
		    negative the elements are floating-point.
		
		Raises
		------
		LinAlgError
		    For matrices that are not square or that (for negative powers) cannot
		    be inverted numerically.
		
		Examples
		--------
		>>> from numpy.linalg import matrix_power
		>>> i = np.array([[0, 1], [-1, 0]]) # matrix equiv. of the imaginary unit
		>>> matrix_power(i, 3) # should = -i
		array([[ 0, -1],
		       [ 1,  0]])
		>>> matrix_power(i, 0)
		array([[1, 0],
		       [0, 1]])
		>>> matrix_power(i, -3) # should = 1/(-i) = i, but w/ f.p. elements
		array([[ 0.,  1.],
		       [-1.,  0.]])
		
		Somewhat more sophisticated example
		
		>>> q = np.zeros((4, 4))
		>>> q[0:2, 0:2] = -i
		>>> q[2:4, 2:4] = i
		>>> q # one of the three quaternion units not equal to 1
		array([[ 0., -1.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.],
		       [ 0.,  0.,  0.,  1.],
		       [ 0.,  0., -1.,  0.]])
		>>> matrix_power(q, 2) # = -np.eye(4)
		array([[-1.,  0.,  0.,  0.],
		       [ 0., -1.,  0.,  0.],
		       [ 0.,  0., -1.,  0.],
		       [ 0.,  0.,  0., -1.]])
	**/
	static public function matrix_power(a:Dynamic, n:Dynamic):Dynamic;
	/**
		Decorator for overriding __module__ on a function or class.
		
		Example usage::
		
		    @set_module('numpy')
		    def example():
		        pass
		
		    assert example.__module__ == 'numpy'
	**/
	static public function set_module(module:Dynamic):Dynamic;
}