/* This file is generated, do not edit! */
package matplotlib.contour;
@:pythonImport("matplotlib.contour") extern class Contour_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Find the closest point to p0 on line segment connecting p1 and p2.
	**/
	static public function _find_closest_point_on_leg(p1:Dynamic, p2:Dynamic, p0:Dynamic):Dynamic;
	/**
		Parameters
		----------
		lc : coordinates of vertices
		point : coordinates of test point
	**/
	static public function _find_closest_point_on_path(lc:Dynamic, point:Dynamic):Dynamic;
	/**
		Return whether first and last object in a sequence are the same. These are
		presumably coordinates on a polygonal curve, in which case this function
		tests if that curve is closed.
	**/
	static public function _is_closed_polygon(X:Dynamic):Dynamic;
}