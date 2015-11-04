/* This file is generated, do not edit! */
package numpy.lib.twodim_base;
@:pythonImport("numpy.lib.twodim_base") extern class Twodim_base_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		get small int that fits the range 
	**/
	static public function _min_int(low:Dynamic, high:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		arange([start,] stop[, step,], dtype=None)
		
		Return evenly spaced values within a given interval.
		
		Values are generated within the half-open interval ``[start, stop)``
		(in other words, the interval including `start` but excluding `stop`).
		For integer arguments the function is equivalent to the Python built-in
		`range <http://docs.python.org/lib/built-in-funcs.html>`_ function,
		but returns an ndarray rather than a list.
		
		When using a non-integer step, such as 0.1, the results will often not
		be consistent.  It is better to use ``linspace`` for these cases.
		
		Parameters
		----------
		start : number, optional
		    Start of interval.  The interval includes this value.  The default
		    start value is 0.
		stop : number
		    End of interval.  The interval does not include this value, except
		    in some cases where `step` is not an integer and floating point
		    round-off affects the length of `out`.
		step : number, optional
		    Spacing between values.  For any output `out`, this is the distance
		    between two adjacent values, ``out[i+1] - out[i]``.  The default
		    step size is 1.  If `step` is specified, `start` must also be given.
		dtype : dtype
		    The type of the output array.  If `dtype` is not given, infer the data
		    type from the other input arguments.
		
		Returns
		-------
		arange : ndarray
		    Array of evenly spaced values.
		
		    For floating point arguments, the length of the result is
		    ``ceil((stop - start)/step)``.  Because of floating point overflow,
		    this rule may result in the last element of `out` being greater
		    than `stop`.
		
		See Also
		--------
		linspace : Evenly spaced numbers with careful handling of endpoints.
		ogrid: Arrays of evenly spaced numbers in N-dimensions.
		mgrid: Grid-shaped arrays of evenly spaced numbers in N-dimensions.
		
		Examples
		--------
		>>> np.arange(3)
		array([0, 1, 2])
		>>> np.arange(3.0)
		array([ 0.,  1.,  2.])
		>>> np.arange(3,7)
		array([3, 4, 5, 6])
		>>> np.arange(3,7,2)
		array([3, 5])
	**/
	static public function arange(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the input to an ndarray, but pass ndarray subclasses through.
		
		Parameters
		----------
		a : array_like
		    Input data, in any form that can be converted to an array.  This
		    includes scalars, lists, lists of tuples, tuples, tuples of tuples,
		    tuples of lists, and ndarrays.
		dtype : data-type, optional
		    By default, the data-type is inferred from the input data.
		order : {'C', 'F'}, optional
		    Whether to use row-major (C-style) or column-major
		    (Fortran-style) memory representation.  Defaults to 'C'.
		
		Returns
		-------
		out : ndarray or an ndarray subclass
		    Array interpretation of `a`.  If `a` is an ndarray or a subclass
		    of ndarray, it is returned as-is and no copy is performed.
		
		See Also
		--------
		asarray : Similar function which always returns ndarrays.
		ascontiguousarray : Convert input to a contiguous array.
		asfarray : Convert input to a floating point ndarray.
		asfortranarray : Convert input to an ndarray with column-major
		                 memory order.
		asarray_chkfinite : Similar function which checks input for NaNs and
		                    Infs.
		fromiter : Create an array from an iterator.
		fromfunction : Construct an array by executing a function on grid
		               positions.
		
		Examples
		--------
		Convert a list into an array:
		
		>>> a = [1, 2]
		>>> np.asanyarray(a)
		array([1, 2])
		
		Instances of `ndarray` subclasses are passed through as-is:
		
		>>> a = np.matrix([1, 2])
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asanyarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):Dynamic;
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
		    is already an ndarray.  If `a` is a subclass of ndarray, a base
		    class ndarray is returned.
		
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
		
		>>> issubclass(np.matrix, np.ndarray)
		True
		>>> a = np.matrix([[1, 2]])
		>>> np.asarray(a) is a
		False
		>>> np.asanyarray(a) is a
		True
	**/
	static public function asarray(a:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	/**
		Extract a diagonal or construct a diagonal array.
		
		See the more detailed documentation for ``numpy.diagonal`` if you use this
		function to extract a diagonal and wish to write to the resulting array;
		whether it returns a copy or a view depends on what version of numpy you
		are using.
		
		Parameters
		----------
		v : array_like
		    If `v` is a 2-D array, return a copy of its `k`-th diagonal.
		    If `v` is a 1-D array, return a 2-D array with `v` on the `k`-th
		    diagonal.
		k : int, optional
		    Diagonal in question. The default is 0. Use `k>0` for diagonals
		    above the main diagonal, and `k<0` for diagonals below the main
		    diagonal.
		
		Returns
		-------
		out : ndarray
		    The extracted diagonal or constructed diagonal array.
		
		See Also
		--------
		diagonal : Return specified diagonals.
		diagflat : Create a 2-D array with the flattened input as a diagonal.
		trace : Sum along diagonals.
		triu : Upper triangle of an array.
		tril : Lower triangle of an array.
		
		Examples
		--------
		>>> x = np.arange(9).reshape((3,3))
		>>> x
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		
		>>> np.diag(x)
		array([0, 4, 8])
		>>> np.diag(x, k=1)
		array([1, 5])
		>>> np.diag(x, k=-1)
		array([3, 7])
		
		>>> np.diag(np.diag(x))
		array([[0, 0, 0],
		       [0, 4, 0],
		       [0, 0, 8]])
	**/
	static public function diag(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Create a two-dimensional array with the flattened input as a diagonal.
		
		Parameters
		----------
		v : array_like
		    Input data, which is flattened and set as the `k`-th
		    diagonal of the output.
		k : int, optional
		    Diagonal to set; 0, the default, corresponds to the "main" diagonal,
		    a positive (negative) `k` giving the number of the diagonal above
		    (below) the main.
		
		Returns
		-------
		out : ndarray
		    The 2-D output array.
		
		See Also
		--------
		diag : MATLAB work-alike for 1-D and 2-D arrays.
		diagonal : Return specified diagonals.
		trace : Sum along diagonals.
		
		Examples
		--------
		>>> np.diagflat([[1,2], [3,4]])
		array([[1, 0, 0, 0],
		       [0, 2, 0, 0],
		       [0, 0, 3, 0],
		       [0, 0, 0, 4]])
		
		>>> np.diagflat([1,2], 1)
		array([[0, 1, 0],
		       [0, 0, 2],
		       [0, 0, 0]])
	**/
	static public function diagflat(v:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		Return specified diagonals.
		
		If `a` is 2-D, returns the diagonal of `a` with the given offset,
		i.e., the collection of elements of the form ``a[i, i+offset]``.  If
		`a` has more than two dimensions, then the axes specified by `axis1`
		and `axis2` are used to determine the 2-D sub-array whose diagonal is
		returned.  The shape of the resulting array can be determined by
		removing `axis1` and `axis2` and appending an index to the right equal
		to the size of the resulting diagonals.
		
		In versions of NumPy prior to 1.7, this function always returned a new,
		independent array containing a copy of the values in the diagonal.
		
		In NumPy 1.7 and 1.8, it continues to return a copy of the diagonal,
		but depending on this fact is deprecated. Writing to the resulting
		array continues to work as it used to, but a FutureWarning is issued.
		
		In NumPy 1.9 it returns a read-only view on the original array.
		Attempting to write to the resulting array will produce an error.
		
		In NumPy 1.10, it will return a read/write view and writing to the
		returned array will alter your original array.  The returned array
		will have the same type as the input array.
		
		If you don't write to the array returned by this function, then you can
		just ignore all of the above.
		
		If you depend on the current behavior, then we suggest copying the
		returned array explicitly, i.e., use ``np.diagonal(a).copy()`` instead
		of just ``np.diagonal(a)``. This will work with both past and future
		versions of NumPy.
		
		Parameters
		----------
		a : array_like
		    Array from which the diagonals are taken.
		offset : int, optional
		    Offset of the diagonal from the main diagonal.  Can be positive or
		    negative.  Defaults to main diagonal (0).
		axis1 : int, optional
		    Axis to be used as the first axis of the 2-D sub-arrays from which
		    the diagonals should be taken.  Defaults to first axis (0).
		axis2 : int, optional
		    Axis to be used as the second axis of the 2-D sub-arrays from
		    which the diagonals should be taken. Defaults to second axis (1).
		
		Returns
		-------
		array_of_diagonals : ndarray
		    If `a` is 2-D and not a matrix, a 1-D array of the same type as `a`
		    containing the diagonal is returned. If `a` is a matrix, a 1-D
		    array containing the diagonal is returned in order to maintain
		    backward compatibility.  If the dimension of `a` is greater than
		    two, then an array of diagonals is returned, "packed" from
		    left-most dimension to right-most (e.g., if `a` is 3-D, then the
		    diagonals are "packed" along rows).
		
		Raises
		------
		ValueError
		    If the dimension of `a` is less than 2.
		
		See Also
		--------
		diag : MATLAB work-a-like for 1-D and 2-D arrays.
		diagflat : Create diagonal arrays.
		trace : Sum along diagonals.
		
		Examples
		--------
		>>> a = np.arange(4).reshape(2,2)
		>>> a
		array([[0, 1],
		       [2, 3]])
		>>> a.diagonal()
		array([0, 3])
		>>> a.diagonal(1)
		array([1])
		
		A 3-D example:
		
		>>> a = np.arange(8).reshape(2,2,2); a
		array([[[0, 1],
		        [2, 3]],
		       [[4, 5],
		        [6, 7]]])
		>>> a.diagonal(0, # Main diagonals of two arrays created by skipping
		...            0, # across the outer(left)-most axis last and
		...            1) # the "middle" (row) axis first.
		array([[0, 6],
		       [1, 7]])
		
		The sub-arrays whose main diagonals we just obtained; note that each
		corresponds to fixing the right-most (column) axis, and that the
		diagonals are "packed" in rows.
		
		>>> a[:,:,0] # main diagonal is [0 6]
		array([[0, 2],
		       [4, 6]])
		>>> a[:,:,1] # main diagonal is [1 7]
		array([[1, 3],
		       [5, 7]])
	**/
	static public function diagonal(a:Dynamic, ?offset:Dynamic, ?axis1:Dynamic, ?axis2:Dynamic):numpy.Ndarray;
	static public var division : Dynamic;
	/**
		empty(shape, dtype=float, order='C')
		
		Return a new array of given shape and type, without initializing entries.
		
		Parameters
		----------
		shape : int or tuple of int
		    Shape of the empty array
		dtype : data-type, optional
		    Desired output data-type.
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in row-major
		    (C-style) or column-major (Fortran-style) order in
		    memory.
		
		Returns
		-------
		out : ndarray
		    Array of uninitialized (arbitrary) data with the given
		    shape, dtype, and order.
		
		See Also
		--------
		empty_like, zeros, ones
		
		Notes
		-----
		`empty`, unlike `zeros`, does not set the array values to zero,
		and may therefore be marginally faster.  On the other hand, it requires
		the user to manually set all the values in the array, and should be
		used with caution.
		
		Examples
		--------
		>>> np.empty([2, 2])
		array([[ -9.74499359e+001,   6.69583040e-309],
		       [  2.13182611e-314,   3.06959433e-309]])         #random
		
		>>> np.empty([2, 2], dtype=int)
		array([[-1073741821, -1067949133],
		       [  496041986,    19249760]])                     #random
	**/
	static public function empty(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function eye(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Flip array in the left/right direction.
		
		Flip the entries in each row in the left/right direction.
		Columns are preserved, but appear in a different order than before.
		
		Parameters
		----------
		m : array_like
		    Input array, must be at least 2-D.
		
		Returns
		-------
		f : ndarray
		    A view of `m` with the columns reversed.  Since a view
		    is returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		flipud : Flip array in the up/down direction.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to A[:,::-1]. Requires the array to be at least 2-D.
		
		Examples
		--------
		>>> A = np.diag([1.,2.,3.])
		>>> A
		array([[ 1.,  0.,  0.],
		       [ 0.,  2.,  0.],
		       [ 0.,  0.,  3.]])
		>>> np.fliplr(A)
		array([[ 0.,  0.,  1.],
		       [ 0.,  2.,  0.],
		       [ 3.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.fliplr(A)==A[:,::-1,...])
		True
	**/
	static public function fliplr(m:Dynamic):numpy.Ndarray;
	/**
		Flip array in the up/down direction.
		
		Flip the entries in each column in the up/down direction.
		Rows are preserved, but appear in a different order than before.
		
		Parameters
		----------
		m : array_like
		    Input array.
		
		Returns
		-------
		out : array_like
		    A view of `m` with the rows reversed.  Since a view is
		    returned, this operation is :math:`\mathcal O(1)`.
		
		See Also
		--------
		fliplr : Flip array in the left/right direction.
		rot90 : Rotate array counterclockwise.
		
		Notes
		-----
		Equivalent to ``A[::-1,...]``.
		Does not require the array to be two-dimensional.
		
		Examples
		--------
		>>> A = np.diag([1.0, 2, 3])
		>>> A
		array([[ 1.,  0.,  0.],
		       [ 0.,  2.,  0.],
		       [ 0.,  0.,  3.]])
		>>> np.flipud(A)
		array([[ 0.,  0.,  3.],
		       [ 0.,  2.,  0.],
		       [ 1.,  0.,  0.]])
		
		>>> A = np.random.randn(2,3,5)
		>>> np.all(np.flipud(A)==A[::-1,...])
		True
		
		>>> np.flipud([1,2])
		array([2, 1])
	**/
	static public function flipud(m:Dynamic):python.NativeIterable<Dynamic>;
	/**
		greater_equal(x1, x2[, out])
		
		Return the truth value of (x1 >= x2) element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays.  If ``x1.shape != x2.shape``, they must be
		    broadcastable to a common shape (which may be the shape of one or
		    the other).
		
		Returns
		-------
		out : bool or ndarray of bool
		    Array of bools, or a single bool if `x1` and `x2` are scalars.
		
		See Also
		--------
		greater, less, less_equal, equal, not_equal
		
		Examples
		--------
		>>> np.greater_equal([4, 2, 1], [2, 2, 2])
		array([ True, True, False], dtype=bool)
	**/
	static public function greater_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the bi-dimensional histogram of two data samples.
		
		Parameters
		----------
		x : array_like, shape (N,)
		    An array containing the x coordinates of the points to be
		    histogrammed.
		y : array_like, shape (N,)
		    An array containing the y coordinates of the points to be
		    histogrammed.
		bins : int or array_like or [int, int] or [array, array], optional
		    The bin specification:
		
		      * If int, the number of bins for the two dimensions (nx=ny=bins).
		      * If array_like, the bin edges for the two dimensions
		        (x_edges=y_edges=bins).
		      * If [int, int], the number of bins in each dimension
		        (nx, ny = bins).
		      * If [array, array], the bin edges in each dimension
		        (x_edges, y_edges = bins).
		      * A combination [int, array] or [array, int], where int
		        is the number of bins and array is the bin edges.
		
		range : array_like, shape(2,2), optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the `bins` parameters):
		    ``[[xmin, xmax], [ymin, ymax]]``. All values outside of this range
		    will be considered outliers and not tallied in the histogram.
		normed : bool, optional
		    If False, returns the number of samples in each bin. If True,
		    returns the bin density ``bin_count / sample_count / bin_area``.
		weights : array_like, shape(N,), optional
		    An array of values ``w_i`` weighing each sample ``(x_i, y_i)``.
		    Weights are normalized to 1 if `normed` is True. If `normed` is
		    False, the values of the returned histogram are equal to the sum of
		    the weights belonging to the samples falling into each bin.
		
		Returns
		-------
		H : ndarray, shape(nx, ny)
		    The bi-dimensional histogram of samples `x` and `y`. Values in `x`
		    are histogrammed along the first dimension and values in `y` are
		    histogrammed along the second dimension.
		xedges : ndarray, shape(nx,)
		    The bin edges along the first dimension.
		yedges : ndarray, shape(ny,)
		    The bin edges along the second dimension.
		
		See Also
		--------
		histogram : 1D histogram
		histogramdd : Multidimensional histogram
		
		Notes
		-----
		When `normed` is True, then the returned histogram is the sample
		density, defined such that the sum over bins of the product
		``bin_value * bin_area`` is 1.
		
		Please note that the histogram does not follow the Cartesian convention
		where `x` values are on the abscissa and `y` values on the ordinate
		axis.  Rather, `x` is histogrammed along the first dimension of the
		array (vertical), and `y` along the second dimension of the array
		(horizontal).  This ensures compatibility with `histogramdd`.
		
		Examples
		--------
		>>> import matplotlib as mpl
		>>> import matplotlib.pyplot as plt
		
		Construct a 2D-histogram with variable bin width. First define the bin
		edges:
		
		>>> xedges = [0, 1, 1.5, 3, 5]
		>>> yedges = [0, 2, 3, 4, 6]
		
		Next we create a histogram H with random bin content:
		
		>>> x = np.random.normal(3, 1, 100)
		>>> y = np.random.normal(1, 1, 100)
		>>> H, xedges, yedges = np.histogram2d(y, x, bins=(xedges, yedges))
		
		Or we fill the histogram H with a determined bin content:
		
		>>> H = np.ones((4, 4)).cumsum().reshape(4, 4)
		>>> print H[::-1]  # This shows the bin content in the order as plotted
		[[ 13.  14.  15.  16.]
		 [  9.  10.  11.  12.]
		 [  5.   6.   7.   8.]
		 [  1.   2.   3.   4.]]
		
		Imshow can only do an equidistant representation of bins:
		
		>>> fig = plt.figure(figsize=(7, 3))
		>>> ax = fig.add_subplot(131)
		>>> ax.set_title('imshow: equidistant')
		>>> im = plt.imshow(H, interpolation='nearest', origin='low',
		                extent=[xedges[0], xedges[-1], yedges[0], yedges[-1]])
		
		pcolormesh can display exact bin edges:
		
		>>> ax = fig.add_subplot(132)
		>>> ax.set_title('pcolormesh: exact bin edges')
		>>> X, Y = np.meshgrid(xedges, yedges)
		>>> ax.pcolormesh(X, Y, H)
		>>> ax.set_aspect('equal')
		
		NonUniformImage displays exact bin edges with interpolation:
		
		>>> ax = fig.add_subplot(133)
		>>> ax.set_title('NonUniformImage: interpolated')
		>>> im = mpl.image.NonUniformImage(ax, interpolation='bilinear')
		>>> xcenters = xedges[:-1] + 0.5 * (xedges[1:] - xedges[:-1])
		>>> ycenters = yedges[:-1] + 0.5 * (yedges[1:] - yedges[:-1])
		>>> im.set_data(xcenters, ycenters, H)
		>>> ax.images.append(im)
		>>> ax.set_xlim(xedges[0], xedges[-1])
		>>> ax.set_ylim(yedges[0], yedges[-1])
		>>> ax.set_aspect('equal')
		>>> plt.show()
	**/
	static public function histogram2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?normed:Dynamic, ?weights:Dynamic):Dynamic;
	static public var i1 : Dynamic;
	static public var i2 : Dynamic;
	static public var i4 : Dynamic;
	/**
		Return the indices to access (n, n) arrays, given a masking function.
		
		Assume `mask_func` is a function that, for a square array a of size
		``(n, n)`` with a possible offset argument `k`, when called as
		``mask_func(a, k)`` returns a new array with zeros in certain locations
		(functions like `triu` or `tril` do precisely this). Then this function
		returns the indices where the non-zero values would be located.
		
		Parameters
		----------
		n : int
		    The returned indices will be valid to access arrays of shape (n, n).
		mask_func : callable
		    A function whose call signature is similar to that of `triu`, `tril`.
		    That is, ``mask_func(x, k)`` returns a boolean array, shaped like `x`.
		    `k` is an optional argument to the function.
		k : scalar
		    An optional argument which is passed through to `mask_func`. Functions
		    like `triu`, `tril` take a second argument that is interpreted as an
		    offset.
		
		Returns
		-------
		indices : tuple of arrays.
		    The `n` arrays of indices corresponding to the locations where
		    ``mask_func(np.ones((n, n)), k)`` is True.
		
		See Also
		--------
		triu, tril, triu_indices, tril_indices
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		These are the indices that would allow you to access the upper triangular
		part of any 3x3 array:
		
		>>> iu = np.mask_indices(3, np.triu)
		
		For example, if `a` is a 3x3 array:
		
		>>> a = np.arange(9).reshape(3, 3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5],
		       [6, 7, 8]])
		>>> a[iu]
		array([0, 1, 2, 4, 5, 8])
		
		An offset can be passed also to the masking function.  This gets us the
		indices starting on the first diagonal right of the main one:
		
		>>> iu1 = np.mask_indices(3, np.triu, 1)
		
		with which we now extract only three elements:
		
		>>> a[iu1]
		array([1, 2, 5])
	**/
	static public function mask_indices(n:Dynamic, mask_func:Dynamic, ?k:Dynamic):Dynamic;
	/**
		multiply(x1, x2[, out])
		
		Multiply arguments element-wise.
		
		Parameters
		----------
		x1, x2 : array_like
		    Input arrays to be multiplied.
		
		Returns
		-------
		y : ndarray
		    The product of `x1` and `x2`, element-wise. Returns a scalar if
		    both  `x1` and `x2` are scalars.
		
		Notes
		-----
		Equivalent to `x1` * `x2` in terms of array broadcasting.
		
		Examples
		--------
		>>> np.multiply(2.0, 4.0)
		8.0
		
		>>> x1 = np.arange(9.0).reshape((3, 3))
		>>> x2 = np.arange(3.0)
		>>> np.multiply(x1, x2)
		array([[  0.,   1.,   4.],
		       [  0.,   4.,  10.],
		       [  0.,   7.,  16.]])
	**/
	static public function multiply(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a new array of given shape and type, filled with ones.
		
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
		    Array of ones with the given shape, dtype, and order.
		
		See Also
		--------
		zeros, ones_like
		
		Examples
		--------
		>>> np.ones(5)
		array([ 1.,  1.,  1.,  1.,  1.])
		
		>>> np.ones((5,), dtype=np.int)
		array([1, 1, 1, 1, 1])
		
		>>> np.ones((2, 1))
		array([[ 1.],
		       [ 1.]])
		
		>>> s = (2,2)
		>>> np.ones(s)
		array([[ 1.,  1.],
		       [ 1.,  1.]])
	**/
	static public function ones(shape:Dynamic, ?dtype:Dynamic, ?order:Dynamic):numpy.Ndarray;
	static public var print_function : Dynamic;
	/**
		promote_types(type1, type2)
		
		Returns the data type with the smallest size and smallest scalar
		kind to which both ``type1`` and ``type2`` may be safely cast.
		The returned data type is always in native byte order.
		
		This function is symmetric and associative.
		
		Parameters
		----------
		type1 : dtype or dtype specifier
		    First data type.
		type2 : dtype or dtype specifier
		    Second data type.
		
		Returns
		-------
		out : dtype
		    The promoted data type.
		
		Notes
		-----
		.. versionadded:: 1.6.0
		
		Starting in NumPy 1.9, promote_types function now returns a valid string
		length when given an integer or float dtype as one argument and a string
		dtype as another argument. Previously it always returned the input string
		dtype, even if it wasn't long enough to store the max integer/float value
		converted to a string.
		
		See Also
		--------
		result_type, dtype, can_cast
		
		Examples
		--------
		>>> np.promote_types('f4', 'f8')
		dtype('float64')
		
		>>> np.promote_types('i8', 'f4')
		dtype('float64')
		
		>>> np.promote_types('>i8', '<c8')
		dtype('complex128')
		
		>>> np.promote_types('i4', 'S8')
		dtype('S11')
	**/
	static public function promote_types(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Rotate an array by 90 degrees in the counter-clockwise direction.
		
		The first two dimensions are rotated; therefore, the array must be at
		least 2-D.
		
		Parameters
		----------
		m : array_like
		    Array of two or more dimensions.
		k : integer
		    Number of times the array is rotated by 90 degrees.
		
		Returns
		-------
		y : ndarray
		    Rotated array.
		
		See Also
		--------
		fliplr : Flip an array horizontally.
		flipud : Flip an array vertically.
		
		Examples
		--------
		>>> m = np.array([[1,2],[3,4]], int)
		>>> m
		array([[1, 2],
		       [3, 4]])
		>>> np.rot90(m)
		array([[2, 4],
		       [1, 3]])
		>>> np.rot90(m, 2)
		array([[4, 3],
		       [2, 1]])
	**/
	static public function rot90(m:Dynamic, ?k:Dynamic):numpy.Ndarray;
	/**
		An array with ones at and below the given diagonal and zeros elsewhere.
		
		Parameters
		----------
		N : int
		    Number of rows in the array.
		M : int, optional
		    Number of columns in the array.
		    By default, `M` is taken equal to `N`.
		k : int, optional
		    The sub-diagonal at and below which the array is filled.
		    `k` = 0 is the main diagonal, while `k` < 0 is below it,
		    and `k` > 0 is above.  The default is 0.
		dtype : dtype, optional
		    Data type of the returned array.  The default is float.
		
		Returns
		-------
		tri : ndarray of shape (N, M)
		    Array with its lower triangle filled with ones and zero elsewhere;
		    in other words ``T[i,j] == 1`` for ``i <= j + k``, 0 otherwise.
		
		Examples
		--------
		>>> np.tri(3, 5, 2, dtype=int)
		array([[1, 1, 1, 0, 0],
		       [1, 1, 1, 1, 0],
		       [1, 1, 1, 1, 1]])
		
		>>> np.tri(3, 5, -1)
		array([[ 0.,  0.,  0.,  0.,  0.],
		       [ 1.,  0.,  0.,  0.,  0.],
		       [ 1.,  1.,  0.,  0.,  0.]])
	**/
	static public function tri(N:Dynamic, ?M:Dynamic, ?k:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Lower triangle of an array.
		
		Return a copy of an array with elements above the `k`-th diagonal zeroed.
		
		Parameters
		----------
		m : array_like, shape (M, N)
		    Input array.
		k : int, optional
		    Diagonal above which to zero elements.  `k = 0` (the default) is the
		    main diagonal, `k < 0` is below it and `k > 0` is above.
		
		Returns
		-------
		tril : ndarray, shape (M, N)
		    Lower triangle of `m`, of same shape and data-type as `m`.
		
		See Also
		--------
		triu : same thing, only for the upper triangle
		
		Examples
		--------
		>>> np.tril([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 0,  0,  0],
		       [ 4,  0,  0],
		       [ 7,  8,  0],
		       [10, 11, 12]])
	**/
	static public function tril(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The row dimension of the arrays for which the returned
		    indices will be valid.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple of arrays
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.
		
		See also
		--------
		triu_indices : similar function, for upper-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		tril, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		lower triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> il1 = np.tril_indices(4)
		>>> il2 = np.tril_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[il1]
		array([ 0,  4,  5,  8,  9, 10, 12, 13, 14, 15])
		
		And for assigning values:
		
		>>> a[il1] = -1
		>>> a
		array([[-1,  1,  2,  3],
		       [-1, -1,  6,  7],
		       [-1, -1, -1, 11],
		       [-1, -1, -1, -1]])
		
		These cover almost the whole array (two diagonals right of the main one):
		
		>>> a[il2] = -10
		>>> a
		array([[-10, -10, -10,   3],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10],
		       [-10, -10, -10, -10]])
	**/
	static public function tril_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the lower-triangle of arr.
		
		See `tril_indices` for full details.
		
		Parameters
		----------
		arr : array_like
		    The indices will be valid for square arrays whose dimensions are
		    the same as arr.
		k : int, optional
		    Diagonal offset (see `tril` for details).
		
		See Also
		--------
		tril_indices, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function tril_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Upper triangle of an array.
		
		Return a copy of a matrix with the elements below the `k`-th diagonal
		zeroed.
		
		Please refer to the documentation for `tril` for further details.
		
		See Also
		--------
		tril : lower triangle of an array
		
		Examples
		--------
		>>> np.triu([[1,2,3],[4,5,6],[7,8,9],[10,11,12]], -1)
		array([[ 1,  2,  3],
		       [ 4,  5,  6],
		       [ 0,  8,  9],
		       [ 0,  0, 12]])
	**/
	static public function triu(m:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of an (n, m) array.
		
		Parameters
		----------
		n : int
		    The size of the arrays for which the returned indices will
		    be valid.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		m : int, optional
		    .. versionadded:: 1.9.0
		
		    The column dimension of the arrays for which the returned
		    arrays will be valid.
		    By default `m` is taken equal to `n`.
		
		
		Returns
		-------
		inds : tuple, shape(2) of ndarrays, shape(`n`)
		    The indices for the triangle. The returned tuple contains two arrays,
		    each with the indices along one dimension of the array.  Can be used
		    to slice a ndarray of shape(`n`, `n`).
		
		See also
		--------
		tril_indices : similar function, for lower-triangular.
		mask_indices : generic function accepting an arbitrary mask function.
		triu, tril
		
		Notes
		-----
		.. versionadded:: 1.4.0
		
		Examples
		--------
		Compute two different sets of indices to access 4x4 arrays, one for the
		upper triangular part starting at the main diagonal, and one starting two
		diagonals further right:
		
		>>> iu1 = np.triu_indices(4)
		>>> iu2 = np.triu_indices(4, 2)
		
		Here is how they can be used with a sample array:
		
		>>> a = np.arange(16).reshape(4, 4)
		>>> a
		array([[ 0,  1,  2,  3],
		       [ 4,  5,  6,  7],
		       [ 8,  9, 10, 11],
		       [12, 13, 14, 15]])
		
		Both for indexing:
		
		>>> a[iu1]
		array([ 0,  1,  2,  3,  5,  6,  7, 10, 11, 15])
		
		And for assigning values:
		
		>>> a[iu1] = -1
		>>> a
		array([[-1, -1, -1, -1],
		       [ 4, -1, -1, -1],
		       [ 8,  9, -1, -1],
		       [12, 13, 14, -1]])
		
		These cover only a small part of the whole array (two diagonals right
		of the main one):
		
		>>> a[iu2] = -10
		>>> a
		array([[ -1,  -1, -10, -10],
		       [  4,  -1,  -1, -10],
		       [  8,   9,  -1,  -1],
		       [ 12,  13,  14,  -1]])
	**/
	static public function triu_indices(n:Dynamic, ?k:Dynamic, ?m:Dynamic):Dynamic;
	/**
		Return the indices for the upper-triangle of arr.
		
		See `triu_indices` for full details.
		
		Parameters
		----------
		arr : ndarray, shape(N, N)
		    The indices will be valid for square arrays.
		k : int, optional
		    Diagonal offset (see `triu` for details).
		
		Returns
		-------
		triu_indices_from : tuple, shape(2) of ndarray, shape(N)
		    Indices for the upper-triangle of `arr`.
		
		See Also
		--------
		triu_indices, triu
		
		Notes
		-----
		.. versionadded:: 1.4.0
	**/
	static public function triu_indices_from(arr:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Generate a Vandermonde matrix.
		
		The columns of the output matrix are powers of the input vector. The
		order of the powers is determined by the `increasing` boolean argument.
		Specifically, when `increasing` is False, the `i`-th output column is
		the input vector raised element-wise to the power of ``N - i - 1``. Such
		a matrix with a geometric progression in each row is named for Alexandre-
		Theophile Vandermonde.
		
		Parameters
		----------
		x : array_like
		    1-D input array.
		N : int, optional
		    Number of columns in the output.  If `N` is not specified, a square
		    array is returned (``N = len(x)``).
		increasing : bool, optional
		    Order of the powers of the columns.  If True, the powers increase
		    from left to right, if False (the default) they are reversed.
		
		    .. versionadded:: 1.9.0
		
		Returns
		-------
		out : ndarray
		    Vandermonde matrix.  If `increasing` is False, the first column is
		    ``x^(N-1)``, the second ``x^(N-2)`` and so forth. If `increasing` is
		    True, the columns are ``x^0, x^1, ..., x^(N-1)``.
		
		See Also
		--------
		polynomial.polynomial.polyvander
		
		Examples
		--------
		>>> x = np.array([1, 2, 3, 5])
		>>> N = 3
		>>> np.vander(x, N)
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> np.column_stack([x**(N-1-i) for i in range(N)])
		array([[ 1,  1,  1],
		       [ 4,  2,  1],
		       [ 9,  3,  1],
		       [25,  5,  1]])
		
		>>> x = np.array([1, 2, 3, 5])
		>>> np.vander(x)
		array([[  1,   1,   1,   1],
		       [  8,   4,   2,   1],
		       [ 27,   9,   3,   1],
		       [125,  25,   5,   1]])
		>>> np.vander(x, increasing=True)
		array([[  1,   1,   1,   1],
		       [  1,   2,   4,   8],
		       [  1,   3,   9,  27],
		       [  1,   5,  25, 125]])
		
		The determinant of a square Vandermonde matrix is the product
		of the differences between the values of the input vector:
		
		>>> np.linalg.det(np.vander(x))
		48.000000000000043
		>>> (5-3)*(5-2)*(5-1)*(3-2)*(3-1)*(2-1)
		48
	**/
	static public function vander(x:Dynamic, ?N:Dynamic, ?increasing:Dynamic):Dynamic;
	/**
		where(condition, [x, y])
		
		Return elements, either from `x` or `y`, depending on `condition`.
		
		If only `condition` is given, return ``condition.nonzero()``.
		
		Parameters
		----------
		condition : array_like, bool
		    When True, yield `x`, otherwise yield `y`.
		x, y : array_like, optional
		    Values from which to choose. `x` and `y` need to have the same
		    shape as `condition`.
		
		Returns
		-------
		out : ndarray or tuple of ndarrays
		    If both `x` and `y` are specified, the output array contains
		    elements of `x` where `condition` is True, and elements from
		    `y` elsewhere.
		
		    If only `condition` is given, return the tuple
		    ``condition.nonzero()``, the indices where `condition` is True.
		
		See Also
		--------
		nonzero, choose
		
		Notes
		-----
		If `x` and `y` are given and input arrays are 1-D, `where` is
		equivalent to::
		
		    [xv if c else yv for (c,xv,yv) in zip(condition,x,y)]
		
		Examples
		--------
		>>> np.where([[True, False], [True, True]],
		...          [[1, 2], [3, 4]],
		...          [[9, 8], [7, 6]])
		array([[1, 8],
		       [3, 4]])
		
		>>> np.where([[0, 1], [1, 0]])
		(array([0, 1]), array([1, 0]))
		
		>>> x = np.arange(9.).reshape(3, 3)
		>>> np.where( x > 5 )
		(array([2, 2, 2]), array([0, 1, 2]))
		>>> x[np.where( x > 3.0 )]               # Note: result is 1D.
		array([ 4.,  5.,  6.,  7.,  8.])
		>>> np.where(x < 5, x, -1)               # Note: broadcasting.
		array([[ 0.,  1.,  2.],
		       [ 3.,  4., -1.],
		       [-1., -1., -1.]])
		
		Find the indices of elements of `x` that are in `goodvalues`.
		
		>>> goodvalues = [3, 4, 7]
		>>> ix = np.in1d(x.ravel(), goodvalues).reshape(x.shape)
		>>> ix
		array([[False, False, False],
		       [ True,  True, False],
		       [False,  True, False]], dtype=bool)
		>>> np.where(ix)
		(array([1, 1, 2]), array([0, 1, 1]))
	**/
	static public function where(args:haxe.extern.Rest<Dynamic>):Dynamic;
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