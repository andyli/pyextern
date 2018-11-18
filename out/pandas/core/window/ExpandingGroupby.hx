/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window", "ExpandingGroupby") extern class ExpandingGroupby {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function ___init__(obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Generates the total memory usage for an object that returns
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		provide a nice str repr of our rolling object 
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
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
	public function _aggregate_multiple_funcs(arg:Dynamic, _level:Dynamic, _axis:Dynamic):Dynamic;
	/**
		dispatch to apply; we are stripping all of the _apply kwargs and
		performing the original function call on the grouped object
	**/
	public function _apply(func:Dynamic, name:Dynamic, ?window:Dynamic, ?center:Dynamic, ?check_minp:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function _convert_freq():Dynamic;
	/**
		split data into blocks & return conformed data 
	**/
	public function _create_blocks():Dynamic;
	static public var _cython_table : Dynamic;
	static public var _deprecations : Dynamic;
	/**
		add additional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		dispatch to apply 
	**/
	static public function _dispatch(name:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return index as ndarrays
		
		Returns
		-------
		tuple of (index, index_as_ndarray)
	**/
	public function _get_index(?index:Dynamic):Dynamic;
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
	public var _obj_with_exclusions : Dynamic;
	public var _on : Dynamic;
	public function _prep_values(?values:Dynamic, ?kill_inf:Dynamic):Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	public var _selected_obj : Dynamic;
	static public var _selection : Dynamic;
	public var _selection_list : Dynamic;
	/**
		return a name for myself; this would ideally be called
		the 'name' property, but we cannot conflict with the
		Series.name property which can be set
	**/
	public var _selection_name : Dynamic;
	/**
		return a new object with the replacement attributes 
	**/
	public function _shallow_copy(?obj:Dynamic, ?obj_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		if arg is a string, then try to operate on it:
		- try to find a function (or attribute) on ourselves
		- try to find a numpy function
		- raise
	**/
	public function _try_aggregate_string_function(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var _window_type : Dynamic;
	/**
		wrap a single result 
	**/
	public function _wrap_result(result:Dynamic, ?block:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		wrap the results
		
		Parameters
		----------
		results : list of ndarrays
		blocks : list of blocks
		obj : conformed data (may be resampled)
	**/
	public function _wrap_results(results:Dynamic, blocks:Dynamic, obj:Dynamic):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		
		
		Parameters
		----------
		func : function, string, dictionary, or list of string/functions
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted combinations are:
		
		    - string function name.
		    - function.
		    - list of functions.
		    - dict of column names -> functions (or list of functions).
		
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		aggregated : Series/DataFrame
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'])
		>>> df
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.004295  0.905829 -0.954544
		2  0.735167 -0.165272 -1.619346
		3 -0.702657 -1.340923 -0.706334
		4 -0.246845  0.211596 -0.901819
		5  2.463718  3.157577 -1.380906
		6 -1.142255  2.340594 -0.039875
		7  1.396598 -1.647453  1.677227
		8 -0.543425  1.761277 -0.220481
		9 -0.640505  0.289374 -1.550670
		
		>>> df.ewm(alpha=0.5).mean()
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.464856  0.569633 -0.490089
		2 -0.207700  0.149687 -1.135379
		3 -0.471677 -0.645305 -0.906555
		4 -0.355635 -0.203033 -0.904111
		5  1.076417  1.503943 -1.146293
		6 -0.041654  1.925562 -0.588728
		7  0.680292  0.132049  0.548693
		8  0.067236  0.948257  0.163353
		9 -0.286980  0.618493 -0.694496
		
		See also
		--------
		pandas.DataFrame.expanding.aggregate
		pandas.DataFrame.rolling.aggregate
		pandas.DataFrame.aggregate
	**/
	public function agg(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Aggregate using one or more operations over the specified axis.
		
		
		
		Parameters
		----------
		func : function, string, dictionary, or list of string/functions
		    Function to use for aggregating the data. If a function, must either
		    work when passed a Series/DataFrame or when passed to Series/DataFrame.apply. For
		    a DataFrame, can pass a dict, if the keys are DataFrame column names.
		
		    Accepted combinations are:
		
		    - string function name.
		    - function.
		    - list of functions.
		    - dict of column names -> functions (or list of functions).
		
		
		*args
		    Positional arguments to pass to `func`.
		**kwargs
		    Keyword arguments to pass to `func`.
		
		Returns
		-------
		aggregated : Series/DataFrame
		
		Notes
		-----
		`agg` is an alias for `aggregate`. Use the alias.
		
		A passed user-defined-function will be passed a Series for evaluation.
		
		Examples
		--------
		
		>>> df = pd.DataFrame(np.random.randn(10, 3), columns=['A', 'B', 'C'])
		>>> df
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.004295  0.905829 -0.954544
		2  0.735167 -0.165272 -1.619346
		3 -0.702657 -1.340923 -0.706334
		4 -0.246845  0.211596 -0.901819
		5  2.463718  3.157577 -1.380906
		6 -1.142255  2.340594 -0.039875
		7  1.396598 -1.647453  1.677227
		8 -0.543425  1.761277 -0.220481
		9 -0.640505  0.289374 -1.550670
		
		>>> df.ewm(alpha=0.5).mean()
		          A         B         C
		0 -2.385977 -0.102758  0.438822
		1 -1.464856  0.569633 -0.490089
		2 -0.207700  0.149687 -1.135379
		3 -0.471677 -0.645305 -0.906555
		4 -0.355635 -0.203033 -0.904111
		5  1.076417  1.503943 -1.146293
		6 -0.041654  1.925562 -0.588728
		7  0.680292  0.132049  0.548693
		8  0.067236  0.948257  0.163353
		9 -0.286980  0.618493 -0.694496
		
		See also
		--------
		pandas.DataFrame.expanding.aggregate
		pandas.DataFrame.rolling.aggregate
		pandas.DataFrame.aggregate
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		expanding function apply
		
		Parameters
		----------
		func : function
		    Must produce a single value from an ndarray input if ``raw=True``
		    or a Series if ``raw=False``
		raw : bool, default None
		    * ``False`` : passes each row or column as a Series to the
		      function.
		    * ``True`` or ``None`` : the passed function will receive ndarray
		      objects instead.
		      If you are just applying a NumPy reduction function this will
		      achieve much better performance.
		
		    The `raw` parameter is required and will show a FutureWarning if
		    not passed. In the future `raw` will default to False.
		
		    .. versionadded:: 0.23.0
		
		\*args and \*\*kwargs are passed to the function
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.expanding
		pandas.DataFrame.expanding
	**/
	public function apply(func:Dynamic, ?raw:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	public function corr(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function count(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function cov(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	public var is_freq_type : Dynamic;
	/**
		Calculate unbiased expanding kurtosis.
		
		This function uses Fisher's definition of kurtosis without bias.
		
		Parameters
		----------
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the expanding
		    calculation
		
		See Also
		--------
		Series.expanding : Calling object with Series data
		DataFrame.expanding : Calling object with DataFrames
		Series.kurt : Equivalent method for Series
		DataFrame.kurt : Equivalent method for DataFrame
		scipy.stats.skew : Third moment of a probability density
		scipy.stats.kurtosis : Reference SciPy method
		
		Notes
		-----
		A minimum of 4 periods is required for the expanding calculation.
		
		Examples
		--------
		
		The example below will show an expanding calculation with a window size of
		four matching the equivalent function call using `scipy.stats`.
		
		>>> arr = [1, 2, 3, 4, 999]
		>>> import scipy.stats
		>>> fmt = "{0:.6f}"  # limit the printed precision to 6 digits
		>>> print(fmt.format(scipy.stats.kurtosis(arr[:-1], bias=False)))
		-1.200000
		>>> print(fmt.format(scipy.stats.kurtosis(arr, bias=False)))
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
		expanding maximum
		
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.expanding
		pandas.DataFrame.expanding
	**/
	public function max(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding mean of the values.
		
		Parameters
		----------
		*args
		    Under Review.
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the expanding
		    calculation.
		
		See Also
		--------
		Series.expanding : Calling object with Series data
		DataFrame.expanding : Calling object with DataFrames
		Series.mean : Equivalent method for Series
		DataFrame.mean : Equivalent method for DataFrame
		
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
	public function mean(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding median.
		
		Parameters
		----------
		**kwargs
		    For compatibility with other expanding methods. Has no effect
		    on the computed median.
		
		Returns
		-------
		Series or DataFrame
		    Returned type is the same as the original object.
		
		See Also
		--------
		Series.expanding : Calling object with Series data
		DataFrame.expanding : Calling object with DataFrames
		Series.median : Equivalent method for Series
		DataFrame.median : Equivalent method for DataFrame
		
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
	public function median(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the expanding minimum.
		
		Parameters
		----------
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the expanding
		    calculation.
		
		See Also
		--------
		Series.expanding : Calling object with a Series
		DataFrame.expanding : Calling object with a DataFrame
		Series.min : Similar method for Series
		DataFrame.min : Similar method for DataFrame
		
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
	public function min(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var ndim : Dynamic;
	/**
		expanding quantile.
		
		Parameters
		----------
		quantile : float
		    Quantile to compute. 0 <= quantile <= 1.
		interpolation : {'linear', 'lower', 'higher', 'midpoint', 'nearest'}
		    .. versionadded:: 0.23.0
		
		    This optional parameter specifies the interpolation method to use,
		    when the desired quantile lies between two data points `i` and `j`:
		
		        * linear: `i + (j - i) * fraction`, where `fraction` is the
		          fractional part of the index surrounded by `i` and `j`.
		        * lower: `i`.
		        * higher: `j`.
		        * nearest: `i` or `j` whichever is nearest.
		        * midpoint: (`i` + `j`) / 2.
		**kwargs:
		    For compatibility with other expanding methods. Has no effect on
		    the result.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the expanding
		    calculation.
		
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
		
		See Also
		--------
		pandas.Series.quantile : Computes value at the given quantile over all data
		    in Series.
		pandas.DataFrame.quantile : Computes values at the given quantile over
		    requested axis in DataFrame.
	**/
	public function quantile(quantile:Dynamic, ?interpolation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Unbiased expanding skewness
		
		Returns
		-------
		same type as input
		
		See also
		--------
		pandas.Series.expanding
		pandas.DataFrame.expanding
	**/
	public function skew(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate expanding standard deviation.
		
		Normalized by N-1 by default. This can be changed using the `ddof`
		argument.
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		*args, **kwargs
		    For NumPy compatibility. No additional arguments are used.
		
		Returns
		-------
		Series or DataFrame
		    Returns the same object type as the caller of the expanding calculation.
		
		See Also
		--------
		Series.expanding : Calling object with Series data
		DataFrame.expanding : Calling object with DataFrames
		Series.std : Equivalent method for Series
		DataFrame.std : Equivalent method for DataFrame
		numpy.std : Equivalent method for Numpy array
		
		Notes
		-----
		The default `ddof` of 1 used in Series.std is different than the default
		`ddof` of 0 in numpy.std.
		
		A minimum of one period is required for the rolling calculation.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		>>> s.rolling(3).std()
		0         NaN
		1         NaN
		2    0.577350
		3    1.000000
		4    1.000000
		5    1.154701
		6    0.000000
		dtype: float64
		
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
	public function std(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate expanding sum of given DataFrame or Series.
		
		Parameters
		----------
		*args, **kwargs
		    For compatibility with other expanding methods. Has no effect
		    on the computed value.
		
		Returns
		-------
		Series or DataFrame
		    Same type as the input, with the same index, containing the
		    expanding sum.
		
		See Also
		--------
		Series.sum : Reducing sum for Series.
		DataFrame.sum : Reducing sum for DataFrame.
		
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
		
		>>> s.expanding(3).sum()
		0     NaN
		1     NaN
		2     6.0
		3    10.0
		4    15.0
		dtype: float64
		
		>>> s.rolling(3, center=True).sum()
		0     NaN
		1     6.0
		2     9.0
		3    12.0
		4     NaN
		dtype: float64
		
		For DataFrame, each expanding sum is computed column-wise.
		
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
	public function sum(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function validate():Dynamic;
	/**
		Calculate unbiased expanding variance.
		
		Normalized by N-1 by default. This can be changed using the `ddof`
		argument.
		
		Parameters
		----------
		ddof : int, default 1
		    Delta Degrees of Freedom.  The divisor used in calculations
		    is ``N - ddof``, where ``N`` represents the number of elements.
		*args, **kwargs
		    For NumPy compatibility. No additional arguments are used.
		
		Returns
		-------
		Series or DataFrame
		    Returns the same object type as the caller of the expanding calculation.
		
		See Also
		--------
		Series.expanding : Calling object with Series data
		DataFrame.expanding : Calling object with DataFrames
		Series.var : Equivalent method for Series
		DataFrame.var : Equivalent method for DataFrame
		numpy.var : Equivalent method for Numpy array
		
		Notes
		-----
		The default `ddof` of 1 used in :meth:`Series.var` is different than the
		default `ddof` of 0 in :func:`numpy.var`.
		
		A minimum of 1 period is required for the rolling calculation.
		
		Examples
		--------
		>>> s = pd.Series([5, 5, 6, 7, 5, 5, 5])
		>>> s.rolling(3).var()
		0         NaN
		1         NaN
		2    0.333333
		3    1.000000
		4    1.000000
		5    1.333333
		6    0.000000
		dtype: float64
		
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
	public function _var(?ddof:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}