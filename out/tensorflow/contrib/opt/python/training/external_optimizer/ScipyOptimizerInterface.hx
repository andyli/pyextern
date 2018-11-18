/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.external_optimizer;
@:pythonImport("tensorflow.contrib.opt.python.training.external_optimizer", "ScipyOptimizerInterface") extern class ScipyOptimizerInterface {
	static public var _DEFAULT_METHOD : Dynamic;
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
		Initialize a new interface instance.
		
		Args:
		  loss: A scalar `Tensor` to be minimized.
		  var_list: Optional `list` of `Variable` objects to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph
		    under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  equalities: Optional `list` of equality constraint scalar `Tensor`s to be
		    held equal to zero.
		  inequalities: Optional `list` of inequality constraint scalar `Tensor`s
		    to be held nonnegative.
		  var_to_bounds: Optional `dict` where each key is an optimization
		    `Variable` and each corresponding value is a length-2 tuple of
		    `(low, high)` bounds. Although enforcing this kind of simple constraint
		    could be accomplished with the `inequalities` arg, not all optimization
		    algorithms support general inequality constraints, e.g. L-BFGS-B. Both
		    `low` and `high` can either be numbers or anything convertible to a
		    NumPy array that can be broadcast to the shape of `var` (using
		    `np.broadcast_to`). To indicate that there is no bound, use `None` (or
		    `+/- np.infty`). For example, if `var` is a 2x3 matrix, then any of
		    the following corresponding `bounds` could be supplied:
		    * `(0, np.infty)`: Each element of `var` held positive.
		    * `(-np.infty, [1, 2])`: First column less than 1, second column less
		      than 2.
		    * `(-np.infty, [[1], [2], [3]])`: First row less than 1, second row less
		      than 2, etc.
		    * `(-np.infty, [[1, 2, 3], [4, 5, 6]])`: Entry `var[0, 0]` less than 1,
		      `var[0, 1]` less than 2, etc.
		  **optimizer_kwargs: Other subclass-specific keyword arguments.
	**/
	@:native("__init__")
	public function ___init__(loss:Dynamic, ?var_list:Dynamic, ?equalities:Dynamic, ?inequalities:Dynamic, ?var_to_bounds:Dynamic, ?optimizer_kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize a new interface instance.
		
		Args:
		  loss: A scalar `Tensor` to be minimized.
		  var_list: Optional `list` of `Variable` objects to update to minimize
		    `loss`.  Defaults to the list of variables collected in the graph
		    under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  equalities: Optional `list` of equality constraint scalar `Tensor`s to be
		    held equal to zero.
		  inequalities: Optional `list` of inequality constraint scalar `Tensor`s
		    to be held nonnegative.
		  var_to_bounds: Optional `dict` where each key is an optimization
		    `Variable` and each corresponding value is a length-2 tuple of
		    `(low, high)` bounds. Although enforcing this kind of simple constraint
		    could be accomplished with the `inequalities` arg, not all optimization
		    algorithms support general inequality constraints, e.g. L-BFGS-B. Both
		    `low` and `high` can either be numbers or anything convertible to a
		    NumPy array that can be broadcast to the shape of `var` (using
		    `np.broadcast_to`). To indicate that there is no bound, use `None` (or
		    `+/- np.infty`). For example, if `var` is a 2x3 matrix, then any of
		    the following corresponding `bounds` could be supplied:
		    * `(0, np.infty)`: Each element of `var` held positive.
		    * `(-np.infty, [1, 2])`: First column less than 1, second column less
		      than 2.
		    * `(-np.infty, [[1], [2], [3]])`: First row less than 1, second row less
		      than 2, etc.
		    * `(-np.infty, [[1, 2, 3], [4, 5, 6]])`: Entry `var[0, 0]` less than 1,
		      `var[0, 1]` less than 2, etc.
		  **optimizer_kwargs: Other subclass-specific keyword arguments.
	**/
	public function new(loss:Dynamic, ?var_list:Dynamic, ?equalities:Dynamic, ?inequalities:Dynamic, ?var_to_bounds:Dynamic, ?optimizer_kwargs:python.KwArgs<Dynamic>):Void;
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
		Construct a function that evaluates a `Tensor` or list of `Tensor`s.
	**/
	public function _make_eval_func(tensors:Dynamic, session:Dynamic, feed_dict:Dynamic, fetches:Dynamic, ?callback:Dynamic):Dynamic;
	public function _make_eval_funcs(tensors:Dynamic, session:Dynamic, feed_dict:Dynamic, fetches:Dynamic, ?callback:Dynamic):Dynamic;
	/**
		Wrapper for a particular optimization algorithm implementation.
		
		It would be appropriate for a subclass implementation of this method to
		raise `NotImplementedError` if unsupported arguments are passed: e.g. if an
		algorithm does not support constraints but `len(equality_funcs) > 0`.
		
		Args:
		  initial_val: A NumPy vector of initial values.
		  loss_grad_func: A function accepting a NumPy packed variable vector and
		    returning two outputs, a loss value and the gradient of that loss with
		    respect to the packed variable vector.
		  equality_funcs: A list of functions each of which specifies a scalar
		    quantity that an optimizer should hold exactly zero.
		  equality_grad_funcs: A list of gradients of equality_funcs.
		  inequality_funcs: A list of functions each of which specifies a scalar
		    quantity that an optimizer should hold >= 0.
		  inequality_grad_funcs: A list of gradients of inequality_funcs.
		  packed_bounds: A list of bounds for each index, or `None`.
		  step_callback: A callback function to execute at each optimization step,
		    supplied with the current value of the packed variable vector.
		  optimizer_kwargs: Other key-value arguments available to the optimizer.
		
		Returns:
		  The optimal variable vector as a NumPy vector.
	**/
	public function _minimize(initial_val:Dynamic, loss_grad_func:Dynamic, equality_funcs:Dynamic, equality_grad_funcs:Dynamic, inequality_funcs:Dynamic, inequality_grad_funcs:Dynamic, packed_bounds:Dynamic, step_callback:Dynamic, optimizer_kwargs:Dynamic):Dynamic;
	/**
		Pack a list of `Tensor`s into a single, flattened, rank-1 `Tensor`.
	**/
	static public function _pack(tensors:Dynamic):Dynamic;
	/**
		Minimize a scalar `Tensor`.
		
		Variables subject to optimization are updated in-place at the end of
		optimization.
		
		Note that this method does *not* just return a minimization `Op`, unlike
		`Optimizer.minimize()`; instead it actually performs minimization by
		executing commands to control a `Session`.
		
		Args:
		  session: A `Session` instance.
		  feed_dict: A feed dict to be passed to calls to `session.run`.
		  fetches: A list of `Tensor`s to fetch and supply to `loss_callback`
		    as positional arguments.
		  step_callback: A function to be called at each optimization step;
		    arguments are the current values of all optimization variables
		    flattened into a single vector.
		  loss_callback: A function to be called every time the loss and gradients
		    are computed, with evaluated fetches supplied as positional arguments.
		  **run_kwargs: kwargs to pass to `session.run`.
	**/
	public function minimize(?session:Dynamic, ?feed_dict:Dynamic, ?fetches:Dynamic, ?step_callback:Dynamic, ?loss_callback:Dynamic, ?run_kwargs:python.KwArgs<Dynamic>):Dynamic;
}