/* This file is generated, do not edit! */
package scipy.optimize.nnls;
@:pythonImport("scipy.optimize.nnls") extern class Nnls_Module {
	static public var __all__ : Dynamic;
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
		Convert the input to an array, checking for NaNs or Infs.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.  Success requires no NaNs or Infs.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		     Whether to use row-major (C-style) or
		     column-major (Fortran-style) memory representation.
		     Defaults to 'C'.
		
		Returns
		-------
		out : ndarray
		    Array interpretation of `a`.  No copy is performed if the input
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
		Raises
		------
		ValueError
		    Raises ValueError if `a` contains NaN (Not a Number) or Inf (Infinity).
		
		See Also
		--------
		asarray : Create and array.
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array.  If all elements are finite
		``asarray_chkfinite`` is identical to ``asarray``.
		
		>>> a = [1, 2]
		>>> np.asarray_chkfinite(a, dtype=float)
		array([1., 2.])
		
		Raises ValueError if array_like contains Nans or Infs.
		
		>>> a = [1, 2, np.inf]
		>>> try:
		...     np.asarray_chkfinite(a)
		... except ValueError:
		...     print 'ValueError'
		...
		ValueError
	**/
	static public function asarray_chkfinite(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Solve ``argmin_x || Ax - b ||_2`` for ``x>=0``. This is a wrapper
		for a FORTAN non-negative least squares solver.
		
		Parameters
		----------
		A : ndarray
		    Matrix ``A`` as shown above.
		b : ndarray
		    Right-hand side vector.
		
		Returns
		-------
		x : ndarray
		    Solution vector.
		rnorm : float
		    The residual, ``|| Ax-b ||_2``.
		
		Notes
		-----
		The FORTRAN code was published in the book below. The algorithm
		is an active set method. It solves the KKT (Karush-Kuhn-Tucker)
		conditions for the non-negative least squares problem.
		
		References
		----------
		Lawson C., Hanson R.J., (1987) Solving Least Squares Problems, SIAM
	**/
	static public function nnls(A:Dynamic, b:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or sequence of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional
		    Whether to store multidimensional data in C- or Fortran-contiguous
		    (row- or column-wise) order in memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		empty_like : Return an empty array with shape and type of input.
		ones : Return a new array setting values to one.
		empty : Return a new uninitialized array.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=np.int)
		array([0, 0, 0, 0, 0])
		
		>>> np.zeros((2, 1))
		array([[ 0.],
		       [ 0.]])
		
		>>> s = (2,2)
		>>> np.zeros(s)
		array([[ 0.,  0.],
		       [ 0.,  0.]])
		
		>>> np.zeros((2,), dtype=[('x', 'i4'), ('y', 'i4')]) # custom dtype
		array([(0, 0), (0, 0)],
		      dtype=[('x', '<i4'), ('y', '<i4')])
	**/
	static public function zeros(args:haxe.extern.Rest<Dynamic>):Dynamic;
}