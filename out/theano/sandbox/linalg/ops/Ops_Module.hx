/* This file is generated, do not edit! */
package theano.sandbox.linalg.ops;
@:pythonImport("theano.sandbox.linalg.ops") extern class Ops_Module {
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
	static public function cholesky(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function det(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Numpy-compatibility method
		If `x` is a matrix, return its diagonal.
		If `x` is a vector return a matrix with it as its diagonal.
		
		* This method does not support the `k` argument that numpy supports.
	**/
	static public function diag(x:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Computes the dot product of two variables.
		
		For two matrices, this is equivalent to matrix multiplication.
		For two vectors, this is the inner product.
		When one variable is a scalar, this is like elementwise multiplication.
		For N dimensions, this is a sum product over the last axis
		of the first array and the second-to-last axis of the second array:
		
		    dot(a, b)[i,j,k,m] = sum(a[i,j,:] * b[k,:,m])
		
		Note that this dot function does one of three things, in the following
		sequence:
		
		    1.  If either a or b is scalar, it returns the elementwise product
		        without calling the Theano Dot op.
		
		    2.  If either a or b has more than 2 dimensions, it calls Theano's
		        tensordot function with appropriate axes. The tensordot function
		        expresses high-dimensional dot products in terms of 2D matrix
		        multiplications, so it may be possible to futherize optimize for
		        performance.
		
		    3.  If both a and b have either 1 or 2 dimensions, it calls Theano's
		        Dot op on a and b.
		
		Notes
		-----
		Matrix-matrix products are sometimes optimized to Dot22 or Gemm ops
		(see tensor.blas).
		Vector-vector products are sometimes optimized to Ger or CGer (see
		tensor.blas).
		Matrix-vector products are sometimes optimized to Gemv, CGemv (see
		tensor.blas).
	**/
	static public function dot(a:Dynamic, b:Dynamic):Dynamic;
	static public function eig(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function eigh(a:Dynamic, ?UPLO:Dynamic):Dynamic;
	static public function eigvalsh(a:Dynamic, b:Dynamic, ?lower:Dynamic):Dynamic;
	static public function extract_diag(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function hints(variable:Dynamic):Dynamic;
	static public var imported_scipy : Dynamic;
	static public var integer_types : Dynamic;
	static public var inv_as_solve : Dynamic;
	static public function is_hint_node(node:Dynamic):Dynamic;
	static public function is_positive(v:Dynamic):Dynamic;
	static public function is_psd(v:Dynamic):Dynamic;
	static public function is_symmetric(v:Dynamic):Dynamic;
	/**
		Return an iterator over the (key, value) pairs of a dictionary.
	**/
	static public function iteritems(d:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	static public var local_det_chol : Dynamic;
	static public var local_log_pow : Dynamic;
	static public var local_log_prod_sqr : Dynamic;
	static public function local_optimizer(tracks:Dynamic, ?inplace:Dynamic, ?requirements:Dynamic):Dynamic;
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
	static public var no_transpose_symmetric : Dynamic;
	static public function norm(x:Dynamic, ord:Dynamic):Dynamic;
	static public function pinv(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Apply a hint that the variable `v` is positive semi-definite, i.e.
		it is a symmetric matrix and :math:`x^T A x \ge 0` for any vector x.
	**/
	static public function psd(v:Dynamic):Dynamic;
	static public var psd_solve_with_chol : Dynamic;
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
	static public function register_canonicalize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_specialize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function register_stabilize(lopt:Dynamic, ?tags:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var remove_hint_nodes : Dynamic;
	static public function solve(?inputs:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns upper bound on the largest eigenvalue of square symmetrix matrix X.
		
		log2_exponent must be a positive-valued integer. The larger it is, the
		slower and tighter the bound. Values up to 5 should usually suffice. The
		algorithm works by multiplying X by itself this many times.
		
		From V.Pan, 1990. "Estimating the Extremal Eigenvalues of a Symmetric
		Matrix", Computers Math Applic. Vol 20 n. 2 pp 17-22.
		Rq: an efficient algorithm, not used here, is defined in this paper.
	**/
	static public function spectral_radius_bound(X:Dynamic, log2_exponent:Dynamic):Dynamic;
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
	static public var tag_solve_triangular : Dynamic;
	/**
		Returns the sum of diagonal elements of matrix X.
		
		Notes
		-----
		Works on GPU since 0.6rc4.
	**/
	static public function trace(X:Dynamic):Dynamic;
	static public var transinv_to_invtrans : Dynamic;
}