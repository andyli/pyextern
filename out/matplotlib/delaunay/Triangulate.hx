/* This file is generated, do not edit! */
package matplotlib.delaunay;
@:pythonImport("matplotlib.delaunay.triangulate") extern class Triangulate {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Used to display deprecation warning in a standard way.
		
		Parameters
		------------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(func)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated function; if not provided the name
		    is automatically determined from the passed in function,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative function that the user may use in place of the
		    deprecated function.  The deprecation warning will tell the user about
		    this alternative if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
}