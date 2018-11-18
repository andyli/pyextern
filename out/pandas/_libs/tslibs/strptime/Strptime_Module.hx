/* This file is generated, do not edit! */
package pandas._libs.tslibs.strptime;
@:pythonImport("pandas._libs.tslibs.strptime") extern class Strptime_Module {
	static public var _CACHE_MAX_SIZE : Dynamic;
	static public var _TimeRE_cache : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public var _cache_lock : Dynamic;
	/**
		Figure out what language is being used for the locale
	**/
	static public function _getlang(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var _regex_cache : Dynamic;
	/**
		allocate_lock() -> lock object
		(allocate() is an obsolete synonym)
		
		Create a new lock object. See help(type(threading.Lock())) for
		information about locks.
	**/
	static public function _thread_allocate_lock(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Calculates the datetime structs represented by the passed array of strings
		
		Parameters
		----------
		values : ndarray of string-like objects
		fmt : string-like regex
		exact : matches must be exact if True, search if False
		coerce : if invalid values found, coerce to NaT
	**/
	static public function array_strptime(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var nat_strings : Dynamic;
}