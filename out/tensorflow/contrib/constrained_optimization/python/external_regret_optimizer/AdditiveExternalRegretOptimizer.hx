/* This file is generated, do not edit! */
package tensorflow.contrib.constrained_optimization.python.external_regret_optimizer;
@:pythonImport("tensorflow.contrib.constrained_optimization.python.external_regret_optimizer", "AdditiveExternalRegretOptimizer") extern class AdditiveExternalRegretOptimizer {
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
		Constructs a new `AdditiveExternalRegretOptimizer`.
		
		Args:
		  optimizer: tf.train.Optimizer, used to optimize the objective and
		    proxy_constraints portion of ConstrainedMinimizationProblem. If
		    constraint_optimizer is not provided, this will also be used to optimize
		    the Lagrange multipliers.
		  constraint_optimizer: optional tf.train.Optimizer, used to optimize the
		    Lagrange multipliers.
		  maximum_multiplier_radius: float, an optional upper bound to impose on the
		    sum of the Lagrange multipliers.
		
		Returns:
		  A new `AdditiveExternalRegretOptimizer`.
		
		Raises:
		  ValueError: If the maximum_multiplier_radius parameter is nonpositive.
	**/
	@:native("__init__")
	public function ___init__(optimizer:Dynamic, ?constraint_optimizer:Dynamic, ?maximum_multiplier_radius:Dynamic):Dynamic;
	/**
		Constructs a new `AdditiveExternalRegretOptimizer`.
		
		Args:
		  optimizer: tf.train.Optimizer, used to optimize the objective and
		    proxy_constraints portion of ConstrainedMinimizationProblem. If
		    constraint_optimizer is not provided, this will also be used to optimize
		    the Lagrange multipliers.
		  constraint_optimizer: optional tf.train.Optimizer, used to optimize the
		    Lagrange multipliers.
		  maximum_multiplier_radius: float, an optional upper bound to impose on the
		    sum of the Lagrange multipliers.
		
		Returns:
		  A new `AdditiveExternalRegretOptimizer`.
		
		Raises:
		  ValueError: If the maximum_multiplier_radius parameter is nonpositive.
	**/
	public function new(optimizer:Dynamic, ?constraint_optimizer:Dynamic, ?maximum_multiplier_radius:Dynamic):Void;
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
	public function _constraint_grad_and_var(state:Dynamic, gradient:Dynamic):Dynamic;
	public function _initial_state(num_constraints:Dynamic):Dynamic;
	public function _lagrange_multipliers(state:Dynamic):Dynamic;
	/**
		Returns an `Operation` for minimizing the constrained problem.
		
		The `optimizer` constructor parameter will be used to update the model
		parameters, while the Lagrange multipliers will be updated using
		`constrained_optimizer` (if provided) or `optimizer` (if not).
		
		Args:
		  minimization_problem: ConstrainedMinimizationProblem, the problem to
		    optimize.
		  global_step: as in `tf.train.Optimizer`'s `minimize` method.
		  var_list: as in `tf.train.Optimizer`'s `minimize` method.
		  gate_gradients: as in `tf.train.Optimizer`'s `minimize` method.
		  aggregation_method: as in `tf.train.Optimizer`'s `minimize` method.
		  colocate_gradients_with_ops: as in `tf.train.Optimizer`'s `minimize`
		    method.
		  name: as in `tf.train.Optimizer`'s `minimize` method.
		  grad_loss: as in `tf.train.Optimizer`'s `minimize` method.
		
		Raises:
		  ValueError: If the minimization_problem tensors have different dtypes.
		
		Returns:
		  `Operation`, the train_op.
	**/
	public function _minimize_constrained(minimization_problem:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
	public function _projection_op(state:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns the `tf.train.Optimizer` used for the Lagrange multipliers.
	**/
	public var constraint_optimizer : Dynamic;
	/**
		Returns an `Operation` for minimizing the constrained problem.
		
		This method combines the functionality of `minimize_unconstrained` and
		`minimize_constrained`. If global_step < unconstrained_steps, it will
		perform an unconstrained update, and if global_step >= unconstrained_steps,
		it will perform a constrained update.
		
		The reason for this functionality is that it may be best to initialize the
		constrained optimizer with an approximate optimum of the unconstrained
		problem.
		
		Args:
		  minimization_problem: ConstrainedMinimizationProblem, the problem to
		    optimize.
		  unconstrained_steps: int, number of steps for which we should perform
		    unconstrained updates, before transitioning to constrained updates.
		  global_step: as in `tf.train.Optimizer`'s `minimize` method.
		  var_list: as in `tf.train.Optimizer`'s `minimize` method.
		  gate_gradients: as in `tf.train.Optimizer`'s `minimize` method.
		  aggregation_method: as in `tf.train.Optimizer`'s `minimize` method.
		  colocate_gradients_with_ops: as in `tf.train.Optimizer`'s `minimize`
		    method.
		  name: as in `tf.train.Optimizer`'s `minimize` method.
		  grad_loss: as in `tf.train.Optimizer`'s `minimize` method.
		
		Returns:
		  `Operation`, the train_op.
		
		Raises:
		  ValueError: If unconstrained_steps is provided, but global_step is not.
	**/
	public function minimize(minimization_problem:Dynamic, ?unconstrained_steps:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
	/**
		Returns an `Operation` for minimizing the constrained problem.
		
		Unlike `minimize_unconstrained`, this function attempts to find a solution
		that minimizes the `objective` portion of the minimization problem while
		satisfying the `constraints` portion.
		
		Args:
		  minimization_problem: ConstrainedMinimizationProblem, the problem to
		    optimize.
		  global_step: as in `tf.train.Optimizer`'s `minimize` method.
		  var_list: as in `tf.train.Optimizer`'s `minimize` method.
		  gate_gradients: as in `tf.train.Optimizer`'s `minimize` method.
		  aggregation_method: as in `tf.train.Optimizer`'s `minimize` method.
		  colocate_gradients_with_ops: as in `tf.train.Optimizer`'s `minimize`
		    method.
		  name: as in `tf.train.Optimizer`'s `minimize` method.
		  grad_loss: as in `tf.train.Optimizer`'s `minimize` method.
		
		Returns:
		  `Operation`, the train_op.
	**/
	public function minimize_constrained(minimization_problem:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
	/**
		Returns an `Operation` for minimizing the unconstrained problem.
		
		Unlike `minimize_constrained`, this function ignores the `constraints` (and
		`proxy_constraints`) portion of the minimization problem entirely, and only
		minimizes `objective`.
		
		Args:
		  minimization_problem: ConstrainedMinimizationProblem, the problem to
		    optimize.
		  global_step: as in `tf.train.Optimizer`'s `minimize` method.
		  var_list: as in `tf.train.Optimizer`'s `minimize` method.
		  gate_gradients: as in `tf.train.Optimizer`'s `minimize` method.
		  aggregation_method: as in `tf.train.Optimizer`'s `minimize` method.
		  colocate_gradients_with_ops: as in `tf.train.Optimizer`'s `minimize`
		    method.
		  name: as in `tf.train.Optimizer`'s `minimize` method.
		  grad_loss: as in `tf.train.Optimizer`'s `minimize` method.
		
		Returns:
		  `Operation`, the train_op.
	**/
	public function minimize_unconstrained(minimization_problem:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic):Dynamic;
	/**
		Returns the `tf.train.Optimizer` used for optimization.
	**/
	public var optimizer : Dynamic;
}