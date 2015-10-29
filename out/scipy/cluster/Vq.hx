/* This file is generated, do not edit! */
package scipy.cluster;
@:pythonImport("scipy.cluster.vq") extern class Vq {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __docformat__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for scipy argument validation.
		
		Many scipy linear algebra functions do support arbitrary array-like
		input arguments.  Examples of commonly unsupported inputs include
		matrices containing inf/nan, sparse matrix representations, and
		matrices with complicated elements.
		
		Parameters
		----------
		a : array_like
		    The array-like input.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		sparse_ok : bool, optional
		    True if scipy sparse matrices are allowed.
		objects_ok : bool, optional
		    True if arrays with dype('O') are allowed.
		mask_ok : bool, optional
		    True if masked arrays are allowed.
		as_inexact : bool, optional
		    True to convert the input array to a np.inexact dtype.
		
		Returns
		-------
		ret : ndarray
		    The converted validated array.
	**/
	static public function _asarray_validated(a:Dynamic, ?check_finite:Dynamic, ?sparse_ok:Dynamic, ?objects_ok:Dynamic, ?mask_ok:Dynamic, ?as_inexact:Dynamic):Dynamic;
	/**
		"raw" version of k-means.
		
		Returns
		-------
		code_book :
		    the lowest distortion codebook found.
		avg_dist :
		    the average distance a observation is from a code in the book.
		    Lower means the code_book matches the data better.
		
		See Also
		--------
		kmeans : wrapper around k-means
		
		Examples
		--------
		Note: not whitened in this example.
		
		>>> from numpy import array
		>>> from scipy.cluster.vq import _kmeans
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 1.0,1.0]])
		>>> book = array((features[0],features[2]))
		>>> _kmeans(features,book)
		(array([[ 1.7       ,  2.4       ],
		       [ 0.73333333,  1.13333333]]), 0.40563916697728591)
	**/
	static public function _kmeans(obs:Dynamic, guess:Dynamic, ?thresh:Dynamic):Dynamic;
	/**
		"raw" version of kmeans2. Do not use directly.
		
		Run k-means with a given initial codebook.
	**/
	static public function _kmeans2(data:Dynamic, code:Dynamic, niter:Dynamic, nc:Dynamic, missing:Dynamic):Dynamic;
	/**
		Pick k points at random in data (one row = one observation).
		
		This is done by taking the k first values of a random permutation of 1..N
		where N is the number of observation.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 are assumed to describe one
		    dimensional data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
	**/
	static public function _kpoints(data:Dynamic, k:Dynamic):Dynamic;
	/**
		Returns k samples of a random variable which parameters depend on data.
		
		More precisely, it returns k observations sampled from a Gaussian random
		variable which mean and covariances are the one estimated from data.
		
		Parameters
		----------
		data : ndarray
		    Expect a rank 1 or 2 array. Rank 1 are assumed to describe one
		    dimensional data, rank 2 multidimensional data, in which case one
		    row is one observation.
		k : int
		    Number of samples to generate.
	**/
	static public function _krandinit(data:Dynamic, k:Dynamic):Dynamic;
	/**
		raise a ClusterError when called.
	**/
	static public function _missing_raise():Dynamic;
	/**
		Print a warning when called.
	**/
	static public function _missing_warn():Dynamic;
	/**
		Python version of vq algorithm for rank 1 only.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 1 array. Each item is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should rank 1 too.
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
	**/
	static public function _py_vq_1d(obs:Dynamic, code_book:Dynamic):Dynamic;
	static public var _valid_init_meth : Dynamic;
	static public var _valid_miss_meth : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Returns the indices of the minimum values along an axis.
		
		Parameters
		----------
		a : array_like
		    Input array.
		axis : int, optional
		    By default, the index is into the flattened array, otherwise
		    along the specified axis.
		out : array, optional
		    If provided, the result will be inserted into this array. It should
		    be of the appropriate shape and dtype.
		
		Returns
		-------
		index_array : ndarray of ints
		    Array of indices into the array. It has the same shape as `a.shape`
		    with the dimension along `axis` removed.
		
		See Also
		--------
		ndarray.argmin, argmax
		amin : The minimum value along a given axis.
		unravel_index : Convert a flat index into an index tuple.
		
		Notes
		-----
		In case of multiple occurrences of the minimum values, the indices
		corresponding to the first occurrence are returned.
		
		Examples
		--------
		>>> a = np.arange(6).reshape(2,3)
		>>> a
		array([[0, 1, 2],
		       [3, 4, 5]])
		>>> np.argmin(a)
		0
		>>> np.argmin(a, axis=0)
		array([0, 0, 0])
		>>> np.argmin(a, axis=1)
		array([0, 0])
		
		>>> b = np.arange(6)
		>>> b[4] = 0
		>>> b
		array([0, 1, 2, 3, 0, 5])
		>>> np.argmin(b) # Only the first occurrence is returned.
		0
	**/
	static public function argmin(a:Dynamic, ?axis:Dynamic, ?out:Dynamic):Dynamic;
	/**
		array(object, dtype=None, copy=True, order=None, subok=False, ndmin=0)
		
		Create an array.
		
		Parameters
		----------
		object : array_like
		    An array, any object exposing the array interface, an
		    object whose __array__ method returns an array, or any
		    (nested) sequence.
		dtype : data-type, optional
		    The desired data-type for the array.  If not given, then
		    the type will be determined as the minimum type required
		    to hold the objects in the sequence.  This argument can only
		    be used to 'upcast' the array.  For downcasting, use the
		    .astype(t) method.
		copy : bool, optional
		    If true (default), then the object is copied.  Otherwise, a copy
		    will only be made if __array__ returns a copy, if obj is a
		    nested sequence, or if a copy is needed to satisfy any of the other
		    requirements (`dtype`, `order`, etc.).
		order : {'C', 'F', 'A'}, optional
		    Specify the order of the array.  If order is 'C', then the array
		    will be in C-contiguous order (last-index varies the fastest).
		    If order is 'F', then the returned array will be in
		    Fortran-contiguous order (first-index varies the fastest).
		    If order is 'A' (default), then the returned array may be
		    in any order (either C-, Fortran-contiguous, or even discontiguous),
		    unless a copy is required, in which case it will be C-contiguous.
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
		empty, empty_like, zeros, zeros_like, ones, ones_like, fill
		
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
		Return a scalar type which is common to the input arrays.
		
		The return type will always be an inexact (i.e. floating point) scalar
		type, even if all the arrays are integer arrays. If one of the inputs is
		an integer array, the minimum precision type that is returned is a
		64-bit floating point dtype.
		
		All input arrays can be safely cast to the returned dtype without loss
		of information.
		
		Parameters
		----------
		array1, array2, ... : ndarrays
		    Input arrays.
		
		Returns
		-------
		out : data type code
		    Data type code.
		
		See Also
		--------
		dtype, mintypecode
		
		Examples
		--------
		>>> np.common_type(np.arange(2, dtype=np.float32))
		<type 'numpy.float32'>
		>>> np.common_type(np.arange(2, dtype=np.float32), np.arange(2))
		<type 'numpy.float64'>
		>>> np.common_type(np.arange(4), np.array([45, 6.j]), np.array([45.0]))
		<type 'numpy.complex128'>
	**/
	static public function common_type(arrays:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Performs k-means on a set of observation vectors forming k clusters.
		
		The k-means algorithm adjusts the centroids until sufficient
		progress cannot be made, i.e. the change in distortion since
		the last iteration is less than some threshold. This yields
		a code book mapping centroids to codes and vice versa.
		
		Distortion is defined as the sum of the squared differences
		between the observations and the corresponding centroid.
		
		Parameters
		----------
		obs : ndarray
		   Each row of the M by N array is an observation vector. The
		   columns are the features seen during each observation.
		   The features must be whitened first with the `whiten` function.
		
		k_or_guess : int or ndarray
		   The number of centroids to generate. A code is assigned to
		   each centroid, which is also the row index of the centroid
		   in the code_book matrix generated.
		
		   The initial k centroids are chosen by randomly selecting
		   observations from the observation matrix. Alternatively,
		   passing a k by N array specifies the initial k centroids.
		
		iter : int, optional
		   The number of times to run k-means, returning the codebook
		   with the lowest distortion. This argument is ignored if
		   initial centroids are specified with an array for the
		   ``k_or_guess`` parameter. This parameter does not represent the
		   number of iterations of the k-means algorithm.
		
		thresh : float, optional
		   Terminates the k-means algorithm if the change in
		   distortion since the last k-means iteration is less than
		   or equal to thresh.
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		codebook : ndarray
		   A k by N array of k centroids. The i'th centroid
		   codebook[i] is represented with the code i. The centroids
		   and codes generated represent the lowest distortion seen,
		   not necessarily the globally minimal distortion.
		
		distortion : float
		   The distortion between the observations passed and the
		   centroids generated.
		
		See Also
		--------
		kmeans2 : a different implementation of k-means clustering
		   with more methods for generating initial centroids but without
		   using a distortion change threshold as a stopping criterion.
		
		whiten : must be called prior to passing an observation matrix
		   to kmeans.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq, kmeans, whiten
		>>> features  = array([[ 1.9,2.3],
		...                    [ 1.5,2.5],
		...                    [ 0.8,0.6],
		...                    [ 0.4,1.8],
		...                    [ 0.1,0.1],
		...                    [ 0.2,1.8],
		...                    [ 2.0,0.5],
		...                    [ 0.3,1.5],
		...                    [ 1.0,1.0]])
		>>> whitened = whiten(features)
		>>> book = array((whitened[0],whitened[2]))
		>>> kmeans(whitened,book)
		(array([[ 2.3110306 ,  2.86287398],
		       [ 0.93218041,  1.24398691]]), 0.85684700941625547)
		
		>>> from numpy import random
		>>> random.seed((1000,2000))
		>>> codes = 3
		>>> kmeans(whitened,codes)
		(array([[ 2.3110306 ,  2.86287398],
		       [ 1.32544402,  0.65607529],
		       [ 0.40782893,  2.02786907]]), 0.5196582527686241)
	**/
	static public function kmeans(obs:Dynamic, k_or_guess:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Classify a set of observations into k clusters using the k-means algorithm.
		
		The algorithm attempts to minimize the Euclidian distance between
		observations and centroids. Several initialization methods are
		included.
		
		Parameters
		----------
		data : ndarray
		    A 'M' by 'N' array of 'M' observations in 'N' dimensions or a length
		    'M' array of 'M' one-dimensional observations.
		k : int or ndarray
		    The number of clusters to form as well as the number of
		    centroids to generate. If `minit` initialization string is
		    'matrix', or if a ndarray is given instead, it is
		    interpreted as initial cluster to use instead.
		iter : int, optional
		    Number of iterations of the k-means algrithm to run. Note
		    that this differs in meaning from the iters parameter to
		    the kmeans function.
		thresh : float, optional
		    (not used yet)
		minit : str, optional
		    Method for initialization. Available methods are 'random',
		    'points', 'uniform', and 'matrix':
		
		    'random': generate k centroids from a Gaussian with mean and
		    variance estimated from the data.
		
		    'points': choose k observations (rows) at random from data for
		    the initial centroids.
		
		    'uniform': generate k observations from the data from a uniform
		    distribution defined by the data set (unsupported).
		
		    'matrix': interpret the k parameter as a k by M (or length k
		    array for one-dimensional data) array of initial centroids.
		missing : str, optional
		    Method to deal with empty clusters. Available methods are
		    'warn' and 'raise':
		
		    'warn': give a warning and continue.
		
		    'raise': raise an ClusterError and terminate the algorithm.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		centroid : ndarray
		    A 'k' by 'N' array of centroids found at the last iteration of
		    k-means.
		label : ndarray
		    label[i] is the code or index of the centroid the
		    i'th observation is closest to.
	**/
	static public function kmeans2(data:Dynamic, k:Dynamic, ?iter:Dynamic, ?thresh:Dynamic, ?minit:Dynamic, ?missing:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the array elements.  The average is taken over
		the flattened array by default, otherwise over the specified axis.
		`float64` intermediate and return values are used for integer inputs.
		
		Parameters
		----------
		a : array_like
		    Array containing numbers whose mean is desired. If `a` is not an
		    array, a conversion is attempted.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the means are computed. The default is to
		    compute the mean of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a mean is performed over multiple axes,
		    instead of a single axis or all the axes as before.
		dtype : data-type, optional
		    Type to use in computing the mean.  For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		out : ndarray, optional
		    Alternate output array in which to place the result.  The default
		    is ``None``; if provided, it must have the same shape as the
		    expected output, but the type will be cast if necessary.
		    See `doc.ufuncs` for details.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		m : ndarray, see dtype parameter above
		    If `out=None`, returns a new array containing the mean values,
		    otherwise a reference to the output array is returned.
		
		See Also
		--------
		average : Weighted average
		std, var, nanmean, nanstd, nanvar
		
		Notes
		-----
		The arithmetic mean is the sum of the elements along the axis divided
		by the number of elements.
		
		Note that for floating-point input, the mean is computed using the
		same precision the input has.  Depending on the input data, this can
		cause the results to be inaccurate, especially for `float32` (see
		example below).  Specifying a higher-precision accumulator using the
		`dtype` keyword can alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.mean(a)
		2.5
		>>> np.mean(a, axis=0)
		array([ 2.,  3.])
		>>> np.mean(a, axis=1)
		array([ 1.5,  3.5])
		
		In single precision, `mean` can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.mean(a)
		0.546875
		
		Computing the mean in float64 is more accurate:
		
		>>> np.mean(a, dtype=np.float64)
		0.55000000074505806
	**/
	static public function mean(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		minimum(x1, x2[, out])
		
		Element-wise minimum of array elements.
		
		Compare two arrays and returns a new array containing the element-wise
		minima. If one of the elements being compared is a NaN, then that
		element is returned. If both elements are NaNs then the first is
		returned. The latter distinction is important for complex NaNs, which
		are defined as at least one of the real or imaginary parts being a NaN.
		The net effect is that NaNs are propagated.
		
		Parameters
		----------
		x1, x2 : array_like
		    The arrays holding the elements to be compared. They must have
		    the same shape, or shapes that can be broadcast to a single shape.
		
		Returns
		-------
		y : ndarray or scalar
		    The minimum of `x1` and `x2`, element-wise.  Returns scalar if
		    both  `x1` and `x2` are scalars.
		
		See Also
		--------
		maximum :
		    Element-wise maximum of two arrays, propagates NaNs.
		fmin :
		    Element-wise minimum of two arrays, ignores NaNs.
		amin :
		    The minimum value of an array along a given axis, propagates NaNs.
		nanmin :
		    The minimum value of an array along a given axis, ignores NaNs.
		
		fmax, amax, nanmax
		
		Notes
		-----
		The minimum is equivalent to ``np.where(x1 <= x2, x1, x2)`` when
		neither x1 nor x2 are NaNs, but it is faster and does proper
		broadcasting.
		
		Examples
		--------
		>>> np.minimum([2, 3, 4], [1, 5, 2])
		array([1, 3, 2])
		
		>>> np.minimum(np.eye(2), [0.5, 2]) # broadcasting
		array([[ 0.5,  0. ],
		       [ 0. ,  1. ]])
		
		>>> np.minimum([np.nan, 0, np.nan],[0, np.nan, np.nan])
		array([ NaN,  NaN,  NaN])
		>>> np.minimum(-np.Inf, 1)
		-inf
	**/
	static public function minimum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var newaxis : Dynamic;
	static public var print_function : Dynamic;
	/**
		Python version of vq algorithm.
		
		The algorithm computes the euclidian distance between each
		observation and every frame in the code_book.
		
		Parameters
		----------
		obs : ndarray
		    Expects a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (eg columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This function is slower than the C version but works for
		all input types.  If the inputs have the wrong types for the
		C versions of the function, this one is called as a last resort.
		
		It is about 20 times slower than the C version.
	**/
	static public function py_vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		2nd Python version of vq algorithm.
		
		The algorithm simply computes the euclidian distance between each
		observation and every frame in the code_book/
		
		Parameters
		----------
		obs : ndarray
		    Expect a rank 2 array. Each row is one observation.
		code_book : ndarray
		    Code book to use. Same format than obs. Should have same number of
		    features (eg columns) than obs.
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    code[i] gives the label of the ith obversation, that its code is
		    code_book[code[i]].
		mind_dist : ndarray
		    min_dist[i] gives the distance between the ith observation and its
		    corresponding code.
		
		Notes
		-----
		This could be faster when number of codebooks is small, but it
		becomes a real memory hog when codebook is large. It requires
		N by M by O storage where N=number of obs, M = number of
		features, and O = number of codes.
	**/
	static public function py_vq2(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		randint(low, high=None, size=None)
		
		Return random integers from `low` (inclusive) to `high` (exclusive).
		
		Return random integers from the "discrete uniform" distribution in the
		"half-open" interval [`low`, `high`). If `high` is None (the default),
		then results are from [0, `low`).
		
		Parameters
		----------
		low : int
		    Lowest (signed) integer to be drawn from the distribution (unless
		    ``high=None``, in which case this parameter is the *highest* such
		    integer).
		high : int, optional
		    If provided, one above the largest (signed) integer to be drawn
		    from the distribution (see above for behavior if ``high=None``).
		size : int or tuple of ints, optional
		    Output shape.  If the given shape is, e.g., ``(m, n, k)``, then
		    ``m * n * k`` samples are drawn.  Default is None, in which case a
		    single value is returned.
		
		Returns
		-------
		out : int or ndarray of ints
		    `size`-shaped array of random integers from the appropriate
		    distribution, or a single such random int if `size` not provided.
		
		See Also
		--------
		random.random_integers : similar to `randint`, only for the closed
		    interval [`low`, `high`], and 1 is the lowest value if `high` is
		    omitted. In particular, this other one is the one to use to generate
		    uniformly distributed discrete non-integers.
		
		Examples
		--------
		>>> np.random.randint(2, size=10)
		array([1, 0, 0, 0, 1, 1, 0, 0, 1, 0])
		>>> np.random.randint(1, size=10)
		array([0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
		
		Generate a 2 x 4 array of ints between 0 and 4, inclusive:
		
		>>> np.random.randint(5, size=(2, 4))
		array([[4, 0, 2, 1],
		       [3, 2, 2, 0]])
	**/
	static public function randint(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the shape of an array.
		
		Parameters
		----------
		a : array_like
		    Input array.
		
		Returns
		-------
		shape : tuple of ints
		    The elements of the shape tuple give the lengths of the
		    corresponding array dimensions.
		
		See Also
		--------
		alen
		ndarray.shape : Equivalent array method.
		
		Examples
		--------
		>>> np.shape(np.eye(3))
		(3, 3)
		>>> np.shape([[1, 2]])
		(1, 2)
		>>> np.shape([0])
		(1,)
		>>> np.shape(0)
		()
		
		>>> a = np.array([(1, 2), (3, 4)], dtype=[('x', 'i4'), ('y', 'i4')])
		>>> np.shape(a)
		(2,)
		>>> a.shape
		(2,)
	**/
	static public function shape(a:Dynamic):Dynamic;
	/**
		sqrt(x[, out])
		
		Return the positive square-root of an array, element-wise.
		
		Parameters
		----------
		x : array_like
		    The values whose square-roots are required.
		out : ndarray, optional
		    Alternate array object in which to put the result; if provided, it
		    must have the same shape as `x`
		
		Returns
		-------
		y : ndarray
		    An array of the same shape as `x`, containing the positive
		    square-root of each element in `x`.  If any element in `x` is
		    complex, a complex array is returned (and the square-roots of
		    negative reals are calculated).  If all of the elements in `x`
		    are real, so is `y`, with negative elements returning ``nan``.
		    If `out` was provided, `y` is a reference to it.
		
		See Also
		--------
		lib.scimath.sqrt
		    A version which returns complex numbers when given negative reals.
		
		Notes
		-----
		*sqrt* has--consistent with common convention--as its branch cut the
		real "interval" [`-inf`, 0), and is continuous from above on it.
		A branch cut is a curve in the complex plane across which a given
		complex function fails to be continuous.
		
		Examples
		--------
		>>> np.sqrt([1,4,9])
		array([ 1.,  2.,  3.])
		
		>>> np.sqrt([4, -1, -3+4J])
		array([ 2.+0.j,  0.+1.j,  1.+2.j])
		
		>>> np.sqrt([4, -1, numpy.inf])
		array([  2.,  NaN,  Inf])
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compute the standard deviation along the specified axis.
		
		Returns the standard deviation, a measure of the spread of a distribution,
		of the array elements. The standard deviation is computed for the
		flattened array by default, otherwise over the specified axis.
		
		Parameters
		----------
		a : array_like
		    Calculate the standard deviation of these values.
		axis : None or int or tuple of ints, optional
		    Axis or axes along which the standard deviation is computed. The
		    default is to compute the standard deviation of the flattened array.
		
		    .. versionadded: 1.7.0
		
		    If this is a tuple of ints, a standard deviation is performed over
		    multiple axes, instead of a single axis or all the axes as before.
		dtype : dtype, optional
		    Type to use in computing the standard deviation. For arrays of
		    integer type the default is float64, for arrays of float types it is
		    the same as the array type.
		out : ndarray, optional
		    Alternative output array in which to place the result. It must have
		    the same shape as the expected output but the type (of the calculated
		    values) will be cast if necessary.
		ddof : int, optional
		    Means Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		    By default `ddof` is zero.
		keepdims : bool, optional
		    If this is set to True, the axes which are reduced are left
		    in the result as dimensions with size one. With this option,
		    the result will broadcast correctly against the original `arr`.
		
		Returns
		-------
		standard_deviation : ndarray, see dtype parameter above.
		    If `out` is None, return a new array containing the standard deviation,
		    otherwise return a reference to the output array.
		
		See Also
		--------
		var, mean, nanmean, nanstd, nanvar
		numpy.doc.ufuncs : Section "Output arguments"
		
		Notes
		-----
		The standard deviation is the square root of the average of the squared
		deviations from the mean, i.e., ``std = sqrt(mean(abs(x - x.mean())**2))``.
		
		The average squared deviation is normally calculated as
		``x.sum() / N``, where ``N = len(x)``.  If, however, `ddof` is specified,
		the divisor ``N - ddof`` is used instead. In standard statistical
		practice, ``ddof=1`` provides an unbiased estimator of the variance
		of the infinite population. ``ddof=0`` provides a maximum likelihood
		estimate of the variance for normally distributed variables. The
		standard deviation computed in this function is the square root of
		the estimated variance, so even with ``ddof=1``, it will not be an
		unbiased estimate of the standard deviation per se.
		
		Note that, for complex numbers, `std` takes the absolute
		value before squaring, so that the result is always real and nonnegative.
		
		For floating-point input, the *std* is computed using the same
		precision the input has. Depending on the input data, this can cause
		the results to be inaccurate, especially for float32 (see example below).
		Specifying a higher-accuracy accumulator using the `dtype` keyword can
		alleviate this issue.
		
		Examples
		--------
		>>> a = np.array([[1, 2], [3, 4]])
		>>> np.std(a)
		1.1180339887498949
		>>> np.std(a, axis=0)
		array([ 1.,  1.])
		>>> np.std(a, axis=1)
		array([ 0.5,  0.5])
		
		In single precision, std() can be inaccurate:
		
		>>> a = np.zeros((2, 512*512), dtype=np.float32)
		>>> a[0, :] = 1.0
		>>> a[1, :] = 0.1
		>>> np.std(a)
		0.45000005
		
		Computing the standard deviation in float64 is more accurate:
		
		>>> np.std(a, dtype=np.float64)
		0.44999999925494177
	**/
	static public function std(a:Dynamic, ?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic, ?ddof:Dynamic, ?keepdims:Dynamic):Dynamic;
	/**
		Take elements from an array along an axis.
		
		This function does the same thing as "fancy" indexing (indexing arrays
		using arrays); however, it can be easier to use if you need elements
		along a given axis.
		
		Parameters
		----------
		a : array_like
		    The source array.
		indices : array_like
		    The indices of the values to extract.
		
		    .. versionadded:: 1.8.0
		
		    Also allow scalars for indices.
		axis : int, optional
		    The axis over which to select values. By default, the flattened
		    input array is used.
		out : ndarray, optional
		    If provided, the result will be placed in this array. It should
		    be of the appropriate shape and dtype.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices will behave.
		
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		
		    'clip' mode means that all indices that are too large are replaced
		    by the index that addresses the last element along that axis. Note
		    that this disables indexing with negative numbers.
		
		Returns
		-------
		subarray : ndarray
		    The returned array has the same type as `a`.
		
		See Also
		--------
		compress : Take elements using a boolean mask
		ndarray.take : equivalent method
		
		Examples
		--------
		>>> a = [4, 3, 5, 7, 6, 8]
		>>> indices = [0, 1, 4]
		>>> np.take(a, indices)
		array([4, 3, 6])
		
		In this example if `a` is an ndarray, "fancy" indexing can be used.
		
		>>> a = np.array(a)
		>>> a[indices]
		array([4, 3, 6])
		
		If `indices` is not one dimensional, the output also has these dimensions.
		
		>>> np.take(a, [[0, 1], [2, 3]])
		array([[4, 3],
		       [5, 7]])
	**/
	static public function take(a:Dynamic, indices:Dynamic, ?axis:Dynamic, ?out:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		Assign codes from a code book to observations.
		
		Assigns a code from a code book to each observation. Each
		observation vector in the 'M' by 'N' `obs` array is compared with the
		centroids in the code book and assigned the code of the closest
		centroid.
		
		The features in `obs` should have unit variance, which can be
		achieved by passing them through the whiten function.  The code
		book can be created with the k-means algorithm or a different
		encoding algorithm.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the 'M' x 'N' array is an observation.  The columns are
		    the "features" seen during each observation. The features must be
		    whitened first using the whiten function or something equivalent.
		code_book : ndarray
		    The code book is usually generated using the k-means algorithm.
		    Each row of the array holds a different code, and the columns are
		    the features of the code.
		
		     >>> #              f0    f1    f2   f3
		     >>> code_book = [
		     ...             [  1.,   2.,   3.,   4.],  #c0
		     ...             [  1.,   2.,   3.,   4.],  #c1
		     ...             [  1.,   2.,   3.,   4.]]  #c2
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		code : ndarray
		    A length M array holding the code book index for each observation.
		dist : ndarray
		    The distortion (distance) between the observation and its nearest
		    code.
		
		Examples
		--------
		>>> from numpy import array
		>>> from scipy.cluster.vq import vq
		>>> code_book = array([[1.,1.,1.],
		...                    [2.,2.,2.]])
		>>> features  = array([[  1.9,2.3,1.7],
		...                    [  1.5,2.5,2.2],
		...                    [  0.8,0.6,1.7]])
		>>> vq(features,code_book)
		(array([1, 1, 0],'i'), array([ 0.43588989,  0.73484692,  0.83066239]))
	**/
	static public function vq(obs:Dynamic, code_book:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Normalize a group of observations on a per feature basis.
		
		Before running k-means, it is beneficial to rescale each feature
		dimension of the observation set with whitening. Each feature is
		divided by its standard deviation across all observations to give
		it unit variance.
		
		Parameters
		----------
		obs : ndarray
		    Each row of the array is an observation.  The
		    columns are the features seen during each observation.
		
		    >>> #         f0    f1    f2
		    >>> obs = [[  1.,   1.,   1.],  #o0
		    ...        [  2.,   2.,   2.],  #o1
		    ...        [  3.,   3.,   3.],  #o2
		    ...        [  4.,   4.,   4.]]  #o3
		
		check_finite : bool, optional
		    Whether to check that the input matrices contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		    Default: True
		
		Returns
		-------
		result : ndarray
		    Contains the values in `obs` scaled by the standard deviation
		    of each column.
		
		Examples
		--------
		>>> from scipy.cluster.vq import whiten
		>>> features  = np.array([[1.9, 2.3, 1.7],
		...                       [1.5, 2.5, 2.2],
		...                       [0.8, 0.6, 1.7,]])
		>>> whiten(features)
		array([[ 4.17944278,  2.69811351,  7.21248917],
		       [ 3.29956009,  2.93273208,  9.33380951],
		       [ 1.75976538,  0.7038557 ,  7.21248917]])
	**/
	static public function whiten(obs:Dynamic, ?check_finite:Dynamic):Dynamic;
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