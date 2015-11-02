/* This file is generated, do not edit! */
package matplotlib.delaunay.triangulate;
@:pythonImport("matplotlib.delaunay.triangulate", "Triangulation") extern class Triangulation {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic):Dynamic;
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
	/**
		Extract the convex hull from the triangulation information.
		
		The output will be a list of point_id's in counter-clockwise order
		forming the convex hull of the data set.
	**/
	public function _compute_convex_hull():Dynamic;
	/**
		Return array of indices of x,y points that are duplicates of
		previous points. Indices are in no particular order.
	**/
	public function _get_duplicate_point_indices():Dynamic;
	public function linear_extrapolator(z:Dynamic, ?bbox:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		Get an object which can interpolate within the convex hull by
		assigning a plane to each triangle.
		
		z -- an array of floats giving the known function values at each point
		  in the triangulation.
	**/
	public function linear_interpolator(z:Dynamic, ?default_value:Dynamic):Dynamic;
	public function nn_extrapolator(z:Dynamic, ?bbox:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		Get an object which can interpolate within the convex hull by
		the natural neighbors method.
		
		z -- an array of floats giving the known function values at each point
		  in the triangulation.
	**/
	public function nn_interpolator(z:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		Return a graph of node_id's pointing to node_id's.
		
		The arcs of the graph correspond to the edges in the triangulation.
		
		{node_id: set([node_id, ...]), ...}
	**/
	public function node_graph():Dynamic;
	public function prep_extrapolator(z:Dynamic, ?bbox:Dynamic):Dynamic;
	/**
		Converts any array of point indices used within this class to
		refer to point indices within the (x,y) arrays specified in the
		constructor before duplicates were removed.
	**/
	public function to_client_point_indices(array:Dynamic):Dynamic;
}