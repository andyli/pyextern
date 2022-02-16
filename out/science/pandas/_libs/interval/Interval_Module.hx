/* This file is generated, do not edit! */
package pandas._libs.interval;
@:pythonImport("pandas._libs.interval") extern class Interval_Module {
	static public var NODE_CLASSES : Dynamic;
	static public var VALID_CLOSED : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_IntervalMixin(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_IntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_IntervalTree(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Uint64ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Uint64ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Uint64ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Uint64ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Parameters
		----------
		intervals : ndarray
		    Object array of Intervals / nulls.
		
		validate_closed: bool, default True
		    Boolean indicating if all intervals must be closed on the same side.
		    Mismatching closed will raise if True, else return None for closed.
		
		Returns
		-------
		tuple of
		    left : ndarray
		    right : ndarray
		    closed: str
	**/
	static public function intervals_to_interval_bounds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Returns
		-------
		tuple
		    is_monotonic_inc : bool
		    is_monotonic_dec : bool
		    is_unique : bool
	**/
	static public function is_monotonic(arr:Dynamic, timelike:Dynamic):Dynamic;
	/**
		Same as a <= b.
	**/
	static public function le(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Same as a < b.
	**/
	static public function lt(a:Dynamic, b:Dynamic):Dynamic;
}