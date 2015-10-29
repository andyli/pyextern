/* This file is generated, do not edit! */
package pandas.stats.tests;
@:pythonImport("pandas.stats.tests.test_ols") extern class Test_ols {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_non_raw_results(model:Dynamic):Dynamic;
	static public function _check_repr(obj:Dynamic):Dynamic;
	static public function _compare_fullsample_ols(model1:Dynamic, model2:Dynamic):Dynamic;
	static public function _compare_moving_ols(model1:Dynamic, model2:Dynamic):Dynamic;
	static public function _compare_ols_results(model1:Dynamic, model2:Dynamic):Dynamic;
	/**
		Cleans the input for single OLS.
		
		Parameters
		----------
		lhs : Series
		    Dependent variable in the regression.
		rhs : dict, whose values are Series, DataFrame, or dict
		    Explanatory variables of the regression.
		weights : array-like, optional
		    1d array of weights.  If None, equivalent to an unweighted OLS.
		
		Returns
		-------
		Series, DataFrame
		    Cleaned lhs and rhs
	**/
	static public function _filter_data(lhs:Dynamic, rhs:Dynamic, ?weights:Dynamic):Dynamic;
	static public var _have_statsmodels : Dynamic;
	static public function _period_slice(panelModel:Dynamic, i:Dynamic):Dynamic;
	/**
		Port of assertRaisesRegexp from unittest in Python 2.7 - used in with statement.
		
		Explanation from standard library:
		    Like assertRaises() but also tests that regexp matches on the string
		    representation of the raised exception. regexp may be a regular expression
		    object or a string containing a regular expression suitable for use by
		    re.search().
		
		You can pass either a regular expression or a compiled regular expression object.
		>>> assertRaisesRegexp(ValueError, 'invalid literal for.*XYZ',
		...                                int, 'XYZ');
		>>> import re
		>>> assertRaisesRegexp(ValueError, re.compile('literal'), int, 'XYZ');
		
		If an exception of a different type is raised, it bubbles up.
		
		>>> assertRaisesRegexp(TypeError, 'literal', int, 'XYZ');
		Traceback (most recent call last):
		    ...
		ValueError: invalid literal for int() with base 10: 'XYZ'
		>>> dct = dict()
		>>> assertRaisesRegexp(KeyError, 'pear', dct.__getitem__, 'apple');
		Traceback (most recent call last):
		    ...
		AssertionError: "pear" does not match "'apple'"
		
		You can also use this in a with statement.
		>>> with assertRaisesRegexp(TypeError, 'unsupported operand type\(s\)'):
		...     1 + {}
		>>> with assertRaisesRegexp(TypeError, 'banana'):
		...     'apple'[0] = 'b'
		Traceback (most recent call last):
		    ...
		AssertionError: "banana" does not match "'str' object does not support item assignment"
	**/
	static public function assertRaisesRegexp(_exception:Dynamic, _regexp:Dynamic, ?_callable:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Check that left and right DataFrame are equal.
		
		Parameters
		----------
		left : DataFrame
		right : DataFrame
		check_dtype : bool, default True
		    Whether to check the DataFrame dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_column_type : bool, default False
		    Whether to check the columns class, dtype and inferred_type are identical.
		check_frame_type : bool, default False
		    Whether to check the DataFrame class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_names : bool, default True
		    Whether to check the Index names attribute.
		by_blocks : bool, default False
		    Specify how to compare internal data. If False, compare by columns.
		    If True, compare by blocks.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'DataFrame'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_frame_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_column_type:Dynamic, ?check_frame_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?by_blocks:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Check that left and right Series are equal.
		
		Parameters
		----------
		left : Series
		right : Series
		check_dtype : bool, default True
		    Whether to check the Series dtype is identical.
		check_index_type : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_series_type : bool, default False
		    Whether to check the Series class is identical.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default False
		    Whether to compare number exactly.
		check_names : bool, default True
		    Whether to check the Series and Index names attribute.
		check_dateteimelike_compat : bool, default False
		    Compare datetime-like which is comparable ignoring dtype.
		obj : str, default 'Series'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_series_equal(left:Dynamic, right:Dynamic, ?check_dtype:Dynamic, ?check_index_type:Dynamic, ?check_series_type:Dynamic, ?check_less_precise:Dynamic, ?check_names:Dynamic, ?check_exact:Dynamic, ?check_datetimelike_compat:Dynamic, ?obj:Dynamic):Dynamic;
	/**
		Return a fixed frequency datetime index, with business day as the default
		frequency
		
		Parameters
		----------
		start : string or datetime-like, default None
		    Left bound for generating dates
		end : string or datetime-like, default None
		    Right bound for generating dates
		periods : integer or None, default None
		    If None, must specify start and end
		freq : string or DateOffset, default 'B' (business daily)
		    Frequency strings can have multiples, e.g. '5H'
		tz : string or None
		    Time zone name for returning localized DatetimeIndex, for example
		    Asia/Beijing
		normalize : bool, default False
		    Normalize start/end dates to midnight before generating date range
		name : str, default None
		    Name for the resulting index
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
	static public function bdate_range(?start:Dynamic, ?end:Dynamic, ?periods:Dynamic, ?freq:Dynamic, ?tz:Dynamic, ?normalize:Dynamic, ?name:Dynamic, ?closed:Dynamic):Dynamic;
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
	static public var division : Dynamic;
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
		Label a test as 'slow'.
		
		The exact definition of a slow test is obviously both subjective and
		hardware-dependent, but in general any individual test that requires more
		than a second or two should be labeled as slow (the whole suite consits of
		thousands of tests, so even a second is significant).
		
		Parameters
		----------
		t : callable
		    The test to label as slow.
		
		Returns
		-------
		t : callable
		    The decorated test `t`.
		
		Examples
		--------
		The `numpy.testing` module includes ``import decorators as dec``.
		A test can be decorated as slow like this::
		
		  from numpy.testing import *
		
		  @dec.slow
		  def test_big(self):
		      print 'Big, slow test'
	**/
	static public function slow(t:Dynamic):Dynamic;
}