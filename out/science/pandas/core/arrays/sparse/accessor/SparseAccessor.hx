/* This file is generated, do not edit! */
package pandas.core.arrays.sparse.accessor;
@:pythonImport("pandas.core.arrays.sparse.accessor", "SparseAccessor") extern class SparseAccessor {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?data:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Add accessors to cls from the delegate class.
		
		Parameters
		----------
		cls
		    Class to add the methods/properties to.
		delegate
		    Class to get methods/properties and doc-strings.
		accessors : list of str
		    List of accessors to add.
		typ : {'property', 'method'}
		overwrite : bool, default False
		    Overwrite the method/property in the target class if it exists.
	**/
	static public function _add_delegate_accessors(delegate:Dynamic, accessors:Dynamic, typ:Dynamic, ?overwrite:Dynamic):Dynamic;
	public function _delegate_method(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_get(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _delegate_property_set(name:Dynamic, value:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _validate(data:Dynamic):Dynamic;
	static public var _validation_msg : Dynamic;
	/**
		The percent of non- ``fill_value`` points, as decimal.
		
		Examples
		--------
		>>> s = SparseArray([0, 0, 1, 1, 1], fill_value=0)
		>>> s.density
		0.6
	**/
	public var density : Dynamic;
	/**
		Elements in `data` that are `fill_value` are not stored.
		
		For memory savings, this should be the most common value in the array.
	**/
	public var fill_value : Dynamic;
	/**
		Create a Series with sparse values from a scipy.sparse.coo_matrix.
		
		Parameters
		----------
		A : scipy.sparse.coo_matrix
		dense_index : bool, default False
		    If False (default), the SparseSeries index consists of only the
		    coords of the non-null entries of the original coo_matrix.
		    If True, the SparseSeries index consists of the full sorted
		    (row, col) coordinates of the coo_matrix.
		
		Returns
		-------
		s : Series
		    A Series with sparse values.
		
		Examples
		--------
		>>> from scipy import sparse
		
		>>> A = sparse.coo_matrix(
		...     ([3.0, 1.0, 2.0], ([1, 0, 0], [0, 2, 3])), shape=(3, 4)
		... )
		>>> A
		<3x4 sparse matrix of type '<class 'numpy.float64'>'
		with 3 stored elements in COOrdinate format>
		
		>>> A.todense()
		matrix([[0., 0., 1., 2.],
		[3., 0., 0., 0.],
		[0., 0., 0., 0.]])
		
		>>> ss = pd.Series.sparse.from_coo(A)
		>>> ss
		0  2    1.0
		   3    2.0
		1  0    3.0
		dtype: Sparse[float64, nan]
	**/
	static public function from_coo(A:Dynamic, ?dense_index:Dynamic):pandas.Series;
	/**
		The number of non- ``fill_value`` points.
		
		Examples
		--------
		>>> s = SparseArray([0, 0, 1, 1, 1], fill_value=0)
		>>> s.npoints
		3
	**/
	public var npoints : Dynamic;
	/**
		An ndarray containing the non- ``fill_value`` values.
		
		Examples
		--------
		>>> s = SparseArray([0, 0, 1, 0, 2], fill_value=0)
		>>> s.sp_values
		array([1, 2])
	**/
	public var sp_values : Dynamic;
	/**
		Create a scipy.sparse.coo_matrix from a Series with MultiIndex.
		
		Use row_levels and column_levels to determine the row and column
		coordinates respectively. row_levels and column_levels are the names
		(labels) or numbers of the levels. {row_levels, column_levels} must be
		a partition of the MultiIndex level names (or numbers).
		
		Parameters
		----------
		row_levels : tuple/list
		column_levels : tuple/list
		sort_labels : bool, default False
		    Sort the row and column labels before forming the sparse matrix.
		    When `row_levels` and/or `column_levels` refer to a single level,
		    set to `True` for a faster execution.
		
		Returns
		-------
		y : scipy.sparse.coo_matrix
		rows : list (row labels)
		columns : list (column labels)
		
		Examples
		--------
		>>> s = pd.Series([3.0, np.nan, 1.0, 3.0, np.nan, np.nan])
		>>> s.index = pd.MultiIndex.from_tuples(
		...     [
		...         (1, 2, "a", 0),
		...         (1, 2, "a", 1),
		...         (1, 1, "b", 0),
		...         (1, 1, "b", 1),
		...         (2, 1, "b", 0),
		...         (2, 1, "b", 1)
		...     ],
		...     names=["A", "B", "C", "D"],
		... )
		>>> s
		A  B  C  D
		1  2  a  0    3.0
		         1    NaN
		   1  b  0    1.0
		         1    3.0
		2  1  b  0    NaN
		         1    NaN
		dtype: float64
		
		>>> ss = s.astype("Sparse")
		>>> ss
		A  B  C  D
		1  2  a  0    3.0
		         1    NaN
		   1  b  0    1.0
		         1    3.0
		2  1  b  0    NaN
		         1    NaN
		dtype: Sparse[float64, nan]
		
		>>> A, rows, columns = ss.sparse.to_coo(
		...     row_levels=["A", "B"], column_levels=["C", "D"], sort_labels=True
		... )
		>>> A
		<3x4 sparse matrix of type '<class 'numpy.float64'>'
		with 3 stored elements in COOrdinate format>
		>>> A.todense()
		matrix([[0., 0., 1., 3.],
		[3., 0., 0., 0.],
		[0., 0., 0., 0.]])
		
		>>> rows
		[(1, 1), (1, 2), (2, 1)]
		>>> columns
		[('a', 0), ('a', 1), ('b', 0), ('b', 1)]
	**/
	public function to_coo(?row_levels:Dynamic, ?column_levels:Dynamic, ?sort_labels:Dynamic):Dynamic;
	/**
		Convert a Series from sparse values to dense.
		
		.. versionadded:: 0.25.0
		
		Returns
		-------
		Series:
		    A Series with the same values, stored as a dense array.
		
		Examples
		--------
		>>> series = pd.Series(pd.arrays.SparseArray([0, 1, 0]))
		>>> series
		0    0
		1    1
		2    0
		dtype: Sparse[int64, 0]
		
		>>> series.sparse.to_dense()
		0    0
		1    1
		2    0
		dtype: int64
	**/
	public function to_dense():Dynamic;
}