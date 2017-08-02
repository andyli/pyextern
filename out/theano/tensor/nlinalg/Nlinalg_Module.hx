/* This file is generated, do not edit! */
package theano.tensor.nlinalg;
@:pythonImport("theano.tensor.nlinalg") extern class Nlinalg_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _zero_disconnected(outputs:Dynamic, grads:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public function alloc_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return `x`, transformed into a `TensorType`.
		
		This function is often used by `make_node` methods of `Op` subclasses
		to turn ndarrays, numbers, `Scalar` instances, `Apply` instances and
		`TensorType` instances into valid input list elements.
		
		Parameters
		----------
		x : Apply instance, Variable instance, numpy.ndarray, or number
		    This thing will be transformed into a `Variable` in a sensible way. An
		    ndarray argument will not be copied, but a list of numbers will be
		    copied to make an ndarray.
		name : str or None
		    If a new `Variable` instance is created, it will be named with this
		    string.
		ndim : None or integer
		    Return a Variable with this many dimensions.
		
		Raises
		------
		ValueError
		    If an `Apply` with more than one output is fetched or
		    if `x` cannot be made into a Variable with `ndim` dimensions.
		AsTensorError
		    If `x` cannot be converted to a TensorType Variable.
	**/
	static public function as_tensor_variable(x:Dynamic, ?name:Dynamic, ?ndim:Dynamic):Dynamic;
	static public function det(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Numpy-compatibility method
		If `x` is a matrix, return its diagonal.
		If `x` is a vector return a matrix with it as its diagonal.
		
		* This method does not support the `k` argument that numpy supports.
	**/
	static public function diag(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function eig(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	static public function extract_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var logger : Dynamic;
	/**
		Shorthand for product between several dots.
		
		Given :math:`N` matrices :math:`A_0, A_1, .., A_N`, ``matrix_dot`` will
		generate the matrix product between all in the given order, namely
		:math:`A_0 \cdot A_1 \cdot A_2 \cdot .. \cdot A_N`.
	**/
	static public function matrix_dot(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function matrix_inverse(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Raise a square matrix to the (integer) power n.
		
		Parameters
		----------
		M : Tensor variable
		n : Python int
	**/
	static public function matrix_power(M:Dynamic, n:Dynamic):Dynamic;
	static public function norm(x:Dynamic, ord:Dynamic):Dynamic;
	static public function pinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Computes the QR decomposition of a matrix.
		Factor the matrix a as qr, where q
		is orthonormal and r is upper-triangular.
		
		Parameters
		----------
		a : array_like, shape (M, N)
		    Matrix to be factored.
		
		mode : {'reduced', 'complete', 'r', 'raw'}, optional
		    If K = min(M, N), then
		
		    'reduced'
		      returns q, r with dimensions (M, K), (K, N)
		
		    'complete'
		       returns q, r with dimensions (M, M), (M, N)
		
		    'r'
		      returns r only with dimensions (K, N)
		
		    'raw'
		      returns h, tau with dimensions (N, M), (K,)
		
		    Note that array h returned in 'raw' mode is
		    transposed for calling Fortran.
		
		    Default mode is 'reduced'
		
		Returns
		-------
		q : matrix of float or complex, optional
		    A matrix with orthonormal columns. When mode = 'complete' the
		    result is an orthogonal/unitary matrix depending on whether or
		    not a is real/complex. The determinant may be either +/- 1 in
		    that case.
		r : matrix of float or complex, optional
		    The upper-triangular matrix.
	**/
	static public function qr(a:Dynamic, ?mode:Dynamic):Dynamic;
	/**
		This function performs the SVD on CPU.
		
		Parameters
		----------
		full_matrices : bool, optional
		    If True (default), u and v have the shapes (M, M) and (N, N),
		    respectively.
		    Otherwise, the shapes are (M, K) and (K, N), respectively,
		    where K = min(M, N).
		compute_uv : bool, optional
		    Whether or not to compute u and v in addition to s.
		    True by default.
		
		Returns
		-------
		U, V,  D : matrices
	**/
	static public function svd(a:Dynamic, ?full_matrices:Dynamic, ?compute_uv:Dynamic):Dynamic;
	/**
		Does not run on GPU;
		Theano utilization of numpy.linalg.tensorinv;
		
		Compute the 'inverse' of an N-dimensional array.
		The result is an inverse for `a` relative to the tensordot operation
		``tensordot(a, b, ind)``, i. e., up to floating-point accuracy,
		``tensordot(tensorinv(a), a, ind)`` is the "identity" tensor for the
		tensordot operation.
		
		Parameters
		----------
		a : array_like
		    Tensor to 'invert'. Its shape must be 'square', i. e.,
		    ``prod(a.shape[:ind]) == prod(a.shape[ind:])``.
		ind : int, optional
		    Number of first indices that are involved in the inverse sum.
		    Must be a positive integer, default is 2.
		
		Returns
		-------
		b : ndarray
		    `a`'s tensordot inverse, shape ``a.shape[ind:] + a.shape[:ind]``.
		
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
	**/
	static public function tensorinv(a:Dynamic, ?ind:Dynamic):Dynamic;
	/**
		Theano utilization of numpy.linalg.tensorsolve. Does not run on GPU!
		
		Solve the tensor equation ``a x = b`` for x.
		It is assumed that all indices of `x` are summed over in the product,
		together with the rightmost indices of `a`, as is done in, for example,
		``tensordot(a, x, axes=len(b.shape))``.
		
		Parameters
		----------
		a : array_like
		    Coefficient tensor, of shape ``b.shape + Q``. `Q`, a tuple, equals
		    the shape of that sub-tensor of `a` consisting of the appropriate
		    number of its rightmost indices, and must be such that
		    ``prod(Q) == prod(b.shape)`` (in which sense `a` is said to be
		    'square').
		b : array_like
		    Right-hand tensor, which can be of any shape.
		axes : tuple of ints, optional
		    Axes in `a` to reorder to the right, before inversion.
		    If None (default), no reordering is done.
		Returns
		-------
		x : ndarray, shape Q
		Raises
		------
		LinAlgError
		    If `a` is singular or not 'square' (in the above sense).
	**/
	static public function tensorsolve(a:Dynamic, b:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Returns the sum of diagonal elements of matrix X.
		
		Notes
		-----
		Works on GPU since 0.6rc4.
	**/
	static public function trace(X:Dynamic):Dynamic;
}