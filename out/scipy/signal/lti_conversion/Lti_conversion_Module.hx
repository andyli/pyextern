/* This file is generated, do not edit! */
package scipy.signal.lti_conversion;
@:pythonImport("scipy.signal.lti_conversion") extern class Lti_conversion_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _atleast_2d_or_none(arg:Dynamic):Dynamic;
	static public function _choice_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function _none_to_empty_2d(arg:Dynamic):Dynamic;
	static public function _restore(M:Dynamic, shape:Dynamic):Dynamic;
	static public function _shape_or_none(M:Dynamic):Dynamic;
	/**
		Check state-space matrices and ensure they are two-dimensional.
		
		If enough information on the system is provided, that is, enough
		properly-shaped arrays are passed to the function, the missing ones
		are built from this information, ensuring the correct number of
		rows and columns. Otherwise a ValueError is raised.
		
		Parameters
		----------
		A, B, C, D : array_like, optional
		    State-space matrices. All of them are None (missing) by default.
		    See `ss2tf` for format.
		
		Returns
		-------
		A, B, C, D : array
		    Properly shaped state-space matrices.
		
		Raises
		------
		ValueError
		    If not enough information on the system was provided.
	**/
	static public function abcd_normalize(?A:Dynamic, ?B:Dynamic, ?C:Dynamic, ?D:Dynamic):Array<Dynamic>;
	static public var absolute_import : Dynamic;
	/**
		array(object, dtype=None, copy=True, order='K', subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an object whose
		    __array__ method returns an array, or any (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then the type will
		    be determined as the minimum type required to hold the objects in the
		    sequence.  This argument can only be used to 'upcast' the array.  For
		    downcasting, use the .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy will
		    only be made if __array__ returns a copy, if obj is a nested sequence,
		    or if a copy is needed to satisfy any of the other requirements
		    (`dtype`, `order`, etc.).
		order : {'K', 'A', 'C', 'F'}, optional
		    Specify the memory layout of the array. If object is not an array, the
		    newly created array will be in C order (row major) unless 'F' is
		    specified, in which case it will be in Fortran order (column major).
		    If object is an array the following holds.
		
		    ===== ========= ===================================================
		    order  no copy                     copy=True
		    ===== ========= ===================================================
		    'K'   unchanged F & C order preserved, otherwise most similar order
		    'A'   unchanged F order if input is F and not C, otherwise C order
		    'C'   C order   C order
		    'F'   F order   F order
		    ===== ========= ===================================================
		
		    When ``copy=False`` and a copy is made for other reasons, the result is
		    the same as if ``copy=True``, with some exceptions for `A`, see the
		    Notes section. The default order is 'K'.
		subok : bool, optional
		    If True, then sub-classes will be passed-through, otherwise
		    the returned array will be forced to be a base-class array (default).
		ndmin : int, optional
		    Specifies the minimum number of dimensions that the resulting
		    array should have.  Ones will be pre-pended to the shape as
		    needed to meet this requirement.
		
		Returns
		-------
		out : ndarray
		    An array object satisfying the specified requirements.
		
		See Also
		--------
		empty_like : Return an empty array with shape and type of input.
		ones_like : Return an array of ones with shape and type of input.
		zeros_like : Return an array of zeros with shape and type of input.
		full_like : Return a new array with shape of input filled with value.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		zeros : Return a new array setting values to zero.
		full : Return a new array of given shape filled with value.
		
		
		Notes
		-----
		When order is 'A' and `object` is an array in neither 'C' nor 'F' order,
		and a copy is forced by a change in dtype, then the order of the result is
		not necessarily 'C' as expected. This is likely a bug.
		
		Examples
		--------
		>>> np.array([1, 2, 3])
		array([1, 2, 3])
		
		Upcasting:
		
		>>> np.array([1, 2, 3.0])
		array([ 1.,  2.,  3.])
		
		More than one dimension:
		
		>>> np.array([[1, 2], [3, 4]])
		array([[1, 2],
		       [3, 4]])
		
		Minimum dimensions 2:
		
		>>> np.array([1, 2, 3], ndmin=2)
		array([[1, 2, 3]])
		
		Type provided:
		
		>>> np.array([1, 2, 3], dtype=complex)
		array([ 1.+0.j,  2.+0.j,  3.+0.j])
		
		Data-type consisting of more than one element:
		
		>>> x = np.array([(1,2),(3,4)],dtype=[('a','<i4'),('b','<i4')])
		>>> x['a']
		array([1, 3])
		
		Creating an array from sub-classes:
		
		>>> np.array(np.mat('1 2; 3 4'))
		array([[1, 2],
		       [3, 4]])
		
		>>> np.array(np.mat('1 2; 3 4'), subok=True)
		matrix([[1, 2],
		        [3, 4]])
	**/
	static public function array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an array.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes lists, lists of tuples, tuples, tuples of tuples, tuples
		    of lists and ndarrays.
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
		    is already an ndarray with matching dtype and order.  If `a` is a
		    subclass of ndarray, a base class ndarray is returned.
		
		See Also
		--------
		asanyarray : Similar function which passes through subclasses.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asarray(a)
		array([1, 2])
		
		Existing arrays are not copied:
		
		>>> a = np.array([1, 2])
		>>> np.asarray(a) is a
		True
		
		If `dtype` is set, array is copied only if dtype does not match:
		
		>>> a = np.array([1, 2], dtype=np.float32)
		>>> np.asarray(a, dtype=np.float32) is a
		True
		>>> np.asarray(a, dtype=np.float64) is a
		False
		
		Contrary to `asanyarray`, ndarray subclasses are not passed through:
		
		>>> issubclass(np.recarray, np.ndarray)
		True
		>>> a = np.array([(1.0, 2), (3.0, 4)], dtype='f4,i4').view(np.recarray)
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		View inputs as arrays with at least two dimensions.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more array-like sequences.  Non-array inputs are converted
		    to arrays.  Arrays that already have two or more dimensions are
		    preserved.
		
		Returns
		-------
		res, res2, ... : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 2``.
		    Copies are avoided where possible, and views with two or more
		    dimensions are returned.
		
		See Also
		--------
		atleast_1d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_2d(3.0)
		array([[ 3.]])
		
		>>> x = np.arange(3.0)
		>>> np.atleast_2d(x)
		array([[ 0.,  1.,  2.]])
		>>> np.atleast_2d(x).base is x
		True
		
		>>> np.atleast_2d(1, [1, 2], [[1, 2]])
		[array([[1]]), array([[1, 2]]), array([[1, 2]])]
	**/
	static public function atleast_2d(?arys:python.VarArgs<Dynamic>):Dynamic;
	/**
		Transform a continuous to a discrete state-space system.
		
		Parameters
		----------
		system : a tuple describing the system or an instance of `lti`
		    The following gives the number of elements in the tuple and
		    the interpretation:
		
		        * 1: (instance of `lti`)
		        * 2: (num, den)
		        * 3: (zeros, poles, gain)
		        * 4: (A, B, C, D)
		
		dt : float
		    The discretization time step.
		method : str, optional
		    Which method to use:
		
		        * gbt: generalized bilinear transformation
		        * bilinear: Tustin's approximation ("gbt" with alpha=0.5)
		        * euler: Euler (or forward differencing) method ("gbt" with alpha=0)
		        * backward_diff: Backwards differencing ("gbt" with alpha=1.0)
		        * zoh: zero-order hold (default)
		        * foh: first-order hold (*versionadded: 1.3.0*)
		        * impulse: equivalent impulse response (*versionadded: 1.3.0*)
		
		alpha : float within [0, 1], optional
		    The generalized bilinear transformation weighting parameter, which
		    should only be specified with method="gbt", and is ignored otherwise
		
		Returns
		-------
		sysd : tuple containing the discrete system
		    Based on the input type, the output will be of the form
		
		    * (num, den, dt)   for transfer function input
		    * (zeros, poles, gain, dt)   for zeros-poles-gain input
		    * (A, B, C, D, dt) for state-space system input
		
		Notes
		-----
		By default, the routine uses a Zero-Order Hold (zoh) method to perform
		the transformation.  Alternatively, a generalized bilinear transformation
		may be used, which includes the common Tustin's bilinear approximation,
		an Euler's method technique, or a backwards differencing technique.
		
		The Zero-Order Hold (zoh) method is based on [1]_, the generalized bilinear
		approximation is based on [2]_ and [3]_, the First-Order Hold (foh) method
		is based on [4]_.
		
		References
		----------
		.. [1] https://en.wikipedia.org/wiki/Discretization#Discretization_of_linear_state_space_models
		
		.. [2] http://techteach.no/publications/discretetime_signals_systems/discrete.pdf
		
		.. [3] G. Zhang, X. Chen, and T. Chen, Digital redesign via the generalized
		    bilinear transformation, Int. J. Control, vol. 82, no. 4, pp. 741-754,
		    2009.
		    (https://www.mypolyuweb.hk/~magzhang/Research/ZCC09_IJC.pdf)
		
		.. [4] G. F. Franklin, J. D. Powell, and M. L. Workman, Digital control
		    of dynamic systems, 3rd ed. Menlo Park, Calif: Addison-Wesley,
		    pp. 204-206, 1998.
	**/
	static public function cont2discrete(system:Dynamic, dt:Dynamic, ?method:Dynamic, ?alpha:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		dot(a, b, out=None)
		
		Dot product of two arrays. Specifically,
		
		- If both `a` and `b` are 1-D arrays, it is inner product of vectors
		  (without complex conjugation).
		
		- If both `a` and `b` are 2-D arrays, it is matrix multiplication,
		  but using :func:`matmul` or ``a @ b`` is preferred.
		
		- If either `a` or `b` is 0-D (scalar), it is equivalent to :func:`multiply`
		  and using ``numpy.multiply(a, b)`` or ``a * b`` is preferred.
		
		- If `a` is an N-D array and `b` is a 1-D array, it is a sum product over
		  the last axis of `a` and `b`.
		
		- If `a` is an N-D array and `b` is an M-D array (where ``M>=2``), it is a
		  sum product over the last axis of `a` and the second-to-last axis of `b`::
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Parameters
		----------
		a : array_like
		    First argument.
		b : array_like
		    Second argument.
		out : ndarray, optional
		    Output argument. This must have the exact kind that would be returned
		    if it was not used. In particular, it must have the right type, must be
		    C-contiguous, and its dtype must be the dtype that would be returned
		    for `dot(a,b)`. This is a performance feature. Therefore, if these
		    conditions are not met, an exception is raised, instead of attempting
		    to be flexible.
		
		Returns
		-------
		output : ndarray
		    Returns the dot product of `a` and `b`.  If `a` and `b` are both
		    scalars or both 1-D arrays then a scalar is returned; otherwise
		    an array is returned.
		    If `out` is given, then it is returned.
		
		Raises
		------
		ValueError
		    If the last dimension of `a` is not the same size as
		    the second-to-last dimension of `b`.
		
		See Also
		--------
		vdot : Complex-conjugating dot product.
		tensordot : Sum products over arbitrary axes.
		einsum : Einstein summation convention.
		matmul : '@' operator as method with out parameter.
		
		Examples
		--------
		>>> np.dot(3, 4)
		12
		
		Neither argument is complex-conjugated:
		
		>>> np.dot([2j, 3j], [2j, 3j])
		(-13+0j)
		
		For 2-D arrays it is the matrix product:
		
		>>> a = [[1, 0], [0, 1]]
		>>> b = [[4, 1], [2, 2]]
		>>> np.dot(a, b)
		array([[4, 1],
		       [2, 2]])
		
		>>> a = np.arange(3*4*5*6).reshape((3,4,5,6))
		>>> b = np.arange(3*4*5*6)[::-1].reshape((5,4,6,3))
		>>> np.dot(a, b)[2,3,2,1,2,2]
		499128
		>>> sum(a[2,3,2,:] * b[1,2,:,2])
		499128
	**/
	static public function dot(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a 2-D array with ones on the diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		  Number of rows in the output.
		M : int, optional
		  Number of columns in the output. If None, defaults to `N`.
		k : int, optional
		  Index of the diagonal: 0 (the default) refers to the main diagonal,
		  a positive value refers to an upper diagonal, and a negative value
		  to a lower diagonal.
		dtype : data-type, optional
		  Data-type of the returned array.
		order : {'C', 'F'}, optional
		    Whether the output should be stored in row-major (C-style) or
		    column-major (Fortran-style) order in memory.
		
		    .. versionadded:: 1.14.0
		
		Returns
		-------
		I : ndarray of shape (N,M)
		  An array where all elements are equal to zero, except for the `k`-th
		  diagonal, whose values are equal to one.
		
		See Also
		--------
		identity : (almost) equivalent function
		diag : diagonal 2-D array from a 1-D array specified by the user.
		
		Examples
		--------
		>>> np.eye(2, dtype=int)
		array([[1, 0],
		       [0, 1]])
		>>> np.eye(3, k=1)
		array([[ 0.,  1.,  0.],
		       [ 0.,  0.,  1.],
		       [ 0.,  0.,  0.]])
	**/
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Normalize numerator/denominator of a continuous-time transfer function.
		
		If values of `b` are too close to 0, they are removed. In that case, a
		BadCoefficients warning is emitted.
		
		Parameters
		----------
		b: array_like
		    Numerator of the transfer function. Can be a 2d array to normalize
		    multiple transfer functions.
		a: array_like
		    Denominator of the transfer function. At most 1d.
		
		Returns
		-------
		num: array
		    The numerator of the normalized transfer function. At least a 1d
		    array. A 2d-array if the input `num` is a 2d array.
		den: 1d-array
		    The denominator of the normalized transfer function.
		
		Notes
		-----
		Coefficients for both the numerator and denominator should be specified in
		descending exponent order (e.g., ``s^2 + 3s + 5`` would be represented as
		``[1, 3, 5]``).
	**/
	static public function normalize(b:Dynamic, a:Dynamic):Dynamic;
	/**
		Compute the outer product of two vectors.
		
		Given two vectors, ``a = [a0, a1, ..., aM]`` and
		``b = [b0, b1, ..., bN]``,
		the outer product [1]_ is::
		
		  [[a0*b0  a0*b1 ... a0*bN ]
		   [a1*b0    .
		   [ ...          .
		   [aM*b0            aM*bN ]]
		
		Parameters
		----------
		a : (M,) array_like
		    First input vector.  Input is flattened if
		    not already 1-dimensional.
		b : (N,) array_like
		    Second input vector.  Input is flattened if
		    not already 1-dimensional.
		out : (M, N) ndarray, optional
		    A location where the result is stored
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : (M, N) ndarray
		    ``out[i, j] = a[i] * b[j]``
		
		See also
		--------
		inner
		einsum : ``einsum('i,j->ij', a.ravel(), b.ravel())`` is the equivalent.
		ufunc.outer : A generalization to N dimensions and other operations.
		              ``np.multiply.outer(a.ravel(), b.ravel())`` is the equivalent.
		
		References
		----------
		.. [1] : G. H. Golub and C. F. Van Loan, *Matrix Computations*, 3rd
		         ed., Baltimore, MD, Johns Hopkins University Press, 1996,
		         pg. 8.
		
		Examples
		--------
		Make a (*very* coarse) grid for computing a Mandelbrot set:
		
		>>> rl = np.outer(np.ones((5,)), np.linspace(-2, 2, 5))
		>>> rl
		array([[-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.],
		       [-2., -1.,  0.,  1.,  2.]])
		>>> im = np.outer(1j*np.linspace(2, -2, 5), np.ones((5,)))
		>>> im
		array([[ 0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j,  0.+2.j],
		       [ 0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j,  0.+1.j],
		       [ 0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j,  0.+0.j],
		       [ 0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j,  0.-1.j],
		       [ 0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j,  0.-2.j]])
		>>> grid = rl + im
		>>> grid
		array([[-2.+2.j, -1.+2.j,  0.+2.j,  1.+2.j,  2.+2.j],
		       [-2.+1.j, -1.+1.j,  0.+1.j,  1.+1.j,  2.+1.j],
		       [-2.+0.j, -1.+0.j,  0.+0.j,  1.+0.j,  2.+0.j],
		       [-2.-1.j, -1.-1.j,  0.-1.j,  1.-1.j,  2.-1.j],
		       [-2.-2.j, -1.-2.j,  0.-2.j,  1.-2.j,  2.-2.j]])
		
		An example using a "vector" of letters:
		
		>>> x = np.array(['a', 'b', 'c'], dtype=object)
		>>> np.outer(x, [1, 2, 3])
		array([[a, aa, aaa],
		       [b, bb, bbb],
		       [c, cc, ccc]], dtype=object)
	**/
	static public function outer(a:Dynamic, b:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Find the coefficients of a polynomial with the given sequence of roots.
		
		Returns the coefficients of the polynomial whose leading coefficient
		is one for the given sequence of zeros (multiple roots must be included
		in the sequence as many times as their multiplicity; see Examples).
		A square matrix (or array, which will be treated as a matrix) can also
		be given, in which case the coefficients of the characteristic polynomial
		of the matrix are returned.
		
		Parameters
		----------
		seq_of_zeros : array_like, shape (N,) or (N, N)
		    A sequence of polynomial roots, or a square array or matrix object.
		
		Returns
		-------
		c : ndarray
		    1D array of polynomial coefficients from highest to lowest degree:
		
		    ``c[0] * x**(N) + c[1] * x**(N-1) + ... + c[N-1] * x + c[N]``
		    where c[0] always equals 1.
		
		Raises
		------
		ValueError
		    If input is the wrong shape (the input must be a 1-D or square
		    2-D array).
		
		See Also
		--------
		polyval : Compute polynomial values.
		roots : Return the roots of a polynomial.
		polyfit : Least squares polynomial fit.
		poly1d : A one-dimensional polynomial class.
		
		Notes
		-----
		Specifying the roots of a polynomial still leaves one degree of
		freedom, typically represented by an undetermined leading
		coefficient. [1]_ In the case of this function, that coefficient -
		the first one in the returned array - is always taken as one. (If
		for some reason you have one other point, the only automatic way
		presently to leverage that information is to use ``polyfit``.)
		
		The characteristic polynomial, :math:`p_a(t)`, of an `n`-by-`n`
		matrix **A** is given by
		
		    :math:`p_a(t) = \mathrm{det}(t\, \mathbf{I} - \mathbf{A})`,
		
		where **I** is the `n`-by-`n` identity matrix. [2]_
		
		References
		----------
		.. [1] M. Sullivan and M. Sullivan, III, "Algebra and Trignometry,
		   Enhanced With Graphing Utilities," Prentice-Hall, pg. 318, 1996.
		
		.. [2] G. Strang, "Linear Algebra and Its Applications, 2nd Edition,"
		   Academic Press, pg. 182, 1980.
		
		Examples
		--------
		Given a sequence of a polynomial's zeros:
		
		>>> np.poly((0, 0, 0)) # Multiple root example
		array([1, 0, 0, 0])
		
		The line above represents z**3 + 0*z**2 + 0*z + 0.
		
		>>> np.poly((-1./2, 0, 1./2))
		array([ 1.  ,  0.  , -0.25,  0.  ])
		
		The line above represents z**3 - z/4
		
		>>> np.poly((np.random.random(1.)[0], 0, np.random.random(1.)[0]))
		array([ 1.        , -0.77086955,  0.08618131,  0.        ]) #random
		
		Given a square array object:
		
		>>> P = np.array([[0, 1./3], [-1./2, 0]])
		>>> np.poly(P)
		array([ 1.        ,  0.        ,  0.16666667])
		
		Note how in all cases the leading coefficient is always 1.
	**/
	static public function poly(seq_of_zeros:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Return the product of array elements over a given axis.
		
		Parameters
		----------
		a : array_like
		    Input data.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which a product is performed.  The default,
		    axis=None, will calculate the product of all the elements in the
		    input array. If axis is negative it counts from the last to the
		    first axis.
		
		    .. versionadded:: 1.7.0
		
		    If axis is a tuple of ints, a product is performed on all of the
		    axes specified in the tuple instead of a single axis or all the
		    axes as before.
		dtype : dtype, optional
		    The type of the returned array, as well as of the accumulator in
		    which the elements are multiplied.  The dtype of `a` is used by
		    default unless `a` has an integer dtype of less precision than the
		    default platform integer.  In that case, if `a` is signed then the
		    platform integer is used while if `a` is unsigned then an unsigned
		    integer of the same precision as the platform integer is used.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output, but the type of the output
		    values will be cast if necessary.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left in the
		    result as dimensions with size one. With this option, the result
		    will broadcast correctly against the input array.
		
		    If the default value is passed, then `keepdims` will not be
		    passed through to the `prod` method of sub-classes of
		    `ndarray`, however any non-default value will be.  If the
		    sub-class' method does not implement `keepdims` any
		    exceptions will be raised.
		initial : scalar, optional
		    The starting value for this product. See `~numpy.ufunc.reduce` for details.
		
		    .. versionadded:: 1.15.0
		
		Returns
		-------
		product_along_axis : ndarray, see `dtype` parameter above.
		    An array shaped as `a` but with the specified axis removed.
		    Returns a reference to `out` if specified.
		
		See Also
		--------
		ndarray.prod : equivalent method
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		Arithmetic is modular when using integer types, and no error is
		raised on overflow.  That means that, on a 32-bit platform:
		
		>>> x = np.array([536870910, 536870910, 536870910, 536870910])
		>>> np.prod(x)  # random
		16
		
		The product of an empty array is the neutral element 1:
		
		>>> np.prod([])
		1.0
		
		Examples
		--------
		By default, calculate the product of all elements:
		
		>>> np.prod([1.,2.])
		2.0
		
		Even when the input array is two-dimensional:
		
		>>> np.prod([[1.,2.],[3.,4.]])
		24.0
		
		But we can also specify the axis over which to multiply:
		
		>>> np.prod([[1.,2.],[3.,4.]], axis=1)
		array([  2.,  12.])
		
		If the type of `x` is unsigned, then the output type is
		the unsigned platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.uint8)
		>>> np.prod(x).dtype == np.uint
		True
		
		If `x` is of a signed integer type, then the output type
		is the default platform integer:
		
		>>> x = np.array([1, 2, 3], dtype=np.int8)
		>>> np.prod(x).dtype == int
		True
		
		You can also start the product with a value other than one:
		
		>>> np.prod([1, 2], initial=5)
		10
	**/
	static public function prod(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic, ?initial:Dynamic):Dynamic;
	static public var r_ : Dynamic;
	/**
		State-space to transfer function.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
		Returns
		-------
		num : 2-D ndarray
		    Numerator(s) of the resulting transfer function(s).  `num` has one row
		    for each of the system's outputs. Each row is a sequence representation
		    of the numerator polynomial.
		den : 1-D ndarray
		    Denominator of the resulting transfer function(s).  `den` is a sequence
		    representation of the denominator polynomial.
		
		Examples
		--------
		Convert the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> A = [[-2, -1], [1, 0]]
		>>> B = [[1], [0]]  # 2-dimensional column vector
		>>> C = [[1, 2]]    # 2-dimensional row vector
		>>> D = 1
		
		to the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> from scipy.signal import ss2tf
		>>> ss2tf(A, B, C, D)
		(array([[1, 3, 3]]), array([ 1.,  2.,  1.]))
	**/
	static public function ss2tf(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		State-space representation to zero-pole-gain representation.
		
		A, B, C, D defines a linear state-space system with `p` inputs,
		`q` outputs, and `n` state variables.
		
		Parameters
		----------
		A : array_like
		    State (or system) matrix of shape ``(n, n)``
		B : array_like
		    Input matrix of shape ``(n, p)``
		C : array_like
		    Output matrix of shape ``(q, n)``
		D : array_like
		    Feedthrough (or feedforward) matrix of shape ``(q, p)``
		input : int, optional
		    For multiple-input systems, the index of the input to use.
		
		Returns
		-------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
	**/
	static public function ss2zpk(A:Dynamic, B:Dynamic, C:Dynamic, D:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Transfer function to state-space representation.
		
		Parameters
		----------
		num, den : array_like
		    Sequences representing the coefficients of the numerator and
		    denominator polynomials, in order of descending degree. The
		    denominator needs to be at least as long as the numerator.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
		
		Examples
		--------
		Convert the transfer function:
		
		.. math:: H(s) = \frac{s^2 + 3s + 3}{s^2 + 2s + 1}
		
		>>> num = [1, 3, 3]
		>>> den = [1, 2, 1]
		
		to the state-space representation:
		
		.. math::
		
		    \dot{\textbf{x}}(t) =
		    \begin{bmatrix} -2 & -1 \\ 1 & 0 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \\ 0 \end{bmatrix} \textbf{u}(t) \\
		
		    \textbf{y}(t) = \begin{bmatrix} 1 & 2 \end{bmatrix} \textbf{x}(t) +
		    \begin{bmatrix} 1 \end{bmatrix} \textbf{u}(t)
		
		>>> from scipy.signal import tf2ss
		>>> A, B, C, D = tf2ss(num, den)
		>>> A
		array([[-2., -1.],
		       [ 1.,  0.]])
		>>> B
		array([[ 1.],
		       [ 0.]])
		>>> C
		array([[ 1.,  2.]])
		>>> D
		array([[ 1.]])
	**/
	static public function tf2ss(num:Dynamic, den:Dynamic):Dynamic;
	/**
		Return zero, pole, gain (z, p, k) representation from a numerator,
		denominator representation of a linear filter.
		
		Parameters
		----------
		b : array_like
		    Numerator polynomial coefficients.
		a : array_like
		    Denominator polynomial coefficients.
		
		Returns
		-------
		z : ndarray
		    Zeros of the transfer function.
		p : ndarray
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Notes
		-----
		If some values of `b` are too close to 0, they are removed. In that case,
		a BadCoefficients warning is emitted.
		
		The `b` and `a` arrays are interpreted as coefficients for positive,
		descending powers of the transfer function variable.  So the inputs
		:math:`b = [b_0, b_1, ..., b_M]` and :math:`a =[a_0, a_1, ..., a_N]`
		can represent an analog filter of the form:
		
		.. math::
		
		    H(s) = \frac
		    {b_0 s^M + b_1 s^{(M-1)} + \cdots + b_M}
		    {a_0 s^N + a_1 s^{(N-1)} + \cdots + a_N}
		
		or a discrete-time filter of the form:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 z^M + b_1 z^{(M-1)} + \cdots + b_M}
		    {a_0 z^N + a_1 z^{(N-1)} + \cdots + a_N}
		
		This "positive powers" form is found more commonly in controls
		engineering.  If `M` and `N` are equal (which is true for all filters
		generated by the bilinear transform), then this happens to be equivalent
		to the "negative powers" discrete-time form preferred in DSP:
		
		.. math::
		
		    H(z) = \frac
		    {b_0 + b_1 z^{-1} + \cdots + b_M z^{-M}}
		    {a_0 + a_1 z^{-1} + \cdots + a_N z^{-N}}
		
		Although this is true for common filters, remember that this is not true
		in the general case.  If `M` and `N` are not equal, the discrete-time
		transfer function coefficients must first be converted to the "positive
		powers" form before finding the poles and zeros.
	**/
	static public function tf2zpk(b:Dynamic, a:Dynamic):Dynamic;
	/**
		zeros(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, filled with zeros.
		
		Parameters
		----------
		shape : int or tuple of ints
		    Shape of the new array, e.g., ``(2, 3)`` or ``2``.
		dtype : data-type, optional
		    The desired data-type for the array, e.g., `numpy.int8`.  Default is
		    `numpy.float64`.
		order : {'C', 'F'}, optional, default: 'C'
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of zeros with the given shape, dtype, and order.
		
		See Also
		--------
		zeros_like : Return an array of zeros with shape and type of input.
		empty : Return a new uninitialized array.
		ones : Return a new array setting values to one.
		full : Return a new array of given shape filled with value.
		
		Examples
		--------
		>>> np.zeros(5)
		array([ 0.,  0.,  0.,  0.,  0.])
		
		>>> np.zeros((5,), dtype=int)
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
	/**
		Zero-pole-gain representation to state-space representation
		
		Parameters
		----------
		z, p : sequence
		    Zeros and poles.
		k : float
		    System gain.
		
		Returns
		-------
		A, B, C, D : ndarray
		    State space representation of the system, in controller canonical
		    form.
	**/
	static public function zpk2ss(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
	/**
		Return polynomial transfer function representation from zeros and poles
		
		Parameters
		----------
		z : array_like
		    Zeros of the transfer function.
		p : array_like
		    Poles of the transfer function.
		k : float
		    System gain.
		
		Returns
		-------
		b : ndarray
		    Numerator polynomial coefficients.
		a : ndarray
		    Denominator polynomial coefficients.
	**/
	static public function zpk2tf(z:Dynamic, p:Dynamic, k:Dynamic):Dynamic;
}