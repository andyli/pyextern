/* This file is generated, do not edit! */
package pandas.core.common;
@:pythonImport("pandas.core.common") extern class Common_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function AnyArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function ArrayLike(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Collection(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function NpDtype(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function RandomState(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Scalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _builtin_table : Dynamic;
	static public var _cython_table : Dynamic;
	/**
		Returns a boolean indicating if all arguments are None.
	**/
	static public function all_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a boolean indicating if all arguments are not None.
	**/
	static public function all_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var annotations : Dynamic;
	/**
		Returns a boolean indicating if any argument is None.
	**/
	static public function any_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Returns a boolean indicating if any argument is not None.
	**/
	static public function any_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Evaluate possibly callable input using obj and kwargs if it is callable,
		otherwise return as it is.
		
		Parameters
		----------
		maybe_callable : possibly a callable
		obj : NDFrame
		**kwargs
	**/
	static public function apply_if_callable(maybe_callable:Dynamic, obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function asarray_tuplesafe(values:Dynamic, ?dtype:Dynamic):Dynamic;
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
		To avoid numpy DeprecationWarnings, cast float to integer where valid.
		
		Parameters
		----------
		val : scalar
		warn_float : bool, default False
		    If True, issue deprecation warning for a float indexer.
		
		Returns
		-------
		outval : scalar
	**/
	static public function cast_scalar_indexer(val:Dynamic, ?warn_float:Dynamic):Dynamic;
	static public function consensus_name_attr(objs:Dynamic):Dynamic;
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
		Convert list-like or scalar input to list-like. List, numpy and pandas array-like
		inputs are returned unmodified whereas others are converted to list.
	**/
	static public function convert_to_list_like(values:Dynamic):Dynamic;
	/**
		Returns the count of arguments that are not None.
	**/
	static public function count_not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		If a name is missing then replace it by level_n, where n is the count
		
		.. versionadded:: 1.4.0
		
		Parameters
		----------
		names : list-like
		    list of column names or None values.
		
		Returns
		-------
		list
		    list of column names with the None values replaced.
	**/
	static public function fill_missing_names(names:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Flatten an arbitrarily nested sequence.
		
		Parameters
		----------
		line : sequence
		    The non string sequence to flatten
		
		Notes
		-----
		This doesn't consider strings sequences.
		
		Returns
		-------
		flattened : generator
	**/
	static public function flatten(line:Dynamic):python.NativeIterable<Dynamic>;
	static public function get_callable_name(obj:Dynamic):Dynamic;
	/**
		if we define an internal function for this argument, return it
	**/
	static public function get_cython_func(arg:Dynamic):Dynamic;
	/**
		Returns a function that will map names/labels, dependent if mapper
		is a dict, Series or just a function.
	**/
	static public function get_rename_function(mapper:Dynamic):Dynamic;
	/**
		Transform label or iterable of labels to array, for use in Index.
		
		Parameters
		----------
		dtype : dtype
		    If specified, use as dtype of the resulting array, otherwise infer.
		
		Returns
		-------
		array
	**/
	static public function index_labels_to_array(labels:Dynamic, ?dtype:Dynamic):Dynamic;
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
		Check whether `key` is a valid boolean indexer.
		
		Parameters
		----------
		key : Any
		    Only list-likes may be considered boolean indexers.
		    All other types are not considered a boolean indexer.
		    For array-like input, boolean ndarrays or ExtensionArrays
		    with ``_is_boolean`` set are considered boolean indexers.
		
		Returns
		-------
		bool
		    Whether `key` is a valid boolean indexer.
		
		Raises
		------
		ValueError
		    When the array is an object-dtype ndarray or ExtensionArray
		    and contains missing values.
		
		See Also
		--------
		check_array_indexer : Check that `key` is a valid array to index,
		    and convert to an ndarray.
	**/
	static public function is_bool_indexer(key:Dynamic):Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	static public function is_builtin_func(arg:Dynamic):Dynamic;
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
		We have a full length slice.
	**/
	static public function is_full_slice(obj:Dynamic, line:Dynamic):Dynamic;
	/**
		Return True if given object is integer.
		
		Returns
		-------
		bool
	**/
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		We have a null slice.
	**/
	static public function is_null_slice(obj:Dynamic):Dynamic;
	/**
		Find non-trivial slices in "line": return a list of booleans with same length.
	**/
	static public function is_true_slices(line:Dynamic):Dynamic;
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
		Check if the object is an iterable but not a string.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_iter_not_string : bool
		    Whether `obj` is a non-string iterable.
		
		Examples
		--------
		>>> iterable_not_string([1, 2, 3])
		True
		>>> iterable_not_string("foo")
		False
		>>> iterable_not_string(1)
		False
	**/
	static public function iterable_not_string(obj:Dynamic):Bool;
	/**
		If obj is Iterable but not list-like, consume into list.
	**/
	static public function maybe_iterable_to_list(obj:Dynamic):Dynamic;
	static public function maybe_make_list(obj:Dynamic):Dynamic;
	/**
		Returns a generator consisting of the arguments that are not None.
	**/
	static public function not_none(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Decorator for overloaded functions/methods.
		
		In a stub file, place two or more stub definitions for the same
		function in a row, each decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		
		In a non-stub file (i.e. a regular .py file), do the same but
		follow it with an implementation.  The implementation should *not*
		be decorated with @overload.  For example:
		
		  @overload
		  def utf8(value: None) -> None: ...
		  @overload
		  def utf8(value: bytes) -> bytes: ...
		  @overload
		  def utf8(value: str) -> bytes: ...
		  def utf8(value):
		      # implementation goes here
	**/
	@:native("overload")
	static public function _overload(func:Dynamic):Dynamic;
	/**
		Apply a function ``func`` to object ``obj`` either by passing obj as the
		first argument to the function or, in the case that the func is a tuple,
		interpret the first element of the tuple as a function and pass the obj to
		that function as a keyword argument whose key is the value of the second
		element of the tuple.
		
		Parameters
		----------
		func : callable or tuple of (callable, str)
		    Function to apply to this object or, alternatively, a
		    ``(callable, data_keyword)`` tuple where ``data_keyword`` is a
		    string indicating the keyword of `callable`` that expects the
		    object.
		*args : iterable, optional
		    Positional arguments passed into ``func``.
		**kwargs : dict, optional
		    A dictionary of keyword arguments passed into ``func``.
		
		Returns
		-------
		object : the return type of ``func``.
	**/
	static public function pipe(obj:Dynamic, func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function for processing random_state arguments.
		
		Parameters
		----------
		state : int, array-like, BitGenerator, Generator, np.random.RandomState, None.
		    If receives an int, array-like, or BitGenerator, passes to
		    np.random.RandomState() as seed.
		    If receives an np.random RandomState or Generator, just returns that unchanged.
		    If receives `None`, returns np.random.
		    If receives anything else, raises an informative ValueError.
		
		    .. versionchanged:: 1.1.0
		
		        array-like and BitGenerator object now passed to np.random.RandomState()
		        as seed
		
		    Default None.
		
		Returns
		-------
		np.random.RandomState or np.random.Generator. If state is None, returns np.random
	**/
	static public function random_state(?state:Dynamic):Dynamic;
	/**
		Check the length of data matches the length of the index.
	**/
	static public function require_length_match(data:Dynamic, index:Dynamic):Dynamic;
	/**
		Helper function to standardize a supplied mapping.
		
		Parameters
		----------
		into : instance or subclass of collections.abc.Mapping
		    Must be a class, an initialized collections.defaultdict,
		    or an instance of a collections.abc.Mapping subclass.
		
		Returns
		-------
		mapping : a collections.abc.Mapping subclass or other constructor
		    a callable object that can accept an iterator to create
		    the desired Mapping.
		
		See Also
		--------
		DataFrame.to_dict
		Series.to_dict
	**/
	static public function standardize_mapping(into:Dynamic):Dynamic;
	/**
		Temporarily set attribute on an object.
		
		Args:
		    obj: Object whose attribute will be modified.
		    attr: Attribute to modify.
		    value: Value to temporarily set attribute to.
		
		Yields:
		    obj with modified attribute.
	**/
	static public function temp_setattr(obj:Dynamic, attr:Dynamic, value:Dynamic):Dynamic;
}