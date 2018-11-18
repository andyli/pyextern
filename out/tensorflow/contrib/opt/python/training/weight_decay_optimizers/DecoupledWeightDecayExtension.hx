/* This file is generated, do not edit! */
package tensorflow.contrib.opt.python.training.weight_decay_optimizers;
@:pythonImport("tensorflow.contrib.opt.python.training.weight_decay_optimizers", "DecoupledWeightDecayExtension") extern class DecoupledWeightDecayExtension {
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
		Construct the extension class that adds weight decay to an optimizer.
		
		Args:
		  weight_decay: A `Tensor` or a floating point value, the factor by which
		    a variable is decayed in the update step.
		  **kwargs: Optional list or tuple or set of `Variable` objects to
		    decay.
	**/
	@:native("__init__")
	public function ___init__(weight_decay:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Construct the extension class that adds weight decay to an optimizer.
		
		Args:
		  weight_decay: A `Tensor` or a floating point value, the factor by which
		    a variable is decayed in the update step.
		  **kwargs: Optional list or tuple or set of `Variable` objects to
		    decay.
	**/
	public function new(weight_decay:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _apply_sparse(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _decay_weights_op(_var:Dynamic):Dynamic;
	public function _decay_weights_sparse_op(_var:Dynamic, indices:Dynamic, scatter_add:Dynamic):Dynamic;
	public function _prepare():Dynamic;
	public function _resource_apply_dense(grad:Dynamic, _var:Dynamic):Dynamic;
	public function _resource_apply_sparse(grad:Dynamic, _var:Dynamic, indices:Dynamic):Dynamic;
	public function _resource_scatter_add(x:Dynamic, i:Dynamic, v:Dynamic, ?_:Dynamic):Dynamic;
	/**
		Apply gradients to variables and decay the variables.
		
		This function is the same as Optimizer.apply_gradients except that it
		allows to specify the variables that should be decayed using
		decay_var_list. If decay_var_list is None, all variables in var_list
		are decayed.
		
		For more information see the documentation of Optimizer.apply_gradients.
		
		Args:
		  grads_and_vars: List of (gradient, variable) pairs as returned by
		    `compute_gradients()`.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  name: Optional name for the returned operation.  Default to the
		    name passed to the `Optimizer` constructor.
		  decay_var_list: Optional list of decay variables.
		
		Returns:
		  An `Operation` that applies the specified gradients. If `global_step`
		  was not None, that operation also increments `global_step`.
	**/
	public function apply_gradients(grads_and_vars:Dynamic, ?global_step:Dynamic, ?name:Dynamic, ?decay_var_list:Dynamic):Dynamic;
	/**
		Add operations to minimize `loss` by updating `var_list` with decay.
		
		This function is the same as Optimizer.minimize except that it allows to
		specify the variables that should be decayed using decay_var_list.
		If decay_var_list is None, all variables in var_list are decayed.
		
		For more information see the documentation of Optimizer.minimize.
		
		Args:
		  loss: A `Tensor` containing the value to minimize.
		  global_step: Optional `Variable` to increment by one after the
		    variables have been updated.
		  var_list: Optional list or tuple of `Variable` objects to update to
		    minimize `loss`.  Defaults to the list of variables collected in
		    the graph under the key `GraphKeys.TRAINABLE_VARIABLES`.
		  gate_gradients: How to gate the computation of gradients.  Can be
		    `GATE_NONE`, `GATE_OP`, or  `GATE_GRAPH`.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Valid values are defined in the class `AggregationMethod`.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  name: Optional name for the returned operation.
		  grad_loss: Optional. A `Tensor` holding the gradient computed for `loss`.
		  decay_var_list: Optional list of decay variables.
		
		Returns:
		  An Operation that updates the variables in `var_list`.  If `global_step`
		  was not `None`, that operation also increments `global_step`.
	**/
	public function minimize(loss:Dynamic, ?global_step:Dynamic, ?var_list:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?name:Dynamic, ?grad_loss:Dynamic, ?decay_var_list:Dynamic):Dynamic;
}