/* This file is generated, do not edit! */
package matplotlib.tri.trirefine;
@:pythonImport("matplotlib.tri.trirefine", "UniformTriRefiner") extern class UniformTriRefiner {
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
	public function ___init__(triangulation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(triangulation:Dynamic):Void;
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
		This function refines a matplotlib.tri *triangulation* by splitting
		each triangle into 4 child-masked_triangles built on the edges midside
		nodes.
		The masked triangles, if present, are also splitted but their children
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
		Refines a field defined on the encapsulated triangulation.
		
		Returns *refi_tri* (refined triangulation), *refi_z* (interpolated
		values of the field at the node of the refined triangulation).
		
		Parameters
		----------
		z : 1d-array-like of length ``n_points``
		    Values of the field to refine, defined at the nodes of the
		    encapsulated triangulation. (``n_points`` is the number of points
		    in the initial triangulation)
		triinterpolator : :class:`~matplotlib.tri.TriInterpolator`, optional
		    Interpolator used for field interpolation. If not specified,
		    a :class:`~matplotlib.tri.CubicTriInterpolator` will
		    be used.
		subdiv : integer, optional
		    Recursion level for the subdivision. Defaults to 3.
		    Each triangle will be divided into ``4**subdiv`` child triangles.
		
		Returns
		-------
		refi_tri : :class:`~matplotlib.tri.Triangulation` object
		             The returned refined triangulation
		refi_z : 1d array of length: *refi_tri* node count.
		           The returned interpolated field (at *refi_tri* nodes)
		
		Examples
		--------
		The main application of this method is to plot high-quality
		iso-contours on a coarse triangular grid (e.g., triangulation built
		from relatively sparse test data):
		
		.. plot:: mpl_examples/pylab_examples/tricontour_smooth_user.py
	**/
	public function refine_field(z:Dynamic, ?triinterpolator:Dynamic, ?subdiv:Dynamic):Dynamic;
	/**
		Computes an uniformly refined triangulation *refi_triangulation* of
		the encapsulated :attr:`triangulation`.
		
		This function refines the encapsulated triangulation by splitting each
		father triangle into 4 child sub-triangles built on the edges midside
		nodes, recursively (level of recursion *subdiv*).
		In the end, each triangle is hence divided into ``4**subdiv``
		child triangles.
		The default value for *subdiv* is 3 resulting in 64 refined
		subtriangles for each triangle of the initial triangulation.
		
		Parameters
		----------
		return_tri_index : boolean, optional
		    Boolean indicating whether an index table indicating the father
		    triangle index of each point will be returned. Default value
		    False.
		subdiv : integer, optional
		    Recursion level for the subdivision. Defaults value 3.
		    Each triangle will be divided into ``4**subdiv`` child triangles.
		
		Returns
		-------
		refi_triangulation : :class:`~matplotlib.tri.Triangulation`
		    The returned refined triangulation
		found_index : array-like of integers
		    Index of the initial triangulation containing triangle, for each
		    point of *refi_triangulation*.
		    Returned only if *return_tri_index* is set to True.
	**/
	public function refine_triangulation(?return_tri_index:Dynamic, ?subdiv:Dynamic):Dynamic;
}