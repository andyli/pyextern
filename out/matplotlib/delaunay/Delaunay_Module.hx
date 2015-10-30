/* This file is generated, do not edit! */
package matplotlib.delaunay;
@:pythonImport("matplotlib.delaunay") extern class Delaunay_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Compute the Delaunay triangulation of a cloud of 2-D points.
		
		circumcenters, edges, tri_points, tri_neighbors = delaunay(x, y)
		
		x, y -- shape-(npoints,) arrays of floats giving the X and Y coordinates of the points
		circumcenters -- shape-(numtri,2) array of floats giving the coordinates of the
		    circumcenters of each triangle (numtri being the number of triangles)
		edges -- shape-(nedges,2) array of integers giving the indices into x and y
		    of each edge in the triangulation
		tri_points -- shape-(numtri,3) array of integers giving the indices into x and y
		    of each node in each triangle
		tri_neighbors -- shape-(numtri,3) array of integers giving the indices into circumcenters
		    tri_points, and tri_neighbors of the neighbors of each triangle
	**/
	static public function delaunay(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	static public var unicode_literals : Dynamic;
}