/* This file is generated, do not edit! */
package scipy.sparse.linalg.dsolve;
@:pythonImport("scipy.sparse.linalg.dsolve") extern class Dsolve_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Run benchmarks for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the benchmarks to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow benchmarks as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for benchmark outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		
		Returns
		-------
		success : bool
		    Returns True if running the benchmarks works, False if an error
		    occurred.
		
		Notes
		-----
		Benchmarks are like tests, but have names starting with "bench" instead
		of "test", and can be found under the "benchmarks" sub-directory of the
		module.
		
		Each NumPy module exposes `bench` in its namespace to run all benchmarks
		for it.
		
		Examples
		--------
		>>> success = np.lib.bench() #doctest: +SKIP
		Running benchmarks for numpy.lib
		...
		using 562341 items:
		unique:
		0.11
		unique1d:
		0.11
		ratio: 1.0
		nUnique: 56230 == 56230
		...
		OK
		
		>>> success #doctest: +SKIP
		True
	**/
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Bool;
	static public var division : Dynamic;
	/**
		Return a fuction for solving a sparse linear system, with A pre-factorized.
		
		Parameters
		----------
		A : (N, N) array_like
		    Input.
		
		Returns
		-------
		solve : callable
		    To solve the linear system of equations given in `A`, the `solve`
		    callable should be passed an ndarray of shape (N,).
		
		Examples
		--------
		>>> from scipy.sparse.linalg import factorized
		>>> A = np.array([[ 3. ,  2. , -1. ],
		...               [ 2. , -2. ,  4. ],
		...               [-1. ,  0.5, -1. ]])
		>>> solve = factorized(A) # Makes LU decomposition.
		>>> rhs1 = np.array([1, -2, 0])
		>>> solve(rhs1) # Uses the LU factors.
		array([ 1., -2., -2.])
	**/
	static public function factorized(A:Dynamic):haxe.Constraints.Function;
	static public var print_function : Dynamic;
	/**
		Compute an incomplete LU decomposition for a sparse, square matrix.
		
		The resulting object is an approximation to the inverse of `A`.
		
		Parameters
		----------
		A : (N, N) array_like
		    Sparse matrix to factorize
		drop_tol : float, optional
		    Drop tolerance (0 <= tol <= 1) for an incomplete LU decomposition.
		    (default: 1e-4)
		fill_factor : float, optional
		    Specifies the fill ratio upper bound (>= 1.0) for ILU. (default: 10)
		drop_rule : str, optional
		    Comma-separated string of drop rules to use.
		    Available rules: ``basic``, ``prows``, ``column``, ``area``,
		    ``secondary``, ``dynamic``, ``interp``. (Default: ``basic,area``)
		
		    See SuperLU documentation for details.
		
		Remaining other options
		    Same as for `splu`
		
		Returns
		-------
		invA_approx : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		splu : complete LU decomposition
		
		Notes
		-----
		To improve the better approximation to the inverse, you may need to
		increase `fill_factor` AND decrease `drop_tol`.
		
		This function uses the SuperLU library.
	**/
	static public function spilu(A:Dynamic, ?drop_tol:Dynamic, ?fill_factor:Dynamic, ?drop_rule:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Compute the LU decomposition of a sparse, square matrix.
		
		Parameters
		----------
		A : sparse matrix
		    Sparse matrix to factorize. Should be in CSR or CSC format.
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		
		diag_pivot_thresh : float, optional
		    Threshold used for a diagonal entry to be an acceptable pivot.
		    See SuperLU user's guide for details [1]_
		drop_tol : float, optional
		    (deprecated) No effect.
		relax : int, optional
		    Expert option for customizing the degree of relaxing supernodes.
		    See SuperLU user's guide for details [1]_
		panel_size : int, optional
		    Expert option for customizing the panel size.
		    See SuperLU user's guide for details [1]_
		options : dict, optional
		    Dictionary containing additional expert options to SuperLU.
		    See SuperLU user guide [1]_ (section 2.4 on the 'Options' argument)
		    for more details. For example, you can specify
		    ``options=dict(Equil=False, IterRefine='SINGLE'))``
		    to turn equilibration off and perform a single iterative refinement.
		
		Returns
		-------
		invA : scipy.sparse.linalg.SuperLU
		    Object, which has a ``solve`` method.
		
		See also
		--------
		spilu : incomplete LU decomposition
		
		Notes
		-----
		This function uses the SuperLU library.
		
		References
		----------
		.. [1] SuperLU http://crd.lbl.gov/~xiaoye/SuperLU/
	**/
	static public function splu(A:Dynamic, ?permc_spec:Dynamic, ?diag_pivot_thresh:Dynamic, ?drop_tol:Dynamic, ?relax:Dynamic, ?panel_size:Dynamic, ?options:Dynamic):Dynamic;
	/**
		Solve the sparse linear system Ax=b, where b may be a vector or a matrix.
		
		Parameters
		----------
		A : ndarray or sparse matrix
		    The square matrix A will be converted into CSC or CSR form
		b : ndarray or sparse matrix
		    The matrix or vector representing the right hand side of the equation.
		    If a vector, b.size must be (n,) or (n, 1)
		permc_spec : str, optional
		    How to permute the columns of the matrix for sparsity preservation.
		    (default: 'COLAMD')
		
		    - ``NATURAL``: natural ordering.
		    - ``MMD_ATA``: minimum degree ordering on the structure of A^T A.
		    - ``MMD_AT_PLUS_A``: minimum degree ordering on the structure of A^T+A.
		    - ``COLAMD``: approximate minimum degree column ordering
		use_umfpack : bool, optional
		    if True (default) then use umfpack for the solution.  This is
		    only referenced if b is a vector and ``scikit-umfpack`` is installed.
		
		Returns
		-------
		x : ndarray or sparse matrix
		    the solution of the sparse linear equation.
		    If b is a vector, then x is a vector of size A.shape[1]
		    If b is a matrix, then x is a matrix of size (A.shape[1], b.shape[1])
		
		Notes
		-----
		For solving the matrix expression AX = B, this solver assumes the resulting
		matrix X is sparse, as is often the case for very sparse inputs.  If the
		resulting X is dense, the construction of this sparse result will be
		relatively expensive.  In that case, consider converting A to a dense
		matrix and using scipy.linalg.solve or its variants.
	**/
	static public function spsolve(A:Dynamic, b:Dynamic, ?permc_spec:Dynamic, ?use_umfpack:Dynamic):Dynamic;
	/**
		Run tests for module using nose.
		
		Parameters
		----------
		label : {'fast', 'full', '', attribute identifier}, optional
		    Identifies the tests to run. This can be a string to pass to
		    the nosetests executable with the '-A' option, or one of several
		    special values.  Special values are:
		    * 'fast' - the default - which corresponds to the ``nosetests -A``
		      option of 'not slow'.
		    * 'full' - fast (as above) and slow tests as in the
		      'no -A' option to nosetests - this is the same as ''.
		    * None or '' - run all tests.
		    attribute_identifier - string passed directly to nosetests as '-A'.
		verbose : int, optional
		    Verbosity value for test outputs, in the range 1-10. Default is 1.
		extra_argv : list, optional
		    List with any extra arguments to pass to nosetests.
		doctests : bool, optional
		    If True, run doctests in module. Default is False.
		coverage : bool, optional
		    If True, report coverage of NumPy code. Default is False.
		    (This requires the `coverage module:
		     <http://nedbatchelder.com/code/modules/coverage.html>`_).
		raise_warnings : str or sequence of warnings, optional
		    This specifies which warnings to configure as 'raise' instead
		    of 'warn' during the test execution.  Valid strings are:
		
		      - "develop" : equals ``(DeprecationWarning, RuntimeWarning)``
		      - "release" : equals ``()``, don't raise on any warnings.
		
		Returns
		-------
		result : object
		    Returns the result of running the tests as a
		    ``nose.result.TextTestResult`` object.
		
		Notes
		-----
		Each NumPy module exposes `test` in its namespace to run all tests for it.
		For example, to run all tests for numpy.lib:
		
		>>> np.lib.test() #doctest: +SKIP
		
		Examples
		--------
		>>> result = np.lib.test() #doctest: +SKIP
		Running unit tests for numpy.lib
		...
		Ran 976 tests in 3.933s
		
		OK
		
		>>> result.errors #doctest: +SKIP
		[]
		>>> result.knownfail #doctest: +SKIP
		[]
	**/
	static public function test(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic, ?doctests:Dynamic, ?coverage:Dynamic, ?raise_warnings:Dynamic):Dynamic;
	/**
		Select default sparse direct solver to be used.
		
		Parameters
		----------
		useUmfpack : bool, optional
		    Use UMFPACK over SuperLU. Has effect only if scikits.umfpack is
		    installed. Default: True
		
		Notes
		-----
		The default sparse solver is umfpack when available
		(scikits.umfpack is installed). This can be changed by passing
		useUmfpack = False, which then causes the always present SuperLU
		based solver to be used.
		
		Umfpack requires a CSR/CSC matrix to have sorted column/row indices. If
		sure that the matrix fulfills this, pass ``assumeSortedIndices=True``
		to gain some speed.
	**/
	static public function use_solver(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}