/* This file is generated, do not edit! */
package pandas._libs.tslibs.tzconversion;
@:pythonImport("pandas._libs.tslibs.tzconversion") extern class Tzconversion_Module {
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
		Convert the values (in i8) from UTC to tz
		
		Parameters
		----------
		vals : int64 ndarray
		tz : tzinfo
		
		Returns
		-------
		int64 ndarray of converted
	**/
	static public function tz_convert_from_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the val (in i8) from UTC to tz
		
		This is a single value version of tz_convert_from_utc.
		
		Parameters
		----------
		val : int64
		tz : tzinfo
		
		Returns
		-------
		converted: int64
	**/
	static public function tz_convert_from_utc_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Localize tzinfo-naive i8 to given time zone (using pytz). If
		there are ambiguities in the values, raise AmbiguousTimeError.
		
		Parameters
		----------
		vals : ndarray[int64_t]
		tz : tzinfo or None
		ambiguous : str, bool, or arraylike
		    When clocks moved backward due to DST, ambiguous times may arise.
		    For example in Central European Time (UTC+01), when going from 03:00
		    DST to 02:00 non-DST, 02:30:00 local time occurs both at 00:30:00 UTC
		    and at 01:30:00 UTC. In such a situation, the `ambiguous` parameter
		    dictates how ambiguous times should be handled.
		
		    - 'infer' will attempt to infer fall dst-transition hours based on
		      order
		    - bool-ndarray where True signifies a DST time, False signifies a
		      non-DST time (note that this flag is only applicable for ambiguous
		      times, but the array must have the same length as vals)
		    - bool if True, treat all vals as DST. If False, treat them as non-DST
		    - 'NaT' will return NaT where there are ambiguous times
		
		nonexistent : {None, "NaT", "shift_forward", "shift_backward", "raise", timedelta-like}
		    How to handle non-existent times when converting wall times to UTC
		
		Returns
		-------
		localized : ndarray[int64_t]
	**/
	static public function tz_localize_to_utc(args:haxe.extern.Rest<Dynamic>):Dynamic;
}