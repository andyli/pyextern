/* This file is generated, do not edit! */
package pandas.tseries.util;
@:pythonImport("pandas.tseries.util") extern class Util_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns true if year is a leap year.
		
		Parameters
		----------
		year : integer / sequence
		    A given (list of) year(s).
	**/
	static public function isleapyear(year:Dynamic):Dynamic;
	static public function lrange(args:Dynamic, kwargs:Dynamic):Dynamic;
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
}