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
	static public function _de_casteljau1(beta:Dynamic, t:Dynamic):Dynamic;
	/**
		returns
		* 1 if two lines are parralel in same direction
		* -1 if two lines are parralel in opposite direction
		* 0 otherwise
	**/
	static public function check_if_parallel(dx1:Dynamic, dy1:Dynamic, dx2:Dynamic, dy2:Dynamic, ?tolerence:Dynamic):Dynamic;
	/**
		concatenate list of paths into a single path.
	**/
	static public function concatenate_paths(paths:Dynamic):Dynamic;
	/**
		Find a parameter t0 and t1 of the given bezier path which
		bounds the intersecting points with a provided closed
		path(*inside_closedpath*). Search starts from *t0* and *t1* and it
		uses a simple bisecting algorithm therefore one of the end point
		must be inside the path while the orther doesn't. The search stop
		when |t0-t1| gets smaller than the given tolerence.
		value for
		
		- bezier_point_at_t : a function which returns x, y coordinates at *t*
		
		- inside_closedpath : return True if the point is inside the path
	**/
	static public function find_bezier_t_intersecting_with_closedpath(bezier_point_at_t:Dynamic, inside_closedpath:Dynamic, ?t0:Dynamic, ?t1:Dynamic, ?tolerence:Dynamic):Dynamic;
	/**
		Find control points of the bezier line through c1, mm, c2. We
		simply assume that c1, mm, c2 which have parametric value 0, 0.5, and 1.
	**/
	static public function find_control_points(c1x:Dynamic, c1y:Dynamic, mmx:Dynamic, mmy:Dynamic, c2x:Dynamic, c2y:Dynamic):Dynamic;
	/**
		Find a radius r (centered at *xy*) between *rmin* and *rmax* at
		which it intersect with the path.
		
		inside_closedpath : function
		cx, cy : center
		cos_t, sin_t : cosine and sine for the angle
		rmin, rmax :
	**/
	static public function find_r_to_boundary_of_closedpath(inside_closedpath:Dynamic, xy:Dynamic, cos_t:Dynamic, sin_t:Dynamic, ?rmin:Dynamic, ?rmax:Dynamic, ?tolerence:Dynamic):Dynamic;
	static public function get_cos_sin(x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		return a intersecting point between a line through (cx1, cy1)
		and having angle t1 and a line through (cx2, cy2) and angle t2.
	**/
	static public function get_intersection(cx1:Dynamic, cy1:Dynamic, cos_t1:Dynamic, sin_t1:Dynamic, cx2:Dynamic, cy2:Dynamic, cos_t2:Dynamic, sin_t2:Dynamic):Dynamic;
	/**
		For a line passing through (*cx*, *cy*) and having a angle *t*, return
		locations of the two points located along its perpendicular line at the
		distance of *length*.
	**/
	static public function get_normal_points(cx:Dynamic, cy:Dynamic, cos_t:Dynamic, sin_t:Dynamic, length:Dynamic):Dynamic;
	/**
		Given the quadratic bezier control points *bezier2*, returns
		control points of quadratic bezier lines roughly parallel to given
		one separated by *width*.
	**/
	static public function get_parallels(bezier2:Dynamic, width:Dynamic):Dynamic;
	static public function inside_circle(cx:Dynamic, cy:Dynamic, r:Dynamic):Dynamic;
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
	/**
		bezier : control points of the bezier segment
		inside_closedpath : a function which returns true if the point is inside
		                    the path
	**/
	static public function split_bezier_intersecting_with_closedpath(bezier:Dynamic, inside_closedpath:Dynamic, ?tolerence:Dynamic):Dynamic;
	/**
		split a bezier segment defined by its controlpoints *beta*
		into two separate segment divided at *t* and return their control points.
	**/
	static public function split_de_casteljau(beta:Dynamic, t:Dynamic):Dynamic;
	/**
		divide a path into two segment at the point where inside(x, y)
		becomes False.
	**/
	static public function split_path_inout(path:Dynamic, inside:Dynamic, ?tolerence:Dynamic, ?reorder_inout:Dynamic):Dynamic;
}