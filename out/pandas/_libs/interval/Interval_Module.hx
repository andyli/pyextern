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
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	/**
		Parameters
		----------
		intervals: ndarray object array of Intervals / nulls
		
		Returns
		-------
		tuples (left: ndarray object array,
		        right: ndarray object array,
		        closed: str)
	**/
	static public function intervals_to_interval_bounds(args:haxe.extern.Rest<Dynamic>):Dynamic;
}