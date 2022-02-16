/* This file is generated, do not edit! */
package matplotlib.tri.triangulation;
@:pythonImport("matplotlib.tri.triangulation", "Triangulation") extern class Triangulation {
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
	public function ___init__(x:Dynamic, y:Dynamic, ?triangles:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, ?triangles:Dynamic, ?mask:Dynamic):Void;
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
		Calculate plane equation coefficients for all unmasked triangles from
		the point (x, y) coordinates and specified z-array of shape (npoints).
		The returned array has shape (npoints, 3) and allows z-value at (x, y)
		position in triangle tri to be calculated using
		``z = array[tri, 0] * x  + array[tri, 1] * y + array[tri, 2]``.
	**/
	public function calculate_plane_coefficients(z:Dynamic):Dynamic;
	/**
		Return integer array of shape (nedges, 2) containing all edges of
		non-masked triangles.
		
		Each row defines an edge by it's start point index and end point
		index.  Each edge appears only once, i.e. for an edge between points
		*i*  and *j*, there will only be either *(i, j)* or *(j, i)*.
	**/
	public var edges : Dynamic;
	/**
		Return the underlying C++ Triangulation object, creating it
		if necessary.
	**/
	public function get_cpp_triangulation():Dynamic;
	/**
		Return a Triangulation object from the args and kwargs, and
		the remaining args and kwargs with the consumed values removed.
		
		There are two alternatives: either the first argument is a
		Triangulation object, in which case it is returned, or the args
		and kwargs are sufficient to create a new Triangulation to
		return.  In the latter case, see Triangulation.__init__ for
		the possible args and kwargs.
	**/
	static public function get_from_args_and_kwargs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return an array of triangles that are not masked.
	**/
	public function get_masked_triangles():Dynamic;
	/**
		Return the default `matplotlib.tri.TriFinder` of this
		triangulation, creating it if necessary.  This allows the same
		TriFinder object to be easily shared.
	**/
	public function get_trifinder():Dynamic;
	/**
		Return integer array of shape (ntri, 3) containing neighbor triangles.
		
		For each triangle, the indices of the three triangles that
		share the same edges, or -1 if there is no such neighboring
		triangle.  ``neighbors[i, j]`` is the triangle that is the neighbor
		to the edge from point index ``triangles[i, j]`` to point index
		``triangles[i, (j+1)%3]``.
	**/
	public var neighbors : Dynamic;
	/**
		Set or clear the mask array.
		
		Parameters
		----------
		mask : None or bool array of length ntri
	**/
	public function set_mask(mask:Dynamic):Dynamic;
}