/* This file is generated, do not edit! */
package pandas._libs.reduction;
@:pythonImport("pandas._libs.reduction") extern class Reduction_Module {
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public function __pyx_unpickle_Reducer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_SeriesBinGrouper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_SeriesGrouper(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __pyx_unpickle_Slider(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __spec__ : Dynamic;
	static public var __test__ : Dynamic;
	static public function apply_frame_axis0(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Type inference function-- convert object array to proper dtype
	**/
	static public function maybe_convert_objects(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Parameters
		-----------
		arr : NDFrame object
		f : function
		axis : integer axis
		dummy : type of reduced output (series)
		labels : Index or None
	**/
	static public function reduce(args:haxe.extern.Rest<Dynamic>):Dynamic;
}