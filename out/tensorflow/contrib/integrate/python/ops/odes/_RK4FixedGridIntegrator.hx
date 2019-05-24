/* This file is generated, do not edit! */
package tensorflow.contrib.integrate.python.ops.odes;
@:pythonImport("tensorflow.contrib.integrate.python.ops.odes", "_RK4FixedGridIntegrator") extern class _RK4FixedGridIntegrator {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Returns a function that builds operations for interval integration.
	**/
	public function _make_interval_integrator(iteration_func:Dynamic, interval_sizes:Dynamic):Dynamic;
	/**
		Returns a function that builds operations of a single time step.
	**/
	public function _make_iteration_func(evol_func:Dynamic, dt_grid:Dynamic):Dynamic;
	public function _step_func(evol_func:Dynamic, t:Dynamic, dt:Dynamic, y:Dynamic):Dynamic;
	/**
		Returns integrated values of differential equation on the `time grid`.
		
		Numerically integrates differential equation defined via time derivative
		evaluator `evol_func` using fixed time steps specified in dt_grid.
		
		Args:
		  evol_func: Callable, evaluates time derivative of y at a given time.
		  y0: N-D Tensor holds initial values of the solution.
		  time_grid: 1-D Tensor holding the time points at which the solution
		    will be recorded, must have a floating dtype.
		  dt_grid: 1-D Tensor holds fixed time steps to be used on time_grid
		    intervals. Must be a floating dtype and have one less element than that
		    of the time_grid.
		  steps_on_intervals: 1-D Tensor of integer dtype, must have the same size
		    as dt_grid. Specifies number of steps needed for every interval. Assumes
		    steps_on_intervals * dt_grid == time intervals.
		
		Returns:
		  (N+1)-D tensor, where the first dimension corresponds to different
		  time points. Contains the solved value of y for each desired time point in
		  `t`, with the initial value `y0` being the first element along the first
		  dimension.
	**/
	public function integrate(evol_func:Dynamic, y0:Dynamic, time_grid:Dynamic, dt_grid:Dynamic, steps_on_intervals:Dynamic):Dynamic;
}