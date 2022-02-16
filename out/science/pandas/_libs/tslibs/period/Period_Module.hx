/* This file is generated, do not edit! */
package pandas._libs.tslibs.period;
@:pythonImport("pandas._libs.tslibs.period") extern class Period_Module {
	static public var DIFFERENT_FREQ : Dynamic;
	static public var INVALID_FREQ_ERR_MSG : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_PeriodMixin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
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
	static public function extract_freq(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function extract_ordinals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function freq_to_dtype_code(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function from_ordinals(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_period_field_arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Try hard to parse datetime string, leveraging dateutil plus some extra
		goodies like quarter recognition.
		
		Parameters
		----------
		arg : str
		freq : str or DateOffset, default None
		    Helps with interpreting time string if supplied
		dayfirst : bool, default None
		    If None uses default from print_config
		yearfirst : bool, default None
		    If None uses default from print_config
		
		Returns
		-------
		datetime
		str
		    Describing resolution of parsed string.
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
	/**
		Convert array to datetime64 values from a set of ordinals corresponding to
		periods per period convention.
	**/
	static public function periodarr_to_dt64arr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function validate_end_alias(args:haxe.extern.Rest<Dynamic>):Dynamic;
}