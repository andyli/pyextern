/* This file is generated, do not edit! */
package matplotlib.tri.tritools;
@:pythonImport("matplotlib.tri.tritools", "TriAnalyzer") extern class TriAnalyzer {
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
		Compress (if masked) the encapsulated triangulation.
		
		Returns minimal-length triangles array (*compressed_triangles*) and
		coordinates arrays (*compressed_x*, *compressed_y*) that can still
		describe the unmasked triangles of the encapsulated triangulation.
		
		Returns
		-------
		compressed_triangles : array-like
		    the returned compressed triangulation triangles
		compressed_x : array-like
		    the returned compressed triangulation 1st coordinate
		compressed_y : array-like
		    the returned compressed triangulation 2nd coordinate
		tri_renum : int array
		    renumbering table to translate the triangle numbers from the
		    encapsulated triangulation into the new (compressed) renumbering.
		    -1 for masked triangles (deleted from *compressed_triangles*).
		node_renum : int array
		    renumbering table to translate the point numbers from the
		    encapsulated triangulation into the new (compressed) renumbering.
		    -1 for unused points (i.e. those deleted from *compressed_x* and
		    *compressed_y*).
	**/
	public function _get_compressed_triangulation():Dynamic;
	/**
		Parameters
		----------
		valid : 1D bool array
		    Validity mask.
		
		Returns
		-------
		int array
		    Array so that (`valid_array` being a compressed array
		    based on a `masked_array` with mask ~*valid*):
		
		    - For all i with valid[i] = True:
		      valid_array[renum[i]] = masked_array[i]
		    - For all i with valid[i] = False:
		      renum[i] = -1 (invalid value)
	**/
	static public function _total_to_compress_renum(valid:Dynamic):Dynamic;
	/**
		Return a measure of the triangulation triangles flatness.
		
		The ratio of the incircle radius over the circumcircle radius is a
		widely used indicator of a triangle flatness.
		It is always ``<= 0.5`` and ``== 0.5`` only for equilateral
		triangles. Circle ratios below 0.01 denote very flat triangles.
		
		To avoid unduly low values due to a difference of scale between the 2
		axis, the triangular mesh can first be rescaled to fit inside a unit
		square with `scale_factors` (Only if *rescale* is True, which is
		its default value).
		
		Parameters
		----------
		rescale : bool, default: True
		    If True, internally rescale (based on `scale_factors`), so that the
		    (unmasked) triangles fit exactly inside a unit square mesh.
		
		Returns
		-------
		masked array
		    Ratio of the incircle radius over the circumcircle radius, for
		    each 'rescaled' triangle of the encapsulated triangulation.
		    Values corresponding to masked triangles are masked out.
	**/
	public function circle_ratios(?rescale:Dynamic):Dynamic;
	/**
		Eliminate excessively flat border triangles from the triangulation.
		
		Returns a mask *new_mask* which allows to clean the encapsulated
		triangulation from its border-located flat triangles
		(according to their :meth:`circle_ratios`).
		This mask is meant to be subsequently applied to the triangulation
		using `.Triangulation.set_mask`.
		*new_mask* is an extension of the initial triangulation mask
		in the sense that an initially masked triangle will remain masked.
		
		The *new_mask* array is computed recursively; at each step flat
		triangles are removed only if they share a side with the current mesh
		border. Thus no new holes in the triangulated domain will be created.
		
		Parameters
		----------
		min_circle_ratio : float, default: 0.01
		    Border triangles with incircle/circumcircle radii ratio r/R will
		    be removed if r/R < *min_circle_ratio*.
		rescale : bool, default: True
		    If True, first, internally rescale (based on `scale_factors`) so
		    that the (unmasked) triangles fit exactly inside a unit square
		    mesh.  This rescaling accounts for the difference of scale which
		    might exist between the 2 axis.
		
		Returns
		-------
		array of bool
		    Mask to apply to encapsulated triangulation.
		    All the initially masked triangles remain masked in the
		    *new_mask*.
		
		Notes
		-----
		The rationale behind this function is that a Delaunay
		triangulation - of an unstructured set of points - sometimes contains
		almost flat triangles at its border, leading to artifacts in plots
		(especially for high-resolution contouring).
		Masked with computed *new_mask*, the encapsulated
		triangulation would contain no more unmasked border triangles
		with a circle ratio below *min_circle_ratio*, thus improving the
		mesh quality for subsequent plots or interpolation.
	**/
	public function get_flat_tri_mask(?min_circle_ratio:Dynamic, ?rescale:Dynamic):Dynamic;
	/**
		Factors to rescale the triangulation into a unit square.
		
		Returns
		-------
		(float, float)
		    Scaling factors (kx, ky) so that the triangulation
		    ``[triangulation.x * kx, triangulation.y * ky]``
		    fits exactly inside a unit square.
	**/
	public var scale_factors : Dynamic;
}