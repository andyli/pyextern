/* This file is generated, do not edit! */
package matplotlib.tri;
@:pythonImport("matplotlib.tri.tripcolor") extern class Tripcolor {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Create a pseudocolor plot of an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either::
		
		  tripcolor(triangulation, ...)
		
		where triangulation is a :class:`matplotlib.tri.Triangulation`
		object, or
		
		::
		
		  tripcolor(x, y, ...)
		  tripcolor(x, y, triangles, ...)
		  tripcolor(x, y, triangles=triangles, ...)
		  tripcolor(x, y, mask=mask, ...)
		  tripcolor(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See
		:class:`~matplotlib.tri.Triangulation` for a explanation of these
		possibilities.
		
		The next argument must be *C*, the array of color values, either
		one per point in the triangulation if color values are defined at
		points, or one per triangle in the triangulation if color values
		are defined at triangles. If there are the same number of points
		and triangles in the triangulation it is assumed that color
		values are defined at points; to force the use of color values at
		triangles use the kwarg *facecolors*=C instead of just *C*.
		
		*shading* may be 'flat' (the default) or 'gouraud'. If *shading*
		is 'flat' and C values are defined at points, the color values
		used for each triangle are from the mean C of the triangle's
		three points. If *shading* is 'gouraud' then color values must be
		defined at points.  *shading* of 'faceted' is deprecated;
		please use *edgecolors* instead.
		
		The remaining kwargs are the same as for
		:meth:`~matplotlib.axes.Axes.pcolor`.
		
		**Example:**
		
		    .. plot:: mpl_examples/pylab_examples/tripcolor_demo.py
	**/
	static public function tripcolor(ax:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
}