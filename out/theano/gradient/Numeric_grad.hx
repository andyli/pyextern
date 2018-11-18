/* This file is generated, do not edit! */
package theano.gradient;
@:pythonImport("theano.gradient", "numeric_grad") extern class Numeric_grad {
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
		Return the gradient of f at pt.
		
		This function computes the gradient by a one-sided finite
		differences of a fixed step size (eps).
		
		Parameters
		----------
		f : a differentiable function such that f(*pt) is a scalar
		    The function to compute the gradient of.
		    It is assumed that f(...) will return a scalar.
		    It is assumed that all f's inputs are numpy.ndarray objects.
		pt : an ndarray, a list of ndarrays or tuple of ndarrays
		    The point where to evaluate the gradient
		out_type: float
		    dtype of output, if complex (i.e. 'complex32' or 'complex64')
		eps : float, optional
		    The stepsize for the finite differencing.  None means
		    input dtype-dependent. See `type_eps`.
	**/
	@:native("__init__")
	public function ___init__(f:Dynamic, pt:Dynamic, ?eps:Dynamic, ?out_type:Dynamic):Dynamic;
	/**
		Return the gradient of f at pt.
		
		This function computes the gradient by a one-sided finite
		differences of a fixed step size (eps).
		
		Parameters
		----------
		f : a differentiable function such that f(*pt) is a scalar
		    The function to compute the gradient of.
		    It is assumed that f(...) will return a scalar.
		    It is assumed that all f's inputs are numpy.ndarray objects.
		pt : an ndarray, a list of ndarrays or tuple of ndarrays
		    The point where to evaluate the gradient
		out_type: float
		    dtype of output, if complex (i.e. 'complex32' or 'complex64')
		eps : float, optional
		    The stepsize for the finite differencing.  None means
		    input dtype-dependent. See `type_eps`.
	**/
	public function new(f:Dynamic, pt:Dynamic, ?eps:Dynamic, ?out_type:Dynamic):Void;
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
		Return absolute and relative error between a and b.
		
		The relative error is a small number when a and b are close, relative
		to how big they are.
		
		Formulas used:
		    abs_err = abs(a - b)
		
		    rel_err = abs_err / max(abs(a) + abs(b), 1e-8)
		
		The denominator is clipped at 1e-8 to avoid dividing by 0 when a and b
		are both close to 0.
		
		The tuple (abs_err, rel_err) is returned
	**/
	static public function abs_rel_err(a:Dynamic, b:Dynamic):Dynamic;
	/**
		Return the abs and rel error of gradient estimate `g_pt`
		
		`g_pt` must be a list of ndarrays of the same length as self.gf,
		otherwise a ValueError is raised.
		
		Corresponding ndarrays in `g_pt` and `self.gf` must have the same
		shape or ValueError is raised.
	**/
	public function abs_rel_errors(g_pt:Dynamic):Dynamic;
	/**
		Find the biggest error between g_pt and self.gf.
		
		What is measured is the violation of relative and absolute errors,
		wrt the provided tolerances (abs_tol, rel_tol).
		A value > 1 means both tolerances are exceeded.
		
		Return the argmax of min(abs_err / abs_tol, rel_err / rel_tol) over
		g_pt, as well as abs_err and rel_err at this point.
	**/
	public function max_err(g_pt:Dynamic, abs_tol:Dynamic, rel_tol:Dynamic):Dynamic;
	static public var type_eps : Dynamic;
}