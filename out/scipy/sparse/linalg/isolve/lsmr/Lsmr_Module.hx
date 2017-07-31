/* This file is generated, do not edit! */
package scipy.sparse.linalg.isolve.lsmr;
@:pythonImport("scipy.sparse.linalg.isolve.lsmr") extern class Lsmr_Module {
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
		Stable implementation of Givens rotation.
		
		Notes
		-----
		The routine 'SymOrtho' was added for numerical stability. This is
		recommended by S.-C. Choi in [1]_.  It removes the unpleasant potential of
		``1/eps`` in some important places (see, for example text following
		"Compute the next plane rotation Qk" in minres.py).
		
		References
		----------
		.. [1] S.-C. Choi, "Iterative Methods for Singular Linear Equations
		       and Least-Squares Problems", Dissertation,
		       http://www.stanford.edu/group/SOL/dissertations/sou-cheng-choi-thesis.pdf
	**/
	static public function _sym_ortho(a:Dynamic, b:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Return A as a LinearOperator.
		
		'A' may be any of the following types:
		 - ndarray
		 - matrix
		 - sparse matrix (e.g. csr_matrix, lil_matrix, etc.)
		 - LinearOperator
		 - An object with .shape and .matvec attributes
		
		See the LinearOperator documentation for additional information.
		
		Examples
		--------
		>>> from scipy.sparse.linalg import aslinearoperator
		>>> M = np.array([[1,2,3],[4,5,6]], dtype=np.int32)
		>>> aslinearoperator(M)
		<2x3 MatrixLinearOperator with dtype=int32>
	**/
	static public function aslinearoperator(A:Dynamic):Dynamic;
	/**
		Convert inputs to arrays with at least one dimension.
		
		Scalar inputs are converted to 1-dimensional arrays, whilst
		higher-dimensional inputs are preserved.
		
		Parameters
		----------
		arys1, arys2, ... : array_like
		    One or more input arrays.
		
		Returns
		-------
		ret : ndarray
		    An array, or list of arrays, each with ``a.ndim >= 1``.
		    Copies are made only if necessary.
		
		See Also
		--------
		atleast_2d, atleast_3d
		
		Examples
		--------
		>>> np.atleast_1d(1.0)
		array([ 1.])
		
		>>> x = np.arange(9.0).reshape(3,3)
		>>> np.atleast_1d(x)
		array([[ 0.,  1.,  2.],
		       [ 3.,  4.,  5.],
		       [ 6.,  7.,  8.]])
		>>> np.atleast_1d(x) is x
		True
		
		>>> np.atleast_1d(1, [3, 4])
		[array([1]), array([3, 4])]
	**/
	static public function atleast_1d(?arys:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var infty : Dynamic;
	/**
		Iterative solver for least-squares problems.
		
		lsmr solves the system of linear equations ``Ax = b``. If the system
		is inconsistent, it solves the least-squares problem ``min ||b - Ax||_2``.
		A is a rectangular matrix of dimension m-by-n, where all cases are
		allowed: m = n, m > n, or m < n. B is a vector of length m.
		The matrix A may be dense or sparse (usually sparse).
		
		Parameters
		----------
		A : {matrix, sparse matrix, ndarray, LinearOperator}
		    Matrix A in the linear system.
		b : array_like, shape (m,)
		    Vector b in the linear system.
		damp : float
		    Damping factor for regularized least-squares. `lsmr` solves
		    the regularized least-squares problem::
		
		     min ||(b) - (  A   )x||
		         ||(0)   (damp*I) ||_2
		
		    where damp is a scalar.  If damp is None or 0, the system
		    is solved without regularization.
		atol, btol : float, optional
		    Stopping tolerances. `lsmr` continues iterations until a
		    certain backward error estimate is smaller than some quantity
		    depending on atol and btol.  Let ``r = b - Ax`` be the
		    residual vector for the current approximate solution ``x``.
		    If ``Ax = b`` seems to be consistent, ``lsmr`` terminates
		    when ``norm(r) <= atol * norm(A) * norm(x) + btol * norm(b)``.
		    Otherwise, lsmr terminates when ``norm(A^{T} r) <=
		    atol * norm(A) * norm(r)``.  If both tolerances are 1.0e-6 (say),
		    the final ``norm(r)`` should be accurate to about 6
		    digits. (The final x will usually have fewer correct digits,
		    depending on ``cond(A)`` and the size of LAMBDA.)  If `atol`
		    or `btol` is None, a default value of 1.0e-6 will be used.
		    Ideally, they should be estimates of the relative error in the
		    entries of A and B respectively.  For example, if the entries
		    of `A` have 7 correct digits, set atol = 1e-7. This prevents
		    the algorithm from doing unnecessary work beyond the
		    uncertainty of the input data.
		conlim : float, optional
		    `lsmr` terminates if an estimate of ``cond(A)`` exceeds
		    `conlim`.  For compatible systems ``Ax = b``, conlim could be
		    as large as 1.0e+12 (say).  For least-squares problems,
		    `conlim` should be less than 1.0e+8. If `conlim` is None, the
		    default value is 1e+8.  Maximum precision can be obtained by
		    setting ``atol = btol = conlim = 0``, but the number of
		    iterations may then be excessive.
		maxiter : int, optional
		    `lsmr` terminates if the number of iterations reaches
		    `maxiter`.  The default is ``maxiter = min(m, n)``.  For
		    ill-conditioned systems, a larger value of `maxiter` may be
		    needed.
		show : bool, optional
		    Print iterations logs if ``show=True``.
		
		Returns
		-------
		x : ndarray of float
		    Least-square solution returned.
		istop : int
		    istop gives the reason for stopping::
		
		      istop   = 0 means x=0 is a solution.
		              = 1 means x is an approximate solution to A*x = B,
		                  according to atol and btol.
		              = 2 means x approximately solves the least-squares problem
		                  according to atol.
		              = 3 means COND(A) seems to be greater than CONLIM.
		              = 4 is the same as 1 with atol = btol = eps (machine
		                  precision)
		              = 5 is the same as 2 with atol = eps.
		              = 6 is the same as 3 with CONLIM = 1/eps.
		              = 7 means ITN reached maxiter before the other stopping
		                  conditions were satisfied.
		
		itn : int
		    Number of iterations used.
		normr : float
		    ``norm(b-Ax)``
		normar : float
		    ``norm(A^T (b - Ax))``
		norma : float
		    ``norm(A)``
		conda : float
		    Condition number of A.
		normx : float
		    ``norm(x)``
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		References
		----------
		.. [1] D. C.-L. Fong and M. A. Saunders,
		       "LSMR: An iterative algorithm for sparse least-squares problems",
		       SIAM J. Sci. Comput., vol. 33, pp. 2950-2971, 2011.
		       http://arxiv.org/abs/1006.0758
		.. [2] LSMR Software, http://web.stanford.edu/group/SOL/software/lsmr/
	**/
	static public function lsmr(A:Dynamic, b:Dynamic, ?damp:Dynamic, ?atol:Dynamic, ?btol:Dynamic, ?conlim:Dynamic, ?maxiter:Dynamic, ?show:Dynamic):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of eight different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		x : array_like
		    Input array.  If `axis` is None, `x` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro', 'nuc'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object.
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `x` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `x`
		    is 1-D) or a matrix norm (when `x` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `x`.
		
		    .. versionadded:: 1.10.0
		
		Returns
		-------
		n : float or ndarray
		    Norm of the matrix or vector(s).
		
		Notes
		-----
		For values of ``ord <= 0``, the result is, strictly speaking, not a
		mathematical 'norm', but it may still be useful for various numerical
		purposes.
		
		The following norms can be calculated:
		
		=====  ============================  ==========================
		ord    norm for matrices             norm for vectors
		=====  ============================  ==========================
		None   Frobenius norm                2-norm
		'fro'  Frobenius norm                --
		'nuc'  nuclear norm                  --
		inf    max(sum(abs(x), axis=1))      max(abs(x))
		-inf   min(sum(abs(x), axis=1))      min(abs(x))
		0      --                            sum(x != 0)
		1      max(sum(abs(x), axis=0))      as below
		-1     min(sum(abs(x), axis=0))      as below
		2      2-norm (largest sing. value)  as below
		-2     smallest singular value       as below
		other  --                            sum(abs(x)**ord)**(1./ord)
		=====  ============================  ==========================
		
		The Frobenius norm is given by [1]_:
		
		    :math:`||A||_F = [\sum_{i,j} abs(a_{i,j})^2]^{1/2}`
		
		The nuclear norm is the sum of the singular values.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from numpy import linalg as LA
		>>> a = np.arange(9) - 4
		>>> a
		array([-4, -3, -2, -1,  0,  1,  2,  3,  4])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4, -3, -2],
		       [-1,  0,  1],
		       [ 2,  3,  4]])
		
		>>> LA.norm(a)
		7.745966692414834
		>>> LA.norm(b)
		7.745966692414834
		>>> LA.norm(b, 'fro')
		7.745966692414834
		>>> LA.norm(a, np.inf)
		4.0
		>>> LA.norm(b, np.inf)
		9.0
		>>> LA.norm(a, -np.inf)
		0.0
		>>> LA.norm(b, -np.inf)
		2.0
		
		>>> LA.norm(a, 1)
		20.0
		>>> LA.norm(b, 1)
		7.0
		>>> LA.norm(a, -1)
		-4.6566128774142013e-010
		>>> LA.norm(b, -1)
		6.0
		>>> LA.norm(a, 2)
		7.745966692414834
		>>> LA.norm(b, 2)
		7.3484692283495345
		
		>>> LA.norm(a, -2)
		nan
		>>> LA.norm(b, -2)
		1.8570331885190563e-016
		>>> LA.norm(a, 3)
		5.8480354764257312
		>>> LA.norm(a, -3)
		nan
		
		Using the `axis` argument to compute vector norms:
		
		>>> c = np.array([[ 1, 2, 3],
		...               [-1, 1, 4]])
		>>> LA.norm(c, axis=0)
		array([ 1.41421356,  2.23606798,  5.        ])
		>>> LA.norm(c, axis=1)
		array([ 3.74165739,  4.24264069])
		>>> LA.norm(c, ord=1, axis=1)
		array([ 6.,  6.])
		
		Using the `axis` argument to compute matrix norms:
		
		>>> m = np.arange(8).reshape(2,2,2)
		>>> LA.norm(m, axis=(1,2))
		array([  3.74165739,  11.22497216])
		>>> LA.norm(m[0, :, :]), LA.norm(m[1, :, :])
		(3.7416573867739413, 11.224972160321824)
	**/
	static public function norm(x:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		sqrt(x)
		
		Return the square root of x.
	**/
	static public function sqrt(args:haxe.extern.Rest<Dynamic>):Dynamic;
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