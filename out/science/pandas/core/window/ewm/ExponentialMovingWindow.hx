/* This file is generated, do not edit! */
package pandas.core.window.ewm;
@:pythonImport("pandas.core.window.ewm", "ExponentialMovingWindow") extern class ExponentialMovingWindow {
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
	public function ___init__(obj:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?adjust:Dynamic, ?ignore_na:Dynamic, ?axis:Dynamic, ?times:Dynamic, ?method:Dynamic, ?selection:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?com:Dynamic, ?span:Dynamic, ?halflife:Dynamic, ?alpha:Dynamic, ?min_periods:Dynamic, ?adjust:Dynamic, ?ignore_na:Dynamic, ?axis:Dynamic, ?times:Dynamic, ?method:Dynamic, ?selection:Dynamic):Void;
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
		pandas.DataFrame.rolling.aggregate
		
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
		pandas.DataFrame.rolling.aggregate
		
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
		Calculate the ewm (exponential weighted moment) sample correlation.
		
		Parameters
		----------
		other : Series or DataFrame, optional
		    If not supplied then will default to self and produce pairwise
		    output.
		pairwise : bool, default None
		    If False then only matching columns between self and other will be
		    used and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a MultiIndex DataFrame in the case of DataFrame
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
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.corr : Aggregating corr for Series.
		pandas.DataFrame.corr : Aggregating corr for DataFrame.
	**/
	public function corr(?other:Dynamic, ?pairwise:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the ewm (exponential weighted moment) sample covariance.
		
		Parameters
		----------
		other : Series or DataFrame , optional
		    If not supplied then will default to self and produce pairwise
		    output.
		pairwise : bool, default None
		    If False then only matching columns between self and other will be
		    used and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a MultiIndex DataFrame in the case of DataFrame
		    inputs. In the case of missing elements, only complete pairwise
		    observations will be used.
		bias : bool, default False
		    Use a standard estimation bias correction.
		**kwargs
		    For NumPy compatibility and will not have an effect on the result.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.cov : Aggregating cov for Series.
		pandas.DataFrame.cov : Aggregating cov for DataFrame.
	**/
	public function cov(?other:Dynamic, ?pairwise:Dynamic, ?bias:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	/**
		Calculate the ewm (exponential weighted moment) mean.
		
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
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.mean : Aggregating mean for Series.
		pandas.DataFrame.mean : Aggregating mean for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		Return an ``OnlineExponentialMovingWindow`` object to calculate
		exponentially moving window aggregations in an online method.
		
		.. versionadded:: 1.3.0
		
		Parameters
		----------
		engine: str, default ``'numba'``
		    Execution engine to calculate online aggregations.
		    Applies to all supported aggregation methods.
		
		engine_kwargs : dict, default None
		    Applies to all supported aggregation methods.
		
		    * For ``'numba'`` engine, the engine can accept ``nopython``, ``nogil``
		      and ``parallel`` dictionary keys. The values must either be ``True`` or
		      ``False``. The default ``engine_kwargs`` for the ``'numba'`` engine is
		      ``{{'nopython': True, 'nogil': False, 'parallel': False}}`` and will be
		      applied to the function
		
		Returns
		-------
		OnlineExponentialMovingWindow
	**/
	public function online(?engine:Dynamic, ?engine_kwargs:Dynamic):Dynamic;
	/**
		Calculate the ewm (exponential weighted moment) standard deviation.
		
		Parameters
		----------
		bias : bool, default False
		    Use a standard estimation bias correction.
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
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.std : Aggregating std for Series.
		pandas.DataFrame.std : Aggregating std for DataFrame.
	**/
	public function std(?bias:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the ewm (exponential weighted moment) sum.
		
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
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.sum : Aggregating sum for Series.
		pandas.DataFrame.sum : Aggregating sum for DataFrame.
		
		Notes
		-----
		See :ref:`window.numba_engine` and :ref:`enhancingperf.numba` for extended documentation and performance considerations for the Numba engine.
	**/
	public function sum(?args:python.VarArgs<Dynamic>, ?engine:Dynamic, ?engine_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
	/**
		Calculate the ewm (exponential weighted moment) variance.
		
		Parameters
		----------
		bias : bool, default False
		    Use a standard estimation bias correction.
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
		pandas.Series.ewm : Calling ewm with Series data.
		pandas.DataFrame.ewm : Calling ewm with DataFrames.
		pandas.Series.var : Aggregating var for Series.
		pandas.DataFrame.var : Aggregating var for DataFrame.
	**/
	@:native("var")
	public function _var(?bias:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function vol(?bias:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var win_type : Dynamic;
}