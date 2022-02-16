/* This file is generated, do not edit! */
package pandas.core.groupby.generic;
@:pythonImport("pandas.core.groupby.generic") extern class Generic_Module {
	static public function AggScalar(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function Hashable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Manager(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Manager2D(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Mapping(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var ScalarResult : Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function SingleManager(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _agg_template : Dynamic;
	static public var _apply_docs : Dynamic;
	static public var _transform_template : Dynamic;
	static public function _wrap_transform_general_frame(obj:Dynamic, group:Dynamic, res:Dynamic):Dynamic;
	/**
		Determine if all indexes contain the same elements.
		
		Parameters
		----------
		indexes : iterable of Index objects
		
		Returns
		-------
		bool
		    True if all indexes contain the same elements, False otherwise.
	**/
	static public function all_indexes_same(indexes:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Make box plots from DataFrameGroupBy data.
		
		Parameters
		----------
		grouped : Grouped DataFrame
		subplots : bool
		    * ``False`` - no subplots will be used
		    * ``True`` - create a subplot for each group.
		
		column : column name or list of names, or vector
		    Can be any valid input to groupby.
		fontsize : int or str
		rot : label rotation angle
		grid : Setting this to True will show the grid
		ax : Matplotlib axis object, default None
		figsize : A tuple (width, height) in inches
		layout : tuple (optional)
		    The layout of the plot: (rows, columns).
		sharex : bool, default False
		    Whether x-axes will be shared among subplots.
		sharey : bool, default True
		    Whether y-axes will be shared among subplots.
		backend : str, default None
		    Backend to use instead of the backend specified in the option
		    ``plotting.backend``. For instance, 'matplotlib'. Alternatively, to
		    specify the ``plotting.backend`` for the whole session, set
		    ``pd.options.plotting.backend``.
		
		    .. versionadded:: 1.0.0
		
		**kwargs
		    All other plotting keyword arguments to be passed to
		    matplotlib's boxplot function.
		
		Returns
		-------
		dict of key/value = group key/DataFrame.boxplot return value
		or DataFrame.boxplot return value in case subplots=figures=False
		
		Examples
		--------
		You can create boxplots for grouped data and show them as separate subplots:
		
		.. plot::
		    :context: close-figs
		
		    >>> import itertools
		    >>> tuples = [t for t in itertools.product(range(1000), range(4))]
		    >>> index = pd.MultiIndex.from_tuples(tuples, names=['lvl0', 'lvl1'])
		    >>> data = np.random.randn(len(index),4)
		    >>> df = pd.DataFrame(data, columns=list('ABCD'), index=index)
		    >>> grouped = df.groupby(level='lvl1')
		    >>> grouped.boxplot(rot=45, fontsize=12, figsize=(8,10))  # doctest: +SKIP
		
		The ``subplots=False`` option shows the boxplots in a single figure.
		
		.. plot::
		    :context: close-figs
		
		    >>> grouped.boxplot(subplots=False, rot=45, fontsize=12)  # doctest: +SKIP
	**/
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?backend:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function ensure_int64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Create a property for a GroupBy subclass to dispatch to DataFrame/Series.
		
		Parameters
		----------
		name : str
		klass : {DataFrame, Series}
		
		Returns
		-------
		property
	**/
	static public function generate_property(name:Dynamic, klass:Dynamic):Dynamic;
	/**
		Create and return a BaseGrouper, which is an internal
		mapping of how to create the grouper indexers.
		This may be composed of multiple Grouping objects, indicating
		multiple groupers
		
		Groupers are ultimately index mappings. They can originate as:
		index mappings, keys to columns, functions, or Groupers
		
		Groupers enable local references to axis,level,sort, while
		the passed in axis, level, and sort are 'global'.
		
		This routine tries to figure out what the passing in references
		are and then creates a Grouping for each one, combined into
		a BaseGrouper.
		
		If observed & we have a categorical grouper, only show the observed
		values.
		
		If validate, then check for key/level overlaps.
	**/
	static public function get_grouper(obj:Dynamic, ?key:Dynamic, ?axis:Dynamic, ?level:Dynamic, ?sort:Dynamic, ?observed:Dynamic, ?mutated:Dynamic, ?validate:Dynamic, ?dropna:Dynamic):Dynamic;
	/**
		Return True if given object is boolean.
		
		Returns
		-------
		bool
	**/
	static public function is_bool(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Check whether an array-like or dtype is of the Interval dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array-like or dtype to check.
		
		Returns
		-------
		boolean
		    Whether or not the array-like or dtype is of the Interval dtype.
		
		Examples
		--------
		>>> is_interval_dtype(object)
		False
		>>> is_interval_dtype(IntervalDtype())
		True
		>>> is_interval_dtype([1, 2, 3])
		False
		>>>
		>>> interval = pd.Interval(1, 2, closed="right")
		>>> is_interval_dtype(interval)
		False
		>>> is_interval_dtype(pd.IntervalIndex([interval]))
		True
	**/
	static public function is_interval_dtype(arr_or_dtype:Dynamic):Dynamic;
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
		Signal whether to use numba routines.
	**/
	static public function maybe_use_numba(engine:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indicates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : Boolean inverse of pandas.notna.
		Series.notna : Detect valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(pd.NA)
		False
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
	/**
		Create GroupBy member defs for DataFrame/Series names in a allowlist.
		
		Parameters
		----------
		klass : DataFrame or Series class
		    class where members are defined.
		allowlist : frozenset[str]
		    Set of names of klass methods to be constructed
		
		Returns
		-------
		class decorator
		
		Notes
		-----
		Since we don't want to override methods explicitly defined in the
		base class, any such name is skipped.
	**/
	static public function pin_allowlisted_properties(klass:Dynamic, allowlist:Dynamic):Dynamic;
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
	static public function warn_dropping_nuisance_columns_deprecated(cls:Dynamic, how:Dynamic):Dynamic;
}