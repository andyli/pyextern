/* This file is generated, do not edit! */
package pandas.core.window;
@:pythonImport("pandas.core.window", "Rolling") extern class Rolling {
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
	public function ___init__(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(obj:Dynamic, ?window:Dynamic, ?min_periods:Dynamic, ?center:Dynamic, ?win_type:Dynamic, ?axis:Dynamic, ?on:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Provide a nice str repr of our rolling object.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _accessors : Dynamic;
	static public var _agg_doc : Dynamic;
	static public var _agg_examples_doc : Dynamic;
	static public var _agg_see_also_doc : Dynamic;
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
		Rolling statistical measure using supplied function.
		
		Designed to be used with passed-in Cython array-based functions.
		
		Parameters
		----------
		func : str/callable to apply
		name : str, optional
		   name of this function
		window : int/array, default to _get_window()
		center : bool, default to self.center
		check_minp : function, default to _use_window
		
		Returns
		-------
		y : type of input
	**/
	public function _apply(func:Dynamic, ?name:Dynamic, ?window:Dynamic, ?center:Dynamic, ?check_minp:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _attributes : Dynamic;
	static public var _builtin_table : Dynamic;
	/**
		Center the result in the window.
	**/
	public function _center_window(result:Dynamic, window:Dynamic):Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		Resample according to the how, return a new object.
	**/
	public function _convert_freq():Dynamic;
	/**
		Split data into blocks & return conformed data.
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
		Return index as ndarrays.
		
		Returns
		-------
		tuple of (index, index_as_ndarray)
	**/
	public function _get_index(?index:Dynamic):Dynamic;
	public function _get_window(?other:Dynamic):Dynamic;
	/**
		Sub-classes to define. Return a sliced object.
		
		Parameters
		----------
		key : str / list of selections
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
	/**
		Validate & return window frequency.
	**/
	public function _validate_freq():Dynamic;
	/**
		Validate on is_monotonic.
	**/
	public function _validate_monotonic():Dynamic;
	public var _window_type : Dynamic;
	/**
		Wrap a single result.
	**/
	public function _wrap_result(result:Dynamic, ?block:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Wrap the results.
		
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
		DataFrame, Series or scalar
		    if DataFrame.agg is called with a single function, returns a Series
		    if DataFrame.agg is called with several functions, returns a DataFrame
		    if Series.agg is called with single function, returns a scalar
		    if Series.agg is called with several functions, returns a Series
		
		
		See Also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
		
		
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
		
		>>> df.rolling(3).sum()
		          A         B         C
		0       NaN       NaN       NaN
		1       NaN       NaN       NaN
		2 -2.655105  0.637799 -2.135068
		3 -0.971785 -0.600366 -3.280224
		4 -0.214334 -1.294599 -3.227500
		5  1.514216  2.028250 -2.989060
		6  1.074618  5.709767 -2.322600
		7  2.718061  3.850718  0.256446
		8 -0.289082  2.454418  1.416871
		9  0.212668  0.403198 -0.093924
		
		>>> df.rolling(3).agg({'A':'sum', 'B':'min'})
		          A         B
		0       NaN       NaN
		1       NaN       NaN
		2 -2.655105 -0.165272
		3 -0.971785 -1.340923
		4 -0.214334 -1.340923
		5  1.514216 -1.340923
		6  1.074618  0.211596
		7  2.718061 -1.647453
		8 -0.289082 -1.647453
		9  0.212668 -1.647453
	**/
	public function agg(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		DataFrame, Series or scalar
		    if DataFrame.agg is called with a single function, returns a Series
		    if DataFrame.agg is called with several functions, returns a DataFrame
		    if Series.agg is called with single function, returns a scalar
		    if Series.agg is called with several functions, returns a Series
		
		
		See Also
		--------
		pandas.Series.rolling
		pandas.DataFrame.rolling
		
		
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
		
		>>> df.rolling(3).sum()
		          A         B         C
		0       NaN       NaN       NaN
		1       NaN       NaN       NaN
		2 -2.655105  0.637799 -2.135068
		3 -0.971785 -0.600366 -3.280224
		4 -0.214334 -1.294599 -3.227500
		5  1.514216  2.028250 -2.989060
		6  1.074618  5.709767 -2.322600
		7  2.718061  3.850718  0.256446
		8 -0.289082  2.454418  1.416871
		9  0.212668  0.403198 -0.093924
		
		>>> df.rolling(3).agg({'A':'sum', 'B':'min'})
		          A         B
		0       NaN       NaN
		1       NaN       NaN
		2 -2.655105 -0.165272
		3 -0.971785 -1.340923
		4 -0.214334 -1.340923
		5  1.514216 -1.340923
		6  1.074618  0.211596
		7  2.718061 -1.647453
		8 -0.289082 -1.647453
		9  0.212668 -1.647453
	**/
	public function aggregate(arg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The rolling function's apply function.
		
		Parameters
		----------
		func : function
		    Must produce a single value from an ndarray input if ``raw=True``
		    or a Series if ``raw=False``.
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
		*args, **kwargs
		    Arguments and keyword arguments to be passed into func.
		
		Returns
		-------
		Series or DataFrame
		    Return type is determined by the caller.
		
		See Also
		--------
		Series.rolling : Series rolling.
		DataFrame.rolling : DataFrame rolling.
	**/
	public function apply(func:Dynamic, ?raw:Dynamic, ?args:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		Calculate rolling correlation.
		
		Parameters
		----------
		other : Series, DataFrame, or ndarray, optional
		    If not supplied then will default to self.
		pairwise : bool, default None
		    Calculate pairwise combinations of columns within a
		    DataFrame. If `other` is not specified, defaults to `True`,
		    otherwise defaults to `False`.
		    Not relevant for :class:`~pandas.Series`.
		**kwargs
		    Unused.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the
		    rolling calculation.
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.corr : Equivalent method for Series.
		DataFrame.corr : Equivalent method for DataFrame.
		rolling.cov : Similar method to calculate covariance.
		numpy.corrcoef : NumPy Pearson's correlation calculation.
		
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
		>>> fmt = "{0:.6f}"  # limit the printed precision to 6 digits
		>>> # numpy returns a 2X2 array, the correlation coefficient
		>>> # is the number at entry [0][1]
		>>> print(fmt.format(np.corrcoef(v1[:-1], v2[:-1])[0][1]))
		0.333333
		>>> print(fmt.format(np.corrcoef(v1[1:], v2[1:])[0][1]))
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
		
		>>> matrix = np.array([[51., 35.], [49., 30.], [47., 32.],    [46., 31.], [50., 36.]])
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
	public function corr(?other:Dynamic, ?pairwise:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The rolling count of any non-NaN observations inside the window.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the rolling
		    calculation.
		
		See Also
		--------
		pandas.Series.rolling : Calling object with Series data.
		pandas.DataFrame.rolling : Calling object with DataFrames.
		pandas.DataFrame.count : Count of the full DataFrame.
		
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
		other : Series, DataFrame, or ndarray, optional
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
		    Keyword arguments to be passed into func.
		
		        Returns
		        -------
		        Series or DataFrame
		            Return type is determined by the caller.
		
		        See Also
		        --------
		        Series.rolling : Series rolling.
		        DataFrame.rolling : DataFrame rolling.
	**/
	public function cov(?other:Dynamic, ?pairwise:Dynamic, ?ddof:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var exclusions : Dynamic;
	public var is_datetimelike : Dynamic;
	public var is_freq_type : Dynamic;
	/**
		Calculate unbiased rolling kurtosis.
		
		This function uses Fisher's definition of kurtosis without bias.
		
		Parameters
		----------
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the rolling
		    calculation
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.kurt : Equivalent method for Series.
		DataFrame.kurt : Equivalent method for DataFrame.
		scipy.stats.skew : Third moment of a probability density.
		scipy.stats.kurtosis : Reference SciPy method.
		
		Notes
		-----
		A minimum of 4 periods is required for the rolling calculation.
		
		Examples
		--------
		
		The example below will show a rolling calculation with a window size of
		four matching the equivalent function call using `scipy.stats`.
		
		>>> arr = [1, 2, 3, 4, 999]
		>>> fmt = "{0:.6f}"  # limit the printed precision to 6 digits
		>>> import scipy.stats
		>>> print(fmt.format(scipy.stats.kurtosis(arr[:-1], bias=False)))
		-1.200000
		>>> print(fmt.format(scipy.stats.kurtosis(arr[1:], bias=False)))
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
		*args, **kwargs
		    Arguments and keyword arguments to be passed into func.
		
		        Returns
		        -------
		        Series or DataFrame
		            Return type is determined by the caller.
		
		        See Also
		        --------
		        Series.rolling : Series rolling.
		        DataFrame.rolling : DataFrame rolling.
	**/
	public function max(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate the rolling mean of the values.
		
		Parameters
		----------
		*args
		    Under Review.
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the rolling
		    calculation.
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.mean : Equivalent method for Series.
		DataFrame.mean : Equivalent method for DataFrame.
		
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
		Calculate the rolling median.
		
		Parameters
		----------
		**kwargs
		    For compatibility with other rolling methods. Has no effect
		    on the computed median.
		
		Returns
		-------
		Series or DataFrame
		    Returned type is the same as the original object.
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.median : Equivalent method for Series.
		DataFrame.median : Equivalent method for DataFrame.
		
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
		Calculate the rolling minimum.
		
		Parameters
		----------
		**kwargs
		    Under Review.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the rolling
		    calculation.
		
		See Also
		--------
		Series.rolling : Calling object with a Series.
		DataFrame.rolling : Calling object with a DataFrame.
		Series.min : Similar method for Series.
		DataFrame.min : Similar method for DataFrame.
		
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
		Calculate the rolling quantile.
		
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
		    For compatibility with other rolling methods. Has no effect on
		    the result.
		
		Returns
		-------
		Series or DataFrame
		    Returned object type is determined by the caller of the rolling
		    calculation.
		
		See Also
		--------
		pandas.Series.quantile : Computes value at the given quantile over all data
		    in Series.
		pandas.DataFrame.quantile : Computes values at the given quantile over
		    requested axis in DataFrame.
		
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
		Unbiased rolling skewness.
		
		Parameters
		----------
		**kwargs
		    Keyword arguments to be passed into func.
		
		        Returns
		        -------
		        Series or DataFrame
		            Return type is determined by the caller.
		
		        See Also
		        --------
		        Series.rolling : Series rolling.
		        DataFrame.rolling : DataFrame rolling.
	**/
	public function skew(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Calculate rolling standard deviation.
		
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
		    Returns the same object type as the caller of the rolling calculation.
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.std : Equivalent method for Series.
		DataFrame.std : Equivalent method for DataFrame.
		numpy.std : Equivalent method for Numpy array.
		
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
		Calculate rolling sum of given DataFrame or Series.
		
		Parameters
		----------
		*args, **kwargs
		    For compatibility with other rolling methods. Has no effect
		    on the computed value.
		
		Returns
		-------
		Series or DataFrame
		    Same type as the input, with the same index, containing the
		    rolling sum.
		
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
		
		For DataFrame, each rolling sum is computed column-wise.
		
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
		Calculate unbiased rolling variance.
		
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
		    Returns the same object type as the caller of the rolling calculation.
		
		See Also
		--------
		Series.rolling : Calling object with Series data.
		DataFrame.rolling : Calling object with DataFrames.
		Series.var : Equivalent method for Series.
		DataFrame.var : Equivalent method for DataFrame.
		numpy.var : Equivalent method for Numpy array.
		
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