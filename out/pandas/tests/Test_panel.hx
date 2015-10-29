/* This file is generated, do not edit! */
package pandas.tests;
@:pythonImport("pandas.tests.test_panel") extern class Test_panel {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _panel : Dynamic;
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
	static public function assert_panel_equal(left:Dynamic, right:Dynamic, ?check_panel_type:Dynamic, ?check_less_precise:Dynamic, ?assert_func:Dynamic, ?check_names:Dynamic):Dynamic;
	/**
		Context manager for running code that expects to raise (or not raise)
		warnings.  Checks that code raises the expected warning and only the
		expected warning. Pass ``False`` or ``None`` to check that it does *not*
		raise a warning. Defaults to ``exception.Warning``, baseclass of all
		Warnings. (basically a wrapper around ``warnings.catch_warnings``).
		
		>>> import warnings
		>>> with assert_produces_warning():
		...     warnings.warn(UserWarning())
		...
		>>> with assert_produces_warning(False):
		...     warnings.warn(RuntimeWarning())
		...
		Traceback (most recent call last):
		    ...
		AssertionError: Caused unexpected warning(s): ['RuntimeWarning'].
		>>> with assert_produces_warning(UserWarning):
		...     warnings.warn(RuntimeWarning())
		Traceback (most recent call last):
		    ...
		AssertionError: Did not see expected warning of class 'UserWarning'.
		
		..warn:: This is *not* thread-safe.
	**/
	static public function assert_produces_warning(?expected_warning:Dynamic, ?filter_level:Dynamic, ?clear:Dynamic, ?check_stacklevel:Dynamic):Dynamic;
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
	static public function bday(other:Dynamic):Dynamic;
	/**
		Gets a temporary path and agrees to remove on close.
		
		Parameters
		----------
		filename : str (optional)
		    if None, creates a temporary file which is then removed when out of
		    scope. if passed, creates temporary file with filename as ending.
		return_filelike : bool (default False)
		    if True, returns a file-like which is *always* cleaned. Necessary for
		    savefig and other functions which want to append extensions.
	**/
	static public function ensure_clean(?filename:Dynamic, ?return_filelike:Dynamic):Dynamic;
	/**
		Get the names and default values of a function's arguments.
		
		A tuple of four things is returned: (args, varargs, keywords, defaults).
		'args' is a list of the argument names, including keyword-only argument names.
		'varargs' and 'keywords' are the names of the * and ** arguments or None.
		'defaults' is an n-tuple of the default values of the last n arguments.
		
		Use the getfullargspec() API for Python 3 code, as annotations
		and keyword arguments are supported. getargspec() will raise ValueError
		if the func has either annotations or keyword arguments.
	**/
	static public function getargspec(func:Dynamic):Dynamic;
	/**
		Detect missing values (NaN in numeric arrays, None/NaN in object arrays)
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is null or if an array is
		    given which of the element is null.
		
		See also
		--------
		pandas.notnull: boolean inverse of pandas.isnull
	**/
	static public function isnull(obj:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
	static public function makeMixedDataFrame():Dynamic;
	/**
		nrows,  ncols - number of data rows/cols
		c_idx_names, idx_names  - False/True/list of strings,  yields No names ,
		     default names or  uses the provided names for the levels of the
		     corresponding  index. You can provide a single string when
		     c_idx_nlevels ==1.
		c_idx_nlevels - number of levels in columns index. > 1 will yield MultiIndex
		r_idx_nlevels - number of levels in rows index. > 1 will yield MultiIndex
		data_gen_f - a function f(row,col) which return the data value at that position,
		     the default generator used yields values of the form "RxCy" based on position.
		c_ndupe_l, r_ndupe_l - list of integers, determines the number
		     of duplicates for each label at a given level of the corresponding index.
		     The default `None` value produces a multiplicity of 1 across
		     all levels, i.e. a unique index. Will accept a partial list of
		     length N < idx_nlevels, for just the first N levels. If ndupe
		     doesn't divide nrows/ncol, the last label might have lower multiplicity.
		dtype - passed to the DataFrame constructor as is, in case you wish to
		     have more control in conjuncion with a custom `data_gen_f`
		r_idx_type, c_idx_type -  "i"/"f"/"s"/"u"/"dt"/"td".
		    If idx_type is not None, `idx_nlevels` must be 1.
		    "i"/"f" creates an integer/float index,
		    "s"/"u" creates a string/unicode index
		    "dt" create a datetime index.
		    "td" create a timedelta index.
		
		     if unspecified, string labels will be generated.
		
		 Examples:
		
		 # 5 row, 3 columns, default names on both, single index on both axis
		 >> makeCustomDataframe(5,3)
		
		 # make the data a random int between 1 and 100
		 >> mkdf(5,3,data_gen_f=lambda r,c:randint(1,100))
		
		 # 2-level multiindex on rows with each label duplicated twice on first level,
		 # default names on both axis, single index on both axis
		 >> a=makeCustomDataframe(5,3,r_idx_nlevels=2,r_ndupe_l=[2])
		
		 # DatetimeIndex on row, index with unicode labels on columns
		 # no names on either axis
		 >> a=makeCustomDataframe(5,3,c_idx_names=False,r_idx_names=False,
		                          r_idx_type="dt",c_idx_type="u")
		
		 # 4-level multindex on rows with names provided, 2-level multindex
		 # on columns with default labels and default names.
		 >> a=makeCustomDataframe(5,3,r_idx_nlevels=4,
		                          r_idx_names=["FEE","FI","FO","FAM"],
		                          c_idx_nlevels=2)
		
		 >> a=mkdf(5,3,r_idx_nlevels=2,c_idx_nlevels=4)
		 
	**/
	static public function mkdf(nrows:Dynamic, ncols:Dynamic, ?c_idx_names:Dynamic, ?r_idx_names:Dynamic, ?c_idx_nlevels:Dynamic, ?r_idx_nlevels:Dynamic, ?data_gen_f:Dynamic, ?c_ndupe_l:Dynamic, ?r_ndupe_l:Dynamic, ?dtype:Dynamic, ?c_idx_type:Dynamic, ?r_idx_type:Dynamic):Dynamic;
	static public function nanall(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
	static public function nanany(values:Dynamic, ?axis:Dynamic, ?skipna:Dynamic):Dynamic;
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
		Produce 'pivot' table based on 3 columns of this DataFrame.
		Uses unique values from index / columns and fills with values.
		
		Parameters
		----------
		index : ndarray
		    Labels to use to make new frame's index
		columns : ndarray
		    Labels to use to make new frame's columns
		values : ndarray
		    Values to use for populating new frame's values
		
		Notes
		-----
		Obviously, all 3 of the input arguments must have the same length
		
		Returns
		-------
		DataFrame
	**/
	static public function pivot(index:Dynamic, columns:Dynamic, values:Dynamic):Dynamic;
	/**
		Return series containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na(series:Dynamic):Dynamic;
	static public function test_import_warnings():Dynamic;
	static public function test_monotonic():Dynamic;
	static public function test_panel_index():Dynamic;
}