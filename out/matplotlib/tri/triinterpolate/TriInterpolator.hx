/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate", "TriInterpolator") extern class TriInterpolator {
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
	public function ___init__(triangulation:Dynamic, z:Dynamic, ?trifinder:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(triangulation:Dynamic, z:Dynamic, ?trifinder:Dynamic):Void;
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
		Versatile (private) method defined for all TriInterpolators.
		
		:meth:`_interpolate_multikeys` is a wrapper around method
		:meth:`_interpolate_single_key` (to be defined in the child
		subclasses).
		:meth:`_interpolate_single_key actually performs the interpolation,
		but only for 1-dimensional inputs and at valid locations (inside
		unmasked triangles of the triangulation).
		
		The purpose of :meth:`_interpolate_multikeys` is to implement the
		following common tasks needed in all subclasses implementations:
		
		    - calculation of containing triangles
		    - dealing with more than one interpolation request at the same
		      location (e.g., if the 2 derivatives are requested, it is
		      unnecessary to compute the containing triangles twice)
		    - scaling according to self._unit_x, self._unit_y
		    - dealing with points outside of the grid (with fill value np.nan)
		    - dealing with multi-dimensionnal *x*, *y* arrays: flattening for
		      :meth:`_interpolate_params` call and final reshaping.
		
		(Note that np.vectorize could do most of those things very well for
		you, but it does it by function evaluations over successive tuples of
		the input arrays. Therefore, this tends to be more time consuming than
		using optimized numpy functions - e.g., np.dot - which can be used
		easily on the flattened inputs, in the child-subclass methods
		:meth:`_interpolate_single_key`.)
		
		It is guaranteed that the calls to :meth:`_interpolate_single_key`
		will be done with flattened (1-d) array_like input parameters `x`, `y`
		and with flattened, valid `tri_index` arrays (no -1 index allowed).
		
		Parameters
		----------
		x, y : array_like
		    x and y coordinates indicating where interpolated values are
		    requested.
		tri_index : integer array_like, optional
		    Array of the containing triangle indices, same shape as
		    *x* and *y*. Defaults to None. If None, these indices
		    will be computed by a TriFinder instance.
		    (Note: For point outside the grid, tri_index[ipt] shall be -1).
		return_keys : tuple of keys from {'z', 'dzdx', 'dzdy'}
		    Defines the interpolation arrays to return, and in which order.
		
		Returns
		-------
		ret : list of arrays
		    Each array-like contains the expected interpolated values in the
		    order defined by *return_keys* parameter.
	**/
	public function _interpolate_multikeys(x:Dynamic, y:Dynamic, ?tri_index:Dynamic, ?return_keys:Dynamic):Dynamic;
	/**
		Performs the interpolation at points belonging to the triangulation
		(inside an unmasked triangles).
		
		Parameters
		----------
		return_index : string key from {'z', 'dzdx', 'dzdy'}
		    Identifies the requested values (z or its derivatives)
		tri_index : 1d integer array
		    Valid triangle index (-1 prohibited)
		x, y : 1d arrays, same shape as `tri_index`
		    Valid locations where interpolation is requested.
		
		Returns
		-------
		ret : 1-d array
		    Returned array of the same size as *tri_index*
	**/
	public function _interpolate_single_key(return_key:Dynamic, tri_index:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	static public var docstring__call__ : Dynamic;
	static public var docstringgradient : Dynamic;
}