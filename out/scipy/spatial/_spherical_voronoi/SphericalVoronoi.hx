/* This file is generated, do not edit! */
package scipy.spatial._spherical_voronoi;
@:pythonImport("scipy.spatial._spherical_voronoi", "SphericalVoronoi") extern class SphericalVoronoi {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	/**
		Initializes the object and starts the computation of the Voronoi
		diagram.
		
		points : The generator points of the Voronoi diagram assumed to be
		 all on the sphere with radius supplied by the radius parameter and
		 center supplied by the center parameter.
		radius : The radius of the sphere. Will default to 1 if not supplied.
		center : The center of the sphere. Will default to the origin if not
		 supplied.
	**/
	@:native("__init__")
	public function ___init__(points:Dynamic, ?radius:Dynamic, ?center:Dynamic, ?threshold:Dynamic):Dynamic;
	/**
		Initializes the object and starts the computation of the Voronoi
		diagram.
		
		points : The generator points of the Voronoi diagram assumed to be
		 all on the sphere with radius supplied by the radius parameter and
		 center supplied by the center parameter.
		radius : The radius of the sphere. Will default to 1 if not supplied.
		center : The center of the sphere. Will default to the origin if not
		 supplied.
	**/
	public function new(points:Dynamic, ?radius:Dynamic, ?center:Dynamic, ?threshold:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Calculates the Voronoi vertices and regions of the generators stored
		in self.points. The vertices will be stored in self.vertices and the
		regions in self.regions.
		
		This algorithm was discussed at PyData London 2015 by
		Tyler Reddy, Ross Hemsley and Nikolai Nowaczyk
	**/
	public function _calc_vertices_regions():Dynamic;
	/**
		For each region in regions, it sorts the indices of the Voronoi
		vertices such that the resulting points are in a clockwise or
		counterclockwise order around the generator point.
		
		This is done as follows: Recall that the n-th region in regions
		surrounds the n-th generator in points and that the k-th
		Voronoi vertex in vertices is the projected circumcenter of the
		tetrahedron obtained by the k-th triangle in _tri.simplices (and the
		origin). For each region n, we choose the first triangle (=Voronoi
		vertex) in _tri.simplices and a vertex of that triangle not equal to
		the center n. These determine a unique neighbor of that triangle,
		which is then chosen as the second triangle. The second triangle
		will have a unique vertex not equal to the current vertex or the
		center. This determines a unique neighbor of the second triangle,
		which is then chosen as the third triangle and so forth. We proceed
		through all the triangles (=Voronoi vertices) belonging to the
		generator in points and obtain a sorted version of the vertices
		of its surrounding region.
	**/
	public function sort_vertices_of_regions():Dynamic;
}