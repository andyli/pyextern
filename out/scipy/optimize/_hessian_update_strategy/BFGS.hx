/* This file is generated, do not edit! */
package scipy.optimize._hessian_update_strategy;
@:pythonImport("scipy.optimize._hessian_update_strategy", "BFGS") extern class BFGS {
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
	public function ___init__(?exception_strategy:Dynamic, ?min_curvature:Dynamic, ?init_scale:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?exception_strategy:Dynamic, ?min_curvature:Dynamic, ?init_scale:Dynamic):Void;
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
	public function _auto_scale(delta_x:Dynamic, delta_grad:Dynamic):Dynamic;
	/**
		y = dsymv(alpha,a,x,[beta,y,offx,incx,offy,incy,lower,overwrite_y])
		
		Wrapper for ``dsymv``.
		
		Parameters
		----------
		alpha : input float
		a : input rank-2 array('d') with bounds (n,n)
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		beta : input float, optional
		    Default: 0.0
		y : input rank-1 array('d') with bounds (ly)
		overwrite_y : input int, optional
		    Default: 0
		offx : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		lower : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (ly)
	**/
	public function _symv(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dsyr(alpha,x,[lower,incx,offx,n,a,overwrite_a])
		
		Wrapper for ``dsyr``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		n : input int, optional
		    Default: (len(x)-1-offx)/abs(incx)+1
		a : input rank-2 array('d') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
	**/
	public function _syr(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		a = dsyr2(alpha,x,y,[lower,incx,offx,incy,offy,n,a,overwrite_a])
		
		Wrapper for ``dsyr2``.
		
		Parameters
		----------
		alpha : input float
		x : input rank-1 array('d') with bounds (*)
		y : input rank-1 array('d') with bounds (*)
		
		Other Parameters
		----------------
		lower : input int, optional
		    Default: 0
		incx : input int, optional
		    Default: 1
		offx : input int, optional
		    Default: 0
		incy : input int, optional
		    Default: 1
		offy : input int, optional
		    Default: 0
		n : input int, optional
		    Default: ((len(x)-1-offx)/abs(incx)+1 <=(len(y)-1-offy)/abs(incy)+1 ?(len(x)-1-offx)/abs(incx)+1 :(len(y)-1-offy)/abs(incy)+1)
		a : input rank-2 array('d') with bounds (n,n)
		overwrite_a : input int, optional
		    Default: 0
		
		Returns
		-------
		a : rank-2 array('d') with bounds (n,n)
	**/
	public function _syr2(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Update the Hessian matrix.
		
		BFGS update using the formula:
		
		    ``B <- B - (B*s)*(B*s).T/s.T*(B*s) + y*y^T/s.T*y``
		
		where ``s`` is short for ``delta_x`` and ``y`` is short
		for ``delta_grad``. Formula (6.19) in [1]_.
		
		References
		----------
		.. [1] Nocedal, Jorge, and Stephen J. Wright. "Numerical optimization"
		       Second Edition (2006).
	**/
	public function _update_hessian(ys:Dynamic, Bs:Dynamic, sBs:Dynamic, y:Dynamic):Dynamic;
	public function _update_implementation(delta_x:Dynamic, delta_grad:Dynamic):Dynamic;
	/**
		Update the inverse Hessian matrix.
		
		BFGS update using the formula:
		
		    ``H <- H + ((H*y).T*y + s.T*y)/(s.T*y)^2 * (s*s.T)
		             - 1/(s.T*y) * ((H*y)*s.T + s*(H*y).T)``
		
		where ``s = delta_x`` and ``y = delta_grad``. This formula is
		equivalent to (6.17) in [1]_ written in a more efficient way
		for implementation.
		
		References
		----------
		.. [1] Nocedal, Jorge, and Stephen J. Wright. "Numerical optimization"
		       Second Edition (2006).
	**/
	public function _update_inverse_hessian(ys:Dynamic, Hy:Dynamic, yHy:Dynamic, s:Dynamic):Dynamic;
	/**
		Compute the product of the internal matrix with the given vector.
		
		Parameters
		----------
		p : array_like
		    1-d array representing a vector.
		
		Returns
		-------
		Hp : array
		    1-d  represents the result of multiplying the approximation matrix
		    by vector p.
	**/
	public function dot(p:Dynamic):Array<Dynamic>;
	/**
		Return the current internal matrix.
		
		Returns
		-------
		M : ndarray, shape (n, n)
		    Dense matrix containing either the Hessian or its inverse
		    (depending on how `approx_type` was defined).
	**/
	public function get_matrix():Dynamic;
	/**
		Initialize internal matrix.
		
		Allocate internal memory for storing and updating
		the Hessian or its inverse.
		
		Parameters
		----------
		n : int
		    Problem dimension.
		approx_type : {'hess', 'inv_hess'}
		    Selects either the Hessian or the inverse Hessian.
		    When set to 'hess' the Hessian will be stored and updated.
		    When set to 'inv_hess' its inverse will be used instead.
	**/
	public function initialize(n:Dynamic, approx_type:Dynamic):Dynamic;
	/**
		Update internal matrix.
		
		Update Hessian matrix or its inverse (depending on how 'approx_type'
		is defined) using information about the last evaluated points.
		
		Parameters
		----------
		delta_x : ndarray
		    The difference between two points the gradient
		    function have been evaluated at: ``delta_x = x2 - x1``.
		delta_grad : ndarray
		    The difference between the gradients:
		    ``delta_grad = grad(x2) - grad(x1)``.
	**/
	public function update(delta_x:Dynamic, delta_grad:Dynamic):Dynamic;
}