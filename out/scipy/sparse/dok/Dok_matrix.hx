/* This file is generated, do not edit! */
package scipy.sparse.dok;
@:pythonImport("scipy.sparse.dok", "dok_matrix") extern class Dok_matrix {
	public function __abs__():Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	static public var __array_priority__ : Dynamic;
	public function __bool__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		True if D has a key k, else False.
	**/
	public function __contains__(key:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	/**
		Delete self[key].
	**/
	public function __delitem__(key:Dynamic):Dynamic;
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
		If key=(i, j) is a pair of integers, return the corresponding
		element.  If either i or j is a slice or sequence, return a new sparse
		matrix with just these elements.
	**/
	public function __getitem__(index:Dynamic):Dynamic;
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
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __isub__(other:Dynamic):Dynamic;
	public function __iter__():Dynamic;
	public function __itruediv__(other:Dynamic):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	/**
		Return len(self).
	**/
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
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rdiv__(other:Dynamic):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__():Dynamic;
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
		Set self[key] to value.
	**/
	public function __setitem__(index:Dynamic, x:Dynamic):Dynamic;
	/**
		D.__sizeof__() -> size of D in memory, in bytes
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __truediv__(other:Dynamic):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _add_dense(other:Dynamic):Dynamic;
	public function _add_sparse(other:Dynamic):Dynamic;
	public function _boolean_index_to_array(i:Dynamic):Dynamic;
	public function _check_boolean(row:Dynamic, col:Dynamic):Dynamic;
	/**
		Process indices with Ellipsis. Returns modified index.
	**/
	public function _check_ellipsis(index:Dynamic):Dynamic;
	public function _divide(other:Dynamic, ?true_divide:Dynamic, ?rdivide:Dynamic):Dynamic;
	public function _getitem_ranges(i_indices:Dynamic, j_indices:Dynamic, shape:Dynamic):Dynamic;
	public function _imag():Dynamic;
	public function _index_to_arrays(i:Dynamic, j:Dynamic):Dynamic;
	public function _mul_multivector(other:Dynamic):Dynamic;
	public function _mul_scalar(other:Dynamic):Dynamic;
	public function _mul_sparse_matrix(other:Dynamic):Dynamic;
	public function _mul_vector(other:Dynamic):Dynamic;
	public function _process_toarray_args(order:Dynamic, out:Dynamic):Dynamic;
	public function _real():Dynamic;
	public function _rsub_dense(other:Dynamic):Dynamic;
	public function _setdiag(values:Dynamic, k:Dynamic):Dynamic;
	/**
		Given a slice object, use numpy arange to change it to a 1D
		array.
	**/
	public function _slicetoarange(j:Dynamic, shape:Dynamic):Dynamic;
	public function _sub_dense(other:Dynamic):Dynamic;
	public function _sub_sparse(other:Dynamic):Dynamic;
	/**
		Parse index. Always return a tuple of the form (row, col).
		Where row/col is a integer, slice, or array of integers.
	**/
	public function _unpack_index(index:Dynamic):Dynamic;
	/**
		An update method for dict data defined for direct access to
		`dok_matrix` data. Main purpose is to be used for effcient conversion
		from other spmatrix classes. Has no checking if `data` is valid.
	**/
	public function _update(data:Dynamic):Dynamic;
	/**
		Return this matrix in the passed sparse format.
		
		Parameters
		----------
		format : {str, None}
		    The desired sparse matrix format ("csr", "csc", "lil", "dok", ...)
		    or None for no conversion.
		copy : bool, optional
		    If True, the result is guaranteed to not share data with self.
		
		Returns
		-------
		A : This matrix in the passed sparse format.
	**/
	public function asformat(format:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Upcast matrix to a floating point format (if necessary)
	**/
	public function asfptype():Dynamic;
	/**
		Cast the matrix elements to a specified type.
		
		Parameters
		----------
		dtype : string or numpy dtype
		    Typecode or data-type to which to cast the data.
		casting : {'no', 'equiv', 'safe', 'same_kind', 'unsafe'}, optional
		    Controls what kind of data casting may occur.
		    Defaults to 'unsafe' for backwards compatibility.
		    'no' means the data types should not be cast at all.
		    'equiv' means only byte-order changes are allowed.
		    'safe' means only casts which can preserve values are allowed.
		    'same_kind' means only safe casts or casts within a kind,
		    like float64 to float32, are allowed.
		    'unsafe' means any data conversions may be done.
		copy : bool, optional
		    If `copy` is `False`, the result might share some memory with this
		    matrix. If `copy` is `True`, it is guaranteed that the result and
		    this matrix do not share any memory.
	**/
	public function astype(dtype:Dynamic, ?casting:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		D.clear() -> None.  Remove all items from D.
	**/
	public function clear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Element-wise complex conjugation.
		
		If the matrix is of non-complex data type and `copy` is False,
		this method does nothing and the data is not copied.
		
		Parameters
		----------
		copy : bool, optional
		    If True, the result is guaranteed to not share data with self.
		
		Returns
		-------
		A : The element-wise complex conjugate.
	**/
	public function conj(?copy:Dynamic):Dynamic;
	/**
		Return the conjugate transpose.
	**/
	public function conjtransp():Dynamic;
	/**
		Element-wise complex conjugation.
		
		If the matrix is of non-complex data type and `copy` is False,
		this method does nothing and the data is not copied.
		
		Parameters
		----------
		copy : bool, optional
		    If True, the result is guaranteed to not share data with self.
		
		Returns
		-------
		A : The element-wise complex conjugate.
	**/
	public function conjugate(?copy:Dynamic):Dynamic;
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
		Returns the k-th diagonal of the matrix.
		
		Parameters
		----------
		k : int, optional
		    Which diagonal to set, corresponding to elements a[i, i+k].
		    Default: 0 (the main diagonal).
		
		    .. versionadded:: 1.0
		
		See also
		--------
		numpy.diagonal : Equivalent numpy function.
		
		Examples
		--------
		>>> from scipy.sparse import csr_matrix
		>>> A = csr_matrix([[1, 2, 0], [0, 0, 3], [4, 0, 5]])
		>>> A.diagonal()
		array([1, 0, 5])
		>>> A.diagonal(k=1)
		array([2, 3])
	**/
	public function diagonal(?k:Dynamic):Dynamic;
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
	static public var format : Dynamic;
	/**
		Returns a new dict with keys from iterable and values equal to value.
	**/
	static public function fromkeys(iterable:Dynamic, ?value:Dynamic):Dynamic;
	/**
		This overrides the dict.get method, providing type checking
		but otherwise equivalent functionality.
	**/
	public function get(key:Dynamic, ?_default:Dynamic):Dynamic;
	/**
		Return the Hermitian transpose of this matrix.
		
		See Also
		--------
		np.matrix.getH : NumPy's implementation of `getH` for matrices
	**/
	public function getH():Dynamic;
	/**
		Get shape of a matrix.
	**/
	public function get_shape():Dynamic;
	/**
		Returns the j-th column as a (m x 1) DOK matrix.
	**/
	public function getcol(j:Dynamic):Dynamic;
	/**
		Format of a matrix representation as a string.
	**/
	public function getformat():Dynamic;
	/**
		Maximum number of elements to display when printed.
	**/
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
		Returns the i-th row as a (1 x n) DOK matrix.
	**/
	public function getrow(i:Dynamic):Dynamic;
	/**
		D.items() -> a set-like object providing a view on D's items
	**/
	public function items(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.keys() -> a set-like object providing a view on D's keys
	**/
	public function keys(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Element-wise maximum between this and another matrix.
	**/
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
		
		    .. versionadded:: 0.18.0
		
		out : np.matrix, optional
		    Alternative output matrix in which to place the result. It must
		    have the same shape as the expected output, but the type of the
		    output values will be cast if necessary.
		
		    .. versionadded:: 0.18.0
		
		Returns
		-------
		m : np.matrix
		
		See Also
		--------
		np.matrix.mean : NumPy's implementation of 'mean' for matrices
	**/
	public function mean(?axis:Dynamic, ?dtype:Dynamic, ?out:Dynamic):Dynamic;
	/**
		Element-wise minimum between this and another matrix.
	**/
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
		D.pop(k[,d]) -> v, remove specified key and return the corresponding value.
		If key is not found, d is returned if given, otherwise KeyError is raised
	**/
	public function pop(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		D.popitem() -> (k, v), remove and return some (key, value) pair as a
		2-tuple; but raise KeyError if D is empty.
	**/
	public function popitem(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Element-wise power.
	**/
	public function power(n:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		reshape(self, shape, order='C', copy=False)
		
		Gives a new shape to a sparse matrix without changing its data.
		
		Parameters
		----------
		shape : length-2 tuple of ints
		    The new shape should be compatible with the original shape.
		order : {'C', 'F'}, optional
		    Read the elements using this index order. 'C' means to read and
		    write the elements using C-like index order; e.g. read entire first
		    row, then second row, etc. 'F' means to read and write the elements
		    using Fortran-like index order; e.g. read entire first column, then
		    second column, etc.
		copy : bool, optional
		    Indicates whether or not attributes of self should be copied
		    whenever possible. The degree to which attributes are copied varies
		    depending on the type of sparse matrix being used.
		
		Returns
		-------
		reshaped_matrix : sparse matrix
		    A sparse matrix with the given `shape`, not necessarily of the same
		    format as the current object.
		
		See Also
		--------
		np.matrix.reshape : NumPy's implementation of 'reshape' for matrices
	**/
	public function reshape(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Resize the matrix in-place to dimensions given by ``shape``
		
		Any elements that lie within the new shape will remain at the same
		indices, while non-zero elements lying outside the new shape are
		removed.
		
		Parameters
		----------
		shape : (int, int)
		    number of rows and columns in the new matrix
		
		Notes
		-----
		The semantics are not identical to `numpy.ndarray.resize` or
		`numpy.resize`.  Here, the same data will be maintained at each index
		before and after reshape, if that index is within the new bounds.  In
		numpy, resizing maintains contiguity of the array, moving elements
		around in the logical matrix but not within a flattened representation.
		
		We give no guarantees about whether the underlying data attributes
		(arrays, etc.) will be modified in place or replaced with new objects.
	**/
	public function resize(?shape:python.VarArgs<Dynamic>):Dynamic;
	/**
		See `reshape`.
	**/
	public function set_shape(shape:Dynamic):Dynamic;
	/**
		D.setdefault(k[,d]) -> D.get(k,d), also set D[k]=d if k not in D
	**/
	public function setdefault(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Get shape of a matrix.
	**/
	public var shape : Dynamic;
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
		
		    .. versionadded:: 0.18.0
		
		out : np.matrix, optional
		    Alternative output matrix in which to place the result. It must
		    have the same shape as the expected output, but the type of the
		    output values will be cast if necessary.
		
		    .. versionadded:: 0.18.0
		
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
		D.update([E, ]**F) -> None.  Update D from dict/iterable E and F.
		If E is present and has a .keys() method, then does:  for k in E: D[k] = E[k]
		If E is present and lacks a .keys() method, then does:  for k, v in E: D[k] = v
		In either case, this is followed by: for k in F:  D[k] = F[k]
	**/
	public function update(val:Dynamic):Dynamic;
	/**
		D.values() -> an object providing a view on D's values
	**/
	public function values(args:haxe.extern.Rest<Dynamic>):Dynamic;
}