/* This file is generated, do not edit! */
package pandas._libs.tslibs.period;
@:pythonImport("pandas._libs.tslibs.period") extern class Period_Module {
	static public var MONTH_NUMBERS : Dynamic;
	static public var NAT_SENTINEL : Dynamic;
	static public var NaT : Dynamic;
	static public var PY2 : Dynamic;
	static public var _DIFFERENT_FREQ : Dynamic;
	static public var _DIFFERENT_FREQ_INDEX : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function _quarter_to_myear(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function _validate_end_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert array of datetime64 values (passed in as 'i8' dtype) to a set of
		periods corresponding to desired frequency, per period convention.
	**/
	static public function dt64arr_to_periodarr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function extract_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function extract_ordinals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_period_field_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	static public var nat_strings : Dynamic;
	/**
		Try hard to parse datetime string, leveraging dateutil plus some extra
		goodies like quarter recognition.
		
		Parameters
		----------
		arg : compat.string_types
		freq : str or DateOffset, default None
		    Helps with interpreting time string if supplied
		dayfirst : bool, default None
		    If None uses default from print_config
		yearfirst : bool, default None
		    If None uses default from print_config
		
		Returns
		-------
		datetime, datetime/dateutil.parser._result, str
	**/
	static public function parse_time_string(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert period ordinal from one frequency to another, and if upsampling,
		choose to use start ('S') or end ('E') of period.
	**/
	static public function period_asfreq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert int64-array of period ordinals from one frequency to another, and
		if upsampling, choose to use start ('S') or end ('E') of period.
	**/
	static public function period_asfreq_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function period_format(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Find the ordinal representation of the given datetime components at the
		frequency `freq`.
		
		Parameters
		----------
		y : int
		m : int
		d : int
		h : int
		min : int
		s : int
		us : int
		ps : int
		
		Returns
		-------
		ordinal : int64_t
	**/
	static public function period_ordinal(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function period_ordinal_to_dt64(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert array to datetime64 values from a set of ordinals corresponding to
		periods per period convention.
	**/
	static public function periodarr_to_dt64arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
}