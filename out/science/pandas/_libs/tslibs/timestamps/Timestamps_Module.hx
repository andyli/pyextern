/* This file is generated, do not edit! */
package pandas._libs.tslibs.timestamps;
@:pythonImport("pandas._libs.tslibs.timestamps") extern class Timestamps_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __pyx_capi__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _no_input : Dynamic;
	static public function _unpickle_timestamp(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _zero_time : Dynamic;
	/**
		Given a int64-based datetime index, return array of strings of date
		name based on requested field (e.g. day_name)
	**/
	static public function get_date_name_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Given an int64-based datetime index return array of indicators
		of whether timestamps are at the start/end of the month/quarter/year
		(defined by frequency).
	**/
	static public function get_start_end_field(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function integer_op_not_supported(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Applies rounding mode at given frequency
		
		Parameters
		----------
		values : np.ndarray[int64_t]`
		mode : instance of `RoundTo` enumeration
		nanos : np.int64
		    Freq to round to, expressed in nanoseconds
		
		Returns
		-------
		np.ndarray[int64_t]
	**/
	static public function round_nsint64(args:haxe.extern.Rest<Dynamic>):Dynamic;
}