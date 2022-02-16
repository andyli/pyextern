/* This file is generated, do not edit! */
package matplotlib.bezier;
@:pythonImport("matplotlib.bezier") extern class Bezier_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _comb(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _de_casteljau1(beta:Dynamic, t:Dynamic):Dynamic;
	/**
		Check if two lines are parallel.
		
		Parameters
		----------
		dx1, dy1, dx2, dy2 : float
		    The gradients *dy* /*dx* of the two lines.
		tolerance : float
		    The angular tolerance in radians up to which the lines are considered
		    parallel.
		
		Returns
		-------
		is_parallel
		    - 1 if two lines are parallel in same direction.
		    - -1 if two lines are parallel in opposite direction.
		    - False otherwise.
	**/
	static public function check_if_parallel(dx1:Dynamic, dy1:Dynamic, dx2:Dynamic, dy2:Dynamic, ?tolerance:Dynamic):Dynamic;
	/**
		Find the intersection of the Bezier curve with a closed path.
		
		The intersection point *t* is approximated by two parameters *t0*, *t1*
		such that *t0* <= *t* <= *t1*.
		
		Search starts from *t0* and *t1* and uses a simple bisecting algorithm
		therefore one of the end points must be inside the path while the other
		doesn't. The search stops when the distance of the points parametrized by
		*t0* and *t1* gets smaller than the given *tolerance*.
		
		Parameters
		----------
		bezier_point_at_t : callable
		    A function returning x, y coordinates of the Bezier at parameter *t*.
		    It must have the signature::
		
		        bezier_point_at_t(t: float) -> tuple[float, float]
		
		inside_closedpath : callable
		    A function returning True if a given point (x, y) is inside the
		    closed path. It must have the signature::
		
		        inside_closedpath(point: tuple[float, float]) -> bool
		
		t0, t1 : float
		    Start parameters for the search.
		
		tolerance : float
		    Maximal allowed distance between the final points.
		
		Returns
		-------
		t0, t1 : float
		    The Bezier path parameters.
	**/
	static public function find_bezier_t_intersecting_with_closedpath(bezier_point_at_t:Dynamic, inside_closedpath:Dynamic, ?t0:Dynamic, ?t1:Dynamic, ?tolerance:Dynamic):Float;
	/**
		Find control points of the Bezier curve passing through (*c1x*, *c1y*),
		(*mmx*, *mmy*), and (*c2x*, *c2y*), at parametric values 0, 0.5, and 1.
	**/
	static public function find_control_points(c1x:Dynamic, c1y:Dynamic, mmx:Dynamic, mmy:Dynamic, c2x:Dynamic, c2y:Dynamic):Dynamic;
	static public function get_cos_sin(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		Return the intersection between the line through (*cx1*, *cy1*) at angle
		*t1* and the line through (*cx2*, *cy2*) at angle *t2*.
	**/
	static public function get_intersection(cx1:Dynamic, cy1:Dynamic, cos_t1:Dynamic, sin_t1:Dynamic, cx2:Dynamic, cy2:Dynamic, cos_t2:Dynamic, sin_t2:Dynamic):Dynamic;
	/**
		For a line passing through (*cx*, *cy*) and having an angle *t*, return
		locations of the two points located along its perpendicular line at the
		distance of *length*.
	**/
	static public function get_normal_points(cx:Dynamic, cy:Dynamic, cos_t:Dynamic, sin_t:Dynamic, length:Dynamic):Dynamic;
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
		Least-recently-used cache decorator.
		
		If *maxsize* is set to None, the LRU features are disabled and the cache
		can grow without bound.
		
		If *typed* is True, arguments of different types will be cached separately.
		For example, f(3.0) and f(3) will be treated as distinct calls with
		distinct results.
		
		Arguments to the cached function must be hashable.
		
		View the cache statistics named tuple (hits, misses, maxsize, currsize)
		with f.cache_info().  Clear the cache and statistics with f.cache_clear().
		Access the underlying function with f.__wrapped__.
		
		See:  http://en.wikipedia.org/wiki/Cache_replacement_policies#Least_recently_used_(LRU)
	**/
	static public function lru_cache(?maxsize:Dynamic, ?typed:Dynamic):Dynamic;
	/**
		Being similar to get_parallels, returns control points of two quadratic
		Bezier lines having a width roughly parallel to given one separated by
		*width*.
	**/
	static public function make_wedged_bezier2(bezier2:Dynamic, width:Dynamic, ?w1:Dynamic, ?wm:Dynamic, ?w2:Dynamic):Dynamic;
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
		Split a Bezier segment defined by its control points *beta* into two
		separate segments divided at *t* and return their control points.
	**/
	static public function split_de_casteljau(beta:Dynamic, t:Dynamic):Dynamic;
	/**
		Divide a path into two segments at the point where ``inside(x, y)`` becomes
		False.
	**/
	static public function split_path_inout(path:Dynamic, inside:Dynamic, ?tolerance:Dynamic, ?reorder_inout:Dynamic):Dynamic;
}