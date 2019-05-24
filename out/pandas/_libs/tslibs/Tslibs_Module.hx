/* This file is generated, do not edit! */
package pandas._libs.tslibs;
@:pythonImport("pandas._libs.tslibs") extern class Tslibs_Module {
	static public var NaT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function delta_to_nanoseconds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var iNaT : Dynamic;
	/**
		convert an i8 repr to an ndarray of timedelta or Timedelta (if box ==
		True)
		
		Parameters
		----------
		arr : ndarray[int64_t]
		box : bool, default False
		
		Returns
		-------
		result : ndarray[object]
		    array of Timedelta or timedeltas objects
	**/
	static public function ints_to_pytimedelta(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Determine if we have a null for a timedelta/datetime (or integer versions)
		
		Parameters
		----------
		val : object
		inat_is_null : bool, default True
		    Whether to treat integer iNaT value as null
		
		Returns
		-------
		null_datetimelike : bool
	**/
	static public function is_null_datetimelike(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Take a datetime/Timestamp in UTC and localizes to timezone tz.
		
		Parameters
		----------
		dt : datetime or Timestamp
		tz : tzinfo, "UTC", or None
		
		Returns
		-------
		localized : datetime or Timestamp
	**/
	static public function localize_pydatetime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Normalize datetime.datetime value to midnight. Returns datetime.date as a
		datetime.datetime at midnight
		
		Parameters
		----------
		dt : date, datetime, or Timestamp
		
		Returns
		-------
		normalized : datetime.datetime or Timestamp
		
		Raises
		------
		TypeError : if input is not datetime.date, datetime.datetime, or Timestamp
	**/
	static public function normalize_date(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Convert the val (in i8) from timezone1 to timezone2
		
		This is a single timezone version of tz_convert
		
		Parameters
		----------
		val : int64
		tz1 : string / timezone object
		tz2 : string / timezone object
		
		Returns
		-------
		converted: int64
	**/
	static public function tz_convert_single(args:haxe.extern.Rest<Dynamic>):Dynamic;
}