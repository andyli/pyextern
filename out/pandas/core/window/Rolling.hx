/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window", "Rolling") extern class Rolling {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?freq:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic):Void;
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
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates the total memory usage for a object that returns
		either a value or Series of values
	**/
	public function __sizeof__():Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		provide a nice str repr of our rolling object 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _agg_doc : Dynamic;
	/**
		provide an implementation for the aggregators
		
		Parameters
		----------
		arg : string, dict, function
		*args : args to pass on to the function
		**kwargs : kwargs to pass on to the function
		
		Returns
		-------
		tuple of result, how
		
		Notes
		-----
		how can be a string describe the required post-processing, or
		None if not required
	**/
	public function _aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic):Dynamic;
	/**
		Rolling statistical measure using supplied function. Designed to be
		used with passed-in Cython array-based functions.
		
		Parameters
		----------
		func : string/callable to apply
		window : int/array, default to _get_window()
		center : boolean, default to self.center
		check_minp : function, default to _use_window
		how : string, default to None (DEPRECATED)
		    how to resample
		
		Returns
		-------
		y : type of input
	**/
	public function _apply(func:Dynamic, ?window:Dynamic, ?center:Dynamic, ?check_minp:Dynamic, ?how:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _attributes : Dynamic;
	static public var _builtin_table : Dynamic;
	/**
		center the result in the window 
	**/
	public function _center_window(result:Dynamic, window:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		resample according to the how, return a new object 
	**/
	public function _convert_freq(?how:Dynamic):Dynamic;
	/**
		split data into blocks & return conformed data 
	**/
	public function _create_blocks(how:Dynamic):Dynamic;
	static public var _cython_table : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	public function _get_window(?other:Dynamic):Dynamic;
	/**
		sub-classes to define
		return a sliced object
		
		Parameters
		----------
		key : string / list of selections
		ndim : 1,2
		    requested ndim of result
		subset : object, default None
		    subset to act on
	**/
	public function _gotitem(key:Dynamic, ndim:Dynamic, ?subset:Dynamic):Dynamic;
	static public var _internal_names : Dynamic;
	static public var _internal_names_set : Dynamic;
	/**
		if we define an builtin function for this argument, return it,
		otherwise return the arg
	**/
	public function _is_builtin_func(arg:Dynamic):Dynamic;
	/**
		if we define an internal function for this argument, return it 
	**/
	public function _is_cython_func(arg:Dynamic):Dynamic;
	static public var _obj_with_exclusions : Dynamic;
	public function _prep_values(?values:Dynamic, ?kill_inf:Dynamic, ?how:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	static public var _see_also_template : Dynamic;
	static public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	public function _setup():Dynamic;
	/**
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _window_type : Dynamic;
	/**
		wrap a single result 
	**/
	public function _wrap_result(result:Dynamic, ?block:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		wrap the results
		
		Paramters
		---------
		results : list of ndarrays
		blocks : list of blocks
		obj : conformed data (may be resampled)
	**/
	public function _wrap_results(results:Dynamic, blocks:Dynamic, obj:Dynamic):Dynamic;
	/**
		Aggregate using input function or dict of {column ->
		function}
		
		Parameters
		----------
		arg : function or dict
		    Function to use for aggregating groups. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. If
		    passed a dict, the keys must be DataFrame column names.
		
		    Accepted Combinations are:
		      - string cythonized function name
		      - function
		      - list of functions
		      - dict of columns -> functions
		      - nested dict of names -> dicts of functions
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		Returns
		-------
		aggregated : DataFrame
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function agg(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		Aggregate using input function or dict of {column ->
		function}
		
		Parameters
		----------
		arg : function or dict
		    Function to use for aggregating groups. If a function, must either
		    work when passed a DataFrame or when passed to DataFrame.apply. If
		    passed a dict, the keys must be DataFrame column names.
		
		    Accepted Combinations are:
		      - string cythonized function name
		      - function
		      - list of functions
		      - dict of columns -> functions
		      - nested dict of names -> dicts of functions
		
		Notes
		-----
		Numpy functions mean/median/prod/sum/std/var are special cased so the
		default behavior is applying the function along axis=0
		(e.g., np.mean(arr_2d, axis=0)) as opposed to
		mimicking the default Numpy behavior (e.g., np.mean(arr_2d)).
		
		Returns
		-------
		aggregated : DataFrame
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):pandas.DataFrame;
	/**
		rolling function apply
		
		Parameters
		----------
		func : function
		    Must produce a single value from an ndarray input
		    \*args and \*\*kwargs are passed to the function
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function apply(func:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		rolling sample correlation
		
		Parameters
		----------
		other : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to self and produce pairwise output
		pairwise : bool, default None
		    If False then only matching columns between self and other will be used
		    and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a Panel in the case of DataFrame inputs. In the case of
		    missing elements, only complete pairwise observations will be used.
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function corr(?other:Dynamic, ?pairwise:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling count of number of non-NaN
		    observations inside provided window.
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function count():Dynamic;
	/**
		rolling sample covariance
		
		Parameters
		----------
		other : Series, DataFrame, or ndarray, optional
		    if not supplied then will default to self and produce pairwise output
		pairwise : bool, default None
		    If False then only matching columns between self and other will be used
		    and the output will be a DataFrame.
		    If True then all pairwise combinations will be calculated and the
		    output will be a Panel in the case of DataFrame inputs. In the case of
		    missing elements, only complete pairwise observations will be used.
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function cov(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	/**
		Unbiased rolling kurtosis
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function kurt(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling maximum
		
		Parameters
		----------
		how : string, default 'max' (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function max(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling mean
		
		Parameters
		----------
		how : string, default None (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function mean(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling median
		
		Parameters
		----------
		how : string, default 'median' (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function median(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling minimum
		
		Parameters
		----------
		how : string, default 'min' (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function min(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var name : Dynamic;
	static public var ndim : Dynamic;
	/**
		rolling quantile
		
		Parameters
		----------
		quantile : float
		    0 <= quantile <= 1
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function quantile(quantile:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unbiased rolling skewness
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function skew(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling standard deviation
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function std(?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling sum
		
		Parameters
		----------
		how : string, default None (DEPRECATED)
		    Method for down- or re-sampling
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	public function sum(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		rolling variance
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
	**/
	@:native("var")
	public function _var(?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}