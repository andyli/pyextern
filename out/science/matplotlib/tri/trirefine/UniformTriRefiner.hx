/* This file is generated, do not edit! */
package matplotlib.tri.trirefine;
@:pythonImport("matplotlib.tri.trirefine", "UniformTriRefiner") extern class UniformTriRefiner {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
	public function ___init__(triangulation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(triangulation:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Refine a `.Triangulation` by splitting each triangle into 4
		child-masked_triangles built on the edges midside nodes.
		
		Masked triangles, if present, are also split, but their children
		returned masked.
		
		If *ancestors* is not provided, returns only a new triangulation:
		child_triangulation.
		
		If the array-like key table *ancestor* is given, it shall be of shape
		(ntri,) where ntri is the number of *triangulation* masked_triangles.
		In this case, the function returns
		(child_triangulation, child_ancestors)
		child_ancestors is defined so that the 4 child masked_triangles share
		the same index as their father: child_ancestors.shape = (4 * ntri,).
	**/
	static public function _refine_triangulation_once(triangulation:Dynamic, ?ancestors:Dynamic):Dynamic;
	/**
		Refine a field defined on the encapsulated triangulation.
		
		Parameters
		----------
		z : (npoints,) array-like
		    Values of the field to refine, defined at the nodes of the
		    encapsulated triangulation. (``n_points`` is the number of points
		    in the initial triangulation)
		triinterpolator : `~matplotlib.tri.TriInterpolator`, optional
		    Interpolator used for field interpolation. If not specified,
		    a `~matplotlib.tri.CubicTriInterpolator` will be used.
		subdiv : int, default: 3
		    Recursion level for the subdivision.
		    Each triangle is divided into ``4**subdiv`` child triangles.
		
		Returns
		-------
		refi_tri : `~matplotlib.tri.Triangulation`
		     The returned refined triangulation.
		refi_z : 1D array of length: *refi_tri* node count.
		     The returned interpolated field (at *refi_tri* nodes).
	**/
	public function refine_field(z:Dynamic, ?triinterpolator:Dynamic, ?subdiv:Dynamic):Dynamic;
	/**
		Compute an uniformly refined triangulation *refi_triangulation* of
		the encapsulated :attr:`triangulation`.
		
		This function refines the encapsulated triangulation by splitting each
		father triangle into 4 child sub-triangles built on the edges midside
		nodes, recursing *subdiv* times.  In the end, each triangle is hence
		divided into ``4**subdiv`` child triangles.
		
		Parameters
		----------
		return_tri_index : bool, default: False
		    Whether an index table indicating the father triangle index of each
		    point is returned.
		subdiv : int, default: 3
		    Recursion level for the subdivision.
		    Each triangle is divided into ``4**subdiv`` child triangles;
		    hence, the default results in 64 refined subtriangles for each
		    triangle of the initial triangulation.
		
		Returns
		-------
		refi_triangulation : `~matplotlib.tri.Triangulation`
		    The refined triangulation.
		found_index : int array
		    Index of the initial triangulation containing triangle, for each
		    point of *refi_triangulation*.
		    Returned only if *return_tri_index* is set to True.
	**/
	public function refine_triangulation(?return_tri_index:Dynamic, ?subdiv:Dynamic):Dynamic;
}