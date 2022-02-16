/* This file is generated, do not edit! */
package pandas.core.base;
@:pythonImport("pandas.core.base", "IndexOpsMixin") extern class IndexOpsMixin {
	/**
		Return the transpose, which is by definition self.
	**/
	public var T : Dynamic;
	public function __add__(other:Dynamic):Dynamic;
	public function __and__(other:Dynamic):Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __array_priority__ : Dynamic;
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
	public function __divmod__(other:Dynamic):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(other:Dynamic):Dynamic;
	public function __floordiv__(other:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(other:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(other:Dynamic):Dynamic;
	static public var __hash__ : Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return an iterator of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		iterator
	**/
	public function __iter__():Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(other:Dynamic):Dynamic;
	public function __len__():Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(other:Dynamic):Dynamic;
	public function __mod__(other:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	public function __mul__(other:Dynamic):Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(other:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __or__(other:Dynamic):Dynamic;
	public function __pow__(other:Dynamic):Dynamic;
	public function __radd__(other:Dynamic):Dynamic;
	public function __rand__(other:Dynamic):Dynamic;
	public function __rdivmod__(other:Dynamic):Dynamic;
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
	public function __rfloordiv__(other:Dynamic):Dynamic;
	public function __rmod__(other:Dynamic):Dynamic;
	public function __rmul__(other:Dynamic):Dynamic;
	public function __ror__(other:Dynamic):Dynamic;
	public function __rpow__(other:Dynamic):Dynamic;
	public function __rsub__(other:Dynamic):Dynamic;
	public function __rtruediv__(other:Dynamic):Dynamic;
	public function __rxor__(other:Dynamic):Dynamic;
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
	public function __xor__(other:Dynamic):Dynamic;
	public function _arith_method(other:Dynamic, op:Dynamic):Dynamic;
	public function _cmp_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		Construct an appropriately-wrapped result from the ArrayLike result
		of an arithmetic-like operation.
	**/
	public function _construct_result(result:Dynamic, name:Dynamic):Dynamic;
	public function _duplicated(?keep:Dynamic):Dynamic;
	static public var _hidden_attrs : Dynamic;
	public function _logical_method(other:Dynamic, op:Dynamic):Dynamic;
	/**
		An internal function that maps values using the input
		correspondence (which can be a dict, Series, or function).
		
		Parameters
		----------
		mapper : function, dict, or Series
		    The input correspondence object
		na_action : {None, 'ignore'}
		    If 'ignore', propagate NA values, without passing them to the
		    mapping function
		
		Returns
		-------
		Union[Index, MultiIndex], inferred
		    The output of the mapping function applied to the index.
		    If the function returns a tuple with more than one element
		    a MultiIndex will be returned.
	**/
	public function _map_values(mapper:Dynamic, ?na_action:Dynamic):Dynamic;
	/**
		Memory usage of the values.
		
		Parameters
		----------
		deep : bool, default False
		    Introspect the data deeply, interrogate
		    `object` dtypes for system-level memory consumption.
		
		Returns
		-------
		bytes used
		
		See Also
		--------
		numpy.ndarray.nbytes : Total bytes consumed by the elements of the
		    array.
		
		Notes
		-----
		Memory usage does not include memory consumed by elements that
		are not components of the array if deep=False or if used on PyPy
	**/
	public function _memory_usage(?deep:Dynamic):Dynamic;
	/**
		Perform the reduction type operation if we can.
	**/
	public function _reduce(op:Dynamic, name:Dynamic, ?axis:Dynamic, ?skipna:Dynamic, ?numeric_only:Dynamic, ?filter_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	public var _values : Dynamic;
	/**
		Return int position of the largest value in the Series.
		
		If the maximum is achieved in multiple locations,
		the first row position is returned.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		int
		    Row position of the maximum value.
		
		See Also
		--------
		Series.argmax : Return position of the maximum value.
		Series.argmin : Return position of the minimum value.
		numpy.ndarray.argmax : Equivalent method for numpy arrays.
		Series.idxmax : Return index label of the maximum values.
		Series.idxmin : Return index label of the minimum values.
		
		Examples
		--------
		Consider dataset containing cereal calories
		
		>>> s = pd.Series({'Corn Flakes': 100.0, 'Almond Delight': 110.0,
		...                'Cinnamon Toast Crunch': 120.0, 'Cocoa Puff': 110.0})
		>>> s
		Corn Flakes              100.0
		Almond Delight           110.0
		Cinnamon Toast Crunch    120.0
		Cocoa Puff               110.0
		dtype: float64
		
		>>> s.argmax()
		2
		>>> s.argmin()
		0
		
		The maximum cereal calories is the third element and
		the minimum cereal calories is the first element,
		since series is zero-indexed.
	**/
	public function argmax(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return int position of the smallest value in the Series.
		
		If the minimum is achieved in multiple locations,
		the first row position is returned.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		int
		    Row position of the minimum value.
		
		See Also
		--------
		Series.argmin : Return position of the minimum value.
		Series.argmax : Return position of the maximum value.
		numpy.ndarray.argmin : Equivalent method for numpy arrays.
		Series.idxmax : Return index label of the maximum values.
		Series.idxmin : Return index label of the minimum values.
		
		Examples
		--------
		Consider dataset containing cereal calories
		
		>>> s = pd.Series({'Corn Flakes': 100.0, 'Almond Delight': 110.0,
		...                'Cinnamon Toast Crunch': 120.0, 'Cocoa Puff': 110.0})
		>>> s
		Corn Flakes              100.0
		Almond Delight           110.0
		Cinnamon Toast Crunch    120.0
		Cocoa Puff               110.0
		dtype: float64
		
		>>> s.argmax()
		2
		>>> s.argmin()
		0
		
		The maximum cereal calories is the third element and
		the minimum cereal calories is the first element,
		since series is zero-indexed.
	**/
	public function argmin(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The ExtensionArray of the data backing this Series or Index.
		
		Returns
		-------
		ExtensionArray
		    An ExtensionArray of the values stored within. For extension
		    types, this is the actual array. For NumPy native types, this
		    is a thin (no copy) wrapper around :class:`numpy.ndarray`.
		
		    ``.array`` differs ``.values`` which may require converting the
		    data to a different form.
		
		See Also
		--------
		Index.to_numpy : Similar method that always returns a NumPy array.
		Series.to_numpy : Similar method that always returns a NumPy array.
		
		Notes
		-----
		This table lays out the different array types for each extension
		dtype within pandas.
		
		================== =============================
		dtype              array type
		================== =============================
		category           Categorical
		period             PeriodArray
		interval           IntervalArray
		IntegerNA          IntegerArray
		string             StringArray
		boolean            BooleanArray
		datetime64[ns, tz] DatetimeArray
		================== =============================
		
		For any 3rd-party extension types, the array type will be an
		ExtensionArray.
		
		For all remaining dtypes ``.array`` will be a
		:class:`arrays.NumpyExtensionArray` wrapping the actual ndarray
		stored within. If you absolutely need a NumPy array (possibly with
		copying / coercing data), then use :meth:`Series.to_numpy` instead.
		
		Examples
		--------
		For regular NumPy types like int, and float, a PandasArray
		is returned.
		
		>>> pd.Series([1, 2, 3]).array
		<PandasArray>
		[1, 2, 3]
		Length: 3, dtype: int64
		
		For extension types, like Categorical, the actual ExtensionArray
		is returned
		
		>>> ser = pd.Series(pd.Categorical(['a', 'b', 'a']))
		>>> ser.array
		['a', 'b', 'a']
		Categories (2, object): ['a', 'b']
	**/
	public var array : Dynamic;
	public function drop_duplicates(?keep:Dynamic):Dynamic;
	public var dtype : Dynamic;
	public var empty : Dynamic;
	/**
		Encode the object as an enumerated type or categorical variable.
		
		This method is useful for obtaining a numeric representation of an
		array when all that matters is identifying distinct values. `factorize`
		is available as both a top-level function :func:`pandas.factorize`,
		and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
		
		Parameters
		----------
		sort : bool, default False
		    Sort `uniques` and shuffle `codes` to maintain the
		    relationship.
		
		na_sentinel : int or None, default -1
		    Value to mark "not found". If None, will not drop the NaN
		    from the uniques of the values.
		
		    .. versionchanged:: 1.1.2
		
		Returns
		-------
		codes : ndarray
		    An integer ndarray that's an indexer into `uniques`.
		    ``uniques.take(codes)`` will have the same values as `values`.
		uniques : ndarray, Index, or Categorical
		    The unique valid values. When `values` is Categorical, `uniques`
		    is a Categorical. When `values` is some other pandas object, an
		    `Index` is returned. Otherwise, a 1-D ndarray is returned.
		
		    .. note::
		
		       Even if there's a missing value in `values`, `uniques` will
		       *not* contain an entry for it.
		
		See Also
		--------
		cut : Discretize continuous-valued array.
		unique : Find the unique value in an array.
		
		Notes
		-----
		Reference :ref:`the user guide <reshaping.factorize>` for more examples.
		
		Examples
		--------
		These examples all show factorize as a top-level method like
		``pd.factorize(values)``. The results are identical for methods like
		:meth:`Series.factorize`.
		
		>>> codes, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'])
		>>> codes
		array([0, 0, 1, 2, 0]...)
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		With ``sort=True``, the `uniques` will be sorted, and `codes` will be
		shuffled so that the relationship is the maintained.
		
		>>> codes, uniques = pd.factorize(['b', 'b', 'a', 'c', 'b'], sort=True)
		>>> codes
		array([1, 1, 0, 2, 1]...)
		>>> uniques
		array(['a', 'b', 'c'], dtype=object)
		
		Missing values are indicated in `codes` with `na_sentinel`
		(``-1`` by default). Note that missing values are never
		included in `uniques`.
		
		>>> codes, uniques = pd.factorize(['b', None, 'a', 'c', 'b'])
		>>> codes
		array([ 0, -1,  1,  2,  0]...)
		>>> uniques
		array(['b', 'a', 'c'], dtype=object)
		
		Thus far, we've only factorized lists (which are internally coerced to
		NumPy arrays). When factorizing pandas objects, the type of `uniques`
		will differ. For Categoricals, a `Categorical` is returned.
		
		>>> cat = pd.Categorical(['a', 'a', 'c'], categories=['a', 'b', 'c'])
		>>> codes, uniques = pd.factorize(cat)
		>>> codes
		array([0, 0, 1]...)
		>>> uniques
		['a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Notice that ``'b'`` is in ``uniques.categories``, despite not being
		present in ``cat.values``.
		
		For all other pandas objects, an Index of the appropriate type is
		returned.
		
		>>> cat = pd.Series(['a', 'a', 'c'])
		>>> codes, uniques = pd.factorize(cat)
		>>> codes
		array([0, 0, 1]...)
		>>> uniques
		Index(['a', 'c'], dtype='object')
		
		If NaN is in the values, and we want to include NaN in the uniques of the
		values, it can be achieved by setting ``na_sentinel=None``.
		
		>>> values = np.array([1, 2, 1, np.nan])
		>>> codes, uniques = pd.factorize(values)  # default: na_sentinel=-1
		>>> codes
		array([ 0,  1,  0, -1])
		>>> uniques
		array([1., 2.])
		
		>>> codes, uniques = pd.factorize(values, na_sentinel=None)
		>>> codes
		array([0, 1, 0, 2])
		>>> uniques
		array([ 1.,  2., nan])
	**/
	public function factorize(?sort:Dynamic, ?na_sentinel:Dynamic):numpy.Ndarray;
	/**
		Return True if there are any NaNs.
		
		Enables various performance speedups.
	**/
	public var hasnans : Dynamic;
	/**
		Return boolean if values in the object are
		monotonic_increasing.
		
		Returns
		-------
		bool
	**/
	public var is_monotonic : Dynamic;
	/**
		Return boolean if values in the object are
		monotonic_decreasing.
		
		Returns
		-------
		bool
	**/
	public var is_monotonic_decreasing : Dynamic;
	/**
		Alias for is_monotonic.
	**/
	public var is_monotonic_increasing : Dynamic;
	/**
		Return boolean if values in the object are unique.
		
		Returns
		-------
		bool
	**/
	public var is_unique : Dynamic;
	public function isna():Dynamic;
	/**
		Return the first element of the underlying data as a Python scalar.
		
		Returns
		-------
		scalar
		    The first element of %(klass)s.
		
		Raises
		------
		ValueError
		    If the data is not length-1.
	**/
	public function item():Dynamic;
	/**
		Return the maximum value of the Index.
		
		Parameters
		----------
		axis : int, optional
		    For compatibility with NumPy. Only 0 or None are allowed.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		scalar
		    Maximum value.
		
		See Also
		--------
		Index.min : Return the minimum value in an Index.
		Series.max : Return the maximum value in a Series.
		DataFrame.max : Return the maximum values in a DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index([3, 2, 1])
		>>> idx.max()
		3
		
		>>> idx = pd.Index(['c', 'b', 'a'])
		>>> idx.max()
		'c'
		
		For a MultiIndex, the maximum is determined lexicographically.
		
		>>> idx = pd.MultiIndex.from_product([('a', 'b'), (2, 1)])
		>>> idx.max()
		('b', 2)
	**/
	public function max(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the minimum value of the Index.
		
		Parameters
		----------
		axis : {None}
		    Dummy argument for consistency with Series.
		skipna : bool, default True
		    Exclude NA/null values when showing the result.
		*args, **kwargs
		    Additional arguments and keywords for compatibility with NumPy.
		
		Returns
		-------
		scalar
		    Minimum value.
		
		See Also
		--------
		Index.max : Return the maximum value of the object.
		Series.min : Return the minimum value in a Series.
		DataFrame.min : Return the minimum values in a DataFrame.
		
		Examples
		--------
		>>> idx = pd.Index([3, 2, 1])
		>>> idx.min()
		1
		
		>>> idx = pd.Index(['c', 'b', 'a'])
		>>> idx.min()
		'a'
		
		For a MultiIndex, the minimum is determined lexicographically.
		
		>>> idx = pd.MultiIndex.from_product([('a', 'b'), (2, 1)])
		>>> idx.min()
		('a', 1)
	**/
	public function min(?axis:Dynamic, ?skipna:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the number of bytes in the underlying data.
	**/
	public var nbytes : Dynamic;
	/**
		Number of dimensions of the underlying data, by definition 1.
	**/
	public var ndim : Dynamic;
	/**
		Return number of unique elements in the object.
		
		Excludes NA values by default.
		
		Parameters
		----------
		dropna : bool, default True
		    Don't include NaN in the count.
		
		Returns
		-------
		int
		
		See Also
		--------
		DataFrame.nunique: Method nunique for DataFrame.
		Series.count: Count non-NA/null observations in the Series.
		
		Examples
		--------
		>>> s = pd.Series([1, 3, 5, 7, 7])
		>>> s
		0    1
		1    3
		2    5
		3    7
		4    7
		dtype: int64
		
		>>> s.nunique()
		4
	**/
	public function nunique(?dropna:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		Find the indices into a sorted Index `self` such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `self` would be preserved.
		
		.. note::
		
		    The Index *must* be monotonically sorted, otherwise
		    wrong locations will likely be returned. Pandas does *not*
		    check this for you.
		
		Parameters
		----------
		value : array-like or scalar
		    Values to insert into `self`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array-like, optional
		    Optional array of integer indices that sort `self` into ascending
		    order. They are typically the result of ``np.argsort``.
		
		Returns
		-------
		int or array of int
		    A scalar or array of insertion points with the
		    same shape as `value`.
		
		See Also
		--------
		sort_values : Sort by the values along either axis.
		numpy.searchsorted : Similar method from NumPy.
		
		Notes
		-----
		Binary search is used to find the required insertion points.
		
		Examples
		--------
		>>> ser = pd.Series([1, 2, 3])
		>>> ser
		0    1
		1    2
		2    3
		dtype: int64
		
		>>> ser.searchsorted(4)
		3
		
		>>> ser.searchsorted([0, 4])
		array([0, 3])
		
		>>> ser.searchsorted([1, 3], side='left')
		array([0, 2])
		
		>>> ser.searchsorted([1, 3], side='right')
		array([1, 3])
		
		>>> ser = pd.Series(pd.to_datetime(['3/11/2000', '3/12/2000', '3/13/2000']))
		>>> ser
		0   2000-03-11
		1   2000-03-12
		2   2000-03-13
		dtype: datetime64[ns]
		
		>>> ser.searchsorted('3/14/2000')
		3
		
		>>> ser = pd.Categorical(
		...     ['apple', 'bread', 'bread', 'cheese', 'milk'], ordered=True
		... )
		>>> ser
		['apple', 'bread', 'bread', 'cheese', 'milk']
		Categories (4, object): ['apple' < 'bread' < 'cheese' < 'milk']
		
		>>> ser.searchsorted('bread')
		1
		
		>>> ser.searchsorted(['bread'], side='right')
		array([3])
		
		If the values are not monotonically sorted, wrong locations
		may be returned:
		
		>>> ser = pd.Series([2, 1, 3])
		>>> ser
		0    2
		1    1
		2    3
		dtype: int64
		
		>>> ser.searchsorted(1)  # doctest: +SKIP
		0  # wrong result, correct would be 1
	**/
	public function searchsorted(value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Return a tuple of the shape of the underlying data.
	**/
	public var shape : Dynamic;
	/**
		Return the number of elements in the underlying data.
	**/
	public var size : Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
		
		See Also
		--------
		numpy.ndarray.tolist : Return the array as an a.ndim-levels deep
		    nested list of Python scalars.
	**/
	public function to_list():Dynamic;
	/**
		A NumPy ndarray representing the values in this Series or Index.
		
		Parameters
		----------
		dtype : str or numpy.dtype, optional
		    The dtype to pass to :meth:`numpy.asarray`.
		copy : bool, default False
		    Whether to ensure that the returned value is not a view on
		    another array. Note that ``copy=False`` does not *ensure* that
		    ``to_numpy()`` is no-copy. Rather, ``copy=True`` ensure that
		    a copy is made, even if not strictly necessary.
		na_value : Any, optional
		    The value to use for missing values. The default value depends
		    on `dtype` and the type of the array.
		
		    .. versionadded:: 1.0.0
		
		**kwargs
		    Additional keywords passed through to the ``to_numpy`` method
		    of the underlying array (for extension arrays).
		
		    .. versionadded:: 1.0.0
		
		Returns
		-------
		numpy.ndarray
		
		See Also
		--------
		Series.array : Get the actual data stored within.
		Index.array : Get the actual data stored within.
		DataFrame.to_numpy : Similar method for DataFrame.
		
		Notes
		-----
		The returned array will be the same up to equality (values equal
		in `self` will be equal in the returned array; likewise for values
		that are not equal). When `self` contains an ExtensionArray, the
		dtype may be different. For example, for a category-dtype Series,
		``to_numpy()`` will return a NumPy array and the categorical dtype
		will be lost.
		
		For NumPy dtypes, this will be a reference to the actual data stored
		in this Series or Index (assuming ``copy=False``). Modifying the result
		in place will modify the data stored in the Series or Index (not that
		we recommend doing that).
		
		For extension types, ``to_numpy()`` *may* require copying data and
		coercing the result to a NumPy type (possibly object), which may be
		expensive. When you need a no-copy reference to the underlying data,
		:attr:`Series.array` should be used instead.
		
		This table lays out the different dtypes and default return types of
		``to_numpy()`` for various dtypes within pandas.
		
		================== ================================
		dtype              array type
		================== ================================
		category[T]        ndarray[T] (same dtype as input)
		period             ndarray[object] (Periods)
		interval           ndarray[object] (Intervals)
		IntegerNA          ndarray[object]
		datetime64[ns]     datetime64[ns]
		datetime64[ns, tz] ndarray[object] (Timestamps)
		================== ================================
		
		Examples
		--------
		>>> ser = pd.Series(pd.Categorical(['a', 'b', 'a']))
		>>> ser.to_numpy()
		array(['a', 'b', 'a'], dtype=object)
		
		Specify the `dtype` to control how datetime-aware data is represented.
		Use ``dtype=object`` to return an ndarray of pandas :class:`Timestamp`
		objects, each with the correct ``tz``.
		
		>>> ser = pd.Series(pd.date_range('2000', periods=2, tz="CET"))
		>>> ser.to_numpy(dtype=object)
		array([Timestamp('2000-01-01 00:00:00+0100', tz='CET'),
		       Timestamp('2000-01-02 00:00:00+0100', tz='CET')],
		      dtype=object)
		
		Or ``dtype='datetime64[ns]'`` to return an ndarray of native
		datetime64 values. The values are converted to UTC and the timezone
		info is dropped.
		
		>>> ser.to_numpy(dtype="datetime64[ns]")
		... # doctest: +ELLIPSIS
		array(['1999-12-31T23:00:00.000000000', '2000-01-01T23:00:00...'],
		      dtype='datetime64[ns]')
	**/
	public function to_numpy(?dtype:Dynamic, ?copy:Dynamic, ?na_value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a list of the values.
		
		These are each a scalar type, which is a Python scalar
		(for str, int, float) or a pandas scalar
		(for Timestamp/Timedelta/Interval/Period)
		
		Returns
		-------
		list
		
		See Also
		--------
		numpy.ndarray.tolist : Return the array as an a.ndim-levels deep
		    nested list of Python scalars.
	**/
	public function tolist():Dynamic;
	/**
		Return the transpose, which is by definition self.
		
		Returns
		-------
		%(klass)s
	**/
	public function transpose(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function unique():Dynamic;
	/**
		Return a Series containing counts of unique values.
		
		The resulting object will be in descending order so that the
		first element is the most frequently-occurring element.
		Excludes NA values by default.
		
		Parameters
		----------
		normalize : bool, default False
		    If True then the object returned will contain the relative
		    frequencies of the unique values.
		sort : bool, default True
		    Sort by frequencies.
		ascending : bool, default False
		    Sort in ascending order.
		bins : int, optional
		    Rather than count values, group them into half-open bins,
		    a convenience for ``pd.cut``, only works with numeric data.
		dropna : bool, default True
		    Don't include counts of NaN.
		
		Returns
		-------
		Series
		
		See Also
		--------
		Series.count: Number of non-NA elements in a Series.
		DataFrame.count: Number of non-NA elements in a DataFrame.
		DataFrame.value_counts: Equivalent method on DataFrames.
		
		Examples
		--------
		>>> index = pd.Index([3, 1, 2, 3, 4, np.nan])
		>>> index.value_counts()
		3.0    2
		1.0    1
		2.0    1
		4.0    1
		dtype: int64
		
		With `normalize` set to `True`, returns the relative frequency by
		dividing all values by the sum of values.
		
		>>> s = pd.Series([3, 1, 2, 3, 4, np.nan])
		>>> s.value_counts(normalize=True)
		3.0    0.4
		1.0    0.2
		2.0    0.2
		4.0    0.2
		dtype: float64
		
		**bins**
		
		Bins can be useful for going from a continuous variable to a
		categorical variable; instead of counting unique
		apparitions of values, divide the index in the specified
		number of half-open bins.
		
		>>> s.value_counts(bins=3)
		(0.996, 2.0]    2
		(2.0, 3.0]      2
		(3.0, 4.0]      1
		dtype: int64
		
		**dropna**
		
		With `dropna` set to `False` we can also see NaN index values.
		
		>>> s.value_counts(dropna=False)
		3.0    2
		1.0    1
		2.0    1
		4.0    1
		NaN    1
		dtype: int64
	**/
	public function value_counts(?normalize:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
}