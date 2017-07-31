/* This file is generated, do not edit! */
package matplotlib.tri.triinterpolate;
@:pythonImport("matplotlib.tri.triinterpolate", "_DOF_estimator_geom") extern class _DOF_estimator_geom {
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
	public function ___init__(interpolator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(interpolator:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Computes reduced-HCT elements degrees of freedom, knowing the
		gradient.
	**/
	public function compute_dof_from_df():Dynamic;
	/**
		self.df is computed as weighted average of _triangles sharing a common
		node. On each triangle itri f is first assumed linear (= ~f), which
		allows to compute d~f[itri]
		Then the following approximation of df nodal values is then proposed:
		    f[ipt] = SUM ( w[itri] x d~f[itri] , for itri sharing apex ipt)
		The weighted coeff. w[itri] are proportional to the angle of the
		triangle itri at apex ipt
	**/
	public function compute_dz():Dynamic;
	/**
		Compute the (global) gradient component of f assumed linear (~f).
		returns array df of shape (nelems,2)
		df[ielem].dM[ielem] = dz[ielem] i.e. df = dz x dM = dM.T^-1 x dz
	**/
	public function compute_geom_grads():Dynamic;
	/**
		Builds the (nelems x 3) weights coeffs of _triangles angles,
		renormalized so that np.sum(weights, axis=1) == np.ones(nelems)
	**/
	public function compute_geom_weights():Dynamic;
	/**
		Computes the dof vector of a triangle, knowing the value of f, df and
		of the local Jacobian at each node.
		
		*tri_z*: array of shape (3,) of f nodal values
		*tri_dz*: array of shape (3,2) of df/dx, df/dy nodal values
		*J*: Jacobian matrix in local basis of apex 0
		
		Returns dof array of shape (9,) so that for each apex iapex:
		    dof[iapex*3+0] = f(Ai)
		    dof[iapex*3+1] = df(Ai).(AiAi+)
		    dof[iapex*3+2] = df(Ai).(AiAi-)]
	**/
	static public function get_dof_vec(tri_z:Dynamic, tri_dz:Dynamic, J:Dynamic):Dynamic;
}