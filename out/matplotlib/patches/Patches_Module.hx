/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches") extern class Patches_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		find a point along a line connecting (x0, y0) -- (x1, y1) whose
		distance from (x0, y0) is d.
	**/
	static public function _point_along_a_line(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic, d:Dynamic):Dynamic;
	/**
		A helper function for the _Style class.  Given the dictionary of
		{stylename: styleclass}, return a formatted string listing all the
		styles. Used to update the documentation.
	**/
	static public function _pprint_styles(_styles:Dynamic):Dynamic;
	/**
		Given the list of list of strings, return a string of REST table format.
	**/
	static public function _pprint_table(table:Dynamic, ?leadingspace:Dynamic):Dynamic;
	/**
		Class decorator that stashes a class in a (style) dictionary.
	**/
	static public function _register_style(style_list:Dynamic, ?cls:Dynamic, ?name:Dynamic):Dynamic;
	/**
		A helper function for the _Style class.  Given the dictionary of
		{stylename: styleclass}, return a string rep of the list of keys.
		Used to update the documentation.
	**/
	static public function _simpleprint_styles(_styles:Dynamic):Dynamic;
	/**
		This is a debug function to draw a rectangle around the bounding
		box returned by
		:meth:`~matplotlib.artist.Artist.get_window_extent` of an artist,
		to test whether the artist is returning the correct bbox.
		
		*props* is a dict of rectangle props with the additional property
		'pad' that sets the padding around the bbox in points.
	**/
	static public function bbox_artist(artist:Dynamic, renderer:Dynamic, ?props:Dynamic, ?fill:Dynamic):Dynamic;
	/**
		concatenate list of paths into a single path.
	**/
	static public function concatenate_paths(paths:Dynamic):Dynamic;
	/**
		This is a debug function to draw a rectangle around the bounding
		box returned by
		:meth:`~matplotlib.artist.Artist.get_window_extent` of an artist,
		to test whether the artist is returning the correct bbox.
	**/
	static public function draw_bbox(bbox:Dynamic, renderer:Dynamic, ?color:Dynamic, ?trans:Dynamic):Dynamic;
	static public function get_cos_sin(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		return a intersecting point between a line through (cx1, cy1)
		and having angle t1 and a line through (cx2, cy2) and angle t2.
	**/
	static public function get_intersection(cx1:Dynamic, cy1:Dynamic, cos_t1:Dynamic, sin_t1:Dynamic, cx2:Dynamic, cy2:Dynamic, cos_t2:Dynamic, sin_t2:Dynamic):Dynamic;
	/**
		Given the quadratic bezier control points *bezier2*, returns
		control points of quadratic bezier lines roughly parallel to given
		one separated by *width*.
	**/
	static public function get_parallels(bezier2:Dynamic, width:Dynamic):Dynamic;
	static public function inside_circle(cx:Dynamic, cy:Dynamic, r:Dynamic):Dynamic;
	static public var k : Dynamic;
	/**
		fill in the codes if None.
	**/
	static public function make_path_regular(p:Dynamic):Dynamic;
	/**
		Being similar to get_parallels, returns control points of two quadrativ
		bezier lines having a width roughly parallel to given one separated by
		*width*.
	**/
	static public function make_wedged_bezier2(bezier2:Dynamic, width:Dynamic, ?w1:Dynamic, ?wm:Dynamic, ?w2:Dynamic):Dynamic;
	static public var patchdoc : Dynamic;
	/**
		bezier : control points of the bezier segment
		inside_closedpath : a function which returns true if the point is inside
		                    the path
	**/
	static public function split_bezier_intersecting_with_closedpath(bezier:Dynamic, inside_closedpath:Dynamic, ?tolerence:Dynamic):Dynamic;
	/**
		divide a path into two segment at the point where inside(x, y)
		becomes False.
	**/
	static public function split_path_inout(path:Dynamic, inside:Dynamic, ?tolerence:Dynamic, ?reorder_inout:Dynamic):Dynamic;
}