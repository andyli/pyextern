/* This file is generated, do not edit! */
package scipy.sparse;
@:pythonImport("scipy.sparse") extern class Sparse_Module {
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
	static public function bench(?label:Dynamic, ?verbose:Dynamic, ?extra_argv:Dynamic):Dynamic;
	/**
		Build a block diagonal sparse matrix from provided matrices.
		
		Parameters
		----------
		mats : sequence of matrices
		    Input matrices.
		format : str, optional
		    The sparse format of the result (e.g. "csr").  If not given, the matrix
		    is returned in "coo" format.
		dtype : dtype specifier, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		Returns
		-------
		res : sparse matrix
		
		Notes
		-----
		
		.. versionadded:: 0.11.0
		
		See Also
		--------
		bmat, diags
		
		Examples
		--------
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5], [6]])
		>>> C = coo_matrix([[7]])
		>>> block_diag((A, B, C)).toarray()
		array([[1, 2, 0, 0],
		       [3, 4, 0, 0],
		       [0, 0, 5, 0],
		       [0, 0, 6, 0],
		       [0, 0, 0, 7]])
	**/
	static public function block_diag(mats:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Build a sparse matrix from sparse sub-blocks
		
		Parameters
		----------
		blocks : array_like
		    Grid of sparse matrices with compatible shapes.
		    An entry of None implies an all-zero matrix.
		format : {'bsr', 'coo', 'csc', 'csr', 'dia', 'dok', 'lil'}, optional
		    The sparse format of the result (e.g. "csr").  By default an
		    appropriate sparse matrix format is returned.
		    This choice is subject to change.
		dtype : dtype, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		Returns
		-------
		bmat : sparse matrix
		
		See Also
		--------
		block_diag, diags
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, bmat
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5], [6]])
		>>> C = coo_matrix([[7]])
		>>> bmat([[A, B], [None, C]]).toarray()
		array([[1, 2, 5],
		       [3, 4, 6],
		       [0, 0, 7]])
		
		>>> bmat([[A, None], [None, C]]).toarray()
		array([[1, 2, 0],
		       [3, 4, 0],
		       [0, 0, 7]])
	**/
	static public function bmat(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		`cs_graph_components` is deprecated!
		In the future, use csgraph.connected_components. Note that this new function has a slightly different interface: see the docstring for more information.
		
		
		    Determine connected components of a graph stored as a compressed
		    sparse row or column matrix.
		
		    For speed reasons, the symmetry of the matrix x is not checked. A
		    nonzero at index `(i, j)` means that node `i` is connected to node
		    `j` by an edge. The number of rows/columns of the matrix thus
		    corresponds to the number of nodes in the graph.
		
		    Parameters
		    -----------
		    x : array_like or sparse matrix, 2 dimensions
		        The adjacency matrix of the graph. Only the upper triangular part
		        is used.
		
		    Returns
		    --------
		    n_comp : int
		        The number of connected components.
		    label : ndarray (ints, 1 dimension):
		        The label array of each connected component (-2 is used to
		        indicate empty rows in the matrix: 0 everywhere, including
		        diagonal). This array has the length of the number of nodes,
		        i.e. one label for each node of the graph. Nodes having the same
		        label belong to the same connected component.
		
		    Notes
		    ------
		    The matrix is assumed to be symmetric and the upper triangular part
		    of the matrix is used. The matrix is converted to a CSR matrix unless
		    it is already a CSR.
		
		    Examples
		    --------
		    >>> from scipy.sparse.csgraph import connected_components
		    >>> D = np.eye(4)
		    >>> D[0,1] = D[1,0] = 1
		    >>> cs_graph_components(D)
		    (3, array([0, 0, 1, 2]))
		    >>> from scipy.sparse import dok_matrix
		    >>> cs_graph_components(dok_matrix(D))
		    (3, array([0, 0, 1, 2]))
		
		    
	**/
	static public function cs_graph_components(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct a sparse matrix from diagonals.
		
		Parameters
		----------
		diagonals : sequence of array_like
		    Sequence of arrays containing the matrix diagonals,
		    corresponding to `offsets`.
		offsets : sequence of int
		    Diagonals to set:
		      - k = 0  the main diagonal
		      - k > 0  the k-th upper diagonal
		      - k < 0  the k-th lower diagonal
		shape : tuple of int, optional
		    Shape of the result. If omitted, a square matrix large enough
		    to contain the diagonals is returned.
		format : {"dia", "csr", "csc", "lil", ...}, optional
		    Matrix format of the result.  By default (format=None) an
		    appropriate sparse matrix format is returned.  This choice is
		    subject to change.
		dtype : dtype, optional
		    Data type of the matrix.
		
		See Also
		--------
		spdiags : construct matrix from diagonals
		
		Notes
		-----
		This function differs from `spdiags` in the way it handles
		off-diagonals.
		
		The result from `diags` is the sparse equivalent of::
		
		    np.diag(diagonals[0], offsets[0])
		    + ...
		    + np.diag(diagonals[k], offsets[k])
		
		Repeated diagonal offsets are disallowed.
		
		.. versionadded:: 0.11
		
		Examples
		--------
		>>> diagonals = [[1, 2, 3, 4], [1, 2, 3], [1, 2]]
		>>> diags(diagonals, [0, -1, 2]).toarray()
		array([[1, 0, 1, 0],
		       [1, 2, 0, 2],
		       [0, 2, 3, 0],
		       [0, 0, 3, 4]])
		
		Broadcasting of scalars is supported (but shape needs to be
		specified):
		
		>>> diags([1, -2, 1], [-1, 0, 1], shape=(4, 4)).toarray()
		array([[-2.,  1.,  0.,  0.],
		       [ 1., -2.,  1.,  0.],
		       [ 0.,  1., -2.,  1.],
		       [ 0.,  0.,  1., -2.]])
		
		
		If only one diagonal is wanted (as in `numpy.diag`), the following
		works as well:
		
		>>> diags([1, 2, 3], 1).toarray()
		array([[ 0.,  1.,  0.,  0.],
		       [ 0.,  0.,  2.,  0.],
		       [ 0.,  0.,  0.,  3.],
		       [ 0.,  0.,  0.,  0.]])
	**/
	static public function diags(diagonals:Dynamic, offsets:Dynamic, ?shape:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Sparse matrix with ones on diagonal
		
		Returns a sparse (m x n) matrix where the k-th diagonal
		is all ones and everything else is zeros.
		
		Parameters
		----------
		n : int
		    Number of rows in the matrix.
		m : int, optional
		    Number of columns. Default: n
		k : int, optional
		    Diagonal to place ones on. Default: 0 (main diagonal)
		dtype : dtype, optional
		    Data type of the matrix
		format : str, optional
		    Sparse format of the result, e.g. format="csr", etc.
		
		Examples
		--------
		>>> from scipy import sparse
		>>> sparse.eye(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> sparse.eye(3, dtype=np.int8)
		<3x3 sparse matrix of type '<type 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function eye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Return the indices and values of the nonzero elements of a matrix
		
		Parameters
		----------
		A : dense or sparse matrix
		    Matrix whose nonzero elements are desired.
		
		Returns
		-------
		(I,J,V) : tuple of arrays
		    I,J, and V contain the row indices, column indices, and values
		    of the nonzero matrix entries.
		
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[7.0, 8.0, 0],[0, 0, 9.0]])
		>>> find(A)
		(array([0, 0, 1], dtype=int32), array([0, 1, 2], dtype=int32), array([ 7.,  8.,  9.]))
	**/
	static public function find(A:Dynamic):Dynamic;
	/**
		Stack sparse matrices horizontally (column wise)
		
		Parameters
		----------
		blocks
		    sequence of sparse matrices with compatible shapes
		format : str
		    sparse format of the result (e.g. "csr")
		    by default an appropriate sparse matrix format is returned.
		    This choice is subject to change.
		dtype : dtype, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		See Also
		--------
		vstack : stack sparse matrices vertically (row wise)
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, hstack
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5], [6]])
		>>> hstack([A,B]).toarray()
		array([[1, 2, 5],
		       [3, 4, 6]])
	**/
	static public function hstack(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Identity matrix in sparse format
		
		Returns an identity matrix with shape (n,n) using a given
		sparse format and dtype.
		
		Parameters
		----------
		n : int
		    Shape of the identity matrix.
		dtype : dtype, optional
		    Data type of the matrix
		format : str, optional
		    Sparse format of the result, e.g. format="csr", etc.
		
		Examples
		--------
		>>> identity(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> identity(3, dtype='int8', format='dia')
		<3x3 sparse matrix of type '<type 'numpy.int8'>'
		        with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	static public function issparse(x:Dynamic):Dynamic;
	static public function isspmatrix(x:Dynamic):Dynamic;
	static public function isspmatrix_bsr(x:Dynamic):Dynamic;
	static public function isspmatrix_coo(x:Dynamic):Dynamic;
	static public function isspmatrix_csc(x:Dynamic):Dynamic;
	static public function isspmatrix_csr(x:Dynamic):Dynamic;
	static public function isspmatrix_dia(x:Dynamic):Dynamic;
	static public function isspmatrix_dok(x:Dynamic):Dynamic;
	static public function isspmatrix_lil(x:Dynamic):Dynamic;
	/**
		kronecker product of sparse matrices A and B
		
		Parameters
		----------
		A : sparse or dense matrix
		    first matrix of the product
		B : sparse or dense matrix
		    second matrix of the product
		format : str, optional
		    format of the result (e.g. "csr")
		
		Returns
		-------
		kronecker product in a sparse matrix format
		
		
		Examples
		--------
		>>> from scipy import sparse
		>>> A = sparse.csr_matrix(np.array([[0, 2], [5, 0]]))
		>>> B = sparse.csr_matrix(np.array([[1, 2], [3, 4]]))
		>>> sparse.kron(A, B).toarray()
		array([[ 0,  0,  2,  4],
		       [ 0,  0,  6,  8],
		       [ 5, 10,  0,  0],
		       [15, 20,  0,  0]])
		
		>>> sparse.kron(A, [[1, 2], [3, 4]]).toarray()
		array([[ 0,  0,  2,  4],
		       [ 0,  0,  6,  8],
		       [ 5, 10,  0,  0],
		       [15, 20,  0,  0]])
	**/
	static public function kron(A:Dynamic, B:Dynamic, ?format:Dynamic):Dynamic;
	/**
		kronecker sum of sparse matrices A and B
		
		Kronecker sum of two sparse matrices is a sum of two Kronecker
		products kron(I_n,A) + kron(B,I_m) where A has shape (m,m)
		and B has shape (n,n) and I_m and I_n are identity matrices
		of shape (m,m) and (n,n) respectively.
		
		Parameters
		----------
		A
		    square matrix
		B
		    square matrix
		format : str
		    format of the result (e.g. "csr")
		
		Returns
		-------
		kronecker sum in a sparse matrix format
		
		Examples
		--------
	**/
	static public function kronsum(A:Dynamic, B:Dynamic, ?format:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Generate a sparse matrix of the given shape and density with uniformly
		distributed values.
		
		Parameters
		----------
		m, n : int
		    shape of the matrix
		density : real, optional
		    density of the generated matrix: density equal to one means a full
		    matrix, density of 0 means a matrix with no non-zero items.
		format : str, optional
		    sparse matrix format.
		dtype : dtype, optional
		    type of the returned matrix values.
		random_state : {numpy.random.RandomState, int}, optional
		    Random number generator or random seed. If not given, the singleton
		    numpy.random will be used.
		
		Notes
		-----
		Only float types are supported for now.
	**/
	static public function rand(m:Dynamic, n:Dynamic, ?density:Dynamic, ?format:Dynamic, ?dtype:Dynamic, ?random_state:Dynamic):Dynamic;
	/**
		Generate a sparse matrix of the given shape and density with randomly
		distributed values.
		
		Parameters
		----------
		m, n : int
		    shape of the matrix
		density : real, optional
		    density of the generated matrix: density equal to one means a full
		    matrix, density of 0 means a matrix with no non-zero items.
		format : str, optional
		    sparse matrix format.
		dtype : dtype, optional
		    type of the returned matrix values.
		random_state : {numpy.random.RandomState, int}, optional
		    Random number generator or random seed. If not given, the singleton
		    numpy.random will be used.  This random state will be used
		    for sampling the sparsity structure, but not necessarily for sampling
		    the values of the structurally nonzero entries of the matrix.
		data_rvs : callable, optional
		    Samples a requested number of random values.
		    This function should take a single argument specifying the length
		    of the ndarray that it will return.  The structurally nonzero entries
		    of the sparse random matrix will be taken from the array sampled
		    by this function.  By default, uniform [0, 1) random values will be
		    sampled using the same random state as is used for sampling
		    the sparsity structure.
		
		Examples
		--------
		>>> from scipy.sparse import construct
		>>> from scipy import stats
		>>> class CustomRandomState(object):
		...     def randint(self, k):
		...         i = np.random.randint(k)
		...         return i - i % 2
		>>> rs = CustomRandomState()
		>>> rvs = stats.poisson(25, loc=10).rvs
		>>> S = construct.random(3, 4, density=0.25, random_state=rs, data_rvs=rvs)
		>>> S.A
		array([[ 36.,   0.,  33.,   0.],
		       [  0.,   0.,   0.,   0.],
		       [  0.,   0.,  36.,   0.]])
		
		Notes
		-----
		Only float types are supported for now.
	**/
	static public function random(m:Dynamic, n:Dynamic, ?density:Dynamic, ?format:Dynamic, ?dtype:Dynamic, ?random_state:Dynamic, ?data_rvs:Dynamic):Dynamic;
	/**
		Return a sparse matrix from diagonals.
		
		Parameters
		----------
		data : array_like
		    matrix diagonals stored row-wise
		diags : diagonals to set
		    - k = 0  the main diagonal
		    - k > 0  the k-th upper diagonal
		    - k < 0  the k-th lower diagonal
		m, n : int
		    shape of the result
		format : str, optional
		    Format of the result. By default (format=None) an appropriate sparse
		    matrix format is returned.  This choice is subject to change.
		
		See Also
		--------
		diags : more convenient form of this function
		dia_matrix : the sparse DIAgonal format.
		
		Examples
		--------
		>>> data = np.array([[1, 2, 3, 4], [1, 2, 3, 4], [1, 2, 3, 4]])
		>>> diags = np.array([0, -1, 2])
		>>> spdiags(data, diags, 4, 4).toarray()
		array([[1, 0, 3, 0],
		       [1, 2, 0, 4],
		       [0, 2, 3, 0],
		       [0, 0, 3, 4]])
	**/
	static public function spdiags(data:Dynamic, diags:Dynamic, m:Dynamic, n:Dynamic, ?format:Dynamic):Dynamic;
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
		Return the lower triangular portion of a matrix in sparse format
		
		Returns the elements on or below the k-th diagonal of the matrix A.
		    - k = 0 corresponds to the main diagonal
		    - k > 0 is above the main diagonal
		    - k < 0 is below the main diagonal
		
		Parameters
		----------
		A : dense or sparse matrix
		    Matrix whose lower trianglar portion is desired.
		k : integer : optional
		    The top-most diagonal of the lower triangle.
		format : string
		    Sparse format of the result, e.g. format="csr", etc.
		
		Returns
		-------
		L : sparse matrix
		    Lower triangular portion of A in sparse format.
		
		See Also
		--------
		triu : upper triangle in sparse format
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[1, 2, 0, 0, 3], [4, 5, 0, 6, 7], [0, 0, 8, 9, 0]],
		...                dtype='int32')
		>>> A.toarray()
		array([[1, 2, 0, 0, 3],
		       [4, 5, 0, 6, 7],
		       [0, 0, 8, 9, 0]])
		>>> tril(A).toarray()
		array([[1, 0, 0, 0, 0],
		       [4, 5, 0, 0, 0],
		       [0, 0, 8, 0, 0]])
		>>> tril(A).nnz
		4
		>>> tril(A, k=1).toarray()
		array([[1, 2, 0, 0, 0],
		       [4, 5, 0, 0, 0],
		       [0, 0, 8, 9, 0]])
		>>> tril(A, k=-1).toarray()
		array([[0, 0, 0, 0, 0],
		       [4, 0, 0, 0, 0],
		       [0, 0, 0, 0, 0]])
		>>> tril(A, format='csc')
		<3x5 sparse matrix of type '<type 'numpy.int32'>'
		        with 4 stored elements in Compressed Sparse Column format>
	**/
	static public function tril(A:Dynamic, ?k:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Return the upper triangular portion of a matrix in sparse format
		
		Returns the elements on or above the k-th diagonal of the matrix A.
		    - k = 0 corresponds to the main diagonal
		    - k > 0 is above the main diagonal
		    - k < 0 is below the main diagonal
		
		Parameters
		----------
		A : dense or sparse matrix
		    Matrix whose upper trianglar portion is desired.
		k : integer : optional
		    The bottom-most diagonal of the upper triangle.
		format : string
		    Sparse format of the result, e.g. format="csr", etc.
		
		Returns
		-------
		L : sparse matrix
		    Upper triangular portion of A in sparse format.
		
		See Also
		--------
		tril : lower triangle in sparse format
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[1, 2, 0, 0, 3], [4, 5, 0, 6, 7], [0, 0, 8, 9, 0]],
		...                dtype='int32')
		>>> A.toarray()
		array([[1, 2, 0, 0, 3],
		       [4, 5, 0, 6, 7],
		       [0, 0, 8, 9, 0]])
		>>> triu(A).toarray()
		array([[1, 2, 0, 0, 3],
		       [0, 5, 0, 6, 7],
		       [0, 0, 8, 9, 0]])
		>>> triu(A).nnz
		8
		>>> triu(A, k=1).toarray()
		array([[0, 2, 0, 0, 3],
		       [0, 0, 0, 6, 7],
		       [0, 0, 0, 9, 0]])
		>>> triu(A, k=-1).toarray()
		array([[1, 2, 0, 0, 3],
		       [4, 5, 0, 6, 7],
		       [0, 0, 8, 9, 0]])
		>>> triu(A, format='csc')
		<3x5 sparse matrix of type '<type 'numpy.int32'>'
		        with 8 stored elements in Compressed Sparse Column format>
	**/
	static public function triu(A:Dynamic, ?k:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Stack sparse matrices vertically (row wise)
		
		Parameters
		----------
		blocks
		    sequence of sparse matrices with compatible shapes
		format : str, optional
		    sparse format of the result (e.g. "csr")
		    by default an appropriate sparse matrix format is returned.
		    This choice is subject to change.
		dtype : dtype, optional
		    The data-type of the output matrix.  If not given, the dtype is
		    determined from that of `blocks`.
		
		See Also
		--------
		hstack : stack sparse matrices horizontally (column wise)
		
		Examples
		--------
		>>> from scipy.sparse import coo_matrix, vstack
		>>> A = coo_matrix([[1, 2], [3, 4]])
		>>> B = coo_matrix([[5, 6]])
		>>> vstack([A, B]).toarray()
		array([[1, 2],
		       [3, 4],
		       [5, 6]])
	**/
	static public function vstack(blocks:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
}