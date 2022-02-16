/* This file is generated, do not edit! */
package pandas.core.window.expanding;
@:pythonImport("pandas.core.window.expanding", "Expanding") extern class Expanding {
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
	public function ___init__(obj:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?selection:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?axis:Dynamic, ?method:Dynamic, ?selection:Dynamic):Void;
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
	/**
		Validate and finalize result.
	**/
	public function _resolve_output(out:Dynamic, obj:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	public function _validate():Dynamic;
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
		pandas.DataFrame.aggregate : Similar DataFrame method.
		pandas.Series.aggregate : Similar Series method.
		
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
		
		>>> df.ewm(alpha=0.5).mean()
		          A         B         C
		0  1.000000  4.000000  7.000000
		1  1.666667  4.666667  7.666667
		2  2.428571  5.428571  8.428571
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
		pandas.DataFrame.aggregate : Similar DataFrame method.
		pandas.Series.aggregate : Similar Series method.
		
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
		
		>>> df.ewm(alpha=0.5).mean()
		          A         B         C
		0  1.000000  4.000000  7.000000
		1  1.666667  4.666667  7.666667
		2  2.428571  5.428571  8.428571
	**/
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding custom aggregation function.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.apply : Aggregating apply for Series.
		pandas.DataFrame.apply : Aggregating apply for DataFrame.
	**/
	public function apply(func:Dynamic, ?raw:Dynamic, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Calculate the expanding correlation.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
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
	**/
	public function corr(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding count of non NaN observations.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.count : Aggregating count for Series.
		pandas.DataFrame.count : Aggregating count for DataFrame.
	**/
	public function count():Dynamic;
	/**
		Calculate the expanding sample covariance.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.cov : Aggregating cov for Series.
		pandas.DataFrame.cov : Aggregating cov for DataFrame.
	**/
	public function cov(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	/**
		Calculate the expanding Fisher's definition of kurtosis without bias.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
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
		>>> print(f"{scipy.stats.kurtosis(arr, bias=False):.6f}")
		4.999874
		>>> s = pd.Series(arr)
		>>> s.expanding(4).kurt()
		0         NaN
		1         NaN
		2         NaN
		3   -1.200000
		4    4.999874
		dtype: float64
	**/
	public function kurt(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding maximum.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.max : Aggregating max for Series.
		pandas.DataFrame.max : Aggregating max for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function max(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding mean.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.mean : Aggregating mean for Series.
		pandas.DataFrame.mean : Aggregating mean for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding median.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.median : Aggregating median for Series.
		pandas.DataFrame.median : Aggregating median for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function median(?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding minimum.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.min : Aggregating min for Series.
		pandas.DataFrame.min : Aggregating min for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function min(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		Calculate the expanding quantile.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.quantile : Aggregating quantile for Series.
		pandas.DataFrame.quantile : Aggregating quantile for DataFrame.
	**/
	public function quantile(quantile:Dynamic, ?interpolation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding rank.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.rank : Aggregating rank for Series.
		pandas.DataFrame.rank : Aggregating rank for DataFrame.
		
		Examples
		--------
		>>> s = pd.Series([1, 4, 2, 3, 5, 3])
		>>> s.expanding().rank()
		0    1.0
		1    2.0
		2    2.0
		3    3.0
		4    5.0
		5    3.5
		dtype: float64
		
		>>> s.expanding().rank(method="max")
		0    1.0
		1    2.0
		2    2.0
		3    3.0
		4    5.0
		5    4.0
		dtype: float64
		
		>>> s.expanding().rank(method="min")
		0    1.0
		1    2.0
		2    2.0
		3    3.0
		4    5.0
		5    3.0
		dtype: float64
	**/
	public function rank(?method:Dynamic, ?ascending:Dynamic, ?pct:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding standard error of mean.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.sem : Aggregating sem for Series.
		pandas.DataFrame.sem : Aggregating sem for DataFrame.
		
		Notes
		-----
		A minimum of one period is required for the calculation.
		
		Examples
		--------
		>>> s = pd.Series([0, 1, 2, 3])
		
		>>> s.expanding().sem()
		0         NaN
		1    0.707107
		2    0.707107
		3    0.745356
		dtype: float64
	**/
	public function sem(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding unbiased skewness.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.skew : Aggregating skew for Series.
		pandas.DataFrame.skew : Aggregating skew for DataFrame.
		
		Notes
		-----
		A minimum of three periods is required for the rolling calculation.
	**/
	public function skew(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding standard deviation.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.std : Aggregating std for Series.
		pandas.DataFrame.std : Aggregating std for DataFrame.
		
		Notes
		-----
		The default ``ddof`` of 1 used in :meth:`Series.std` is different
		than the default ``ddof`` of 0 in :func:`numpy.std`.
		
		A minimum of one period is required for the rolling calculation.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		
		>>> s.expanding(3).std()
		0         NaN
		1         NaN
		2    0.577350
		3    0.957427
		4    0.894427
		5    0.836660
		6    0.786796
		dtype: float64
	**/
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding sum.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.sum : Aggregating sum for Series.
		pandas.DataFrame.sum : Aggregating sum for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function sum(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
	/**
		Calculate the expanding variance.
		
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
		pandas.Series.expanding : Calling expanding with Series data.
		pandas.DataFrame.expanding : Calling expanding with DataFrames.
		pandas.Series.var : Aggregating var for Series.
		pandas.DataFrame.var : Aggregating var for DataFrame.
		
		Notes
		-----
		The default ``ddof`` of 1 used in :meth:`Series.var` is different
		than the default ``ddof`` of 0 in :func:`numpy.var`.
		
		A minimum of one period is required for the rolling calculation.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		
		>>> s.expanding(3).var()
		0         NaN
		1         NaN
		2    0.333333
		3    0.916667
		4    0.800000
		5    0.700000
		6    0.619048
		dtype: float64
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var win_type : Dynamic;
}