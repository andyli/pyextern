/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.rev_block_lib;
@:pythonImport("tensorflow.contrib.layers.python.layers.rev_block_lib") extern class Rev_block_lib_Module {
	static public var LAYER_RE : Dynamic;
	static public var _USE_DEFAULT : Dynamic;
	static public var _WRONG_VARS_ERR : Dynamic;
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Accumulates lists of gradients.
	**/
	static public function _acc_grads(?lists_of_grads:python.VarArgs<Dynamic>):Dynamic;
	/**
		Force all of `then_compute` to depend on all of `first_compute`.
		
		Uses a dummy data dependency, which is useful when running on TPUs because
		XLA ignores control dependencies. Only supports float arguments.
		
		Args:
		  first_compute: `list<Tensor>`. These will be made to run before the
		    `Tensor`s `then_compute`.
		  then_compute: `list<Tensor>`. These will run after all the `Tensor`s in
		    `first_compute`.
		
		Returns:
		  `list<Tensor>`, same length as `then_compute`.
		
		Raises:
		  ValueError: if ranks are unknown or types are not floating.
	**/
	static public function _force_data_dependency(first_compute:Dynamic, then_compute:Dynamic):Dynamic;
	static public function _is_on_tpu():Dynamic;
	/**
		See recompute_grad.
	**/
	static public function _recompute_grad(fn:Dynamic, args:Dynamic, ?use_data_dep:Dynamic, ?tupleize_grads:Dynamic):Dynamic;
	/**
		Grad fn for recompute_grad.
	**/
	static public function _recomputing_grad_fn(compute_fn:Dynamic, original_args:Dynamic, original_vars:Dynamic, output_grads:Dynamic, grad_fn_variables:Dynamic, use_data_dep:Dynamic, tupleize_grads:Dynamic, arg_scope:Dynamic, var_scope:Dynamic, has_is_recompute_kwarg:Dynamic):Dynamic;
	/**
		Forward for a series of reversible layers.
	**/
	static public function _rev_block_forward(x1:Dynamic, x2:Dynamic, f:Dynamic, g:Dynamic, ?num_layers:Dynamic, ?f_side_input:Dynamic, ?g_side_input:Dynamic, ?gate_outputs:Dynamic):Dynamic;
	/**
		Backprop for 1 layer.
	**/
	static public function _rev_layer_backward(ys:Dynamic, grad_ys:Dynamic, f:Dynamic, g:Dynamic, f_vars:Dynamic, f_side_input:Dynamic, g_vars:Dynamic, g_side_input:Dynamic):Dynamic;
	/**
		Forward for 1 reversible layer.
	**/
	static public function _rev_layer_forward(xs:Dynamic, f:Dynamic, g:Dynamic, f_side_input:Dynamic, g_side_input:Dynamic, ?gate_outputs:Dynamic):Dynamic;
	static public function _safe_wraps(fn:Dynamic):Dynamic;
	static public function _scope_wrap(fn:Dynamic, scope:Dynamic):Dynamic;
	static public function _tuple_with_data_dep(tensors:Dynamic):Dynamic;
	/**
		Find the underlying variable ref.
		
		Traverses through Identity, ReadVariableOp, and Enter ops.
		Stops when op type has Variable or VarHandle in name.
		
		Args:
		  t: a Tensor
		
		Returns:
		  a Tensor that is a variable ref, or None on error.
	**/
	static public function _underlying_variable_ref(t:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		A decorator for decorators to enable their usage with or without args.
	**/
	static public function enable_with_args(dec:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Decorator that recomputes the function on the backwards pass.
		
		To use this function, you must use `ResourceVariable`s (i.e.
		`variable_scope(name, use_resource=True), which are the default in Eager mode
		and when running on TPU.
		
		Warning: Because the function will be called again on the backwards pass, the
		user should be careful to not use ops in their function that mutate state or
		have randomness (for example, batch normalization or dropout). If the function
		does have such operations, it is recommended that the function take the
		`is_recomputing` keyword argument which will be `False` on the forward pass
		and `True` on the backwards pass so that it can disable state changes when
		`is_recomputing=True` (for example, not updating the moving averages in batch
		normalization).
		
		Args:
		  fn: a function that takes Tensors (all as positional arguments) and returns
		    a tuple of Tensors. Note that `fn` should not close over any other
		    Tensors or Variables.
		  use_data_dep: `bool`, if `True` will use a dummy data dependency to force
		    the recompute to happen. If `False` will use a control dependency. By
		    default will be `True` if in an XLA context and `False` otherwise. XLA
		    ignores control dependencies and so this data dependency is necessary.
		  tupleize_grads: `bool`, if `True` will use control dependencies to ensure
		    that all gradients are produced before any are consumed by downstream ops.
		    If `use_data_dep` is also `True`, will use a data dependency instead of
		    a control dependency.
		
		Returns:
		  A wrapped fn that is identical to fn when called, but its activations will
		  be discarded and recomputed on the backwards pass (i.e. on a call to
		  tf.gradients).
		
		Raises:
		  ValueError: if `fn` closes over any Tensors or Variables.
	**/
	static public function recompute_grad(fn:Dynamic, ?use_data_dep:Dynamic, ?tupleize_grads:Dynamic):Dynamic;
	/**
		A block of reversible residual layers.
		
		A reversible residual layer is defined as:
		
		```
		y1 = x1 + f(x2, f_side_input)
		y2 = x2 + g(y1, g_side_input)
		```
		
		A reversible residual block, defined here, is a series of reversible residual
		layers.
		
		Limitations:
		* f and g must not close over any Tensors; all side inputs to f and g should
		  be passed in with f_side_input and g_side_input which will be forwarded to
		  f and g.
		* f and g must not change the dimensionality of their inputs in order for the
		  addition in the equations above to work.
		
		Args:
		  x1: a float Tensor.
		  x2: a float Tensor.
		  f: a function, (Tensor) -> (Tensor) (or list of such of length num_layers).
		    Should not change the shape of the Tensor. Can make calls to get_variable.
		    See f_side_input if there are side inputs.
		  g: a function, (Tensor) -> (Tensor) (or list of such of length num_layers).
		    Should not change the shape of the Tensor. Can make calls to get_variable.
		    See g_side_input if there are side inputs.
		  num_layers: int, number of reversible residual layers. Each layer will
		    apply f and g according to the equations above, with new variables in each
		    layer.
		  f_side_input: list of Tensors, side input to f. If not None, signature of f
		    should be (Tensor, list<Tensor>) -> (Tensor).
		  g_side_input: list of Tensors, side input to g. If not None, signature of g
		    should be (Tensor, list<Tensor>) -> (Tensor).
		  is_training: bool, whether to actually use the efficient backprop codepath.
		
		Returns:
		  y1, y2: tuple of float Tensors.
	**/
	static public function rev_block(x1:Dynamic, x2:Dynamic, f:Dynamic, g:Dynamic, ?num_layers:Dynamic, ?f_side_input:Dynamic, ?g_side_input:Dynamic, ?is_training:Dynamic):Dynamic;
}