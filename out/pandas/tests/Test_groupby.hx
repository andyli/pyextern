/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_groupby") extern class Test_groupby {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_groupby(df:Dynamic, result:Dynamic, keys:Dynamic, field:Dynamic, ?f:Dynamic):Dynamic;
	static public function _lexsort_indexer(keys:Dynamic, ?orders:Dynamic, ?na_position:Dynamic):Dynamic;
	/**
		This is intended to be a drop-in replacement for np.argsort which handles NaNs
		It adds ascending and na_position parameters.
		GH #6399, #5231
	**/
	static public function _nargsort(items:Dynamic, ?kind:Dynamic, ?ascending:Dynamic, ?na_position:Dynamic):Dynamic;
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
		Raises an AssertionError if two objects are not equal.
		
		Given two objects (scalars, lists, tuples, dictionaries or numpy arrays),
		check that all elements of these objects are equal. An exception is raised
		at the first conflicting values.
		
		Parameters
		----------
		actual : array_like
		    The object to check.
		desired : array_like
		    The expected object.
		err_msg : str, optional
		    The error message to be printed in case of failure.
		verbose : bool, optional
		    If True, the conflicting values are appended to the error message.
		
		Raises
		------
		AssertionError
		    If actual and desired are not equal.
		
		Examples
		--------
		>>> np.testing.assert_equal([4,5], [4,6])
		...
		<type 'exceptions.AssertionError'>:
		Items are not equal:
		item=1
		 ACTUAL: 5
		 DESIRED: 6
	**/
	static public function assert_equal(actual:Dynamic, desired:Dynamic, ?err_msg:Dynamic, ?verbose:Dynamic):Dynamic;
	static public function assert_fp_equal(a:Dynamic, b:Dynamic):Dynamic;
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
		Check that left and right Index are equal.
		
		Parameters
		----------
		left : Index
		right : Index
		exact : bool, default False
		    Whether to check the Index class, dtype and inferred_type are identical.
		check_names : bool, default True
		    Whether to check the names attribute.
		check_less_precise : bool, default False
		    Specify comparison precision. Only used when check_exact is False.
		    5 digits (False) or 3 digits (True) after decimal points are compared.
		check_exact : bool, default True
		    Whether to compare number exactly.
		obj : str, default 'Index'
		    Specify object name being compared, internally used to show appropriate
		    assertion message
	**/
	static public function assert_index_equal(left:Dynamic, right:Dynamic, ?exact:Dynamic, ?check_names:Dynamic, ?check_less_precise:Dynamic, ?check_exact:Dynamic, ?obj:Dynamic):Dynamic;
	static public function assert_panel_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
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
	static public function commonSetUp(self:Dynamic):Dynamic;
	/**
		Concatenate pandas objects along a particular axis with optional set logic
		along the other axes. Can also add a layer of hierarchical indexing on the
		concatenation axis, which may be useful if the labels are the same (or
		overlapping) on the passed axis number
		
		Parameters
		----------
		objs : a sequence or mapping of Series, DataFrame, or Panel objects
		    If a dict is passed, the sorted keys will be used as the `keys`
		    argument, unless it is passed, in which case the values will be
		    selected (see below). Any None objects will be dropped silently unless
		    they are all None in which case a ValueError will be raised
		axis : {0, 1, ...}, default 0
		    The axis to concatenate along
		join : {'inner', 'outer'}, default 'outer'
		    How to handle indexes on other axis(es)
		join_axes : list of Index objects
		    Specific indexes to use for the other n - 1 axes instead of performing
		    inner/outer set logic
		verify_integrity : boolean, default False
		    Check whether the new concatenated axis contains duplicates. This can
		    be very expensive relative to the actual data concatenation
		keys : sequence, default None
		    If multiple levels passed, should contain tuples. Construct
		    hierarchical index using the passed keys as the outermost level
		levels : list of sequences, default None
		    Specific levels (unique values) to use for constructing a
		    MultiIndex. Otherwise they will be inferred from the keys
		names : list, default None
		    Names for the levels in the resulting hierarchical index
		ignore_index : boolean, default False
		    If True, do not use the index values along the concatenation axis. The
		    resulting axis will be labeled 0, ..., n - 1. This is useful if you are
		    concatenating objects where the concatenation axis does not have
		    meaningful indexing information. Note the the index values on the other
		    axes are still respected in the join.
		copy : boolean, default True
		    If False, do not copy data unnecessarily
		
		Notes
		-----
		The keys, levels, and names arguments are all optional
		
		Returns
		-------
		concatenated : type of objects
	**/
	static public function concat(objs:Dynamic, ?axis:Dynamic, ?join:Dynamic, ?join_axes:Dynamic, ?ignore_index:Dynamic, ?keys:Dynamic, ?levels:Dynamic, ?names:Dynamic, ?verify_integrity:Dynamic, ?copy:Dynamic):Dynamic;
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
	static public function lmap(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function lzip(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var nan : Dynamic;
	static public var print_function : Dynamic;
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
	static public function test_decons():Dynamic;
}