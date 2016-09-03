/* This file is generated, do not edit! */
package scipy.sparse.dia;
@:pythonImport("scipy.sparse.dia", "dia_matrix") extern class Dia_matrix {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __bool__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __div__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	public function __iadd__(other:Dynamic):Dynamic;
	public function __idiv__(other:Dynamic):Dynamic;
	public function __imul__(other:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(arg1:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(arg1:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Void;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __itruediv__(other:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __matmul__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		interpret other and call one of the following
		
		self._mul_scalar()
		self._mul_vector()
		self._mul_multivector()
		self._mul_sparse_matrix()
	**/
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	public function __neg__():Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __nonzero__():Dynamic;
	/**
		Method for compatibility with NumPy's ufuncs and dot
		functions.
	**/
	public function __numpy_ufunc__(func:Dynamic, method:Dynamic, pos:Dynamic, inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	public function __rmatmul__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	public function __sub__(other:Dynamic):Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns a mask of the same shape as self.data, where
		mask[i,j] is True when data[i,j] corresponds to a stored element.
	**/
	public function _data_mask():Dynamic;
	public function _deduped_data():Dynamic;
	public function _divide(other:Dynamic, ?true_divide:Dynamic, ?rdivide:Dynamic):Dynamic;
	public function _get_dtype():Dynamic;
	public function _imag():Dynamic;
	public function _mul_multimatrix(other:Dynamic):Dynamic;
	public function _mul_multivector(other:Dynamic):Dynamic;
	public function _mul_scalar(other:Dynamic):Dynamic;
	public function _mul_sparse_matrix(other:Dynamic):Dynamic;
	public function _mul_vector(other:Dynamic):Dynamic;
	public function _process_toarray_args(order:Dynamic, out:Dynamic):Dynamic;
	public function _real():Dynamic;
	public function _set_dtype(newtype:Dynamic):Dynamic;
	public function _setdiag(values:Dynamic, ?k:Dynamic):Dynamic;
	/**
		Returns a matrix with the same sparsity structure as self,
		but with different data.  By default the structure arrays are copied.
	**/
	public function _with_data(data:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Element-wise arcsin.
		
		See numpy.arcsin for more information.
	**/
	public function arcsin():Dynamic;
	/**
		Element-wise arcsinh.
		
		See numpy.arcsinh for more information.
	**/
	public function arcsinh():Dynamic;
	/**
		Element-wise arctan.
		
		See numpy.arctan for more information.
	**/
	public function arctan():Dynamic;
	/**
		Element-wise arctanh.
		
		See numpy.arctanh for more information.
	**/
	public function arctanh():Dynamic;
	/**
		Return this matrix in a given sparse format
		
		Parameters
		----------
		format : {string, None}
		    desired sparse matrix format
		        - None for no format conversion
		        - "csr" for csr_matrix format
		        - "csc" for csc_matrix format
		        - "lil" for lil_matrix format
		        - "dok" for dok_matrix format and so on
	**/
	public function asformat(format:Dynamic):Dynamic;
	/**
		Upcast matrix to a floating point format (if necessary)
	**/
	public function asfptype():Dynamic;
	public function astype(t:Dynamic):Dynamic;
	/**
		Element-wise ceil.
		
		See numpy.ceil for more information.
	**/
	public function ceil():Dynamic;
	public function conj():Dynamic;
	public function conjugate():Dynamic;
	/**
		Returns a copy of this matrix.
		
		No data/indices will be shared between the returned value and current
		matrix.
	**/
	public function copy():Dynamic;
	/**
		Number of non-zero entries, equivalent to
		
		np.count_nonzero(a.toarray())
		
		Unlike getnnz() and the nnz property, which return the number of stored
		entries (the length of the data attribute), this method counts the
		actual number of non-zero entries in data.
	**/
	public function count_nonzero():Dynamic;
	/**
		Element-wise deg2rad.
		
		See numpy.deg2rad for more information.
	**/
	public function deg2rad():Dynamic;
	/**
		Returns the main diagonal of the matrix
		        
	**/
	public function diagonal():Dynamic;
	/**
		Ordinary dot product
		
		Examples
		--------
		>>> import numpy as np
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[1, 2, 0], [0, 0, 3], [4, 0, 5]])
		>>> v = np.array([1, 0, -1])
		>>> A.dot(v)
		array([ 1, -3, -1], dtype=int64)
	**/
	public function dot(other:Dynamic):Dynamic;
	public var dtype : Dynamic;
	/**
		Element-wise expm1.
		
		See numpy.expm1 for more information.
	**/
	public function expm1():Dynamic;
	/**
		Element-wise floor.
		
		See numpy.floor for more information.
	**/
	public function floor():Dynamic;
	static public var format : Dynamic;
	public function getH():Dynamic;
	public function get_shape():Dynamic;
	/**
		Returns a copy of column j of the matrix, as an (m x 1) sparse
		matrix (column vector).
	**/
	public function getcol(j:Dynamic):Dynamic;
	public function getformat():Dynamic;
	public function getmaxprint():Dynamic;
	/**
		Number of stored values, including explicit zeros.
		
		Parameters
		----------
		axis : None, 0, or 1
		    Select between the number of values across the whole matrix, in
		    each column, or in each row.
		
		See also
		--------
		count_nonzero : Number of non-zero entries
	**/
	public function getnnz(?axis:Dynamic):Dynamic;
	/**
		Returns a copy of row i of the matrix, as a (1 x n) sparse
		matrix (row vector).
	**/
	public function getrow(i:Dynamic):Dynamic;
	/**
		Element-wise log1p.
		
		See numpy.log1p for more information.
	**/
	public function log1p():Dynamic;
	public function maximum(other:Dynamic):Dynamic;
	/**
		Compute the arithmetic mean along the specified axis.
		
		Returns the average of the matrix elements. The average is taken
		over all elements in the matrix by default, otherwise over the
		specified axis. `float64` intermediate and return values are used
		for integer inputs.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None} optional
		    Axis along which the mean is computed. The default is to compute
		    the mean of all elements in the matrix (i.e. `axis` = `None`).
		dtype : data-type, optional
		    Type to use in computing the mean. For integer inputs, the default
		    is `float64`; for floating point inputs, it is the same as the
		    input dtype.
		
		    .. versionadded: 0.18.0
		
		out : np.matrix, optional
		    Alternative output matrix in which to place the result. It must
		    have the same shape as the expected output, but the type of the
		    output values will be cast if necessary.
		
		    .. versionadded: 0.18.0
		
		Returns
		-------
		m : np.matrix
		
		See Also
		--------
		np.matrix.mean : NumPy's implementation of 'mean' for matrices
	**/
	public function mean(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	public function minimum(other:Dynamic):Dynamic;
	/**
		Point-wise multiplication by another matrix
		        
	**/
	public function multiply(other:Dynamic):Dynamic;
	static public var ndim : Dynamic;
	/**
		Number of stored values, including explicit zeros.
		
		See also
		--------
		count_nonzero : Number of non-zero entries
	**/
	public var nnz : Dynamic;
	/**
		nonzero indices
		
		Returns a tuple of arrays (row,col) containing the indices
		of the non-zero elements of the matrix.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[1,2,0],[0,0,3],[4,0,5]])
		>>> A.nonzero()
		(array([0, 0, 1, 2, 2]), array([0, 1, 2, 0, 2]))
	**/
	public function nonzero():Dynamic;
	/**
		This function performs element-wise power.
		
		Parameters
		----------
		n : n is a scalar
		
		dtype : If dtype is not specified, the current dtype will be preserved.
	**/
	public function power(n:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Element-wise rad2deg.
		
		See numpy.rad2deg for more information.
	**/
	public function rad2deg():Dynamic;
	/**
		Gives a new shape to a sparse matrix without changing its data.
		
		Parameters
		----------
		shape : length-2 tuple of ints
		    The new shape should be compatible with the original shape.
		order : 'C', optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except
		    for the default value, as this argument is not used.
		
		Returns
		-------
		reshaped_matrix : `self` with the new dimensions of `shape`
		
		See Also
		--------
		np.matrix.reshape : NumPy's implementation of 'reshape' for matrices
	**/
	public function reshape(shape:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Element-wise rint.
		
		See numpy.rint for more information.
	**/
	public function rint():Dynamic;
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		Set diagonal or off-diagonal elements of the array.
		
		Parameters
		----------
		values : array_like
		    New values of the diagonal elements.
		
		    Values may have any length.  If the diagonal is longer than values,
		    then the remaining diagonal entries will not be set.  If values if
		    longer than the diagonal, then the remaining values are ignored.
		
		    If a scalar value is given, all of the diagonal is set to it.
		
		k : int, optional
		    Which off-diagonal to set, corresponding to elements a[i,i+k].
		    Default: 0 (the main diagonal).
	**/
	public function setdiag(values:Dynamic, ?k:Dynamic):Dynamic;
	public var shape : Dynamic;
	/**
		Element-wise sign.
		
		See numpy.sign for more information.
	**/
	public function sign():Dynamic;
	/**
		Element-wise sin.
		
		See numpy.sin for more information.
	**/
	public function sin():Dynamic;
	/**
		Element-wise sinh.
		
		See numpy.sinh for more information.
	**/
	public function sinh():Dynamic;
	/**
		Element-wise sqrt.
		
		See numpy.sqrt for more information.
	**/
	public function sqrt():Dynamic;
	/**
		Sum the matrix elements over a given axis.
		
		Parameters
		----------
		axis : {-2, -1, 0, 1, None} optional
		    Axis along which the sum is computed. The default is to
		    compute the sum of all the matrix elements, returning a scalar
		    (i.e. `axis` = `None`).
		dtype : dtype, optional
		    The type of the returned matrix and of the accumulator in which
		    the elements are summed.  The dtype of `a` is used by default
		    unless `a` has an integer dtype of less precision than the default
		    platform integer.  In that case, if `a` is signed then the platform
		    integer is used while if `a` is unsigned then an unsigned integer
		    of the same precision as the platform integer is used.
		
		    .. versionadded: 0.18.0
		
		out : np.matrix, optional
		    Alternative output matrix in which to place the result. It must
		    have the same shape as the expected output, but the type of the
		    output values will be cast if necessary.
		
		    .. versionadded: 0.18.0
		
		Returns
		-------
		sum_along_axis : np.matrix
		    A matrix with the same shape as `self`, with the specified
		    axis removed.
		
		See Also
		--------
		np.matrix.sum : NumPy's implementation of 'sum' for matrices
	**/
	public function sum(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Element-wise tan.
		
		See numpy.tan for more information.
	**/
	public function tan():Dynamic;
	/**
		Element-wise tanh.
		
		See numpy.tanh for more information.
	**/
	public function tanh():Dynamic;
	/**
		Return a dense ndarray representation of this matrix.
		
		Parameters
		----------
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in C (row-major)
		    or Fortran (column-major) order in memory. The default
		    is 'None', indicating the NumPy default of C-ordered.
		    Cannot be specified in conjunction with the `out`
		    argument.
		
		out : ndarray, 2-dimensional, optional
		    If specified, uses this array as the output buffer
		    instead of allocating a new array to return. The provided
		    array must have the same shape and dtype as the sparse
		    matrix on which you are calling the method. For most
		    sparse types, `out` is required to be memory contiguous
		    (either C or Fortran ordered).
		
		Returns
		-------
		arr : ndarray, 2-dimensional
		    An array with the same shape and containing the same
		    data represented by the sparse matrix, with the requested
		    memory order. If `out` was passed, the same object is
		    returned after being modified in-place to contain the
		    appropriate values.
	**/
	public function toarray(?order:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Convert this matrix to Block Sparse Row format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant bsr_matrix.
		
		When blocksize=(R, C) is provided, it will be used for construction of
		the bsr_matrix.
	**/
	public function tobsr(?blocksize:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Convert this matrix to COOrdinate format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant coo_matrix.
	**/
	public function tocoo(?copy:Dynamic):Dynamic;
	/**
		Convert this matrix to Compressed Sparse Column format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant csc_matrix.
	**/
	public function tocsc(?copy:Dynamic):Dynamic;
	/**
		Convert this matrix to Compressed Sparse Row format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant csr_matrix.
	**/
	public function tocsr(?copy:Dynamic):Dynamic;
	/**
		Return a dense matrix representation of this matrix.
		
		Parameters
		----------
		order : {'C', 'F'}, optional
		    Whether to store multi-dimensional data in C (row-major)
		    or Fortran (column-major) order in memory. The default
		    is 'None', indicating the NumPy default of C-ordered.
		    Cannot be specified in conjunction with the `out`
		    argument.
		
		out : ndarray, 2-dimensional, optional
		    If specified, uses this array (or `numpy.matrix`) as the
		    output buffer instead of allocating a new array to
		    return. The provided array must have the same shape and
		    dtype as the sparse matrix on which you are calling the
		    method.
		
		Returns
		-------
		arr : numpy.matrix, 2-dimensional
		    A NumPy matrix object with the same shape and containing
		    the same data represented by the sparse matrix, with the
		    requested memory order. If `out` was passed and was an
		    array (rather than a `numpy.matrix`), it will be filled
		    with the appropriate values and returned wrapped in a
		    `numpy.matrix` object that shares the same memory.
	**/
	public function todense(?order:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Convert this matrix to sparse DIAgonal format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant dia_matrix.
	**/
	public function todia(?copy:Dynamic):Dynamic;
	/**
		Convert this matrix to Dictionary Of Keys format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant dok_matrix.
	**/
	public function todok(?copy:Dynamic):Dynamic;
	/**
		Convert this matrix to LInked List format.
		
		With copy=False, the data/indices may be shared between this matrix and
		the resultant lil_matrix.
	**/
	public function tolil(?copy:Dynamic):Dynamic;
	/**
		Reverses the dimensions of the sparse matrix.
		
		Parameters
		----------
		axes : None, optional
		    This argument is in the signature *solely* for NumPy
		    compatibility reasons. Do not pass in anything except
		    for the default value.
		copy : bool, optional
		    Indicates whether or not attributes of `self` should be
		    copied whenever possible. The degree to which attributes
		    are copied varies depending on the type of sparse matrix
		    being used.
		
		Returns
		-------
		p : `self` with the dimensions reversed.
		
		See Also
		--------
		np.matrix.transpose : NumPy's implementation of 'transpose'
		                      for matrices
	**/
	public function transpose(?axes:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Element-wise trunc.
		
		See numpy.trunc for more information.
	**/
	public function trunc():Dynamic;
}