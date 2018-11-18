/* This file is generated, do not edit! */
package pandas._libs.index;
@:pythonImport("pandas._libs.index") extern class Index_Module {
	static public var _SIZE_CUTOFF : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_BaseMultiIndexCodesEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_DatetimeEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64Engine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_IndexEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64Engine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_ObjectEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_PeriodEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_TimedeltaEngine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_UInt64Engine(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Return boolean describing of the input is NA-like, defined here as any
		of:
		 - None
		 - nan
		 - NaT
		 - np.datetime64 representation of NaT
		 - np.timedelta64 representation of NaT
		
		Parameters
		----------
		val : object
		
		Returns
		-------
		result : bool
		
		Notes
		-----
		The difference between `checknull` and `checknull_old` is that `checknull`
		does *not* consider INF or NEGINF to be NA.
	**/
	static public function checknull(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function convert_scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_value_at(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function get_value_box(args:haxe.extern.Rest<Dynamic>):Dynamic;
}