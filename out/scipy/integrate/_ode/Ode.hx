/* This file is generated, do not edit! */
package scipy.integrate._ode;
@:pythonImport("scipy.integrate._ode", "ode") extern class Ode {
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
	public function ___init__(f:Dynamic, ?jac:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(f:Dynamic, ?jac:Dynamic):Void;
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
		Extracts the return code for the integration to enable better control
		if the integration fails.
		
		In general, a return code > 0 implies success while a return code < 0
		implies failure.
		
		Notes
		-----
		This section describes possible return codes and their meaning, for available
		integrators that can be selected by `set_integrator` method.
		
		"vode"
		
		===========  =======
		Return Code  Message
		===========  =======
		2            Integration successful.
		-1           Excess work done on this call. (Perhaps wrong MF.)
		-2           Excess accuracy requested. (Tolerances too small.)
		-3           Illegal input detected. (See printed message.)
		-4           Repeated error test failures. (Check all input.)
		-5           Repeated convergence failures. (Perhaps bad Jacobian
		             supplied or wrong choice of MF or tolerances.)
		-6           Error weight became zero during problem. (Solution
		             component i vanished, and ATOL or ATOL(i) = 0.)
		===========  =======
		
		"zvode"
		
		===========  =======
		Return Code  Message
		===========  =======
		2            Integration successful.
		-1           Excess work done on this call. (Perhaps wrong MF.)
		-2           Excess accuracy requested. (Tolerances too small.)
		-3           Illegal input detected. (See printed message.)
		-4           Repeated error test failures. (Check all input.)
		-5           Repeated convergence failures. (Perhaps bad Jacobian
		             supplied or wrong choice of MF or tolerances.)
		-6           Error weight became zero during problem. (Solution
		             component i vanished, and ATOL or ATOL(i) = 0.)
		===========  =======
		
		"dopri5"
		
		===========  =======
		Return Code  Message
		===========  =======
		1            Integration successful.
		2            Integration successful (interrupted by solout).
		-1           Input is not consistent.
		-2           Larger nsteps is needed.
		-3           Step size becomes too small.
		-4           Problem is probably stiff (interrupted).
		===========  =======
		
		"dop853"
		
		===========  =======
		Return Code  Message
		===========  =======
		1            Integration successful.
		2            Integration successful (interrupted by solout).
		-1           Input is not consistent.
		-2           Larger nsteps is needed.
		-3           Step size becomes too small.
		-4           Problem is probably stiff (interrupted).
		===========  =======
		
		"lsoda"
		
		===========  =======
		Return Code  Message
		===========  =======
		2            Integration successful.
		-1           Excess work done on this call (perhaps wrong Dfun type).
		-2           Excess accuracy requested (tolerances too small).
		-3           Illegal input detected (internal error).
		-4           Repeated error test failures (internal error).
		-5           Repeated convergence failures (perhaps bad Jacobian or tolerances).
		-6           Error weight became zero during problem.
		-7           Internal workspace insufficient to finish (internal error).
		===========  =======
	**/
	public function get_return_code():Dynamic;
	/**
		Find y=y(t), set y as an initial condition, and return y.
		
		Parameters
		----------
		t : float
		    The endpoint of the integration step.
		step : bool
		    If True, and if the integrator supports the step method,
		    then perform a single integration step and return.
		    This parameter is provided in order to expose internals of
		    the implementation, and should not be changed from its default
		    value in most cases.
		relax : bool
		    If True and if the integrator supports the run_relax method,
		    then integrate until t_1 >= t and return. ``relax`` is not
		    referenced if ``step=True``.
		    This parameter is provided in order to expose internals of
		    the implementation, and should not be changed from its default
		    value in most cases.
		
		Returns
		-------
		y : float
		    The integrated value at t
	**/
	public function integrate(t:Dynamic, ?step:Dynamic, ?relax:Dynamic):Float;
	/**
		Set extra parameters for user-supplied function f.
	**/
	public function set_f_params(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set initial conditions y(t) = y.
	**/
	public function set_initial_value(y:Dynamic, ?t:Dynamic):Dynamic;
	/**
		Set integrator by name.
		
		Parameters
		----------
		name : str
		    Name of the integrator.
		integrator_params
		    Additional parameters for the integrator.
	**/
	public function set_integrator(name:Dynamic, ?integrator_params:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set extra parameters for user-supplied function jac.
	**/
	public function set_jac_params(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set callable to be called at every successful integration step.
		
		Parameters
		----------
		solout : callable
		    ``solout(t, y)`` is called at each internal integrator step,
		    t is a scalar providing the current independent position
		    y is the current soloution ``y.shape == (n,)``
		    solout should return -1 to stop integration
		    otherwise it should return None or 0
	**/
	public function set_solout(solout:Dynamic):Dynamic;
	/**
		Check if integration was successful.
	**/
	public function successful():Dynamic;
	public var y : Dynamic;
}