/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate", "CubicTriInterpolator") extern class CubicTriInterpolator {
	/**
		Returns a masked array containing interpolated values at the specified
		x,y points.
		
		Parameters
		----------
		x, y : array-like
		    x and y coordinates of the same shape and any number of
		    dimensions.
		
		Returns
		-------
		z : np.ma.array
		    Masked array of the same shape as *x* and *y*; values corresponding
		    to (*x*, *y*) points outside of the triangulation are masked out.
	**/
	public function __call__(x:Dynamic, y:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(triangulation:Dynamic, z:Dynamic, ?kind:Dynamic, ?trifinder:Dynamic, ?dz:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(triangulation:Dynamic, z:Dynamic, ?kind:Dynamic, ?trifinder:Dynamic, ?dz:Dynamic):Void;
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
		Computes and returns nodal dofs according to kind
		
		Parameters
		----------
		kind : {'min_E', 'geom', 'user'}
		    Choice of the _DOF_estimator subclass to perform the gradient
		    estimation.
		dz : tuple of array_likes (dzdx, dzdy), optional
		    Used only if *kind*=user; in this case passed to the
		    :class:`_DOF_estimator_user`.
		
		Returns
		-------
		dof : array_like, shape (npts,2)
		      Estimation of the gradient at triangulation nodes (stored as
		      degree of freedoms of reduced-HCT triangle elements).
	**/
	public function _compute_dof(kind:Dynamic, ?dz:Dynamic):Dynamic;
	/**
		Computes triangle eccentricities
		
		Parameters
		----------
		tris_pts : array like of dim 3 (shape: (nx,3,2))
		           Coordinates of the triangles apexes.
		
		Returns
		-------
		ecc : array like of dim 2 (shape: (nx,3))
		      The so-called eccentricity parameters [1] needed for
		      HCT triangular element.
	**/
	static public function _compute_tri_eccentricities(tris_pts:Dynamic):Dynamic;
	static public var _docstring__call__ : Dynamic;
	static public var _docstringgradient : Dynamic;
	/**
		Fast (vectorized) function to compute barycentric coordinates alpha.
		
		Parameters
		----------
		x, y : array-like of dim 1 (shape (nx,))
		          Coordinates of the points whose points barycentric
		          coordinates are requested
		tris_pts : array like of dim 3 (shape: (nx,3,2))
		            Coordinates of the containing triangles apexes.
		
		Returns
		-------
		alpha : array of dim 2 (shape (nx,3))
		         Barycentric coordinates of the points inside the containing
		         triangles.
	**/
	static public function _get_alpha_vec(x:Dynamic, y:Dynamic, tris_pts:Dynamic):Dynamic;
	/**
		Fast (vectorized) function to compute triangle jacobian matrix.
		
		Parameters
		----------
		tris_pts : array like of dim 3 (shape: (nx,3,2))
		            Coordinates of the containing triangles apexes.
		
		Returns
		-------
		J : array of dim 3 (shape (nx,2,2))
		         Barycentric coordinates of the points inside the containing
		         triangles.
		         J[itri,:,:] is the jacobian matrix at apex 0 of the triangle
		         itri, so that the following (matrix) relationship holds:
		            [dz/dksi] = [J] x [dz/dx]
		            with x: global coordinates
		            ksi: element parametric coordinates in triangle first apex
		            local basis.
	**/
	static public function _get_jacobian(tris_pts:Dynamic):Dynamic;
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
		    - dealing with multi-dimensional *x*, *y* arrays: flattening for
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
	/**
		Returns a list of 2 masked arrays containing interpolated derivatives
		at the specified x,y points.
		
		Parameters
		----------
		x, y : array-like
		    x and y coordinates of the same shape and any number of
		    dimensions.
		
		Returns
		-------
		dzdx, dzdy : np.ma.array
		    2 masked arrays of the same shape as *x* and *y*; values
		    corresponding to (x,y) points outside of the triangulation
		    are masked out.
		    The first returned array contains the values of
		    :math:`\frac{\partial z}{\partial x}` and the second those of
		    :math:`\frac{\partial z}{\partial y}`.
	**/
	public function gradient(x:Dynamic, y:Dynamic):Dynamic;
}