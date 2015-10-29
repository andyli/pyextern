/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate", "_ReducedHCT_Element") extern class _ReducedHCT_Element {
	static public var E : Dynamic;
	static public var J0_to_J1 : Dynamic;
	static public var J0_to_J2 : Dynamic;
	static public var M : Dynamic;
	static public var M0 : Dynamic;
	static public var M1 : Dynamic;
	static public var M2 : Dynamic;
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
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	static public var gauss_pts : Dynamic;
	static public var gauss_w : Dynamic;
	/**
		Parameters
		----------
		*J* is a (N x 2 x 2) array of jacobian matrices (jacobian matrix at
		triangle first apex)
		
		Returns
		-------
		Returns H_rot used to rotate Hessian from local basis of first apex,
		to global coordinates.
		if *return_area* is True, returns also the triangle area (0.5*det(J))
	**/
	public function get_Hrot_from_J(J:Dynamic, ?return_area:Dynamic):Dynamic;
	/**
		Builds K and F for the following elliptic formulation:
		minimization of curvature energy with value of function at node
		imposed and derivatives 'free'.
		Builds the global Kff matrix in cco format.
		Builds the full Ff vec Ff = - Kfc x Uc
		
		Parameters
		----------
		*J* is a (N x 2 x 2) array of jacobian matrices (jacobian matrix at
		triangle first apex)
		*ecc* is a (N x 3 x 1) array (array of column-matrices) of triangle
		eccentricities
		*triangles* is a (N x 3) array of nodes indexes.
		*Uc* is (N x 3) array of imposed displacements at nodes
		
		Returns
		-------
		(Kff_rows, Kff_cols, Kff_vals) Kff matrix in coo format - Duplicate
		(row, col) entries must be summed.
		Ff: force vector - dim npts * 3
	**/
	public function get_Kff_and_Ff(J:Dynamic, ecc:Dynamic, triangles:Dynamic, Uc:Dynamic):Dynamic;
	/**
		Parameters
		----------
		*J* is a (N x 2 x 2) array of jacobian matrices (jacobian matrix at
		triangle first apex)
		*ecc* is a (N x 3 x 1) array (array of column-matrices) of triangle
		eccentricities
		
		Returns
		-------
		Returns the element K matrices for bending energy expressed in
		GLOBAL nodal coordinates.
		K_ij = integral [ (d2zi/dx2 + d2zi/dy2) * (d2zj/dx2 + d2zj/dy2) dA]
		tri_J is needed to rotate dofs from local basis to global basis
	**/
	public function get_bending_matrices(J:Dynamic, ecc:Dynamic):Dynamic;
	/**
		Parameters
		----------
		*alpha* is a (N x 3 x 1) array (array of column-matrices) of
		barycentric coordinates
		*ecc* is a (N x 3 x 1) array (array of column-matrices) of triangle
		eccentricities
		
		Returns
		-------
		Returns the arrays d2sdksi2 (N x 3 x 1) Hessian of shape functions
		expressed in covariante coordinates in first apex basis.
	**/
	public function get_d2Sidksij2(alpha:Dynamic, ecc:Dynamic):Dynamic;
	/**
		Parameters
		----------
		*alpha* is a (N x 3 x 1) array (array of column-matrices of
		barycentric coordinates)
		*J* is a (N x 2 x 2) array of jacobian matrices (jacobian matrix at
		triangle first apex)
		*ecc* is a (N x 3 x 1) array (array of column-matrices of triangle
		eccentricities)
		*dofs* is a (N x 1 x 9) arrays (arrays of row-matrices) of computed
		degrees of freedom.
		
		Returns
		-------
		Returns the values of interpolated function derivatives [dz/dx, dz/dy]
		in global coordinates at locations alpha, as a column-matrices of
		shape (N x 2 x 1).
	**/
	public function get_function_derivatives(alpha:Dynamic, J:Dynamic, ecc:Dynamic, dofs:Dynamic):Dynamic;
	/**
		Parameters
		----------
		*alpha* is a (N x 3 x 1) array (array of column-matrices) of
		barycentric coordinates
		*J* is a (N x 2 x 2) array of jacobian matrices (jacobian matrix at
		triangle first apex)
		*ecc* is a (N x 3 x 1) array (array of column-matrices) of triangle
		eccentricities
		*dofs* is a (N x 1 x 9) arrays (arrays of row-matrices) of computed
		degrees of freedom.
		
		Returns
		-------
		Returns the values of interpolated function 2nd-derivatives
		[d2z/dx2, d2z/dy2, d2z/dxdy] in global coordinates at locations alpha,
		as a column-matrices of shape (N x 3 x 1).
	**/
	public function get_function_hessians(alpha:Dynamic, J:Dynamic, ecc:Dynamic, dofs:Dynamic):Dynamic;
	/**
		Parameters
		----------
		alpha : is a (N x 3 x 1) array (array of column-matrices) of
		barycentric coordinates,
		ecc : is a (N x 3 x 1) array (array of column-matrices) of triangle
		eccentricities,
		dofs : is a (N x 1 x 9) arrays (arrays of row-matrices) of computed
		degrees of freedom.
		
		Returns
		-------
		Returns the N-array of interpolated function values.
	**/
	public function get_function_values(alpha:Dynamic, ecc:Dynamic, dofs:Dynamic):Dynamic;
	static public var n_gauss : Dynamic;
	static public var rotate_d2V : Dynamic;
	static public var rotate_dV : Dynamic;
}