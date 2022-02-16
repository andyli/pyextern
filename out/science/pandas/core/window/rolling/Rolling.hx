/* This file is generated, do not edit! */
package pandas.core.window.rolling;
@:pythonImport("pandas.core.window.rolling", "Rolling") extern class Rolling {
	static public var __annotations__ : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
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
	public function __getattr__(attr:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	public function __getitem__(key:Dynamic):Dynamic;
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
	public function ___init__(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?method:Dynamic, ?selection:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?method:Dynamic, ?selection:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __iter__():Dynamic;
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
	static public function __new__(cls:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Provide a nice str repr of our rolling object.
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
	static public var __slots__ : Dynamic;
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
		Rolling statistical measure using supplied function.
		
		Designed to be used with passed-in Cython array-based functions.
		
		Parameters
		----------
		func : callable function to apply
		name : str,
		numba_cache_key : tuple
		    caching key to be used to store a compiled numba func
		numba_args : tuple
		    args to be passed when func is a numba func
		**kwargs
		    additional arguments for rolling function and window function
		
		Returns
		-------
		y : type of input
	**/
	public function _apply(func:Dynamic, ?name:Dynamic, ?numba_cache_key:Dynamic, ?numba_args:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply the given function to the DataFrame broken down into homogeneous
		sub-frames.
	**/
	public function _apply_blockwise(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply the given pairwise function given 2 pandas objects (DataFrame/Series)
	**/
	public function _apply_pairwise(target:Dynamic, other:Dynamic, pairwise:Dynamic, func:Dynamic):Dynamic;
	/**
		Series version of _apply_blockwise
	**/
	public function _apply_series(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Apply the given function to the DataFrame across the entire object
	**/
	public function _apply_tablewise(homogeneous_func:Dynamic, ?name:Dynamic):Dynamic;
	static public var _attributes : Dynamic;
	public function _check_window_bounds(start:Dynamic, end:Dynamic, num_vals:Dynamic):Dynamic;
	/**
		Split data into blocks & return conformed data.
	**/
	public function _create_data(obj:Dynamic):Dynamic;
	public function _dir_additions():Dynamic;
	public function _generate_cython_apply_func(args:Dynamic, kwargs:Dynamic, raw:Dynamic, _function:Dynamic):Dynamic;
	/**
		Return an indexer class that will compute the window start and end bounds
	**/
	public function _get_window_indexer():Dynamic;
	/**
		Sub-classes to define. Return a sliced object.
		
		Parameters
		----------
		key : str / list of selections
		ndim : {1, 2}
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	public var _index_array : Dynamic;
	public function _insert_on_column(result:Dynamic, obj:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	static public var _is_protocol : Dynamic;
	public function _numba_apply(func:Dynamic, numba_cache_key_str:Dynamic, ?engine_kwargs:Dynamic, ?func_args:python.VarArgs<Dynamic>):Dynamic;
	public var _obj_with_exclusions : Dynamic;
	/**
		Convert input to numpy arrays for Cython routines
	**/
	public function _prep_values(values:Dynamic):Dynamic;
	public function _raise_monotonic_error():Dynamic;
	/**
		Validate and finalize result.
	**/
	public function _resolve_output(out:Dynamic, obj:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	public function _validate():Dynamic;
	/**
		Validate monotonic (increasing or decreasing).
	**/
	public function _validate_monotonic():Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/Dataframe or when passed to Series/Dataframe.apply.
		
		    Accepted combinations are:
		
		    - function
		    - string function name
		    - list of functions and/or function names, e.g. ``[np.sum, 'mean']``
		    - dict of axis labels -> functions, function names or list of such.
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		scalar, Series or DataFrame
		
		    The return can be:
		
		    * scalar : when Series.agg is called with single function
		    * Series : when DataFrame.agg is called with a single function
		    * DataFrame : when DataFrame.agg is called with several functions
		
		    Return scalar, Series or DataFrame.
		
		See Also
		--------
		pandas.Series.rolling : Calling object with Series data.
		pandas.DataFrame.rolling : Calling object with DataFrame data.
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6], "C": [7, 8, 9]})
		>>> df
		   A  B  C
		0  1  4  7
		1  2  5  8
		2  3  6  9
		
		>>> df.rolling(2).sum()
		     A     B     C
		0  NaN   NaN   NaN
		1  3.0   9.0  15.0
		2  5.0  11.0  17.0
		
		>>> df.rolling(2).agg({"A": "sum", "B": "min"})
		     A    B
		0  NaN  NaN
		1  3.0  4.0
		2  5.0  5.0
	**/
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/Dataframe or when passed to Series/Dataframe.apply.
		
		    Accepted combinations are:
		
		    - function
		    - string function name
		    - list of functions and/or function names, e.g. ``[np.sum, 'mean']``
		    - dict of axis labels -> functions, function names or list of such.
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		scalar, Series or DataFrame
		
		    The return can be:
		
		    * scalar : when Series.agg is called with single function
		    * Series : when DataFrame.agg is called with a single function
		    * DataFrame : when DataFrame.agg is called with several functions
		
		    Return scalar, Series or DataFrame.
		
		See Also
		--------
		pandas.Series.rolling : Calling object with Series data.
		pandas.DataFrame.rolling : Calling object with DataFrame data.
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		Functions that mutate the passed object can produce unexpected
		behavior or errors and are not supported. See :ref:`gotchas.udf-mutation`
		for more details.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		>>> df = pd.DataFrame({"A": [1, 2, 3], "B": [4, 5, 6], "C": [7, 8, 9]})
		>>> df
		   A  B  C
		0  1  4  7
		1  2  5  8
		2  3  6  9
		
		>>> df.rolling(2).sum()
		     A     B     C
		0  NaN   NaN   NaN
		1  3.0   9.0  15.0
		2  5.0  11.0  17.0
		
		>>> df.rolling(2).agg({"A": "sum", "B": "min"})
		     A    B
		0  NaN  NaN
		1  3.0  4.0
		2  5.0  5.0
	**/
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling custom aggregation function.
		
		Parameters
		----------
		func : function
		    Must produce a single value from an ndarray input if ``raw=True``
		    or a single value from a Series if ``raw=False``. Can also accept a
		    Numba JIT function with ``engine='numba'`` specified.
		
		    .. versionchanged:: 1.0.0
		
		raw : bool, default False
		    * ``False`` : passes each row or column as a Series to the
		      function.
		    * ``True`` : the passed function will receive ndarray
		      objects instead.
		      If you are just applying a NumPy reduction function this will
		      achieve much better performance.
		
		engine : str, default None
		    * ``'cython'`` : Runs rolling apply through C-extensions from cython.
		    * ``'numba'`` : Runs rolling apply through JIT compiled code from numba.
		      Only available when ``raw`` is set to ``True``.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.0.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}`` and will be
		      applied to both the ``func`` and the ``apply`` rolling aggregation.
		
		      .. versionadded:: 1.0.0
		
		args : tuple, default None
		    Positional arguments to be passed into func.
		
		kwargs : dict, default None
		    Keyword arguments to be passed into func.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.apply : Aggregating apply for Series.
		pandas.DataFrame.apply : Aggregating apply for DataFrame.
	**/
	public function apply(func:Dynamic, ?raw:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Calculate the rolling correlation.
		
		Parameters
		----------
		other : Series or DataFrame, optional
		    If not supplied then will default to self and produce pairwise
		    output.
		pairwise : bool, default None
		    If False then only matching columns between self and other will be
		    used and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a MultiIndexed DataFrame in the case of DataFrame
		    inputs. In the case of missing elements, only complete pairwise
		    observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		cov : Similar method to calculate covariance.
		numpy.corrcoef : NumPy Pearson's correlation calculation.
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.corr : Aggregating corr for Series.
		pandas.DataFrame.corr : Aggregating corr for DataFrame.
		
		Notes
		-----
		This function uses Pearson's definition of correlation
		(https://en.wikipedia.org/wiki/Pearson_correlation_coefficient).
		
		When `other` is not specified, the output will be self correlation (e.g.
		all 1's), except for :class:`~pandas.DataFrame` inputs with `pairwise`
		set to `True`.
		
		Function will return ``NaN`` for correlations of equal valued sequences;
		this is the result of a 0/0 division error.
		
		When `pairwise` is set to `False`, only matching columns between `self` and
		`other` will be used.
		
		When `pairwise` is set to `True`, the output will be a MultiIndex DataFrame
		with the original index on the first level, and the `other` DataFrame
		columns on the second level.
		
		In the case of missing elements, only complete pairwise observations
		will be used.
		
		Examples
		--------
		The below example shows a rolling calculation with a window size of
		four matching the equivalent function call using :meth:`numpy.corrcoef`.
		
		>>> v1 = [3, 3, 3, 5, 8]
		>>> v2 = [3, 4, 4, 4, 8]
		>>> # numpy returns a 2X2 array, the correlation coefficient
		>>> # is the number at entry [0][1]
		>>> print(f"{np.corrcoef(v1[:-1], v2[:-1])[0][1]:.6f}")
		0.333333
		>>> print(f"{np.corrcoef(v1[1:], v2[1:])[0][1]:.6f}")
		0.916949
		>>> s1 = pd.Series(v1)
		>>> s2 = pd.Series(v2)
		>>> s1.rolling(4).corr(s2)
		0         NaN
		1         NaN
		2         NaN
		3    0.333333
		4    0.916949
		dtype: float64
		
		The below example shows a similar rolling calculation on a
		DataFrame using the pairwise option.
		
		>>> matrix = np.array([[51., 35.], [49., 30.], [47., 32.],        [46., 31.], [50., 36.]])
		>>> print(np.corrcoef(matrix[:-1,0], matrix[:-1,1]).round(7))
		[[1.         0.6263001]
		 [0.6263001  1.       ]]
		>>> print(np.corrcoef(matrix[1:,0], matrix[1:,1]).round(7))
		[[1.         0.5553681]
		 [0.5553681  1.        ]]
		>>> df = pd.DataFrame(matrix, columns=['X','Y'])
		>>> df
		      X     Y
		0  51.0  35.0
		1  49.0  30.0
		2  47.0  32.0
		3  46.0  31.0
		4  50.0  36.0
		>>> df.rolling(4).corr(pairwise=True)
		            X         Y
		0 X       NaN       NaN
		  Y       NaN       NaN
		1 X       NaN       NaN
		  Y       NaN       NaN
		2 X       NaN       NaN
		  Y       NaN       NaN
		3 X  1.000000  0.626300
		  Y  0.626300  1.000000
		4 X  1.000000  0.555368
		  Y  0.555368  1.000000
	**/
	public function corr(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling count of non NaN observations.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.count : Aggregating count for Series.
		pandas.DataFrame.count : Aggregating count for DataFrame.
		
		Examples
		--------
		>>> s = pd.Series([2, 3, np.nan, 10])
		>>> s.rolling(2).count()
		0    1.0
		1    2.0
		2    1.0
		3    1.0
		dtype: float64
		>>> s.rolling(3).count()
		0    1.0
		1    2.0
		2    2.0
		3    2.0
		dtype: float64
		>>> s.rolling(4).count()
		0    1.0
		1    2.0
		2    2.0
		3    3.0
		dtype: float64
	**/
	public function count():Dynamic;
	/**
		Calculate the rolling sample covariance.
		
		Parameters
		----------
		other : Series or DataFrame, optional
		    If not supplied then will default to self and produce pairwise
		    output.
		pairwise : bool, default None
		    If False then only matching columns between self and other will be
		    used and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a MultiIndexed DataFrame in the case of DataFrame
		    inputs. In the case of missing elements, only complete pairwise
		    observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.cov : Aggregating cov for Series.
		pandas.DataFrame.cov : Aggregating cov for DataFrame.
	**/
	public function cov(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	/**
		Calculate the rolling Fisher's definition of kurtosis without bias.
		
		Parameters
		----------
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		scipy.stats.kurtosis : Reference SciPy method.
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.kurt : Aggregating kurt for Series.
		pandas.DataFrame.kurt : Aggregating kurt for DataFrame.
		
		Notes
		-----
		A minimum of four periods is required for the calculation.
		
		Examples
		--------
		The example below will show a rolling calculation with a window size of
		four matching the equivalent function call using `scipy.stats`.
		
		>>> arr = [1, 2, 3, 4, 999]
		>>> import scipy.stats
		>>> print(f"{scipy.stats.kurtosis(arr[:-1], bias=False):.6f}")
		-1.200000
		>>> print(f"{scipy.stats.kurtosis(arr[1:], bias=False):.6f}")
		3.999946
		>>> s = pd.Series(arr)
		>>> s.rolling(4).kurt()
		0         NaN
		1         NaN
		2         NaN
		3   -1.200000
		4    3.999946
		dtype: float64
	**/
	public function kurt(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling maximum.
		
		Parameters
		----------
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.3.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.3.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.max : Aggregating max for Series.
		pandas.DataFrame.max : Aggregating max for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function max(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling mean.
		
		Parameters
		----------
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.3.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.3.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.mean : Aggregating mean for Series.
		pandas.DataFrame.mean : Aggregating mean for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
		
		Examples
		--------
		The below examples will show rolling mean calculations with window sizes of
		two and three, respectively.
		
		>>> s = pd.Series([1, 2, 3, 4])
		>>> s.rolling(2).mean()
		0    NaN
		1    1.5
		2    2.5
		3    3.5
		dtype: float64
		
		>>> s.rolling(3).mean()
		0    NaN
		1    NaN
		2    2.0
		3    3.0
		dtype: float64
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling median.
		
		Parameters
		----------
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.3.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.3.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.median : Aggregating median for Series.
		pandas.DataFrame.median : Aggregating median for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
		
		Examples
		--------
		Compute the rolling median of a series with a window size of 3.
		
		>>> s = pd.Series([0, 1, 2, 3, 4])
		>>> s.rolling(3).median()
		0    NaN
		1    NaN
		2    1.0
		3    2.0
		4    3.0
		dtype: float64
	**/
	public function median(?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling minimum.
		
		Parameters
		----------
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.3.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.3.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.min : Aggregating min for Series.
		pandas.DataFrame.min : Aggregating min for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
		
		Examples
		--------
		Performing a rolling minimum with a window size of 3.
		
		>>> s = pd.Series([4, 3, 5, 2, 6])
		>>> s.rolling(3).min()
		0    NaN
		1    NaN
		2    3.0
		3    2.0
		4    2.0
		dtype: float64
	**/
	public function min(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		Calculate the rolling quantile.
		
		Parameters
		----------
		quantile : float
		    Quantile to compute. 0 <= quantile <= 1.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.quantile : Aggregating quantile for Series.
		pandas.DataFrame.quantile : Aggregating quantile for DataFrame.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4])
		>>> s.rolling(2).quantile(.4, interpolation='lower')
		0    NaN
		1    1.0
		2    2.0
		3    3.0
		dtype: float64
		
		>>> s.rolling(2).quantile(.4, interpolation='midpoint')
		0    NaN
		1    1.5
		2    2.5
		3    3.5
		dtype: float64
	**/
	public function quantile(quantile:Dynamic, ?interpolation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling rank.
		
		.. versionadded:: 1.4.0 
		
		Parameters
		----------
		method : {'average', 'min', 'max'}, default 'average'
		    How to rank the group of records that have the same value (i.e. ties):
		
		    * average: average rank of the group
		    * min: lowest rank in the group
		    * max: highest rank in the group
		
		ascending : bool, default True
		    Whether or not the elements should be ranked in ascending order.
		pct : bool, default False
		    Whether or not to display the returned rankings in percentile
		    form.
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.rank : Aggregating rank for Series.
		pandas.DataFrame.rank : Aggregating rank for DataFrame.
		
		Examples
		--------
		>>> s = pd.Series([1, 4, 2, 3, 5, 3])
		>>> s.rolling(3).rank()
		0    NaN
		1    NaN
		2    2.0
		3    2.0
		4    3.0
		5    1.5
		dtype: float64
		
		>>> s.rolling(3).rank(method="max")
		0    NaN
		1    NaN
		2    2.0
		3    2.0
		4    3.0
		5    2.0
		dtype: float64
		
		>>> s.rolling(3).rank(method="min")
		0    NaN
		1    NaN
		2    2.0
		3    2.0
		4    3.0
		5    1.0
		dtype: float64
	**/
	public function rank(?method:Dynamic, ?ascending:Dynamic, ?pct:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling standard error of mean.
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.sem : Aggregating sem for Series.
		pandas.DataFrame.sem : Aggregating sem for DataFrame.
		
		Notes
		-----
		A minimum of one period is required for the calculation.
		
		Examples
		--------
		>>> s = pd.Series([0, 1, 2, 3])
		>>> s.rolling(2, min_periods=1).sem()
		0         NaN
		1    0.707107
		2    0.707107
		3    0.707107
		dtype: float64
	**/
	public function sem(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling unbiased skewness.
		
		Parameters
		----------
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		scipy.stats.skew : Third moment of a probability density.
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.skew : Aggregating skew for Series.
		pandas.DataFrame.skew : Aggregating skew for DataFrame.
		
		Notes
		-----
		A minimum of three periods is required for the rolling calculation.
	**/
	public function skew(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling standard deviation.
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.4.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.4.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		numpy.std : Equivalent method for NumPy array.
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.std : Aggregating std for Series.
		pandas.DataFrame.std : Aggregating std for DataFrame.
		
		Notes
		-----
		The default ``ddof`` of 1 used in :meth:`Series.std` is different
		than the default ``ddof`` of 0 in :func:`numpy.std`.
		
		A minimum of one period is required for the rolling calculation.
		
		The implementation is susceptible to floating point imprecision as
		shown in the example below.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		>>> s.rolling(3).std()
		0             NaN
		1             NaN
		2    5.773503e-01
		3    1.000000e+00
		4    1.000000e+00
		5    1.154701e+00
		6    2.580957e-08
		dtype: float64
	**/
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling sum.
		
		Parameters
		----------
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.3.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.3.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.sum : Aggregating sum for Series.
		pandas.DataFrame.sum : Aggregating sum for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
		
		Examples
		--------
		>>> s = pd.Series([1, 2, 3, 4, 5])
		>>> s
		0    1
		1    2
		2    3
		3    4
		4    5
		dtype: int64
		
		>>> s.rolling(3).sum()
		0     NaN
		1     NaN
		2     6.0
		3     9.0
		4    12.0
		dtype: float64
		
		>>> s.rolling(3, center=True).sum()
		0     NaN
		1     6.0
		2     9.0
		3    12.0
		4     NaN
		dtype: float64
		
		For DataFrame, each sum is computed column-wise.
		
		>>> df = pd.DataFrame({"A": s, "B": s ** 2})
		>>> df
		   A   B
		0  1   1
		1  2   4
		2  3   9
		3  4  16
		4  5  25
		
		>>> df.rolling(3).sum()
		      A     B
		0   NaN   NaN
		1   NaN   NaN
		2   6.0  14.0
		3   9.0  29.0
		4  12.0  50.0
	**/
	public function sum(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
	/**
		Calculate the rolling variance.
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		*args
		    For NumPy compatibility and will not have an effect on the result.
		
		engine : str, default None
		    * ``'cython'`` : Runs the operation through C-extensions from cython.
		    * ``'numba'`` : Runs the operation through JIT compiled code from numba.
		    * ``None`` : Defaults to ``'cython'`` or globally setting ``compute.use_numba``
		
		      .. versionadded:: 1.4.0
		
		engine_kwargs : dict, default None
		    * For ``'cython'`` engine, there are no accepted ``engine_kwargs``
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{'nopython': True, 'nogil': False, 'parallel': False}``
		
		      .. versionadded:: 1.4.0
		
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		numpy.var : Equivalent method for NumPy array.
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.var : Aggregating var for Series.
		pandas.DataFrame.var : Aggregating var for DataFrame.
		
		Notes
		-----
		The default ``ddof`` of 1 used in :meth:`Series.var` is different
		than the default ``ddof`` of 0 in :func:`numpy.var`.
		
		A minimum of one period is required for the rolling calculation.
		
		The implementation is susceptible to floating point imprecision as
		shown in the example below.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		>>> s.rolling(3).var()
		0             NaN
		1             NaN
		2    3.333333e-01
		3    1.000000e+00
		4    1.000000e+00
		5    1.333333e+00
		6    6.661338e-16
		dtype: float64
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var win_type : Dynamic;
}