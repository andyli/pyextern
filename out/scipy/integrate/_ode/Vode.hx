/* This file is generated, do not edit! */
package scipy.integrate._ode;
@:pythonImport("scipy.integrate._ode", "vode") extern class Vode {
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
	public function ___init__(?method:Dynamic, ?with_jacobian:Dynamic, ?rtol:Dynamic, ?atol:Dynamic, ?lband:Dynamic, ?uband:Dynamic, ?order:Dynamic, ?nsteps:Dynamic, ?max_step:Dynamic, ?min_step:Dynamic, ?first_step:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		Determine the `MF` parameter (Method Flag) for the Fortran subroutine `dvode`.
		
		In the Fortran code, the legal values of `MF` are:
		    10, 11, 12, 13, 14, 15, 20, 21, 22, 23, 24, 25,
		    -11, -12, -14, -15, -21, -22, -24, -25
		but this python wrapper does not use negative values.
		
		Returns
		
		    mf  = 10*self.meth + miter
		
		self.meth is the linear multistep method:
		    self.meth == 1:  method="adams"
		    self.meth == 2:  method="bdf"
		
		miter is the correction iteration method:
		    miter == 0:  Functional iteraton; no Jacobian involved.
		    miter == 1:  Chord iteration with user-supplied full Jacobian
		    miter == 2:  Chord iteration with internally computed full Jacobian
		    miter == 3:  Chord iteration with internally computed diagonal Jacobian
		    miter == 4:  Chord iteration with user-supplied banded Jacobian
		    miter == 5:  Chord iteration with internally computed banded Jacobian
		
		Side effects: If either self.mu or self.ml is not None and the other is None,
		then the one that is None is set to 0.
	**/
	public function _determine_mf_and_set_bands(has_jac:Dynamic):Dynamic;
	public function acquire_new_handle():Dynamic;
	static public var active_global_handle : Dynamic;
	public function check_handle():Dynamic;
	static public var integrator_classes : Dynamic;
	static public var messages : Dynamic;
	/**
		Prepare integrator for call: allocate memory, set flags, etc.
		n - number of equations.
		has_jac - if user has supplied function for evaluating Jacobian.
	**/
	public function reset(n:Dynamic, has_jac:Dynamic):Dynamic;
	/**
		Integrate from t=t0 to t=t1 using y0 as an initial condition.
		Return 2-tuple (y1,t1) where y1 is the result and t=t1
		defines the stoppage coordinate of the result.
	**/
	public function run(f:Dynamic, jac:Dynamic, y0:Dynamic, t0:Dynamic, t1:Dynamic, f_params:Dynamic, jac_params:Dynamic):Dynamic;
	/**
		Integrate from t=t0 to t>=t1 and return (y1,t).
	**/
	public function run_relax(args:Dynamic):Dynamic;
	/**
		y,t,istate = dvode(f,jac,y,t,tout,rtol,atol,itask,istate,rwork,iwork,mf,[f_extra_args,jac_extra_args,overwrite_y])
		
		Wrapper for ``dvode``.
		
		Parameters
		----------
		f : call-back function
		jac : call-back function
		y : input rank-1 array('d') with bounds (neq)
		t : input float
		tout : input float
		rtol : input rank-1 array('d') with bounds (*)
		atol : input rank-1 array('d') with bounds (*)
		itask : input int
		istate : input int
		rwork : input rank-1 array('d') with bounds (lrw)
		iwork : input rank-1 array('i') with bounds (liw)
		mf : input int
		
		Other Parameters
		----------------
		f_extra_args : input tuple, optional
		    Default: ()
		jac_extra_args : input tuple, optional
		    Default: ()
		overwrite_y : input int, optional
		    Default: 0
		
		Returns
		-------
		y : rank-1 array('d') with bounds (neq)
		t : float
		istate : int
		
		Notes
		-----
		Call-back functions::
		
		  def f(t,y): return ydot
		  Required arguments:
		    t : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    ydot : rank-1 array('d') with bounds (n)
		  def jac(t,y): return jac
		  Required arguments:
		    t : input float
		    y : input rank-1 array('d') with bounds (n)
		  Return objects:
		    jac : rank-2 array('d') with bounds (nrowpd,n)
	**/
	static public function runner(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		float(x) -> floating point number
		
		Convert a string or number to a floating point number, if possible.
	**/
	static public function scalar(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Make one integration step and return (y1,t1).
	**/
	public function step(args:Dynamic):Dynamic;
	static public var success : Dynamic;
	static public var supports_run_relax : Dynamic;
	static public var supports_solout : Dynamic;
	static public var supports_step : Dynamic;
}