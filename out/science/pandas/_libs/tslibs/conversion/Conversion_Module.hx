/* This file is generated, do not edit! */
package pandas._libs.tslibs.conversion;
@:pythonImport("pandas._libs.tslibs.conversion") extern class Conversion_Module {
	static public var DT64NS_DTYPE : Dynamic;
	static public var TD64NS_DTYPE : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Convert ndarray of datetime-like objects to int64 array representing
		nanosecond timestamps.
		
		Parameters
		----------
		values : ndarray[object]
		
		Returns
		-------
		result : ndarray[datetime64ns]
		inferred_tz : tzinfo or None
	**/
	static public function datetime_to_datetime64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure a np.datetime64 array has dtype specifically 'datetime64[ns]'
		
		Parameters
		----------
		arr : ndarray
		copy : bool, default True
		
		Returns
		-------
		ndarray with dtype datetime64[ns]
	**/
	static public function ensure_datetime64ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Ensure a np.timedelta64 array has dtype specifically 'timedelta64[ns]'
		
		Parameters
		----------
		arr : ndarray
		copy : bool, default True
		
		Returns
		-------
		ndarray[timedelta64[ns]]
	**/
	static public function ensure_timedelta64ns(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Take a datetime/Timestamp in UTC and localizes to timezone tz.
		
		Parameters
		----------
		dt : datetime or Timestamp
		tz : tzinfo or None
		
		Returns
		-------
		localized : datetime or Timestamp
	**/
	static public function localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parse datetime string, only returns datetime.
		Also cares special handling matching time patterns.
		
		Returns
		-------
		datetime
	**/
	static public function parse_datetime_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a casting of the unit represented to nanoseconds + the precision
		to round the fractional part.
		
		Notes
		-----
		The caller is responsible for ensuring that the default value of "ns"
		takes the place of None.
	**/
	static public function precision_from_unit(args:haxe.extern.Rest<Dynamic>):Dynamic;
}