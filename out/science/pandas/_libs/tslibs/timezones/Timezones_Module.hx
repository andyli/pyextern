/* This file is generated, do not edit! */
package pandas._libs.tslibs.timezones;
@:pythonImport("pandas._libs.tslibs.timezones") extern class Timezones_Module {
	static public var UTC : Dynamic;
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
		Python interface for cache function to facilitate testing.
	**/
	static public function _p_tz_cache_key(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function dateutil_gettz(?name:Dynamic):Dynamic;
	static public var dst_cache : Dynamic;
	/**
		We need to do several things here:
		1) Distinguish between pytz and dateutil timezones
		2) Not be over-specific (e.g. US/Eastern with/without DST is same *zone*
		   but a different tz object)
		3) Provide something to serialize when we're storing a datetime object
		   in pytables.
		
		We return a string prefaced with dateutil if it's a dateutil tz, else just
		the tz name. It needs to be a string so that we can serialize it with
		UJSON/pytables. maybe_get_tz (below) is the inverse of this process.
	**/
	static public function get_timezone(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function infer_tzinfo(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function is_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		(Maybe) Construct a timezone object from a string. If tz is a string, use
		it to construct a timezone object. Otherwise, just return tz.
	**/
	static public function maybe_get_tz(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Compare string representations of timezones
		
		The same timezone can be represented as different instances of
		timezones. For example
		`<DstTzInfo 'Europe/Paris' LMT+0:09:00 STD>` and
		`<DstTzInfo 'Europe/Paris' CET+1:00:00 STD>` are essentially same
		timezones but aren't evaluated such, but the string representation
		for both of these is `'Europe/Paris'`.
		
		This exists only to add a notion of equality to pytz-style zones
		that is compatible with the notion of equality expected of tzinfo
		subclasses.
		
		Parameters
		----------
		start : tzinfo
		end : tzinfo
		
		Returns:
		-------
		bool
	**/
	static public function tz_compare(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		If the passed tz is a pytz timezone object, "normalize" it to the a
		consistent version
		
		Parameters
		----------
		tz : tzinfo
		
		Returns
		-------
		tzinfo
		
		Examples
		--------
		>>> from datetime import datetime
		>>> from pytz import timezone
		>>> tz = timezone('US/Pacific').normalize(
		...     datetime(2014, 1, 1, tzinfo=pytz.utc)
		... ).tzinfo
		>>> tz
		<DstTzInfo 'US/Pacific' PST-1 day, 16:00:00 STD>
		>>> tz_standardize(tz)
		<DstTzInfo 'US/Pacific' LMT-1 day, 16:07:00 STD>
		
		>>> tz = timezone('US/Pacific')
		>>> tz
		<DstTzInfo 'US/Pacific' LMT-1 day, 16:07:00 STD>
		>>> tz_standardize(tz)
		<DstTzInfo 'US/Pacific' LMT-1 day, 16:07:00 STD>
	**/
	static public function tz_standardize(args:haxe.extern.Rest<Dynamic>):Dynamic;
}