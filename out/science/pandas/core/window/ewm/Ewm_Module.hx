/* This file is generated, do not edit! */
package pandas.core.window.ewm;
@:pythonImport("pandas.core.window.ewm") extern class Ewm_Module {
	static public function Axis(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public function TimedeltaConvertibleTypes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the diff of the times divided by the half-life. These values are used in
		the calculation of the ewm mean.
		
		Parameters
		----------
		times : str, np.ndarray, Series, default None
		    Times corresponding to the observations. Must be monotonically increasing
		    and ``datetime64[ns]`` dtype.
		halflife : float, str, timedelta, optional
		    Half-life specifying the decay
		
		Returns
		-------
		np.ndarray
		    Diff of the times divided by the half-life
	**/
	static public function _calculate_deltas(times:Dynamic, halflife:Dynamic):Dynamic;
	static public var _shared_docs : Dynamic;
	static public var annotations : Dynamic;
	static public var args_compat : Dynamic;
	/**
		Create numpydoc section header
	**/
	static public function create_section_header(header:Dynamic):Dynamic;
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
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	/**
		Generate a numba jitted ewm mean or sum function specified by values
		from engine_kwargs.
		
		Parameters
		----------
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		com : float
		adjust : bool
		ignore_na : bool
		deltas : numpy.ndarray
		normalize : bool
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_ewm_func(engine_kwargs:Dynamic, com:Dynamic, adjust:Dynamic, ignore_na:Dynamic, deltas:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Generate a numba jitted ewm mean or sum function applied table wise specified
		by values from engine_kwargs.
		
		Parameters
		----------
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		com : float
		adjust : bool
		ignore_na : bool
		deltas : numpy.ndarray
		normalize: bool
		
		Returns
		-------
		Numba function
	**/
	static public function generate_numba_ewm_table_func(engine_kwargs:Dynamic, com:Dynamic, adjust:Dynamic, ignore_na:Dynamic, deltas:Dynamic, normalize:Dynamic):Dynamic;
	/**
		Generate a numba jitted groupby ewma function specified by values
		from engine_kwargs.
		Parameters
		----------
		engine_kwargs : dict
		    dictionary of arguments to be passed into numba.jit
		Returns
		-------
		Numba function
	**/
	static public function generate_online_numba_ewma_func(engine_kwargs:Dynamic):Dynamic;
	static public function get_center_of_mass(comass:Dynamic, span:Dynamic, halflife:Dynamic, alpha:Dynamic):Dynamic;
	/**
		Check whether the provided array or dtype is of the datetime64[ns] dtype.
		
		Parameters
		----------
		arr_or_dtype : array-like or dtype
		    The array or dtype to check.
		
		Returns
		-------
		bool
		    Whether or not the array or dtype is of the datetime64[ns] dtype.
		
		Examples
		--------
		>>> is_datetime64_ns_dtype(str)
		False
		>>> is_datetime64_ns_dtype(int)
		False
		>>> is_datetime64_ns_dtype(np.datetime64)  # no unit
		False
		>>> is_datetime64_ns_dtype(DatetimeTZDtype("ns", "US/Eastern"))
		True
		>>> is_datetime64_ns_dtype(np.array(['a', 'b']))
		False
		>>> is_datetime64_ns_dtype(np.array([1, 2]))
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype="datetime64"))  # no unit
		False
		>>> is_datetime64_ns_dtype(np.array([], dtype="datetime64[ps]"))  # wrong unit
		False
		>>> is_datetime64_ns_dtype(pd.DatetimeIndex([1, 2, 3], dtype="datetime64[ns]"))
		True
	**/
	static public function is_datetime64_ns_dtype(arr_or_dtype:Dynamic):Dynamic;
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
	static public var kwargs_compat : Dynamic;
	/**
		Signal whether to use numba routines.
	**/
	static public function maybe_use_numba(engine:Dynamic):Dynamic;
	static public var numba_notes : Dynamic;
	static public var template_header : Dynamic;
	static public var template_returns : Dynamic;
	static public var template_see_also : Dynamic;
	static public function window_agg_numba_parameters(?version:Dynamic):Dynamic;
	static public function zsqrt(x:Dynamic):Dynamic;
}