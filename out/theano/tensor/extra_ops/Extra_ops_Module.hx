/* This file is generated, do not edit! */
package theano.tensor.extra_ops;
@:pythonImport("theano.tensor.extra_ops") extern class Extra_ops_Module {
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
		An instance of this class returns the Bartlett spectral window in the
		time-domain. The Bartlett window is very similar to a triangular window,
		except that the end points are at zero. It is often used in signal
		processing for tapering a signal, without generating too much ripple in
		the frequency domain.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		M : integer scalar
		    Number of points in the output window. If zero or less,
		    an empty vector is returned.
		
		Returns
		-------
		vector of doubles
		    The triangular window, with the maximum value normalized to one
		    (the value one appears only if the number of samples is odd), with
		    the first and last samples equal to zero.
	**/
	static public function bartlett(M:Dynamic):Dynamic;
	static public function bartlett_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Count number of occurrences of each value in array of ints.
		
		The number of bins (of size 1) is one larger than the largest
		value in x. If minlength is specified, there will be at least
		this number of bins in the output array (though it will be longer
		if necessary, depending on the contents of x). Each bin gives the
		number of occurrences of its index value in x. If weights is
		specified the input array is weighted by it, i.e. if a value n
		is found at position i, out[n] += weight[i] instead of out[n] += 1.
		
		Parameters
		----------
		x : 1 dimension, nonnegative ints
		weights : array of the same shape as x with corresponding weights.
		    Optional.
		minlength : A minimum number of bins for the output array.
		    Optional.
		assert_nonneg : A flag that inserts an assert_op to check if
		    every input x is nonnegative.
		    Optional.
		
		
		.. versionadded:: 0.6
	**/
	static public function bincount(x:Dynamic, ?weights:Dynamic, ?minlength:Dynamic, ?assert_nonneg:Dynamic):Dynamic;
	/**
		Return selected slices of an array along given axis.
		
		It returns the input tensor, but with selected slices along a given axis
		retained. If no axis is provided, the tensor is flattened.
		Corresponds to numpy.compress
		
		.. versionadded:: 0.7
		
		Parameters
		----------
		x
		    Input data, tensor variable.
		condition
		     1 dimensional array of non-zero and zero values
		     corresponding to indices of slices along a selected axis.
		
		Returns
		-------
		object
		    `x` with selected slices.
	**/
	static public function compress(condition:Dynamic, x:Dynamic, ?axis:Dynamic):Dynamic;
	static public function cpu_contiguous(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the cumulative product of the elements along a given axis.
		
		Wraping of numpy.cumprod.
		
		Parameters
		----------
		x
		    Input tensor variable.
		
		axis
		    The axis along which the cumulative product is computed.
		    The default (None) is to compute the cumprod over the flattened array.
		
		
		.. versionadded:: 0.7
	**/
	static public function cumprod(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return the cumulative sum of the elements along a given axis.
		
		Wraping of numpy.cumsum.
		
		Parameters
		----------
		x
		    Input tensor variable.
		axis
		    The axis along which the cumulative sum is computed.
		    The default (None) is to compute the cumsum over the flattened array.
		
		
		.. versionadded:: 0.7
	**/
	static public function cumsum(x:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Calculate the n-th order discrete difference along given axis.
		
		The first order difference is given by out[i] = a[i + 1] - a[i]
		along the given axis, higher order differences are calculated by
		using diff recursively. Wraping of numpy.diff.
		
		Parameters
		----------
		x
		    Input tensor variable.
		
		n
		    The number of times values are differenced, default is 1.
		
		axis
		    The axis along which the difference is taken, default is the last axis.
		
		
		.. versionadded:: 0.6
	**/
	static public function diff(x:Dynamic, ?n:Dynamic, ?axis:Dynamic):Dynamic;
	static public function disconnected_type(?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a copy of an array with all
		elements of the main diagonal set to a specified scalar value.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		a
		    Rectangular array of at least two dimensions.
		val
		    Scalar value to fill the diagonal whose type must be
		    compatible with that of array 'a' (i.e. 'val' cannot be viewed
		    as an upcast of 'a').
		
		Returns
		-------
		array
		    An array identical to 'a' except that its main diagonal
		    is filled with scalar 'val'. (For an array 'a' with a.ndim >=
		    2, the main diagonal is the list of locations a[i, i, ..., i]
		    (i.e. with indices all identical).)
		
		Support rectangular matrix and tensor with more than 2 dimensions
		if the later have all dimensions are equals.
	**/
	static public function fill_diagonal(a:Dynamic, val:Dynamic):Dynamic;
	static public function fill_diagonal_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a copy of an array with all
		elements of the main diagonal set to a specified scalar value.
		
		Parameters
		----------
		a
		    Rectangular array of two dimensions.
		val
		    Scalar value to fill the diagonal whose type must be
		    compatible with that of array 'a' (i.e. 'val' cannot be viewed
		    as an upcast of 'a').
		offset
		    Scalar value Offset of the diagonal from the main
		    diagonal. Can be positive or negative integer.
		
		Returns
		-------
		array
		    An array identical to 'a' except that its offset diagonal
		    is filled with scalar 'val'. The output is unwrapped.
	**/
	static public function fill_diagonal_offset(a:Dynamic, val:Dynamic, offset:Dynamic):Dynamic;
	static public function fill_diagonal_offset_(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function int_t(?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Converts a tuple of index arrays into an array of flat
		indices, applying boundary modes to the multi-index.
		
		Parameters
		----------
		multi_index : tuple of Theano or NumPy arrays
		    A tuple of integer arrays, one array for each dimension.
		dims : tuple of ints
		    The shape of array into which the indices from ``multi_index`` apply.
		mode : {'raise', 'wrap', 'clip'}, optional
		    Specifies how out-of-bounds indices are handled.  Can specify
		    either one mode or a tuple of modes, one mode per index.
		    * 'raise' -- raise an error (default)
		    * 'wrap' -- wrap around
		    * 'clip' -- clip to the range
		    In 'clip' mode, a negative index which would normally
		    wrap will clip to 0 instead.
		order : {'C', 'F'}, optional
		    Determines whether the multi-index should be viewed as
		    indexing in row-major (C-style) or column-major
		    (Fortran-style) order.
		
		Returns
		-------
		raveled_indices : Theano array
		    An array of indices into the flattened version of an array
		    of dimensions ``dims``.
		
		See Also
		--------
		unravel_index
	**/
	static public function ravel_multi_index(multi_index:Dynamic, dims:Dynamic, ?mode:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Repeat elements of an array.
		
		It returns an array which has the same shape as `x`, except
		along the given axis. The axis is used to speficy along which
		axis to repeat values. By default, use the flattened input
		array, and return a flat output array.
		
		The number of repetitions for each element is `repeat`.
		`repeats` is broadcasted to fit the length of the given `axis`.
		
		Parameters
		----------
		x
		    Input data, tensor variable.
		repeats
		    int, scalar or tensor variable
		axis : int, optional
		
		See Also
		--------
		tensor.tile
		
		.. versionadded:: 0.6
	**/
	static public function repeat(x:Dynamic, repeats:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Wrapping of numpy.searchsorted. Find the indices into a sorted array
		`x` such that, if the corresponding elements in `v` were inserted
		before the indices, the order of `x` would be preserved.
		
		Parameters
		----------
		x: 1-D tensor (array-like)
		    Input array. If `sorter` is None, then it must be sorted in
		    ascending order, otherwise `sorter` must be an array of indices
		    which sorts it.
		v: tensor (array-like)
		    Contains the values to be inserted into `x`.
		side: {'left', 'right'}, optional.
		    If 'left' (default), the index of the first suitable
		    location found is given. If 'right', return the last such index. If
		    there is no suitable index, return either 0 or N (where N is the length
		    of `x`).
		sorter: 1-D tensor of integers (array-like), optional
		    Contains indices that sort array `x` into ascending order.
		    They are typically the result of argsort.
		
		Returns
		-------
		indices : tensor of integers (int64)
		    Array of insertion points with the same shape as `v`.
		
		See Also
		--------
		`numpy.searchsorted <https://docs.scipy.org/doc/numpy-1.10.0/reference/generated/numpy.searchsorted.html>`_
		
		Notes
		-----
		* Binary search is used to find the required insertion points.
		* This Op is working **only on CPU** currently.
		
		Examples
		--------
		>>> from theano import tensor
		>>> x = tensor.dvector()
		>>> idx = x.searchsorted(3)
		>>> idx.eval({x: [1,2,3,4,5]})
		array(2)
		>>> tensor.extra_ops.searchsorted([1,2,3,4,5], 3).eval()
		array(2)
		>>> tensor.extra_ops.searchsorted([1,2,3,4,5], 3, side='right').eval()
		array(3)
		>>> tensor.extra_ops.searchsorted([1,2,3,4,5], [-10, 10, 2, 3]).eval()
		array([0, 5, 1, 2])
		
		.. versionadded:: 0.9
	**/
	static public function searchsorted(x:Dynamic, v:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Remove broadcastable dimensions from the shape of an array.
		
		It returns the input array, but with the
		broadcastable dimensions removed. This is
		always `x` itself or a view into `x`.
		
		.. versionadded:: 0.6
		
		Parameters
		----------
		x
		    Input data, tensor variable.
		
		Returns
		-------
		object
		    `x` without its broadcastable dimensions.
	**/
	static public function squeeze(x:Dynamic):Dynamic;
	/**
		Return a matrix where each row correspond to the one hot
		encoding of each element in y.
		
		Parameters
		----------
		y
		    A vector of integer value between 0 and nb_class - 1.
		nb_class : int
		    The number of class in y.
		dtype : data-type
		    The dtype of the returned matrix. Default floatX.
		
		Returns
		-------
		object
		    A matrix of shape (y.shape[0], nb_class), where each row ``i`` is
		    the one hot encoding of the corresponding ``y[i]`` value.
	**/
	static public function to_one_hot(y:Dynamic, nb_class:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Converts a flat index or array of flat indices into a tuple
		of coordinate arrays.
		
		This method is similar to the NumPy version, except for the
		additional ``ndim`` parameter. This parameter is required if
		the length of ``dims`` cannot be determined automatically.
		
		Parameters
		----------
		indices : Theano or NumPy array
		    An integer array whose elements are indices into the flattened
		    version of an array of dimensions ``dims``.
		dims : tuple of ints
		    The shape of the array to use for unraveling ``indices``.
		order : {'C', 'F'}, optional
		    Determines whether the indices should be viewed as indexing in
		    row-major (C-style) or column-major (Fortran-style) order.
		ndim : int, optional
		    Specifies the number of dimensions, i.e., the length of
		    ``dims``. This is required if the dimensions cannot be determined
		    automatically from ``dims`` itself.
		
		Returns
		-------
		unraveled_coords : tuple of ndarray
		    Each array in the tuple has the same shape as the ``indices``
		    array.
		
		See Also
		--------
		ravel_multi_index
	**/
	static public function unravel_index(indices:Dynamic, dims:Dynamic, ?order:Dynamic, ?ndim:Dynamic):Dynamic;
}