/* This file is generated, do not edit! */
package scipy.sparse.construct;
@:pythonImport("scipy.sparse.construct") extern class Construct_Module {
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
		Stacking fast path for CSR/CSC matrices
		(i) vstack for CSR, (ii) hstack for CSC.
	**/
	static public function _compressed_sparse_stack(blocks:Dynamic, axis:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
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
		>>> from scipy.sparse import coo_matrix, block_diag
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
		Construct a sparse matrix from diagonals.
		
		Parameters
		----------
		diagonals : sequence of array_like
		    Sequence of arrays containing the matrix diagonals,
		    corresponding to `offsets`.
		offsets : sequence of int or an int, optional
		    Diagonals to set:
		      - k = 0  the main diagonal (default)
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
		>>> from scipy.sparse import diags
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
	static public function diags(diagonals:Dynamic, ?offsets:Dynamic, ?shape:Dynamic, ?format:Dynamic, ?dtype:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Sparse matrix with ones on diagonal
		
		Returns a sparse (m x n) matrix where the k-th diagonal
		is all ones and everything else is zeros.
		
		Parameters
		----------
		m : int
		    Number of rows in the matrix.
		n : int, optional
		    Number of columns. Default: `m`.
		k : int, optional
		    Diagonal to place ones on. Default: 0 (main diagonal).
		dtype : dtype, optional
		    Data type of the matrix.
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
		<3x3 sparse matrix of type '<class 'numpy.int8'>'
		    with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function eye(m:Dynamic, ?n:Dynamic, ?k:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Based on input (integer) arrays `a`, determine a suitable index data
		type that can hold the data in the arrays.
		
		Parameters
		----------
		arrays : tuple of array_like
		    Input arrays whose types/contents to check
		maxval : float, optional
		    Maximum value needed
		check_contents : bool, optional
		    Whether to check the values in the arrays and not just their types.
		    Default: False (check only the types)
		
		Returns
		-------
		dtype : dtype
		    Suitable index data type (int32 or int64)
	**/
	static public function get_index_dtype(?arrays:Dynamic, ?maxval:Dynamic, ?check_contents:Dynamic):Dynamic;
	static public function get_randint(random_state:Dynamic):Dynamic;
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
		>>> from scipy.sparse import identity
		>>> identity(3).toarray()
		array([[ 1.,  0.,  0.],
		       [ 0.,  1.,  0.],
		       [ 0.,  0.,  1.]])
		>>> identity(3, dtype='int8', format='dia')
		<3x3 sparse matrix of type '<class 'numpy.int8'>'
		        with 3 stored elements (1 diagonals) in DIAgonal format>
	**/
	static public function identity(n:Dynamic, ?dtype:Dynamic, ?format:Dynamic):Dynamic;
	/**
		Is x either a scalar, an array scalar, or a 0-dim array?
	**/
	static public function isscalarlike(x:Dynamic):Dynamic;
	/**
		Is x of a sparse matrix type?
		
		Parameters
		----------
		x
		    object to check for being a sparse matrix
		
		Returns
		-------
		bool
		    True if x is a sparse matrix, False otherwise
		
		Notes
		-----
		issparse and isspmatrix are aliases for the same function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix, isspmatrix
		>>> isspmatrix(csr_matrix([[5]]))
		True
		
		>>> from scipy.sparse import isspmatrix
		>>> isspmatrix(5)
		False
	**/
	static public function issparse(x:Dynamic):Dynamic;
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
		
		Returns
		-------
		res : sparse matrix
		
		Notes
		-----
		Only float types are supported for now.
		
		See Also
		--------
		scipy.sparse.random : Similar function that allows a user-specified random
		    data source.
		
		Examples
		--------
		>>> from scipy.sparse import rand
		>>> matrix = rand(3, 4, density=0.25, format="csr", random_state=42)
		>>> matrix
		<3x4 sparse matrix of type '<class 'numpy.float64'>'
		   with 3 stored elements in Compressed Sparse Row format>
		>>> matrix.todense()
		matrix([[0.05641158, 0.        , 0.        , 0.65088847],
		        [0.        , 0.        , 0.        , 0.14286682],
		        [0.        , 0.        , 0.        , 0.        ]])
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
		
		Returns
		-------
		res : sparse matrix
		
		Notes
		-----
		Only float types are supported for now.
		
		Examples
		--------
		>>> from scipy.sparse import random
		>>> from scipy import stats
		
		>>> class CustomRandomState(np.random.RandomState):
		...     def randint(self, k):
		...         i = np.random.randint(k)
		...         return i - i % 2
		>>> np.random.seed(12345)
		>>> rs = CustomRandomState()
		>>> rvs = stats.poisson(25, loc=10).rvs
		>>> S = random(3, 4, density=0.25, random_state=rs, data_rvs=rvs)
		>>> S.A
		array([[ 36.,   0.,  33.,   0.],   # random
		       [  0.,   0.,   0.,   0.],
		       [  0.,   0.,  36.,   0.]])
		
		>>> from scipy.sparse import random
		>>> from scipy.stats import rv_continuous
		>>> class CustomDistribution(rv_continuous):
		...     def _rvs(self, *args, **kwargs):
		...         return self._random_state.randn(*self._size)
		>>> X = CustomDistribution(seed=2906)
		>>> Y = X()  # get a frozen version of the distribution
		>>> S = random(3, 4, density=0.25, random_state=2906, data_rvs=Y.rvs)
		>>> S.A
		array([[ 0.        ,  0.        ,  0.        ,  0.        ],
		       [ 0.13569738,  1.9467163 , -0.81205367,  0.        ],
		       [ 0.        ,  0.        ,  0.        ,  0.        ]])
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
		>>> from scipy.sparse import spdiags
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
		Returns the nearest supported sparse dtype for the
		combination of one or more types.
		
		upcast(t0, t1, ..., tn) -> T  where T is a supported dtype
		
		Examples
		--------
		
		>>> upcast('int32')
		<type 'numpy.int32'>
		>>> upcast('bool')
		<type 'numpy.bool_'>
		>>> upcast('int32','float32')
		<type 'numpy.float64'>
		>>> upcast('bool',complex,float)
		<type 'numpy.complex128'>
	**/
	static public function upcast(?args:python.VarArgs<Dynamic>):Dynamic;
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