/* This file is generated, do not edit! */
package pandas.core.algorithms;
@:pythonImport("pandas.core.algorithms") extern class Algorithms_Module {
	static public function AnyArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DtypeObj(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function IndexLabel(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Literal(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function TakeIndexer(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check if we can use string hashtable instead of object hashtable.
		
		Parameters
		----------
		values : ndarray
		
		Returns
		-------
		str
	**/
	static public function _check_object_for_strings(values:Dynamic):Dynamic;
	static public var _diff_special : Dynamic;
	/**
		ensure that we are arraylike if not already
	**/
	static public function _ensure_arraylike(values:Dynamic):Dynamic;
	/**
		routine to ensure that our data is of the correct
		input dtype for lower-level routines
		
		This will coerce:
		- ints -> int64
		- uint -> uint64
		- bool -> uint8
		- datetimelike -> i8
		- datetime64tz -> i8 (in local tz)
		- categorical -> codes
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		
		Returns
		-------
		np.ndarray
	**/
	static public function _ensure_data(values:Dynamic):Dynamic;
	static public function _get_data_algo(values:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : np.ndarray
		
		Returns
		-------
		htable : HashTable subclass
		values : ndarray
	**/
	static public function _get_hashtable_algo(values:Dynamic):Dynamic;
	static public function _get_values_for_rank(values:Dynamic):Dynamic;
	static public var _hashtables : Dynamic;
	/**
		reverse of _ensure_data
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		dtype : np.dtype or ExtensionDtype
		original : AnyArrayLike
		
		Returns
		-------
		ExtensionArray or np.ndarray
	**/
	static public function _reconstruct_data(values:Dynamic, dtype:Dynamic, original:Dynamic):Dynamic;
	/**
		order ints before strings in 1d arrays, safe in py3
	**/
	static public function _sort_mixed(values:Dynamic):Dynamic;
	/**
		Convert array of tuples (1d) to array or array (2d).
		We need to keep the columns separately as they contain different types and
		nans (can't use `np.sort` as it may fail when str and nan are mixed in a
		column as types cannot be compared).
	**/
	static public function _sort_tuples(values:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	/**
		Perform array addition that checks for underflow and overflow.
		
		Performs the addition of an int64 array and an int64 integer (or array)
		but checks that they do not result in overflow first. For elements that
		are indicated to be NaN, whether or not there is overflow for that element
		is automatically ignored.
		
		Parameters
		----------
		arr : array addend.
		b : array or scalar addend.
		arr_mask : np.ndarray[bool] or None, default None
		    array indicating which elements to exclude from checking
		b_mask : np.ndarray[bool] or None, default None
		    array or scalar indicating which element(s) to exclude from checking
		
		Returns
		-------
		sum : An array for elements x + b for each element x in arr if b is
		      a scalar or an array for elements x + y for each element pair
		      (x, y) in (arr, b).
		
		Raises
		------
		OverflowError if any x + y exceeds the maximum or minimum int64 value.
	**/
	static public function checked_add_with_arr(arr:Dynamic, b:Dynamic, ?arr_mask:Dynamic, ?b_mask:Dynamic):Dynamic;
	/**
		provide concatenation of an array of arrays each of which is a single
		'normalized' dtypes (in that for example, if it's object, then it is a
		non-datetimelike and provide a combined dtype for the resulting array that
		preserves the overall dtype if possible)
		
		Parameters
		----------
		to_concat : array of arrays
		axis : axis to provide concatenation
		ea_compat_axis : bool, default False
		    For ExtensionArray compat, behave as if axis == 1 when determining
		    whether to drop empty arrays.
		
		Returns
		-------
		a single array, preserving the combined dtypes
	**/
	static public function concat_compat(to_concat:Dynamic, ?axis:Dynamic, ?ea_compat_axis:Dynamic):Dynamic;
	/**
		Transform any list-like object in a 1-dimensional numpy array of object
		dtype.
		
		Parameters
		----------
		values : any iterable which has a len()
		
		Raises
		------
		TypeError
		    * If `values` does not have a len()
		
		Returns
		-------
		1-dimensional numpy array of dtype object
	**/
	static public function construct_1d_object_array_from_listlike(values:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		difference of n between self,
		analogous to s-s.shift(n)
		
		Parameters
		----------
		arr : ndarray or ExtensionArray
		n : int
		    number of periods
		axis : {0, 1}
		    axis to shift on
		stacklevel : int, default 3
		    The stacklevel for the lost dtype warning.
		
		Returns
		-------
		shifted
	**/
	static public function diff(arr:Dynamic, n:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		A decorator take docstring templates, concatenate them and perform string
		substitution on it.
		
		This decorator will add a variable "_docstring_components" to the wrapped
		callable to keep track the original docstring template for potential usage.
		If it should be consider as a template, it will be saved as a string.
		Otherwise, it will be saved as callable, and later user __doc__ and dedent
		to get docstring.
		
		Parameters
		----------
		*docstrings : str or callable
		    The string / docstring / docstring template to be appended in order
		    after default docstring under callable.
		**params
		    The string which would be used to format docstring template.
	**/
	static public function doc(?docstrings:python.VarArgs<Dynamic>, ?params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return boolean ndarray denoting duplicate values.
		
		Parameters
		----------
		values : nd.array, ExtensionArray or Series
		    Array over which to check for duplicate values.
		keep : {'first', 'last', False}, default 'first'
		    - ``first`` : Mark duplicates as ``True`` except for the first
		      occurrence.
		    - ``last`` : Mark duplicates as ``True`` except for the last
		      occurrence.
		    - False : Mark all duplicates as ``True``.
		
		Returns
		-------
		duplicated : ndarray[bool]
	**/
	static public function duplicated(values:Dynamic, ?keep:Dynamic):Dynamic;
	static public function ensure_float64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_object(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function ensure_platform_int(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		Extract the ndarray or ExtensionArray from a Series or Index.
		
		For all other types, `obj` is just returned as is.
		
		Parameters
		----------
		obj : object
		    For Series / Index, the underlying ExtensionArray is unboxed.
		
		extract_numpy : bool, default False
		    Whether to extract the ndarray from a PandasArray.
		
		extract_range : bool, default False
		    If we have a RangeIndex, return range._values if True
		    (which is a materialized integer ndarray), otherwise return unchanged.
		
		Returns
		-------
		arr : object
		
		Examples
		--------
		>>> extract_array(pd.Series(['a', 'b', 'c'], dtype='category'))
		['a', 'b', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		Other objects like lists, arrays, and DataFrames are just passed through.
		
		>>> extract_array([1, 2, 3])
		[1, 2, 3]
		
		For an ndarray-backed Series / Index the ndarray is returned.
		
		>>> extract_array(pd.Series([1, 2, 3]))
		array([1, 2, 3])
		
		To extract all the way down to the ndarray, pass ``extract_numpy=True``.
		
		>>> extract_array(pd.Series([1, 2, 3]), extract_numpy=True)
		array([1, 2, 3])
	**/
	static public function extract_array(obj:Dynamic, ?extract_numpy:Dynamic, ?extract_range:Dynamic):Dynamic;
	/**
		Encode the object as an enumerated type or categorical variable.
		
		This method is useful for obtaining a numeric representation of an
		array when all that matters is identifying distinct values. `factorize`
		is available as both a top-level function :func:`pandas.factorize`,
		and as a method :meth:`Series.factorize` and :meth:`Index.factorize`.
		
		Parameters
		----------
		values : sequence
		    A 1-D sequence. Sequences that aren't pandas objects are
		    coerced to ndarrays before factorization.
		sort : bool, default False
		    Sort `uniques` and shuffle `codes` to maintain the
		    relationship.
		
		na_sentinel : int or None, default -1
		    Value to mark "not found". If None, will not drop the NaN
		    from the uniques of the values.
		
		    .. versionchanged:: 1.1.2
		size_hint : int, optional
		    Hint to the hashtable sizer.
		
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
	static public function factorize(values:Dynamic, ?sort:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic):numpy.Ndarray;
	/**
		Factorize a numpy array to codes and uniques.
		
		This doesn't do any coercion of types or unboxing before factorization.
		
		Parameters
		----------
		values : ndarray
		na_sentinel : int, default -1
		size_hint : int, optional
		    Passed through to the hashtable's 'get_labels' method
		na_value : object, optional
		    A value in `values` to consider missing. Note: only use this
		    parameter when you know that you don't have any values pandas would
		    consider missing in the array (NaN for float data, iNaT for
		    datetimes, etc.).
		mask : ndarray[bool], optional
		    If not None, the mask is used as indicator for missing values
		    (True = missing, False = valid) instead of `na_value` or
		    condition "val != val".
		
		Returns
		-------
		codes : ndarray[np.intp]
		uniques : ndarray
	**/
	static public function factorize_array(values:Dynamic, ?na_sentinel:Dynamic, ?size_hint:Dynamic, ?na_value:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		A decorator to indicate final methods and final classes.
		
		Use this decorator to indicate to type checkers that the decorated
		method cannot be overridden, and decorated class cannot be subclassed.
		For example:
		
		  class Base:
		      @final
		      def done(self) -> None:
		          ...
		  class Sub(Base):
		      def done(self) -> None:  # Error reported by type checker
		            ...
		
		  @final
		  class Leaf:
		      ...
		  class Other(Leaf):  # Error reported by type checker
		      ...
		
		There is no runtime checking of these properties.
	**/
	@:native("final")
	static public function _final(f:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public var iNaT : Dynamic;
	/**
		Infer the dtype from an array.
		
		Parameters
		----------
		arr : array
		pandas_dtype : bool, default False
		    whether to infer dtype including pandas extension types.
		    If False, array belongs to pandas extension types
		    is inferred as object
		
		Returns
		-------
		tuple (numpy-compat/pandas-compat dtype, array)
		
		Notes
		-----
		if pandas_dtype=False. these infer to numpy dtypes
		exactly with the exception that mixed / object dtypes
		are not coerced by stringifying or conversion
		
		if pandas_dtype=True. datetime64tz-aware/categorical
		types will retain there character.
		
		Examples
		--------
		>>> np.asarray([1, '1'])
		array(['1', '1'], dtype='<U21')
		
		>>> infer_dtype_from_array([1, '1'])
		(dtype('O'), [1, '1'])
	**/
	static public function infer_dtype_from_array(arr:Dynamic, ?pandas_dtype:Dynamic):Dynamic;
	/**
		Check if the object is array-like.
		
		For an object to be considered array-like, it must be list-like and
		have a `dtype` attribute.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_array_like : bool
		    Whether `obj` has array-like properties.
		
		Examples
		--------
		>>> is_array_like(np.array([1, 2, 3]))
		True
		>>> is_array_like(pd.Series(["a", "b"]))
		True
		>>> is_array_like(pd.Index(["2016-01-01"]))
		True
		>>> is_array_like([1, 2, 3])
		False
		>>> is_array_like(("a", "b"))
		False
	**/
	static public function is_array_like(obj:Dynamic):Bool;
	/**
		Check whether the provided array or dtype is of a boolean dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a boolean dtype.
		
		Notes
		-----
		An ExtensionArray is considered boolean when the ``_is_boolean``
		attribute is set to True.
		
		Examples
		--------
		>>> is_bool_dtype(str)
		False
		>>> is_bool_dtype(int)
		False
		>>> is_bool_dtype(bool)
		True
		>>> is_bool_dtype(np.bool_)
		True
		>>> is_bool_dtype(np.array(['a', 'b']))
		False
		>>> is_bool_dtype(pd.Series([1, 2]))
		False
		>>> is_bool_dtype(np.array([True, False]))
		True
		>>> is_bool_dtype(pd.Categorical([True, False]))
		True
		>>> is_bool_dtype(pd.arrays.SparseArray([True, False]))
		True
	**/
	static public function is_bool_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the Categorical dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Categorical dtype.
		
		Examples
		--------
		>>> is_categorical_dtype(object)
		False
		>>> is_categorical_dtype(CategoricalDtype())
		True
		>>> is_categorical_dtype([1, 2, 3])
		False
		>>> is_categorical_dtype(pd.Categorical([1, 2, 3]))
		True
		>>> is_categorical_dtype(pd.CategoricalIndex([1, 2, 3]))
		True
	**/
	static public function is_categorical_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a complex dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a complex dtype.
		
		Examples
		--------
		>>> is_complex_dtype(str)
		False
		>>> is_complex_dtype(int)
		False
		>>> is_complex_dtype(np.complex_)
		True
		>>> is_complex_dtype(np.array(['a', 'b']))
		False
		>>> is_complex_dtype(pd.Series([1, 2]))
		False
		>>> is_complex_dtype(np.array([1 + 1j, 5]))
		True
	**/
	static public function is_complex_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the datetime64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the datetime64 dtype.
		
		Examples
		--------
		>>> is_datetime64_dtype(object)
		False
		>>> is_datetime64_dtype(np.datetime64)
		True
		>>> is_datetime64_dtype(np.array([], dtype=int))
		False
		>>> is_datetime64_dtype(np.array([], dtype=np.datetime64))
		True
		>>> is_datetime64_dtype([1, 2, 3])
		False
	**/
	static public function is_datetime64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if an object is a pandas extension array type.
		
		See the :ref:`Use Guide <extending.extension-types>` for more.
		
		Parameters
		----------
		arr_or_dtype : object
		    For array-like input, the ``.dtype`` attribute will
		    be extracted.
		
		Returns
		-------
		bool
		    Whether the `arr_or_dtype` is an extension array type.
		
		Notes
		-----
		This checks whether an object implements the pandas extension
		array interface. In pandas, this includes:
		
		* Categorical
		* Sparse
		* Interval
		* Period
		* DatetimeArray
		* TimedeltaArray
		
		Third-party libraries may implement arrays or types satisfying
		this interface as well.
		
		Examples
		--------
		>>> from pandas.api.types import is_extension_array_dtype
		>>> arr = pd.Categorical(['a', 'b'])
		>>> is_extension_array_dtype(arr)
		True
		>>> is_extension_array_dtype(arr.dtype)
		True
		
		>>> arr = np.array(['a', 'b'])
		>>> is_extension_array_dtype(arr.dtype)
		False
	**/
	static public function is_extension_array_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of a float dtype.
		
		This function is internal and should not be exposed in the public API.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a float dtype.
		
		Examples
		--------
		>>> is_float_dtype(str)
		False
		>>> is_float_dtype(int)
		False
		>>> is_float_dtype(float)
		True
		>>> is_float_dtype(np.array(['a', 'b']))
		False
		>>> is_float_dtype(pd.Series([1, 2]))
		False
		>>> is_float_dtype(pd.Index([1, 2.]))
		True
	**/
	static public function is_float_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of an integer dtype.
		
		Unlike in `is_any_int_dtype`, timedelta64 instances will return False.
		
		The nullable Integer dtypes (e.g. pandas.Int64Dtype) are also considered
		as integer by this function.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of an integer dtype and
		    not an instance of timedelta64.
		
		Examples
		--------
		>>> is_integer_dtype(str)
		False
		>>> is_integer_dtype(int)
		True
		>>> is_integer_dtype(float)
		False
		>>> is_integer_dtype(np.uint64)
		True
		>>> is_integer_dtype('int8')
		True
		>>> is_integer_dtype('Int8')
		True
		>>> is_integer_dtype(pd.Int8Dtype)
		True
		>>> is_integer_dtype(np.datetime64)
		False
		>>> is_integer_dtype(np.timedelta64)
		False
		>>> is_integer_dtype(np.array(['a', 'b']))
		False
		>>> is_integer_dtype(pd.Series([1, 2]))
		True
		>>> is_integer_dtype(np.array([], dtype=np.timedelta64))
		False
		>>> is_integer_dtype(pd.Index([1, 2.]))  # float
		False
	**/
	static public function is_integer_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether the provided array or dtype is of a numeric dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype is of a numeric dtype.
		
		Examples
		--------
		>>> is_numeric_dtype(str)
		False
		>>> is_numeric_dtype(int)
		True
		>>> is_numeric_dtype(float)
		True
		>>> is_numeric_dtype(np.uint64)
		True
		>>> is_numeric_dtype(np.datetime64)
		False
		>>> is_numeric_dtype(np.timedelta64)
		False
		>>> is_numeric_dtype(np.array(['a', 'b']))
		False
		>>> is_numeric_dtype(pd.Series([1, 2]))
		True
		>>> is_numeric_dtype(pd.Index([1, 2.]))
		True
		>>> is_numeric_dtype(np.array([], dtype=np.timedelta64))
		False
	**/
	static public function is_numeric_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Check whether an array-like or dtype is of the object dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the object dtype.
		
		Examples
		--------
		>>> is_object_dtype(object)
		True
		>>> is_object_dtype(int)
		False
		>>> is_object_dtype(np.array([], dtype=object))
		True
		>>> is_object_dtype(np.array([], dtype=int))
		False
		>>> is_object_dtype([1, 2, 3])
		False
	**/
	static public function is_object_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Return True if given object is scalar.
		
		Parameters
		----------
		val : object
		    This includes:
		
		    - numpy array scalar (e.g. np.int64)
		    - Python builtin numerics
		    - Python builtin byte arrays and strings
		    - None
		    - datetime.datetime
		    - datetime.timedelta
		    - Period
		    - decimal.Decimal
		    - Interval
		    - DateOffset
		    - Fraction
		    - Number.
		
		Returns
		-------
		bool
		    Return True if given object is scalar.
		
		Examples
		--------
		>>> import datetime
		>>> dt = datetime.datetime(2018, 10, 3)
		>>> pd.api.types.is_scalar(dt)
		True
		
		>>> pd.api.types.is_scalar([2, 3])
		False
		
		>>> pd.api.types.is_scalar({0: 1, 2: 3})
		False
		
		>>> pd.api.types.is_scalar((0, 2))
		False
		
		pandas supports PEP 3141 numbers:
		
		>>> from fractions import Fraction
		>>> pd.api.types.is_scalar(Fraction(3, 5))
		True
	**/
	static public function is_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check whether an array-like or dtype is of the timedelta64 dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the timedelta64 dtype.
		
		Examples
		--------
		>>> is_timedelta64_dtype(object)
		False
		>>> is_timedelta64_dtype(np.timedelta64)
		True
		>>> is_timedelta64_dtype([1, 2, 3])
		False
		>>> is_timedelta64_dtype(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> is_timedelta64_dtype('0 days')
		False
	**/
	static public function is_timedelta64_dtype(arr_or_dtype:Dynamic):Dynamic;
	/**
		Compute the isin boolean array.
		
		Parameters
		----------
		comps : array-like
		values : array-like
		
		Returns
		-------
		ndarray[bool]
		    Same length as `comps`.
	**/
	static public function isin(comps:Dynamic, values:Dynamic):Dynamic;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : Boolean inverse of pandas.isna.
		Series.isna : Detect missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(pd.NA)
		True
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	/**
		Returns the mode(s) of an array.
		
		Parameters
		----------
		values : array-like
		    Array over which to check for duplicate values.
		dropna : bool, default True
		    Don't consider counts of NaN/NaT.
		
		Returns
		-------
		np.ndarray or ExtensionArray
	**/
	static public function mode(values:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return a dtype compat na value
		
		Parameters
		----------
		dtype : string / dtype
		compat : bool, default True
		
		Returns
		-------
		np.dtype or a pandas dtype
		
		Examples
		--------
		>>> na_value_for_dtype(np.dtype('int64'))
		0
		>>> na_value_for_dtype(np.dtype('int64'), compat=False)
		nan
		>>> na_value_for_dtype(np.dtype('float64'))
		nan
		>>> na_value_for_dtype(np.dtype('bool'))
		False
		>>> na_value_for_dtype(np.dtype('datetime64[ns]'))
		numpy.datetime64('NaT')
	**/
	static public function na_value_for_dtype(dtype:Dynamic, ?compat:Dynamic):Dynamic;
	/**
		Check whether the array or dtype should be converted to int64.
		
		An array-like or dtype "needs" such a conversion if the array-like
		or dtype is of a datetime-like dtype
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array or dtype should be converted to int64.
		
		Examples
		--------
		>>> needs_i8_conversion(str)
		False
		>>> needs_i8_conversion(np.int64)
		False
		>>> needs_i8_conversion(np.datetime64)
		True
		>>> needs_i8_conversion(np.array(['a', 'b']))
		False
		>>> needs_i8_conversion(pd.Series([1, 2]))
		False
		>>> needs_i8_conversion(pd.Series([], dtype="timedelta64[ns]"))
		True
		>>> needs_i8_conversion(pd.DatetimeIndex([1, 2, 3], tz="US/Eastern"))
		True
	**/
	static public function needs_i8_conversion(arr_or_dtype:Dynamic):Dynamic;
	static public var npt : Dynamic;
	/**
		Create an array.
		
		Parameters
		----------
		data : Sequence of objects
		    The scalars inside `data` should be instances of the
		    scalar type for `dtype`. It's expected that `data`
		    represents a 1-dimensional array of data.
		
		    When `data` is an Index or Series, the underlying array
		    will be extracted from `data`.
		
		dtype : str, np.dtype, or ExtensionDtype, optional
		    The dtype to use for the array. This may be a NumPy
		    dtype or an extension type registered with pandas using
		    :meth:`pandas.api.extensions.register_extension_dtype`.
		
		    If not specified, there are two possibilities:
		
		    1. When `data` is a :class:`Series`, :class:`Index`, or
		       :class:`ExtensionArray`, the `dtype` will be taken
		       from the data.
		    2. Otherwise, pandas will attempt to infer the `dtype`
		       from the data.
		
		    Note that when `data` is a NumPy array, ``data.dtype`` is
		    *not* used for inferring the array type. This is because
		    NumPy cannot represent all the types of data that can be
		    held in extension arrays.
		
		    Currently, pandas will infer an extension dtype for sequences of
		
		    ============================== =======================================
		    Scalar Type                    Array Type
		    ============================== =======================================
		    :class:`pandas.Interval`       :class:`pandas.arrays.IntervalArray`
		    :class:`pandas.Period`         :class:`pandas.arrays.PeriodArray`
		    :class:`datetime.datetime`     :class:`pandas.arrays.DatetimeArray`
		    :class:`datetime.timedelta`    :class:`pandas.arrays.TimedeltaArray`
		    :class:`int`                   :class:`pandas.arrays.IntegerArray`
		    :class:`float`                 :class:`pandas.arrays.FloatingArray`
		    :class:`str`                   :class:`pandas.arrays.StringArray` or
		                                   :class:`pandas.arrays.ArrowStringArray`
		    :class:`bool`                  :class:`pandas.arrays.BooleanArray`
		    ============================== =======================================
		
		    The ExtensionArray created when the scalar type is :class:`str` is determined by
		    ``pd.options.mode.string_storage`` if the dtype is not explicitly given.
		
		    For all other cases, NumPy's usual inference rules will be used.
		
		    .. versionchanged:: 1.0.0
		
		       Pandas infers nullable-integer dtype for integer data,
		       string dtype for string data, and nullable-boolean dtype
		       for boolean data.
		
		    .. versionchanged:: 1.2.0
		
		        Pandas now also infers nullable-floating dtype for float-like
		        input data
		
		copy : bool, default True
		    Whether to copy the data, even if not necessary. Depending
		    on the type of `data`, creating the new array may require
		    copying data, even if ``copy=False``.
		
		Returns
		-------
		ExtensionArray
		    The newly created array.
		
		Raises
		------
		ValueError
		    When `data` is not 1-dimensional.
		
		See Also
		--------
		numpy.array : Construct a NumPy array.
		Series : Construct a pandas Series.
		Index : Construct a pandas Index.
		arrays.PandasArray : ExtensionArray wrapping a NumPy array.
		Series.array : Extract the array stored within a Series.
		
		Notes
		-----
		Omitting the `dtype` argument means pandas will attempt to infer the
		best array type from the values in the data. As new array types are
		added by pandas and 3rd party libraries, the "best" array type may
		change. We recommend specifying `dtype` to ensure that
		
		1. the correct array type for the data is returned
		2. the returned array type doesn't change as new extension types
		   are added by pandas and third-party libraries
		
		Additionally, if the underlying memory representation of the returned
		array matters, we recommend specifying the `dtype` as a concrete object
		rather than a string alias or allowing it to be inferred. For example,
		a future version of pandas or a 3rd-party library may include a
		dedicated ExtensionArray for string data. In this event, the following
		would no longer return a :class:`arrays.PandasArray` backed by a NumPy
		array.
		
		>>> pd.array(['a', 'b'], dtype=str)
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		This would instead return the new ExtensionArray dedicated for string
		data. If you really need the new array to be backed by a  NumPy array,
		specify that in the dtype.
		
		>>> pd.array(['a', 'b'], dtype=np.dtype("<U1"))
		<PandasArray>
		['a', 'b']
		Length: 2, dtype: str32
		
		Finally, Pandas has arrays that mostly overlap with NumPy
		
		  * :class:`arrays.DatetimeArray`
		  * :class:`arrays.TimedeltaArray`
		
		When data with a ``datetime64[ns]`` or ``timedelta64[ns]`` dtype is
		passed, pandas will always return a ``DatetimeArray`` or ``TimedeltaArray``
		rather than a ``PandasArray``. This is for symmetry with the case of
		timezone-aware data, which NumPy does not natively support.
		
		>>> pd.array(['2015', '2016'], dtype='datetime64[ns]')
		<DatetimeArray>
		['2015-01-01 00:00:00', '2016-01-01 00:00:00']
		Length: 2, dtype: datetime64[ns]
		
		>>> pd.array(["1H", "2H"], dtype='timedelta64[ns]')
		<TimedeltaArray>
		['0 days 01:00:00', '0 days 02:00:00']
		Length: 2, dtype: timedelta64[ns]
		
		Examples
		--------
		If a dtype is not specified, pandas will infer the best dtype from the values.
		See the description of `dtype` for the types pandas infers for.
		
		>>> pd.array([1, 2])
		<IntegerArray>
		[1, 2]
		Length: 2, dtype: Int64
		
		>>> pd.array([1, 2, np.nan])
		<IntegerArray>
		[1, 2, <NA>]
		Length: 3, dtype: Int64
		
		>>> pd.array([1.1, 2.2])
		<FloatingArray>
		[1.1, 2.2]
		Length: 2, dtype: Float64
		
		>>> pd.array(["a", None, "c"])
		<StringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> with pd.option_context("string_storage", "pyarrow"):
		...     arr = pd.array(["a", None, "c"])
		...
		>>> arr
		<ArrowStringArray>
		['a', <NA>, 'c']
		Length: 3, dtype: string
		
		>>> pd.array([pd.Period('2000', freq="D"), pd.Period("2000", freq="D")])
		<PeriodArray>
		['2000-01-01', '2000-01-01']
		Length: 2, dtype: period[D]
		
		You can use the string alias for `dtype`
		
		>>> pd.array(['a', 'b', 'a'], dtype='category')
		['a', 'b', 'a']
		Categories (2, object): ['a', 'b']
		
		Or specify the actual dtype
		
		>>> pd.array(['a', 'b', 'a'],
		...          dtype=pd.CategoricalDtype(['a', 'b', 'c'], ordered=True))
		['a', 'b', 'a']
		Categories (3, object): ['a' < 'b' < 'c']
		
		If pandas does not infer a dedicated extension type a
		:class:`arrays.PandasArray` is returned.
		
		>>> pd.array([1 + 1j, 3 + 2j])
		<PandasArray>
		[(1+1j), (3+2j)]
		Length: 2, dtype: complex128
		
		As mentioned in the "Notes" section, new extension types may be added
		in the future (by pandas or 3rd party libraries), causing the return
		value to no longer be a :class:`arrays.PandasArray`. Specify the `dtype`
		as a NumPy dtype if you need to ensure there's no future change in
		behavior.
		
		>>> pd.array([1, 2], dtype=np.dtype("int32"))
		<PandasArray>
		[1, 2]
		Length: 2, dtype: int32
		
		`data` must be 1-dimensional. A ValueError is raised when the input
		has the wrong dimensionality.
		
		>>> pd.array(1)
		Traceback (most recent call last):
		  ...
		ValueError: Cannot pass scalar '1' to 'pandas.array'.
	**/
	static public function pd_array(data:Dynamic, ?dtype:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Rank the values along a given axis.
		
		Parameters
		----------
		values : np.ndarray or ExtensionArray
		    Array whose values will be ranked. The number of dimensions in this
		    array must not exceed 2.
		axis : int, default 0
		    Axis over which to perform rankings.
		method : {'average', 'min', 'max', 'first', 'dense'}, default 'average'
		    The method by which tiebreaks are broken during the ranking.
		na_option : {'keep', 'top'}, default 'keep'
		    The method by which NaNs are placed in the ranking.
		    - ``keep``: rank each NaN value with a NaN ranking
		    - ``top``: replace each NaN with either +/- inf so that they
		               there are ranked at the top
		ascending : bool, default True
		    Whether or not the elements should be ranked in ascending order.
		pct : bool, default False
		    Whether or not to the display the returned rankings in integer form
		    (e.g. 1, 2, 3) or in percentile form (e.g. 0.333..., 0.666..., 1).
	**/
	static public function rank(values:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?na_option:Dynamic, ?ascending:Dynamic, ?pct:Dynamic):Dynamic;
	/**
		Sort ``values`` and reorder corresponding ``codes``.
		
		``values`` should be unique if ``codes`` is not None.
		Safe for use with mixed types (int, str), orders ints before strs.
		
		Parameters
		----------
		values : list-like
		    Sequence; must be unique if ``codes`` is not None.
		codes : list_like, optional
		    Indices to ``values``. All out of bound indices are treated as
		    "not found" and will be masked with ``na_sentinel``.
		na_sentinel : int, default -1
		    Value in ``codes`` to mark "not found".
		    Ignored when ``codes`` is None.
		assume_unique : bool, default False
		    When True, ``values`` are assumed to be unique, which can speed up
		    the calculation. Ignored when ``codes`` is None.
		verify : bool, default True
		    Check if codes are out of bound for the values and put out of bound
		    codes equal to na_sentinel. If ``verify=False``, it is assumed there
		    are no out of bound codes. Ignored when ``codes`` is None.
		
		    .. versionadded:: 0.25.0
		
		Returns
		-------
		ordered : ndarray
		    Sorted ``values``
		new_codes : ndarray
		    Reordered ``codes``; returned when ``codes`` is not None.
		
		Raises
		------
		TypeError
		    * If ``values`` is not list-like or if ``codes`` is neither None
		    nor list-like
		    * If ``values`` cannot be sorted
		ValueError
		    * If ``codes`` is not None and ``values`` contain duplicates.
	**/
	static public function safe_sort(values:Dynamic, ?codes:Dynamic, ?na_sentinel:Dynamic, ?assume_unique:Dynamic, ?verify:Dynamic):numpy.Ndarray;
	/**
		Safely convert non-nanosecond datetime64 or timedelta64 values to nanosecond.
	**/
	static public function sanitize_to_nanoseconds(values:Dynamic, ?copy:Dynamic):Dynamic;
	/**
		Find indices where elements should be inserted to maintain order.
		
		.. versionadded:: 0.25.0
		
		Find the indices into a sorted array `arr` (a) such that, if the
		corresponding elements in `value` were inserted before the indices,
		the order of `arr` would be preserved.
		
		Assuming that `arr` is sorted:
		
		======  ================================
		`side`  returned index `i` satisfies
		======  ================================
		left    ``arr[i-1] < value <= self[i]``
		right   ``arr[i-1] <= value < self[i]``
		======  ================================
		
		Parameters
		----------
		arr: np.ndarray, ExtensionArray, Series
		    Input array. If `sorter` is None, then it must be sorted in
		    ascending order, otherwise `sorter` must be an array of indices
		    that sort it.
		value : array-like or scalar
		    Values to insert into `arr`.
		side : {'left', 'right'}, optional
		    If 'left', the index of the first suitable location found is given.
		    If 'right', return the last such index.  If there is no suitable
		    index, return either 0 or N (where N is the length of `self`).
		sorter : 1-D array-like, optional
		    Optional array of integer indices that sort array a into ascending
		    order. They are typically the result of argsort.
		
		Returns
		-------
		array of ints or int
		    If value is array-like, array of insertion points.
		    If value is scalar, a single integer.
		
		See Also
		--------
		numpy.searchsorted : Similar method from NumPy.
	**/
	static public function searchsorted(arr:Dynamic, value:Dynamic, ?side:Dynamic, ?sorter:Dynamic):Dynamic;
	/**
		Take elements from an array.
		
		Parameters
		----------
		arr : array-like or scalar value
		    Non array-likes (sequences/scalars without a dtype) are coerced
		    to an ndarray.
		indices : sequence of int or one-dimensional np.ndarray of int
		    Indices to be taken.
		axis : int, default 0
		    The axis over which to select values.
		allow_fill : bool, default False
		    How to handle negative values in `indices`.
		
		    * False: negative values in `indices` indicate positional indices
		      from the right (the default). This is similar to :func:`numpy.take`.
		
		    * True: negative values in `indices` indicate
		      missing values. These values are set to `fill_value`. Any other
		      negative values raise a ``ValueError``.
		
		fill_value : any, optional
		    Fill value to use for NA-indices when `allow_fill` is True.
		    This may be ``None``, in which case the default NA value for
		    the type (``self.dtype.na_value``) is used.
		
		    For multi-dimensional `arr`, each *element* is filled with
		    `fill_value`.
		
		Returns
		-------
		ndarray or ExtensionArray
		    Same type as the input.
		
		Raises
		------
		IndexError
		    When `indices` is out of bounds for the array.
		ValueError
		    When the indexer contains negative values other than ``-1``
		    and `allow_fill` is True.
		
		Notes
		-----
		When `allow_fill` is False, `indices` may be whatever dimensionality
		is accepted by NumPy for `arr`.
		
		When `allow_fill` is True, `indices` should be 1-D.
		
		See Also
		--------
		numpy.take : Take elements from an array along an axis.
		
		Examples
		--------
		>>> from pandas.api.extensions import take
		
		With the default ``allow_fill=False``, negative numbers indicate
		positional indices from the right.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1])
		array([10, 10, 30])
		
		Setting ``allow_fill=True`` will place `fill_value` in those positions.
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True)
		array([10., 10., nan])
		
		>>> take(np.array([10, 20, 30]), [0, 0, -1], allow_fill=True,
		...      fill_value=-10)
		array([ 10,  10, -10])
	**/
	static public function take(arr:Dynamic, indices:Dynamic, ?axis:Dynamic, ?allow_fill:Dynamic, ?fill_value:Dynamic):Dynamic;
	/**
		Specialized Cython take which sets NaN values in one pass
		
		This dispatches to ``take`` defined on ExtensionArrays. It does not
		currently dispatch to ``SparseArray.take`` for sparse ``arr``.
		
		Note: this function assumes that the indexer is a valid(ated) indexer with
		no out of bound indices.
		
		Parameters
		----------
		arr : np.ndarray or ExtensionArray
		    Input array.
		indexer : ndarray
		    1-D array of indices to take, subarrays corresponding to -1 value
		    indices are filed with fill_value
		axis : int, default 0
		    Axis to take from
		fill_value : any, default np.nan
		    Fill value to replace -1 values with
		allow_fill : bool, default True
		    If False, indexer is assumed to contain no -1 values so no filling
		    will be done.  This short-circuits computation of a mask.  Result is
		    undefined if allow_fill == False and -1 is present in indexer.
		
		Returns
		-------
		subarray : np.ndarray or ExtensionArray
		    May be the same type as the input, or cast to an ndarray.
	**/
	static public function take_nd(arr:Dynamic, indexer:Dynamic, ?axis:Dynamic, ?fill_value:Dynamic, ?allow_fill:Dynamic):Dynamic;
	/**
		Extracts the union from lvals and rvals with respect to duplicates and nans in
		both arrays.
		
		Parameters
		----------
		lvals: np.ndarray or ExtensionArray
		    left values which is ordered in front.
		rvals: np.ndarray or ExtensionArray
		    right values ordered after lvals.
		
		Returns
		-------
		np.ndarray or ExtensionArray
		    Containing the unsorted union of both arrays.
		
		Notes
		-----
		Caller is responsible for ensuring lvals.dtype == rvals.dtype.
	**/
	static public function union_with_duplicates(lvals:Dynamic, rvals:Dynamic):Dynamic;
	/**
		Return unique values based on a hash table.
		
		Uniques are returned in order of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique for long enough sequences.
		Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		numpy.ndarray or ExtensionArray
		
		    The return can be:
		
		    * Index : when the input is an Index
		    * Categorical : when the input is a Categorical dtype
		    * ndarray : when the input is a Series/ndarray
		
		    Return numpy.ndarray or ExtensionArray.
		
		See Also
		--------
		Index.unique : Return unique values from an Index.
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(
		...     pd.Series(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		<DatetimeArray>
		['2016-01-01 00:00:00-05:00']
		Length: 1, dtype: datetime64[ns, US/Eastern]
		
		>>> pd.unique(
		...     pd.Index(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		        dtype='datetime64[ns, US/Eastern]',
		        freq=None)
		
		>>> pd.unique(list("baabc"))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(
		...     pd.Series(
		...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
		...     )
		... )
		['b', 'a', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		
		An array of tuples
		
		>>> pd.unique([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique(values:Dynamic):Dynamic;
	/**
		Return unique values based on a hash table.
		
		Uniques are returned in order of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique for long enough sequences.
		Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		numpy.ndarray or ExtensionArray
		
		    The return can be:
		
		    * Index : when the input is an Index
		    * Categorical : when the input is a Categorical dtype
		    * ndarray : when the input is a Series/ndarray
		
		    Return numpy.ndarray or ExtensionArray.
		
		See Also
		--------
		Index.unique : Return unique values from an Index.
		Series.unique : Return unique values of Series object.
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(pd.Series([pd.Timestamp("20160101"), pd.Timestamp("20160101")]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(
		...     pd.Series(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		<DatetimeArray>
		['2016-01-01 00:00:00-05:00']
		Length: 1, dtype: datetime64[ns, US/Eastern]
		
		>>> pd.unique(
		...     pd.Index(
		...         [
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...             pd.Timestamp("20160101", tz="US/Eastern"),
		...         ]
		...     )
		... )
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		        dtype='datetime64[ns, US/Eastern]',
		        freq=None)
		
		>>> pd.unique(list("baabc"))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		>>> pd.unique(pd.Series(pd.Categorical(list("baabc"), categories=list("abc"))))
		['b', 'a', 'c']
		Categories (3, object): ['a', 'b', 'c']
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(
		...     pd.Series(
		...         pd.Categorical(list("baabc"), categories=list("abc"), ordered=True)
		...     )
		... )
		['b', 'a', 'c']
		Categories (3, object): ['a' < 'b' < 'c']
		
		An array of tuples
		
		>>> pd.unique([("a", "b"), ("b", "a"), ("a", "c"), ("b", "a")])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
	**/
	static public function unique1d(values:Dynamic):Dynamic;
	/**
		Perform bounds-checking for an indexer.
		
		-1 is allowed for indicating missing values.
		
		Parameters
		----------
		indices : ndarray
		n : int
		    Length of the array being indexed.
		
		Raises
		------
		ValueError
		
		Examples
		--------
		>>> validate_indices(np.array([1, 2]), 3) # OK
		
		>>> validate_indices(np.array([1, -2]), 3)
		Traceback (most recent call last):
		    ...
		ValueError: negative dimensions are not allowed
		
		>>> validate_indices(np.array([1, 2, 3]), 3)
		Traceback (most recent call last):
		    ...
		IndexError: indices are out-of-bounds
		
		>>> validate_indices(np.array([-1, -1]), 0) # OK
		
		>>> validate_indices(np.array([0, 1]), 0)
		Traceback (most recent call last):
		    ...
		IndexError: indices are out-of-bounds
	**/
	static public function validate_indices(indices:Dynamic, n:Dynamic):Dynamic;
	/**
		Compute a histogram of the counts of non-null values.
		
		Parameters
		----------
		values : ndarray (1-d)
		sort : bool, default True
		    Sort by values
		ascending : bool, default False
		    Sort in ascending order
		normalize: bool, default False
		    If True then compute a relative histogram
		bins : integer, optional
		    Rather than count values, group them into half-open bins,
		    convenience for pd.cut, only works with numeric data
		dropna : bool, default True
		    Don't include counts of NaN
		
		Returns
		-------
		Series
	**/
	static public function value_counts(values:Dynamic, ?sort:Dynamic, ?ascending:Dynamic, ?normalize:Dynamic, ?bins:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Parameters
		----------
		values : arraylike
		dropna : bool
		
		Returns
		-------
		uniques : np.ndarray or ExtensionArray
		counts : np.ndarray
	**/
	static public function value_counts_arraylike(values:Dynamic, dropna:Dynamic):Dynamic;
	/**
		Issue a warning, or maybe ignore it or raise an exception.
	**/
	static public function warn(message:Dynamic, ?category:Dynamic, ?stacklevel:Dynamic, ?source:Dynamic):Dynamic;
}