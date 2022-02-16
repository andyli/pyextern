/* This file is generated, do not edit! */
package matplotlib.lines;
@:pythonImport("matplotlib.lines") extern class Lines_Module {
	static public var CARETDOWN : Dynamic;
	static public var CARETDOWNBASE : Dynamic;
	static public var CARETLEFT : Dynamic;
	static public var CARETLEFTBASE : Dynamic;
	static public var CARETRIGHT : Dynamic;
	static public var CARETRIGHTBASE : Dynamic;
	static public var CARETUP : Dynamic;
	static public var CARETUPBASE : Dynamic;
	static public var STEP_LOOKUP_MAP : Dynamic;
	static public var TICKDOWN : Dynamic;
	static public var TICKLEFT : Dynamic;
	static public var TICKRIGHT : Dynamic;
	static public var TICKUP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Convert linestyle to dash pattern.
	**/
	static public function _get_dash_pattern(style:Dynamic):Dynamic;
	static public var _log : Dynamic;
	/**
		Helper function that sorts out how to deal the input
		`markevery` and returns the points where markers should be drawn.
		
		Takes in the `markevery` value and the line path and returns the
		sub-sampled path.
	**/
	static public function _mark_every_path(markevery:Dynamic, tpath:Dynamic, affine:Dynamic, ax:Dynamic):Dynamic;
	static public function _scale_dashes(offset:Dynamic, dashes:Dynamic, lw:Dynamic):Dynamic;
	/**
		Convert a sequence to a float array; if input was a masked array, masked
		values are converted to nans.
	**/
	static public function _to_unmasked_float_array(x:Dynamic):Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependent renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var drawStyles : Dynamic;
	static public var fillStyles : Dynamic;
	static public var lineMarkers : Dynamic;
	static public var lineStyles : Dynamic;
	static public var ls_mapper : Dynamic;
	static public var ls_mapper_r : Dynamic;
	static public var rcParams : Dynamic;
	/**
		Return the indices of the segments in the polyline with coordinates (*cx*,
		*cy*) that are within a distance *radius* of the point (*x*, *y*).
	**/
	static public function segment_hits(cx:Dynamic, cy:Dynamic, x:Dynamic, y:Dynamic, radius:Dynamic):Dynamic;
}