/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.lines") extern class Lines {
	static public var CARETDOWN : Dynamic;
	static public var CARETLEFT : Dynamic;
	static public var CARETRIGHT : Dynamic;
	static public var CARETUP : Dynamic;
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
		Helper function that sorts out how to deal the input
		`markevery` and returns the points where markers should be drawn.
		
		Takes in the `markevery` value and the line path and returns the
		sub-sampled path.
	**/
	static public function _mark_every_path(markevery:Dynamic, tpath:Dynamic, affine:Dynamic, ax_transform:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator for Artist.draw method. Provides routines
		that run before and after the draw call. The before and after functions
		are useful for changing artist-dependant renderer attributes or making
		other setup function calls, such as starting and flushing a mixed-mode
		renderer.
	**/
	static public function allow_rasterization(draw:Dynamic):Dynamic;
	static public var colorConverter : Dynamic;
	static public var division : Dynamic;
	static public var drawStyles : Dynamic;
	static public var fillStyles : Dynamic;
	/**
		return true if *obj* looks like a number
	**/
	static public function is_numlike(obj:Dynamic):Dynamic;
	/**
		Return True if *obj* looks like a string
	**/
	static public function is_string_like(obj:Dynamic):Dynamic;
	/**
		return true if *obj* is iterable
	**/
	static public function iterable(obj:Dynamic):Dynamic;
	static public var lineMarkers : Dynamic;
	static public var lineStyles : Dynamic;
	static public var ls_mapper : Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		Determine if any line segments are within radius of a
		point. Returns the list of line segments that are within that
		radius.
	**/
	static public function segment_hits(cx:Dynamic, cy:Dynamic, x:Dynamic, y:Dynamic, radius:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	static public var verbose : Dynamic;
}