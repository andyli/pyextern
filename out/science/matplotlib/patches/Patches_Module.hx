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
		Return the point on the line connecting (*x0*, *y0*) -- (*x1*, *y1*) whose
		distance from (*x0*, *y0*) is *d*.
	**/
	static public function _point_along_a_line(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic, d:Dynamic):Dynamic;
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
		A debug function to draw a rectangle around the bounding
		box returned by an artist's `.Artist.get_window_extent`
		to test whether the artist is returning the correct bbox.
		
		*props* is a dict of rectangle props with the additional property
		'pad' that sets the padding around the bbox in points.
	**/
	static public function bbox_artist(artist:Dynamic, renderer:Dynamic, ?props:Dynamic, ?fill:Dynamic):Dynamic;
	/**
		A debug function to draw a rectangle around the bounding
		box returned by an artist's `.Artist.get_window_extent`
		to test whether the artist is returning the correct bbox.
	**/
	static public function draw_bbox(bbox:Dynamic, renderer:Dynamic, ?color:Dynamic, ?trans:Dynamic):Dynamic;
	static public function get_cos_sin(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		Return the intersection between the line through (*cx1*, *cy1*) at angle
		*t1* and the line through (*cx2*, *cy2*) at angle *t2*.
	**/
	static public function get_intersection(cx1:Dynamic, cy1:Dynamic, cos_t1:Dynamic, sin_t1:Dynamic, cx2:Dynamic, cy2:Dynamic, cos_t2:Dynamic, sin_t2:Dynamic):Dynamic;
	/**
		Given the quadratic Bezier control points *bezier2*, returns
		control points of quadratic Bezier lines roughly parallel to given
		one separated by *width*.
	**/
	static public function get_parallels(bezier2:Dynamic, width:Dynamic):Dynamic;
	/**
		Return a function that checks whether a point is in a circle with center
		(*cx*, *cy*) and radius *r*.
		
		The returned function has the signature::
		
		    f(xy: tuple[float, float]) -> bool
	**/
	static public function inside_circle(cx:Dynamic, cy:Dynamic, r:Dynamic):Dynamic;
	/**
		Being similar to get_parallels, returns control points of two quadratic
		Bezier lines having a width roughly parallel to given one separated by
		*width*.
	**/
	static public function make_wedged_bezier2(bezier2:Dynamic, width:Dynamic, ?w1:Dynamic, ?wm:Dynamic, ?w2:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Split a Bezier curve into two at the intersection with a closed path.
		
		Parameters
		----------
		bezier : (N, 2) array-like
		    Control points of the Bezier segment. See `.BezierSegment`.
		inside_closedpath : callable
		    A function returning True if a given point (x, y) is inside the
		    closed path. See also `.find_bezier_t_intersecting_with_closedpath`.
		tolerance : float
		    The tolerance for the intersection. See also
		    `.find_bezier_t_intersecting_with_closedpath`.
		
		Returns
		-------
		left, right
		    Lists of control points for the two Bezier segments.
	**/
	static public function split_bezier_intersecting_with_closedpath(bezier:Dynamic, inside_closedpath:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Divide a path into two segments at the point where ``inside(x, y)`` becomes
		False.
	**/
	static public function split_path_inout(path:Dynamic, inside:Dynamic, ?tolerance:Dynamic, ?reorder_inout:Dynamic):Dynamic;
}