/* This file is generated, do not edit! */
package tensorflow.contrib.nn.python.ops.fwd_gradients;
@:pythonImport("tensorflow.contrib.nn.python.ops.fwd_gradients") extern class Fwd_gradients_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes forward-mode derivatives.
		
		This is accomplished in pure-python using tensorflow's existing (reverse-mode)
		gradients. There is additional overhead on graph construction, but runtime
		performance should be equal to a manual implementation [citation needed].
		
		See https://j-towns.github.io/2017/06/12/A-new-trick.html and
		https://github.com/HIPS/autograd/pull/175 for the original discussion of this
		method, and https://github.com/renmengye/tensorflow-forward-ad for a "direct"
		implementation.
		
		Args:
		  ys: A list of tensors.
		  xs: A list of tensors.
		  grad_xs: An optional list of tensors. If provided, must have the same length
		    and shapes compatible with xs.
		  assert_unused: Add assertions that intermediate values are not computed.
		Returns:
		  A list of tensors of the same shapes as ys. The directional derivatives of
		  ys with respect to xs in the direction grad_xs. Leaving grad_xs unspecified
		  is equivalent to passing in 1s for each x in xs.
	**/
	static public function fwd_gradients(ys:Dynamic, xs:Dynamic, ?grad_xs:Dynamic, ?assert_unused:Dynamic):Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys`.
		
		`grad_ys` is a list of tensors of the same length as `ys` that holds
		the initial gradients for each y in `ys`.  When `grad_ys` is None,
		we fill in a tensor of '1's of the shape of y for each y in `ys`.  A
		user can provide their own initial `grad_ys` to compute the
		derivatives using a different initial gradient for each y (e.g., if
		one wanted to weight the gradient differently for each value in
		each y).
		
		`stop_gradients` is a `Tensor` or a list of tensors to be considered constant
		with respect to all `xs`. These tensors will not be backpropagated through,
		as though they had been explicitly disconnected using `stop_gradient`.  Among
		other things, this allows computation of partial derivatives as opposed to
		total derivatives. For example:
		
		```python
		a = tf.constant(0.)
		b = 2 * a
		g = tf.gradients(a + b, [a, b], stop_gradients=[a, b])
		```
		
		Here the partial derivatives `g` evaluate to `[1.0, 1.0]`, compared to the
		total derivatives `tf.gradients(a + b, [a, b])`, which take into account the
		influence of `a` on `b` and evaluate to `[3.0, 1.0]`.  Note that the above is
		equivalent to:
		
		```python
		a = tf.stop_gradient(tf.constant(0.))
		b = tf.stop_gradient(2 * a)
		g = tf.gradients(a + b, [a, b])
		```
		
		`stop_gradients` provides a way of stopping gradient after the graph has
		already been constructed, as compared to `tf.stop_gradient` which is used
		during graph construction.  When the two approaches are combined,
		backpropagation stops at both `tf.stop_gradient` nodes and nodes in
		`stop_gradients`, whichever is encountered first.
		
		All integer tensors are considered constant with respect to all `xs`, as if
		they were included in `stop_gradients`.
		
		`unconnected_gradients` determines the value returned for each x in xs if it
		is unconnected in the graph to ys. By default this is None to safeguard
		against errors. MAthematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		```python
		a = tf.ones([1, 2])
		b = tf.ones([3, 1])
		g1 = tf.gradients([b], [a], unnconnected_gradients='none')
		sess.run(g1)  # [None]
		
		g2 = tf.gradients([b], [a], unconnected_gradients='zero')
		sess.run(g2)  # [array([[0., 0.]], dtype=float32)]
		```
		
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
		  colocate_gradients_with_ops: If True, try colocating gradients with
		    the corresponding op.
		  gate_gradients: If True, add a tuple around the gradients returned
		    for an operations.  This avoids some race conditions.
		  aggregation_method: Specifies the method used to combine gradient terms.
		    Accepted values are constants defined in the class `AggregationMethod`.
		  stop_gradients: Optional. A `Tensor` or list of tensors not to differentiate
		    through.
		  unconnected_gradients: Optional. Specifies the gradient value returned when
		    the given input tensors are unconnected. Accepted values are constants
		    defined in the class `tf.UnconnectedGradients` and the default value is
		    `none`.
		
		Returns:
		  A list of `sum(dy/dx)` for each x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}