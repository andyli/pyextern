/* This file is generated, do not edit! */
package scipy.spatial.qhull;
@:pythonImport("scipy.spatial.qhull", "_Qhull") extern class _Qhull {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
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
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
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
	public function add_points(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function check_active(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Uninitialize this instance
	**/
	public function close(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var furthest_site : Dynamic;
	/**
		Compute the extremal points in a 2-D convex hull, i.e. the
		vertices of the convex hull, ordered counterclockwise.
		
		See qhull/io.c:qh_printextremes_2d
	**/
	public function get_extremes_2d(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_paraboloid_shift_scale(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function get_points(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return array of simplical facets currently in Qhull.
		
		Returns
		-------
		facets : array of int, shape (nfacets, ndim+1)
		    Indices of coordinates of vertices forming the simplical facets
		neighbors : array of int, shape (nfacets, ndim)
		    Indices of neighboring facets.  The kth neighbor is opposite
		    the kth vertex, and the first neighbor is the horizon facet
		    for the first vertex.
		
		    Facets extending to infinity are denoted with index -1.
		equations : array of double, shape (nfacets, ndim+2)
	**/
	public function get_simplex_facet_array(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return the voronoi diagram currently in Qhull.
		
		Returns
		-------
		voronoi_vertices : array of double, shape (nvoronoi_vertices, ndim)
		    Coordinates of the Voronoi vertices
		
		ridge_points : array of double, shape (nridges, 2)
		    Voronoi ridges, as indices to the points array.
		
		ridge_vertices : list of lists, shape (nridges, *)
		    Voronoi vertices for each Voronoi ridge, as indices to
		    the Voronoi vertices array.
		    Infinity is indicated by index ``-1``.
		
		regions : list of lists, shape (nregion, *)
		    Voronoi vertices of all regions.
		
		point_region : array of int, shape (npoint,)
		    Index of the Voronoi region for each input point.
	**/
	public function get_voronoi_diagram(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public var mode_option : Dynamic;
	public var ndim : Dynamic;
	public var options : Dynamic;
	public function triangulate(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function volume_area(args:haxe.extern.Rest<Dynamic>):Dynamic;
}