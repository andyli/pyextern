/* This file is generated, do not edit! */
package tensorflow.contrib.constrained_optimization.python.constrained_minimization_problem;
@:pythonImport("tensorflow.contrib.constrained_optimization.python.constrained_minimization_problem", "ConstrainedMinimizationProblem") extern class ConstrainedMinimizationProblem {
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
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic):Dynamic;
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
		Returns the vector of constraint functions.
		
		Letting g_i be the ith element of the constraints vector, the ith constraint
		will be g_i <= 0.
		
		Returns:
		  A tensor of constraint functions.
	**/
	public var constraints : Dynamic;
	/**
		Returns the number of constraints.
		
		Returns:
		  An int containing the number of constraints.
		
		Raises:
		  ValueError: If the constraints (or proxy_constraints, if present) do not
		    have fully-known shapes, OR if proxy_constraints are present, and the
		    shapes of constraints and proxy_constraints are fully-known, but they're
		    different.
	**/
	public var num_constraints : Dynamic;
	/**
		Returns the objective function.
		
		Returns:
		  A 0d tensor that should be minimized.
	**/
	public var objective : Dynamic;
	/**
		Returns a list of `Operation`s to run before the train_op.
		
		When a `ConstrainedOptimizer` creates a train_op (in `minimize`
		`minimize_unconstrained`, or `minimize_constrained`), it will include these
		ops before the main training step.
		
		Returns:
		  A list of `Operation`s.
	**/
	public var pre_train_ops : Dynamic;
	/**
		Returns the optional vector of proxy constraint functions.
		
		The difference between `constraints` and `proxy_constraints` is that, when
		proxy constraints are present, the `constraints` are merely EVALUATED during
		optimization, whereas the `proxy_constraints` are DIFFERENTIATED. If there
		are no proxy constraints, then the `constraints` are both evaluated and
		differentiated.
		
		For example, if we want to impose constraints on step functions, then we
		could use these functions for `constraints`. However, because a step
		function has zero gradient almost everywhere, we can't differentiate these
		functions, so we would take `proxy_constraints` to be some differentiable
		approximation of `constraints`.
		
		Returns:
		  A tensor of proxy constraint functions.
	**/
	public var proxy_constraints : Dynamic;
}