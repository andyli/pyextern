/* This file is generated, do not edit! */
package scipy.spatial.qhull;
@:pythonImport("scipy.spatial.qhull", "Delaunay") extern class Delaunay {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	@:native("__init__")
	public function ___init__(points:Dynamic, ?furthest_site:Dynamic, ?incremental:Dynamic, ?qhull_options:Dynamic):Dynamic;
	public function new(points:Dynamic, ?furthest_site:Dynamic, ?incremental:Dynamic, ?qhull_options:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _qhull : Dynamic;
	public function _update(qhull:Dynamic):Dynamic;
	/**
		add_points(points, restart=False)
		
		Process a set of additional new points.
		
		Parameters
		----------
		points : ndarray
		    New points to add. The dimensionality should match that of the
		    initial points.
		restart : bool, optional
		    Whether to restart processing from scratch, rather than
		    adding points incrementally.
		
		Raises
		------
		QhullError
		    Raised when Qhull encounters an error condition, such as
		    geometrical degeneracy when options to resolve are not enabled.
		
		See Also
		--------
		close
		
		Notes
		-----
		You need to specify ``incremental=True`` when constructing the
		object to be able to add points incrementally. Incremental addition
		of points is also not possible after `close` has been called.
	**/
	public function add_points(points:Dynamic, ?restart:Dynamic):Dynamic;
	/**
		close()
		
		Finish incremental processing.
		
		Call this to free resources taken up by Qhull, when using the
		incremental mode. After calling this, adding more points is no
		longer possible.
	**/
	public function close():Dynamic;
	/**
		Vertices of facets forming the convex hull of the point set.
		
		:type: ndarray of int, shape (nfaces, ndim)
		
		The array contains the indices of the points
		belonging to the (N-1)-dimensional facets that form the convex
		hull of the triangulation.
		
		.. note::
		
		   Computing convex hulls via the Delaunay triangulation is
		   inefficient and subject to increased numerical instability.
		   Use `ConvexHull` instead.
	**/
	public var convex_hull : Dynamic;
	/**
		find_simplex(self, xi, bruteforce=False, tol=None)
		
		Find the simplices containing the given points.
		
		Parameters
		----------
		tri : DelaunayInfo
		    Delaunay triangulation
		xi : ndarray of double, shape (..., ndim)
		    Points to locate
		bruteforce : bool, optional
		    Whether to only perform a brute-force search
		tol : float, optional
		    Tolerance allowed in the inside-triangle check.
		    Default is ``100*eps``.
		
		Returns
		-------
		i : ndarray of int, same shape as `xi`
		    Indices of simplices containing each point.
		    Points outside the triangulation get the value -1.
		
		Notes
		-----
		This uses an algorithm adapted from Qhull's ``qh_findbestfacet``,
		which makes use of the connection between a convex hull and a
		Delaunay triangulation. After finding the simplex closest to
		the point in N+1 dimensions, the algorithm falls back to
		directed search in N dimensions.
	**/
	public function find_simplex(xi:Dynamic, ?bruteforce:Dynamic, ?tol:Dynamic):Dynamic;
	/**
		lift_points(self, x)
		
		Lift points to the Qhull paraboloid.
	**/
	public function lift_points(x:Dynamic):Dynamic;
	/**
		plane_distance(self, xi)
		
		Compute hyperplane distances to the point `xi` from all simplices.
	**/
	public function plane_distance(xi:Dynamic):Dynamic;
	/**
		Affine transform from ``x`` to the barycentric coordinates ``c``.
		
		:type: ndarray of double, shape (nsimplex, ndim+1, ndim)
		
		This is defined by::
		
		    T c = x - r
		
		At vertex ``j``, ``c_j = 1`` and the other coordinates zero.
		
		For simplex ``i``, ``transform[i,:ndim,:ndim]`` contains
		inverse of the matrix ``T``, and ``transform[i,ndim,:]``
		contains the vector ``r``.
	**/
	public var transform : Dynamic;
	/**
		Neighboring vertices of vertices.
		
		Tuple of two ndarrays of int: (indices, indptr). The indices of
		neighboring vertices of vertex `k` are
		``indptr[indices[k]:indices[k+1]]``.
	**/
	public var vertex_neighbor_vertices : Dynamic;
	/**
		Lookup array, from a vertex, to some simplex which it is a part of.
		
		:type: ndarray of int, shape (npoints,)
	**/
	public var vertex_to_simplex : Dynamic;
}