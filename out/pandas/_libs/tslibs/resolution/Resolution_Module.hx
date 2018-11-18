/* This file is generated, do not edit! */
package pandas._libs.tslibs.resolution;
@:pythonImport("pandas._libs.tslibs.resolution") extern class Resolution_Module {
	static public var MONTH_ALIASES : Dynamic;
	static public var _ONE_DAY : Dynamic;
	static public var _ONE_HOUR : Dynamic;
	static public var _ONE_MICRO : Dynamic;
	static public var _ONE_MILLI : Dynamic;
	static public var _ONE_MINUTE : Dynamic;
	static public var _ONE_SECOND : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _is_multiple(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _maybe_add_count(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Datetime as int64 representation to a structured array of fields
	**/
	static public function build_field_sarray(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return frequency code group of given frequency str or offset.
		
		Example
		-------
		>>> get_freq_group('W-MON')
		4000
		
		>>> get_freq_group('W-FRI')
		4000
	**/
	static public function get_freq_group(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var int_to_weekday : Dynamic;
	static public function resolution(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the values (in i8) from timezone1 to timezone2
		
		Parameters
		----------
		vals : int64 ndarray
		tz1 : string / timezone object
		tz2 : string / timezone object
		
		Returns
		-------
		int64 ndarray of converted
	**/
	static public function tz_convert(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Hash table-based unique. Uniques are returned in order
		of appearance. This does NOT sort.
		
		Significantly faster than numpy.unique. Includes NA values.
		
		Parameters
		----------
		values : 1d array-like
		
		Returns
		-------
		unique values.
		  - If the input is an Index, the return is an Index
		  - If the input is a Categorical dtype, the return is a Categorical
		  - If the input is a Series/ndarray, the return will be an ndarray
		
		Examples
		--------
		>>> pd.unique(pd.Series([2, 1, 3, 3]))
		array([2, 1, 3])
		
		>>> pd.unique(pd.Series([2] + [1] * 5))
		array([2, 1])
		
		>>> pd.unique(Series([pd.Timestamp('20160101'),
		...                   pd.Timestamp('20160101')]))
		array(['2016-01-01T00:00:00.000000000'], dtype='datetime64[ns]')
		
		>>> pd.unique(pd.Series([pd.Timestamp('20160101', tz='US/Eastern'),
		...                      pd.Timestamp('20160101', tz='US/Eastern')]))
		array([Timestamp('2016-01-01 00:00:00-0500', tz='US/Eastern')],
		      dtype=object)
		
		>>> pd.unique(pd.Index([pd.Timestamp('20160101', tz='US/Eastern'),
		...                     pd.Timestamp('20160101', tz='US/Eastern')]))
		DatetimeIndex(['2016-01-01 00:00:00-05:00'],
		...           dtype='datetime64[ns, US/Eastern]', freq=None)
		
		>>> pd.unique(list('baabc'))
		array(['b', 'a', 'c'], dtype=object)
		
		An unordered Categorical will return categories in the
		order of appearance.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'))))
		[b, a, c]
		Categories (3, object): [b, a, c]
		
		An ordered Categorical preserves the category ordering.
		
		>>> pd.unique(Series(pd.Categorical(list('baabc'),
		...                                 categories=list('abc'),
		...                                 ordered=True)))
		[b, a, c]
		Categories (3, object): [a < b < c]
		
		An array of tuples
		
		>>> pd.unique([('a', 'b'), ('b', 'a'), ('a', 'c'), ('b', 'a')])
		array([('a', 'b'), ('b', 'a'), ('a', 'c')], dtype=object)
		
		See Also
		--------
		pandas.Index.unique
		pandas.Series.unique
	**/
	static public function unique(values:Dynamic):Dynamic;
}