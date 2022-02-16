/* This file is generated, do not edit! */
package pandas.core.window.rolling;
@:pythonImport("pandas.core.window.rolling", "Window") extern class Window {
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
		Rolling with weights statistical measure using supplied function.
		
		Designed to be used with passed-in Cython array-based functions.
		
		Parameters
		----------
		func : callable function to apply
		name : str,
		use_numba_cache : tuple
		    unused
		numba_args : tuple
		    unused
		**kwargs
		    additional arguments for scipy windows if necessary
		
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
	/**
		Center the result in the window for weighted rolling aggregations.
	**/
	public function _center_window(result:Dynamic, offset:Dynamic):Dynamic;
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
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply.
		
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
		
		>>> df.rolling(2, win_type="boxcar").agg("mean")
		     A    B    C
		0  NaN  NaN  NaN
		1  1.5  4.5  7.5
		2  2.5  5.5  8.5
	**/
	public function agg(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		Parameters
		----------
		func : function, str, list or dict
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply.
		
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
		
		>>> df.rolling(2, win_type="boxcar").agg("mean")
		     A    B    C
		0  NaN  NaN  NaN
		1  1.5  4.5  7.5
		2  2.5  5.5  8.5
	**/
	public function aggregate(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	/**
		Calculate the rolling weighted window mean.
		
		Parameters
		----------
		**kwargs
		    Keyword arguments to configure the ``SciPy`` weighted window type.
		
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
	**/
	public function mean(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		Calculate the rolling weighted window standard deviation.
		
		.. versionadded:: 1.0.0 
		
		Parameters
		----------
		**kwargs
		    Keyword arguments to configure the ``SciPy`` weighted window type.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.std : Aggregating std for Series.
		pandas.DataFrame.std : Aggregating std for DataFrame.
	**/
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling weighted window sum.
		
		Parameters
		----------
		**kwargs
		    Keyword arguments to configure the ``SciPy`` weighted window type.
		
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
	**/
	public function sum(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
	/**
		Calculate the rolling weighted window variance.
		
		.. versionadded:: 1.0.0 
		
		Parameters
		----------
		**kwargs
		    Keyword arguments to configure the ``SciPy`` weighted window type.
		
		Returns
		-------
		Series or DataFrame
		    Return type is the same as the original object with ``np.float64`` dtype.
		
		See Also
		--------
		pandas.Series.rolling : Calling rolling with Series data.
		pandas.DataFrame.rolling : Calling rolling with DataFrames.
		pandas.Series.var : Aggregating var for Series.
		pandas.DataFrame.var : Aggregating var for DataFrame.
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var win_type : Dynamic;
}