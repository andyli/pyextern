/* This file is generated, do not edit! */
package pandas.tseries.tests;
@:pythonImport("pandas.tseries.tests.test_util") extern class Test_util {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
		Returns true if year is a leap year.
		
		Parameters
		----------
		year : integer / sequence
		    A given (list of) year(s).
	**/
	static public function isleapyear(year:Dynamic):Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Group a series by years, taking leap years into account.
		
		The output has as many rows as distinct years in the original series,
		and as many columns as the length of a leap year in the units corresponding
		to the original frequency (366 for daily frequency, 366*24 for hourly...).
		The fist column of the output corresponds to Jan. 1st, 00:00:00,
		while the last column corresponds to Dec, 31st, 23:59:59.
		Entries corresponding to Feb. 29th are masked for non-leap years.
		
		For example, if the initial series has a daily frequency, the 59th column
		of the output always corresponds to Feb. 28th, the 61st column to Mar. 1st,
		and the 60th column is masked for non-leap years.
		With a hourly initial frequency, the (59*24)th column of the output always
		correspond to Feb. 28th 23:00, the (61*24)th column to Mar. 1st, 00:00, and
		the 24 columns between (59*24) and (61*24) are masked.
		
		If the original frequency is less than daily, the output is equivalent to
		``series.convert('A', func=None)``.
		
		Parameters
		----------
		series : Series
		freq : string or None, default None
		
		Returns
		-------
		annual : DataFrame
	**/
	static public function pivot_annual(series:Dynamic, ?freq:Dynamic):Dynamic;
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
	static public function test_normalize_date():Dynamic;
}