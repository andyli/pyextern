/* This file is generated, do not edit! */
package pandas._libs.interval;
@:pythonImport("pandas._libs.interval") extern class Interval_Module {
	static public var NODE_CLASSES : Dynamic;
	static public var _VALID_CLOSED : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Enum(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float32ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float32ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float32ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float32ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Float64ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int32ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int32ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int32ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int32ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedBothIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedLeftIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedNeitherIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Int64ClosedRightIntervalNode(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_IntervalMixin(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		    object array of Intervals / nulls
		
		validate_closed: boolean, default True
		    boolean indicating if all intervals must be closed on the same side.
		    Mismatching closed will raise if True, else return None for closed.
		
		Returns
		-------
		tuples (left: ndarray object array,
		        right: ndarray object array,
		        closed: str)
	**/
	static public function intervals_to_interval_bounds(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		le(a, b) -- Same as a<=b.
	**/
	static public function le(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		lt(a, b) -- Same as a<b.
	**/
	static public function lt(args:haxe.extern.Rest<Dynamic>):Dynamic;
}