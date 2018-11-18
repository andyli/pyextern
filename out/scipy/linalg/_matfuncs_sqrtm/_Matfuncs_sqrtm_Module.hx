/* This file is generated, do not edit! */
package scipy.linalg._matfuncs_sqrtm;
@:pythonImport("scipy.linalg._matfuncs_sqrtm") extern class _Matfuncs_sqrtm_Module {
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
		Matrix square root of an upper triangular matrix.
		
		This is a helper function for `sqrtm` and `logm`.
		
		Parameters
		----------
		T : (N, N) array_like upper triangular
		    Matrix whose square root to evaluate
		blocksize : int, optional
		    If the blocksize is not degenerate with respect to the
		    size of the input array, then use a blocked algorithm. (Default: 64)
		
		Returns
		-------
		sqrtm : (N, N) ndarray
		    Value of the sqrt function at `T`
		
		References
		----------
		.. [1] Edvin Deadman, Nicholas J. Higham, Rui Ralha (2013)
		       "Blocked Schur Algorithms for Computing the Matrix Square Root,
		       Lecture Notes in Computer Science, 7782. pp. 171-182.
	**/
	static public function _sqrtm_triu(T:Dynamic, ?blocksize:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		x,scale,info = dtrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``dtrsyl``.
		
		Parameters
		----------
		a : input rank-2 array('d') with bounds (m,m)
		b : input rank-2 array('d') with bounds (n,n)
		c : input rank-2 array('d') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('d') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function dtrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Matrix or vector norm.
		
		This function is able to return one of seven different matrix norms,
		or one of an infinite number of vector norms (described below), depending
		on the value of the ``ord`` parameter.
		
		Parameters
		----------
		a : (M,) or (M, N) array_like
		    Input array.  If `axis` is None, `a` must be 1-D or 2-D.
		ord : {non-zero int, inf, -inf, 'fro'}, optional
		    Order of the norm (see table under ``Notes``). inf means numpy's
		    `inf` object
		axis : {int, 2-tuple of ints, None}, optional
		    If `axis` is an integer, it specifies the axis of `a` along which to
		    compute the vector norms.  If `axis` is a 2-tuple, it specifies the
		    axes that hold 2-D matrices, and the matrix norms of these matrices
		    are computed.  If `axis` is None then either a vector norm (when `a`
		    is 1-D) or a matrix norm (when `a` is 2-D) is returned.
		keepdims : bool, optional
		    If this is set to True, the axes which are normed over are left in the
		    result as dimensions with size one.  With this option the result will
		    broadcast correctly against the original `a`.
		
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
		
		The ``axis`` and ``keepdims`` arguments are passed directly to
		``numpy.linalg.norm`` and are only usable if they are supported
		by the version of numpy in use.
		
		References
		----------
		.. [1] G. H. Golub and C. F. Van Loan, *Matrix Computations*,
		       Baltimore, MD, Johns Hopkins University Press, 1985, pg. 15
		
		Examples
		--------
		>>> from scipy.linalg import norm
		>>> a = np.arange(9) - 4.0
		>>> a
		array([-4., -3., -2., -1.,  0.,  1.,  2.,  3.,  4.])
		>>> b = a.reshape((3, 3))
		>>> b
		array([[-4., -3., -2.],
		       [-1.,  0.,  1.],
		       [ 2.,  3.,  4.]])
		
		>>> norm(a)
		7.745966692414834
		>>> norm(b)
		7.745966692414834
		>>> norm(b, 'fro')
		7.745966692414834
		>>> norm(a, np.inf)
		4
		>>> norm(b, np.inf)
		9
		>>> norm(a, -np.inf)
		0
		>>> norm(b, -np.inf)
		2
		
		>>> norm(a, 1)
		20
		>>> norm(b, 1)
		7
		>>> norm(a, -1)
		-4.6566128774142013e-010
		>>> norm(b, -1)
		6
		>>> norm(a, 2)
		7.745966692414834
		>>> norm(b, 2)
		7.3484692283495345
		
		>>> norm(a, -2)
		0
		>>> norm(b, -2)
		1.8570331885190563e-016
		>>> norm(a, 3)
		5.8480354764257312
		>>> norm(a, -3)
		0
	**/
	static public function norm(a:Dynamic, ?ord:Dynamic, ?axis:Dynamic, ?keepdims:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Convert real Schur form to complex Schur form.
		
		Convert a quasi-diagonal real-valued Schur form to the upper triangular
		complex-valued Schur form.
		
		Parameters
		----------
		T : (M, M) array_like
		    Real Schur form of the original array
		Z : (M, M) array_like
		    Schur transformation matrix
		check_finite : bool, optional
		    Whether to check that the input arrays contain only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Complex Schur form of the original array
		Z : (M, M) ndarray
		    Schur transformation matrix corresponding to the complex form
		
		See Also
		--------
		schur : Schur decomposition of an array
		
		Examples
		--------
		>>> from scipy.linalg import schur, rsf2csf
		>>> A = np.array([[0, 2, 2], [0, 1, 2], [1, 0, 1]])
		>>> T, Z = schur(A)
		>>> T
		array([[ 2.65896708,  1.42440458, -1.92933439],
		       [ 0.        , -0.32948354, -0.49063704],
		       [ 0.        ,  1.31178921, -0.32948354]])
		>>> Z
		array([[0.72711591, -0.60156188, 0.33079564],
		       [0.52839428, 0.79801892, 0.28976765],
		       [0.43829436, 0.03590414, -0.89811411]])
		>>> T2 , Z2 = rsf2csf(T, Z)
		>>> T2
		array([[2.65896708+0.j, -1.64592781+0.743164187j, -1.21516887+1.00660462j],
		       [0.+0.j , -0.32948354+8.02254558e-01j, -0.82115218-2.77555756e-17j],
		       [0.+0.j , 0.+0.j, -0.32948354-0.802254558j]])
		>>> Z2
		array([[0.72711591+0.j,  0.28220393-0.31385693j,  0.51319638-0.17258824j],
		       [0.52839428+0.j,  0.24720268+0.41635578j, -0.68079517-0.15118243j],
		       [0.43829436+0.j, -0.76618703+0.01873251j, -0.03063006+0.46857912j]])
	**/
	static public function rsf2csf(T:Dynamic, Z:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Compute Schur decomposition of a matrix.
		
		The Schur decomposition is::
		
		    A = Z T Z^H
		
		where Z is unitary and T is either upper-triangular, or for real
		Schur decomposition (output='real'), quasi-upper triangular.  In
		the quasi-triangular form, 2x2 blocks describing complex-valued
		eigenvalue pairs may extrude from the diagonal.
		
		Parameters
		----------
		a : (M, M) array_like
		    Matrix to decompose
		output : {'real', 'complex'}, optional
		    Construct the real or complex Schur decomposition (for real matrices).
		lwork : int, optional
		    Work array size. If None or -1, it is automatically computed.
		overwrite_a : bool, optional
		    Whether to overwrite data in a (may improve performance).
		sort : {None, callable, 'lhp', 'rhp', 'iuc', 'ouc'}, optional
		    Specifies whether the upper eigenvalues should be sorted.  A callable
		    may be passed that, given a eigenvalue, returns a boolean denoting
		    whether the eigenvalue should be sorted to the top-left (True).
		    Alternatively, string parameters may be used::
		
		        'lhp'   Left-hand plane (x.real < 0.0)
		        'rhp'   Right-hand plane (x.real > 0.0)
		        'iuc'   Inside the unit circle (x*x.conjugate() <= 1.0)
		        'ouc'   Outside the unit circle (x*x.conjugate() > 1.0)
		
		    Defaults to None (no sorting).
		check_finite : bool, optional
		    Whether to check that the input matrix contains only finite numbers.
		    Disabling may give a performance gain, but may result in problems
		    (crashes, non-termination) if the inputs do contain infinities or NaNs.
		
		Returns
		-------
		T : (M, M) ndarray
		    Schur form of A. It is real-valued for the real Schur decomposition.
		Z : (M, M) ndarray
		    An unitary Schur transformation matrix for A.
		    It is real-valued for the real Schur decomposition.
		sdim : int
		    If and only if sorting was requested, a third return value will
		    contain the number of eigenvalues satisfying the sort condition.
		
		Raises
		------
		LinAlgError
		    Error raised under three conditions:
		
		    1. The algorithm failed due to a failure of the QR algorithm to
		       compute all eigenvalues
		    2. If eigenvalue sorting was requested, the eigenvalues could not be
		       reordered due to a failure to separate eigenvalues, usually because
		       of poor conditioning
		    3. If eigenvalue sorting was requested, roundoff errors caused the
		       leading eigenvalues to no longer satisfy the sorting condition
		
		See also
		--------
		rsf2csf : Convert real Schur form to complex Schur form
		
		Examples
		--------
		>>> from scipy.linalg import schur, eigvals
		>>> A = np.array([[0, 2, 2], [0, 1, 2], [1, 0, 1]])
		>>> T, Z = schur(A)
		>>> T
		array([[ 2.65896708,  1.42440458, -1.92933439],
		       [ 0.        , -0.32948354, -0.49063704],
		       [ 0.        ,  1.31178921, -0.32948354]])
		>>> Z
		array([[0.72711591, -0.60156188, 0.33079564],
		       [0.52839428, 0.79801892, 0.28976765],
		       [0.43829436, 0.03590414, -0.89811411]])
		
		>>> T2, Z2 = schur(A, output='complex')
		>>> T2
		array([[ 2.65896708, -1.22839825+1.32378589j,  0.42590089+1.51937378j],
		       [ 0.        , -0.32948354+0.80225456j, -0.59877807+0.56192146j],
		       [ 0.        ,  0.                    , -0.32948354-0.80225456j]])
		>>> eigvals(T2)
		array([2.65896708, -0.32948354+0.80225456j, -0.32948354-0.80225456j])
		
		An arbitrary custom eig-sorting condition, having positive imaginary part, 
		which is satisfied by only one eigenvalue
		
		>>> T3, Z3, sdim = schur(A, output='complex', sort=lambda x: x.imag > 0)
		>>> sdim
		1
	**/
	static public function schur(a:Dynamic, ?output:Dynamic, ?lwork:Dynamic, ?overwrite_a:Dynamic, ?sort:Dynamic, ?check_finite:Dynamic):Dynamic;
	/**
		Matrix square root.
		
		Parameters
		----------
		A : (N, N) array_like
		    Matrix whose square root to evaluate
		disp : bool, optional
		    Print warning if error in the result is estimated large
		    instead of returning estimated error. (Default: True)
		blocksize : integer, optional
		    If the blocksize is not degenerate with respect to the
		    size of the input array, then use a blocked algorithm. (Default: 64)
		
		Returns
		-------
		sqrtm : (N, N) ndarray
		    Value of the sqrt function at `A`
		
		errest : float
		    (if disp == False)
		
		    Frobenius norm of the estimated error, ||err||_F / ||A||_F
		
		References
		----------
		.. [1] Edvin Deadman, Nicholas J. Higham, Rui Ralha (2013)
		       "Blocked Schur Algorithms for Computing the Matrix Square Root,
		       Lecture Notes in Computer Science, 7782. pp. 171-182.
		
		Examples
		--------
		>>> from scipy.linalg import sqrtm
		>>> a = np.array([[1.0, 3.0], [1.0, 4.0]])
		>>> r = sqrtm(a)
		>>> r
		array([[ 0.75592895,  1.13389342],
		       [ 0.37796447,  1.88982237]])
		>>> r.dot(r)
		array([[ 1.,  3.],
		       [ 1.,  4.]])
	**/
	static public function sqrtm(A:Dynamic, ?disp:Dynamic, ?blocksize:Dynamic):Dynamic;
	/**
		x,scale,info = ztrsyl(a,b,c,[trana,tranb,isgn,overwrite_c])
		
		Wrapper for ``ztrsyl``.
		
		Parameters
		----------
		a : input rank-2 array('D') with bounds (m,m)
		b : input rank-2 array('D') with bounds (n,n)
		c : input rank-2 array('D') with bounds (m,n)
		
		Other Parameters
		----------------
		trana : input string(len=1), optional
		    Default: 'N'
		tranb : input string(len=1), optional
		    Default: 'N'
		isgn : input int, optional
		    Default: 1
		overwrite_c : input int, optional
		    Default: 0
		
		Returns
		-------
		x : rank-2 array('D') with bounds (m,n) and c storage
		scale : float
		info : int
	**/
	static public function ztrsyl(args:haxe.extern.Rest<Dynamic>):Dynamic;
}