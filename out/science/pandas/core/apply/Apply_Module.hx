/* This file is generated, do not edit! */
package pandas.core.apply;
@:pythonImport("pandas.core.apply") extern class Apply_Module {
	static public function AggFuncType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AggFuncTypeBase(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AggFuncTypeDict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function AggObjType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Axis(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function DefaultDict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterator(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var NDFrameT : Dynamic;
	static public function ResType(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Uniquify aggfunc name of the pairs in the order list
		
		Examples:
		--------
		>>> kwarg_list = [('a', '<lambda>'), ('a', '<lambda>'), ('b', '<lambda>')]
		>>> _make_unique_kwarg_list(kwarg_list)
		[('a', '<lambda>_0'), ('a', '<lambda>_1'), ('b', '<lambda>')]
	**/
	static public function _make_unique_kwarg_list(seq:Dynamic):Dynamic;
	/**
		Possibly mangle a list of aggfuncs.
		
		Parameters
		----------
		aggfuncs : Sequence
		
		Returns
		-------
		mangled: list-like
		    A new AggSpec sequence, where lambdas have been converted
		    to have unique names.
		
		Notes
		-----
		If just one aggfunc is passed, the name will not be mangled.
	**/
	static public function _managle_lambda_list(aggfuncs:Dynamic):Dynamic;
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
		Helper to pass an explicit dtype when instantiating an empty Series.
		
		This silences a DeprecationWarning described in GitHub-17261.
		
		Parameters
		----------
		data : Mirrored from Series.__init__
		index : Mirrored from Series.__init__
		dtype : Mirrored from Series.__init__
		name : Mirrored from Series.__init__
		copy : Mirrored from Series.__init__
		fastpath : Mirrored from Series.__init__
		dtype_if_empty : str, numpy.dtype, or ExtensionDtype
		    This dtype will be passed explicitly if an empty Series will
		    be instantiated.
		
		Returns
		-------
		Series
	**/
	static public function create_series_with_explicit_dtype(?data:Dynamic, ?index:Dynamic, ?dtype:Dynamic, ?name:Dynamic, ?copy:Dynamic, ?fastpath:Dynamic, ?dtype_if_empty:Dynamic):Dynamic;
	/**
		Wrap datetime64 and timedelta64 ndarrays in DatetimeArray/TimedeltaArray.
	**/
	static public function ensure_wrapped_if_datetimelike(arr:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		construct and return a row or column based frame apply object
	**/
	static public function frame_apply(obj:Dynamic, func:Dynamic, ?axis:Dynamic, ?raw:Dynamic, ?result_type:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
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
		Check whether kwargs passed to .agg look like multi-agg with relabeling.
		
		Parameters
		----------
		**kwargs : dict
		
		Returns
		-------
		bool
		
		Examples
		--------
		>>> is_multi_agg_with_relabel(a="max")
		False
		>>> is_multi_agg_with_relabel(a_max=("a", "max"), a_min=("a", "min"))
		True
		>>> is_multi_agg_with_relabel()
		False
	**/
	static public function is_multi_agg_with_relabel(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return a boolean if we have a nested object, e.g. a Series with 1 or
		more Series elements
		
		This may not be necessarily be performant.
	**/
	static public function is_nested_object(obj:Dynamic):Dynamic;
	/**
		Check if the object is a sequence of objects.
		String types are not included as sequences here.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_sequence : bool
		    Whether `obj` is a sequence of objects.
		
		Examples
		--------
		>>> l = [1, 2, 3]
		>>>
		>>> is_sequence(l)
		True
		>>> is_sequence(iter(l))
		False
	**/
	static public function is_sequence(obj:Dynamic):Bool;
	/**
		Make new lambdas with unique names.
		
		Parameters
		----------
		agg_spec : Any
		    An argument to GroupBy.agg.
		    Non-dict-like `agg_spec` are pass through as is.
		    For dict-like `agg_spec` a new spec is returned
		    with name-mangled lambdas.
		
		Returns
		-------
		mangled : Any
		    Same type as the input.
		
		Examples
		--------
		>>> maybe_mangle_lambdas('sum')
		'sum'
		>>> maybe_mangle_lambdas([lambda: 1, lambda: 2])  # doctest: +SKIP
		[<function __main__.<lambda_0>,
		 <function pandas...._make_lambda.<locals>.f(*args, **kwargs)>]
	**/
	static public function maybe_mangle_lambdas(agg_spec:Dynamic):Dynamic;
	/**
		Normalize user-provided "named aggregation" kwargs.
		Transforms from the new ``Mapping[str, NamedAgg]`` style kwargs
		to the old Dict[str, List[scalar]]].
		
		Parameters
		----------
		kwargs : dict
		
		Returns
		-------
		aggspec : dict
		    The transformed kwargs.
		columns : List[str]
		    The user-provided keys.
		col_idx_order : List[int]
		    List of columns indices.
		
		Examples
		--------
		>>> normalize_keyword_aggregation({"output": ("input", "sum")})
		(defaultdict(<class 'list'>, {'input': ['sum']}), ('output',), array([0]))
	**/
	static public function normalize_keyword_aggregation(kwargs:Dynamic):python.Dict<Dynamic, Dynamic>;
	/**
		This is the internal function to reconstruct func given if there is relabeling
		or not and also normalize the keyword to get new order of columns.
		
		If named aggregation is applied, `func` will be None, and kwargs contains the
		column and aggregation function information to be parsed;
		If named aggregation is not applied, `func` is either string (e.g. 'min') or
		Callable, or list of them (e.g. ['min', np.max]), or the dictionary of column name
		and str/Callable/list of them (e.g. {'A': 'min'}, or {'A': [np.min, lambda x: x]})
		
		If relabeling is True, will return relabeling, reconstructed func, column
		names, and the reconstructed order of columns.
		If relabeling is False, the columns and order will be None.
		
		Parameters
		----------
		func: agg function (e.g. 'min' or Callable) or list of agg functions
		    (e.g. ['min', np.max]) or dictionary (e.g. {'A': ['min', np.max]}).
		**kwargs: dict, kwargs used in is_multi_agg_with_relabel and
		    normalize_keyword_aggregation function for relabelling
		
		Returns
		-------
		relabelling: bool, if there is relabelling or not
		func: normalized and mangled func
		columns: list of column names
		order: list of columns indices
		
		Examples
		--------
		>>> reconstruct_func(None, **{"foo": ("col", "min")})
		(True, defaultdict(<class 'list'>, {'col': ['min']}), ('foo',), array([0]))
		
		>>> reconstruct_func("min")
		(False, 'min', None, None)
	**/
	static public function reconstruct_func(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Internal function to reorder result if relabelling is True for
		dataframe.agg, and return the reordered result in dict.
		
		Parameters:
		----------
		result: Result from aggregation
		func: Dict of (column name, funcs)
		columns: New columns name for relabelling
		order: New order for relabelling
		
		Examples:
		---------
		>>> result = DataFrame({"A": [np.nan, 2, np.nan],
		...       "C": [6, np.nan, np.nan], "B": [np.nan, 4, 2.5]})  # doctest: +SKIP
		>>> funcs = {"A": ["max"], "C": ["max"], "B": ["mean", "min"]}
		>>> columns = ("foo", "aab", "bar", "dat")
		>>> order = [0, 1, 2, 3]
		>>> _relabel_result(result, func, columns, order)  # doctest: +SKIP
		dict(A=Series([2.0, NaN, NaN, NaN], index=["foo", "aab", "bar", "dat"]),
		     C=Series([NaN, 6.0, NaN, NaN], index=["foo", "aab", "bar", "dat"]),
		     B=Series([NaN, NaN, 2.5, 4.0], index=["foo", "aab", "bar", "dat"]))
	**/
	static public function relabel_result(result:Dynamic, func:Dynamic, columns:Dynamic, order:Dynamic):Dynamic;
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
		Validates types of user-provided "named aggregation" kwargs.
		`TypeError` is raised if aggfunc is not `str` or callable.
		
		Parameters
		----------
		kwargs : dict
		
		Returns
		-------
		columns : List[str]
		    List of user-provied keys.
		func : List[Union[str, callable[...,Any]]]
		    List of user-provided aggfuncs
		
		Examples
		--------
		>>> validate_func_kwargs({'one': 'min', 'two': 'max'})
		(['one', 'two'], ['min', 'max'])
	**/
	static public function validate_func_kwargs(kwargs:Dynamic):Dynamic;
}