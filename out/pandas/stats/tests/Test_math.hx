/* This file is generated, do not edit! */
package pandas.stats.tests;
@:pythonImport("pandas.stats.tests.test_math") extern class Test_math {
	static public var K : Dynamic;
	static public var N : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _have_statsmodels : Dynamic;
	/**
		Check that left and right objects are almost equal.
		
		Parameters
		----------
		a : object
		b : object
		check_less_precise : bool, default False
		    Specify comparison precision.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		obj : str, default None
		    Specify object name being compared, internally used to show appropriate
		    assertion message
		lobj : str, default None
		    Specify left object name being compared, internally used to show
		    appropriate assertion message
		robj : str, default None
		    Specify right object name being compared, internally used to show
		    appropriate assertion message
	**/
	static public function assert_almost_equal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a fixed frequency datetime index, with day (calendar) as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'D' (calendar daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		Asia/Hong_Kong
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name of the resulting index
		closed : string or None, default None
		    Make the interval closed with respect to the given frequency to
		    the 'left', 'right', or both sides (None)
		
		Notes
		-----
		2 of start, end, or periods must be specified
		
		Returns
		-------
		rng : DatetimeIndex
	**/
	static public function date_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
	/**
		Returns the appropriate OLS object depending on whether you need
		simple or panel OLS, and a full-sample or rolling/expanding OLS.
		
		Will be a normal linear regression or a (pooled) panel regression depending
		on the type of the inputs:
		
		y : Series, x : DataFrame -> OLS
		y : Series, x : dict of DataFrame -> OLS
		y : DataFrame, x : DataFrame -> PanelOLS
		y : DataFrame, x : dict of DataFrame/Panel -> PanelOLS
		y : Series with MultiIndex, x : Panel/DataFrame + MultiIndex -> PanelOLS
		
		Parameters
		----------
		y: Series or DataFrame
		    See above for types
		x: Series, DataFrame, dict of Series, dict of DataFrame, Panel
		weights : Series or ndarray
		    The weights are presumed to be (proportional to) the inverse of the
		    variance of the observations.  That is, if the variables are to be
		    transformed by 1/sqrt(W) you must supply weights = 1/W
		intercept: bool
		    True if you want an intercept.  Defaults to True.
		nw_lags: None or int
		    Number of Newey-West lags.  Defaults to None.
		nw_overlap: bool
		    Whether there are overlaps in the NW lags.  Defaults to False.
		window_type: {'full sample', 'rolling', 'expanding'}
		    'full sample' by default
		window: int
		    size of window (for rolling/expanding OLS). If window passed and no
		    explicit window_type, 'rolling" will be used as the window_type
		
		Panel OLS options:
		    pool: bool
		        Whether to run pooled panel regression.  Defaults to true.
		    entity_effects: bool
		        Whether to account for entity fixed effects.  Defaults to false.
		    time_effects: bool
		        Whether to account for time fixed effects.  Defaults to false.
		    x_effects: list
		        List of x's to account for fixed effects.  Defaults to none.
		    dropped_dummies: dict
		        Key is the name of the variable for the fixed effect.
		        Value is the value of that variable for which we drop the dummy.
		
		        For entity fixed effects, key equals 'entity'.
		
		        By default, the first dummy is dropped if no dummy is specified.
		    cluster: {'time', 'entity'}
		        cluster variances
		
		Examples
		--------
		# Run simple OLS.
		result = ols(y=y, x=x)
		
		# Run rolling simple OLS with window of size 10.
		result = ols(y=y, x=x, window_type='rolling', window=10)
		print(result.beta)
		
		result = ols(y=y, x=x, nw_lags=1)
		
		# Set up LHS and RHS for data across all items
		y = A
		x = {'B' : B, 'C' : C}
		
		# Run panel OLS.
		result = ols(y=y, x=x)
		
		# Run expanding panel OLS with window 10 and entity clustering.
		result = ols(y=y, x=x, cluster='entity', window_type='expanding', window=10)
		
		Returns
		-------
		The appropriate OLS object, which allows you to obtain betas and various
		statistics, such as std err, t-stat, etc.
	**/
	static public function ols(kwargs:Dynamic):Dynamic;
	/**
		randn(d0, d1, ..., dn)
		
		Return a sample (or samples) from the "standard normal" distribution.
		
		If positive, int_like or int-convertible arguments are provided,
		`randn` generates an array of shape ``(d0, d1, ..., dn)``, filled
		with random floats sampled from a univariate "normal" (Gaussian)
		distribution of mean 0 and variance 1 (if any of the :math:`d_i` are
		floats, they are first converted to integers by truncation). A single
		float randomly sampled from the distribution is returned if no
		argument is provided.
		
		This is a convenience function.  If you want an interface that takes a
		tuple as the first argument, use `numpy.random.standard_normal` instead.
		
		Parameters
		----------
		d0, d1, ..., dn : int, optional
		    The dimensions of the returned array, should be all positive.
		    If no argument is given a single Python float is returned.
		
		Returns
		-------
		Z : ndarray or float
		    A ``(d0, d1, ..., dn)``-shaped array of floating-point samples from
		    the standard normal distribution, or a single such float if
		    no parameters were supplied.
		
		See Also
		--------
		random.standard_normal : Similar, but takes a tuple as its argument.
		
		Notes
		-----
		For random samples from :math:`N(\mu, \sigma^2)`, use:
		
		``sigma * np.random.randn(...) + mu``
		
		Examples
		--------
		>>> np.random.randn()
		2.1923875335537315 #random
		
		Two-by-four array of samples from N(3, 6.25):
		
		>>> 2.5 * np.random.randn(2, 4) + 3
		array([[-4.49401501,  4.00950034, -1.81814867,  7.29718677],  #random
		       [ 0.39924804,  4.68456316,  4.99394529,  4.84057254]]) #random
	**/
	static public function randn(args:haxe.extern.Rest<Dynamic>):Dynamic;
}