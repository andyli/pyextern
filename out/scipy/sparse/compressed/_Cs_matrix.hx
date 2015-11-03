/* This file is generated, do not edit! */
package scipy.sparse.compressed;
@:pythonImport("scipy.sparse.compressed", "_cs_matrix") extern class _Cs_matrix {
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
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function __rmul__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setitem__(index:Dynamic, x:Dynamic):Dynamic;
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
		apply the binary operation fn to two sparse matrices.
	**/
	public function _binopt(other:Dynamic, op:Dynamic):Dynamic;
	public function _boolean_index_to_array(i:Dynamic):Dynamic;
	public function _check_boolean(row:Dynamic, col:Dynamic):Dynamic;
	/**
		Process indices with Ellipsis. Returns modified index.
	**/
	public function _check_ellipsis(index:Dynamic):Dynamic;
	/**
		Copy data, with all nonzeros replaced with constant for binopt
		
		Adopts the dtype of const to avoid removing sign or magnitude before
		comparison.
		
		Warning: does not make a copy of indices and indptr
	**/
	public function _copy_with_const(const:Dynamic):Dynamic;
	/**
		Determine whether the matrix has sorted indices and no duplicates
		
		Returns
		    - True: if the above applies
		    - False: otherwise
		
		has_canonical_format implies has_sorted_indices, so if the latter flag
		is False, so will the former be; if the former is found True, the
		latter flag is also set.
	**/
	public function _cs_matrix__get_has_canonical_format():Dynamic;
	/**
		Determine whether the matrix has sorted indices
		
		Returns
		    - True: if the indices of the matrix are in sorted order
		    - False: otherwise
	**/
	public function _cs_matrix__get_sorted():Dynamic;
	public function _cs_matrix__set_has_canonical_format(val:Dynamic):Dynamic;
	public function _cs_matrix__set_sorted(val:Dynamic):Dynamic;
	public function _divide(other:Dynamic, ?true_divide:Dynamic, ?rdivide:Dynamic):Dynamic;
	/**
		Divide this matrix by a second sparse matrix.
	**/
	public function _divide_sparse(other:Dynamic):Dynamic;
	public function _get_dtype():Dynamic;
	public function _get_single_element(row:Dynamic, col:Dynamic):Dynamic;
	/**
		Returns a copy of the elements
		[i, start:stop:string] for row-oriented matrices
		[start:stop:string, i] for column-oriented matrices
	**/
	public function _get_slice(i:Dynamic, start:Dynamic, stop:Dynamic, stride:Dynamic, shape:Dynamic):Dynamic;
	/**
		Return a submatrix of this matrix (new matrix is created).
	**/
	public function _get_submatrix(slice0:Dynamic, slice1:Dynamic):Dynamic;
	public function _imag():Dynamic;
	public function _index_to_arrays(i:Dynamic, j:Dynamic):Dynamic;
	public function _inequality(other:Dynamic, op:Dynamic, op_name:Dynamic, bad_scalar_msg:Dynamic):Dynamic;
	/**
		Inserts new nonzero at each (i, j) with value x
		
		Here (i,j) index major and minor respectively.
		i, j and x must be non-empty, 1d arrays.
		Inserts each major group (e.g. all entries per row) at a time.
		Maintains has_sorted_indices property.
		Modifies i, j, x in place.
	**/
	public function _insert_many(i:Dynamic, j:Dynamic, x:Dynamic):Dynamic;
	public function _maximum_minimum(other:Dynamic, npop:Dynamic, op_name:Dynamic, dense_check:Dynamic):Dynamic;
	public function _min_or_max(axis:Dynamic, min_or_max:Dynamic):Dynamic;
	public function _min_or_max_axis(axis:Dynamic, min_or_max:Dynamic):Dynamic;
	/**
		Reduce nonzeros with a ufunc over the minor axis when non-empty
		
		Warning: this does not call sum_duplicates()
		
		Returns
		-------
		major_index : array of ints
		    Major indices where nonzero
		
		value : array of self.dtype
		    Reduce result for nonzeros in each major_index
	**/
	public function _minor_reduce(ufunc:Dynamic):Dynamic;
	public function _mul_multivector(other:Dynamic):Dynamic;
	public function _mul_scalar(other:Dynamic):Dynamic;
	public function _mul_sparse_matrix(other:Dynamic):Dynamic;
	public function _mul_vector(other:Dynamic):Dynamic;
	public function _process_toarray_args(order:Dynamic, out:Dynamic):Dynamic;
	public function _real():Dynamic;
	public function _set_dtype(newtype:Dynamic):Dynamic;
	/**
		Sets value at each (i, j) to x
		
		Here (i,j) index major and minor respectively.
	**/
	public function _set_many(i:Dynamic, j:Dynamic, x:Dynamic):Dynamic;
	/**
		take the member variables of other and assign them to self
	**/
	public function _set_self(other:Dynamic, ?copy:Dynamic):Dynamic;
	public function _setdiag(values:Dynamic, k:Dynamic):Dynamic;
	/**
		Given a slice object, use numpy arange to change it to a 1D
		array.
	**/
	public function _slicetoarange(j:Dynamic, shape:Dynamic):Dynamic;
	/**
		Parse index. Always return a tuple of the form (row, col).
		Where row/col is a integer, slice, or array of integers.
	**/
	public function _unpack_index(index:Dynamic):Dynamic;
	/**
		Returns a matrix with the same sparsity structure as self,
		but with different data.  By default the structure arrays
		(i.e. .indptr and .indices) are copied.
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
	/**
		check whether the matrix format is valid
		
		Parameters
		----------
		full_check : bool, optional
		    If `True`, rigorous check, O(N) operations. Otherwise
		    basic check, O(1) operations (default True).
	**/
	public function check_format(?full_check:Dynamic):Dynamic;
	public function conj():Dynamic;
	public function conjugate():Dynamic;
	public function copy():Dynamic;
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
		Remove zero entries from the matrix
		
		This is an *in place* operation
	**/
	public function eliminate_zeros():Dynamic;
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
		Get the count of explicitly-stored values (nonzeros)
		
		Parameters
		----------
		axis : {None, 0, 1}, optional
		    Select between the number of values across the whole matrix, in
		    each column, or in each row.
	**/
	public function getnnz(?axis:Dynamic):Dynamic;
	/**
		Returns a copy of row i of the matrix, as a (1 x n) sparse
		matrix (row vector).
	**/
	public function getrow(i:Dynamic):Dynamic;
	/**
		Determine whether the matrix has sorted indices and no duplicates
		
		Returns
		    - True: if the above applies
		    - False: otherwise
		
		has_canonical_format implies has_sorted_indices, so if the latter flag
		is False, so will the former be; if the former is found True, the
		latter flag is also set.
	**/
	public var has_canonical_format : Dynamic;
	/**
		Determine whether the matrix has sorted indices
		
		Returns
		    - True: if the indices of the matrix are in sorted order
		    - False: otherwise
	**/
	public var has_sorted_indices : Dynamic;
	/**
		Element-wise log1p.
		
		See numpy.log1p for more information.
	**/
	public function log1p():Dynamic;
	/**
		Maximum of the elements of this matrix.
		
		This takes all elements into account, not just the non-zero ones.
		
		Returns
		-------
		amax : self.dtype
		    Maximum element.
	**/
	public function max(?axis:Dynamic):Dynamic;
	public function maximum(other:Dynamic):Dynamic;
	/**
		Average the matrix over the given axis.  If the axis is None,
		average over both rows and columns, returning a scalar.
	**/
	public function mean(?axis:Dynamic):Dynamic;
	/**
		Minimum of the elements of this matrix.
		
		This takes all elements into account, not just the non-zero ones.
		
		Returns
		-------
		amin : self.dtype
		    Minimum element.
	**/
	public function min(?axis:Dynamic):Dynamic;
	public function minimum(other:Dynamic):Dynamic;
	/**
		Point-wise multiplication by another matrix, vector, or
		scalar.
	**/
	public function multiply(other:Dynamic):Dynamic;
	static public var ndim : Dynamic;
	/**
		Get the count of explicitly-stored values (nonzeros)
		
		Parameters
		----------
		axis : {None, 0, 1}, optional
		    Select between the number of values across the whole matrix, in
		    each column, or in each row.
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
		Remove empty space after all non-zero elements.
		        
	**/
	public function prune():Dynamic;
	/**
		Element-wise rad2deg.
		
		See numpy.rad2deg for more information.
	**/
	public function rad2deg():Dynamic;
	public function reshape(shape:Dynamic):Dynamic;
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
		Sort the indices of this matrix *in place*
		        
	**/
	public function sort_indices():Dynamic;
	/**
		Return a copy of this matrix with sorted indices
		        
	**/
	public function sorted_indices():Dynamic;
	/**
		Element-wise sqrt.
		
		See numpy.sqrt for more information.
	**/
	public function sqrt():Dynamic;
	/**
		Sum the matrix over the given axis.  If the axis is None, sum
		over both rows and columns, returning a scalar.
	**/
	public function sum(?axis:Dynamic):Dynamic;
	/**
		Eliminate duplicate matrix entries by adding them together
		
		The is an *in place* operation
	**/
	public function sum_duplicates():Dynamic;
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
		See the docstring for `spmatrix.toarray`.
	**/
	public function toarray(?order:Dynamic, ?out:Dynamic):Dynamic;
	public function tobsr(?blocksize:Dynamic):Dynamic;
	/**
		Return a COOrdinate representation of this matrix
		
		When copy=False the index and data arrays are not copied.
	**/
	public function tocoo(?copy:Dynamic):Dynamic;
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
	public function todia():Dynamic;
	public function todok():Dynamic;
	public function tolil():Dynamic;
	public function transpose():Dynamic;
	/**
		Element-wise trunc.
		
		See numpy.trunc for more information.
	**/
	public function trunc():Dynamic;
}