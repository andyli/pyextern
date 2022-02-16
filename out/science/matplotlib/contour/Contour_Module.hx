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
	static public function _contour_labeler_event_handler(cs:Dynamic, _inline:Dynamic, inline_spacing:Dynamic, event:Dynamic):Dynamic;
	/**
		Parameters
		----------
		xys : (N, 2) array-like
		    Coordinates of vertices.
		p : (float, float)
		    Coordinates of point.
		
		Returns
		-------
		d2min : float
		    Minimum square distance of *p* to *xys*.
		proj : (float, float)
		    Projection of *p* onto *xys*.
		imin : (int, int)
		    Consecutive indices of vertices of segment in *xys* where *proj* is.
		    Segments are considered as including their end-points; i.e if the
		    closest point on the path is a node in *xys* with index *i*, this
		    returns ``(i-1, i)``.  For the special case where *xys* is a single
		    point, this returns ``(0, 0)``.
	**/
	static public function _find_closest_point_on_path(xys:Dynamic, p:Dynamic):Float;
	/**
		Return whether first and last object in a sequence are the same. These are
		presumably coordinates on a polygonal curve, in which case this function
		tests if that curve is closed.
	**/
	static public function _is_closed_polygon(X:Dynamic):Dynamic;
}