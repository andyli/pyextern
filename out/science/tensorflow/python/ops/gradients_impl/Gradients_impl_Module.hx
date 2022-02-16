/* This file is generated, do not edit! */
package tensorflow.python.ops.gradients_impl;
@:pythonImport("tensorflow.python.ops.gradients_impl") extern class Gradients_impl_Module {
	/**
		Constructs the Hessian of sum of `ys` with respect to `x` in `xs`.
		
		`hessians()` adds ops to the graph to output the Hessian matrix of `ys`
		with respect to `xs`.  It returns a list of `Tensor` of length `len(xs)`
		where each tensor is the Hessian of `sum(ys)`.
		
		The Hessian is a matrix of second-order partial derivatives of a scalar
		tensor (see https://en.wikipedia.org/wiki/Hessian_matrix for more details).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  gate_gradients: See `gradients()` documentation for details.
		  aggregation_method: See `gradients()` documentation for details.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'hessians'.
		
		Returns:
		  A list of Hessian matrices of `sum(ys)` for each `x` in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `xs` and `ys` does not
		    have a registered gradient function.
	**/
	static public function HessiansV2(ys:Dynamic, xs:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?name:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Multiply the Hessian of `ys` wrt `xs` by `v`.
		
		This is an efficient construction that uses a backprop-like approach
		to compute the product between the Hessian and another vector. The
		Hessian is usually too large to be explicitly computed or even
		represented, but this method allows us to at least multiply by it
		for the same big-O cost as backprop.
		
		Implicit Hessian-vector products are the main practical, scalable way
		of using second derivatives with neural networks. They allow us to
		do things like construct Krylov subspaces and approximate conjugate
		gradient descent.
		
		Example: if `y` = 1/2 `x`^T A `x`, then `hessian_vector_product(y,
		x, v)` will return an expression that evaluates to the same values
		as (A + A.T) `v`.
		
		Args:
		  ys: A scalar value, or a tensor or list of tensors to be summed to
		      yield a scalar.
		  xs: A list of tensors that we should construct the Hessian over.
		  v: A list of tensors, with the same shapes as xs, that we want to
		     multiply by the Hessian.
		
		Returns:
		  A list of tensors (or if the list would be length 1, a single tensor)
		  containing the product between the Hessian and `v`.
		
		Raises:
		  ValueError: `xs` and `v` have different length.
	**/
	static public function _hessian_vector_product(ys:Dynamic, xs:Dynamic, v:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys` and for x in `xs`.
		
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
		against errors. Mathematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		```python
		a = tf.ones([1, 2])
		b = tf.ones([3, 1])
		g1 = tf.gradients([b], [a], unconnected_gradients='none')
		sess.run(g1)  # [None]
		
		g2 = tf.gradients([b], [a], unconnected_gradients='zero')
		sess.run(g2)  # [array([[0., 0.]], dtype=float32)]
		```
		
		Let us take one practical example which comes during the back propogation
		phase. This function is used to evaluate the derivatives of the cost function
		with respect to Weights `Ws` and Biases `bs`. Below sample implementation
		provides the exaplantion of what it is actually used for :
		
		```python
		Ws = tf.constant(0.)
		bs = 2 * Ws
		cost = Ws + bs  # This is just an example. So, please ignore the formulas.
		g = tf.gradients(cost, [Ws, bs])
		dCost_dW, dCost_db = g
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
		  A list of `Tensor` of length `len(xs)` where each tensor is the `sum(dy/dx)`
		  for y in `ys` and for x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Constructs symbolic derivatives of sum of `ys` w.r.t. x in `xs`.
		
		`tf.gradients` is only valid in a graph context. In particular,
		it is valid in the context of a `tf.function` wrapper, where code
		is executing as a graph.
		
		`ys` and `xs` are each a `Tensor` or a list of tensors.  `grad_ys`
		is a list of `Tensor`, holding the gradients received by the
		`ys`. The list must be the same length as `ys`.
		
		`gradients()` adds ops to the graph to output the derivatives of `ys` with
		respect to `xs`.  It returns a list of `Tensor` of length `len(xs)` where
		each tensor is the `sum(dy/dx)` for y in `ys` and for x in `xs`.
		
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
		
		>>> @tf.function
		... def example():
		...   a = tf.constant(0.)
		...   b = 2 * a
		...   return tf.gradients(a + b, [a, b], stop_gradients=[a, b])
		>>> example()
		[<tf.Tensor: shape=(), dtype=float32, numpy=1.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>]
		
		Here the partial derivatives `g` evaluate to `[1.0, 1.0]`, compared to the
		total derivatives `tf.gradients(a + b, [a, b])`, which take into account the
		influence of `a` on `b` and evaluate to `[3.0, 1.0]`.  Note that the above is
		equivalent to:
		
		>>> @tf.function
		... def example():
		...   a = tf.stop_gradient(tf.constant(0.))
		...   b = tf.stop_gradient(2 * a)
		...   return tf.gradients(a + b, [a, b])
		>>> example()
		[<tf.Tensor: shape=(), dtype=float32, numpy=1.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>]
		
		`stop_gradients` provides a way of stopping gradient after the graph has
		already been constructed, as compared to `tf.stop_gradient` which is used
		during graph construction.  When the two approaches are combined,
		backpropagation stops at both `tf.stop_gradient` nodes and nodes in
		`stop_gradients`, whichever is encountered first.
		
		All integer tensors are considered constant with respect to all `xs`, as if
		they were included in `stop_gradients`.
		
		`unconnected_gradients` determines the value returned for each x in xs if it
		is unconnected in the graph to ys. By default this is None to safeguard
		against errors. Mathematically these gradients are zero which can be requested
		using the `'zero'` option. `tf.UnconnectedGradients` provides the
		following options and behaviors:
		
		>>> @tf.function
		... def example(use_zero):
		...   a = tf.ones([1, 2])
		...   b = tf.ones([3, 1])
		...   if use_zero:
		...     return tf.gradients([b], [a], unconnected_gradients='zero')
		...   else:
		...     return tf.gradients([b], [a], unconnected_gradients='none')
		>>> example(False)
		[None]
		>>> example(True)
		[<tf.Tensor: shape=(1, 2), dtype=float32, numpy=array([[0., 0.]], ...)>]
		
		Let us take one practical example which comes during the back propogation
		phase. This function is used to evaluate the derivatives of the cost function
		with respect to Weights `Ws` and Biases `bs`. Below sample implementation
		provides the exaplantion of what it is actually used for :
		
		>>> @tf.function
		... def example():
		...   Ws = tf.constant(0.)
		...   bs = 2 * Ws
		...   cost = Ws + bs  # This is just an example. Please ignore the formulas.
		...   g = tf.gradients(cost, [Ws, bs])
		...   dCost_dW, dCost_db = g
		...   return dCost_dW, dCost_db
		>>> example()
		(<tf.Tensor: shape=(), dtype=float32, numpy=3.0>,
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>)
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  grad_ys: Optional. A `Tensor` or list of tensors the same size as
		    `ys` and holding the gradients computed for each y in `ys`.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'gradients'.
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
		  A list of `Tensor` of length `len(xs)` where each tensor is the `sum(dy/dx)`
		  for y in `ys` and for x in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `x` and `y` does not
		    have a registered gradient function.
		  ValueError: if the arguments are invalid.
		  RuntimeError: if called in Eager mode.
	**/
	static public function gradients_v2(ys:Dynamic, xs:Dynamic, ?grad_ys:Dynamic, ?name:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic, ?stop_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Constructs the Hessian of sum of `ys` with respect to `x` in `xs`.
		
		`hessians()` adds ops to the graph to output the Hessian matrix of `ys`
		with respect to `xs`.  It returns a list of `Tensor` of length `len(xs)`
		where each tensor is the Hessian of `sum(ys)`.
		
		The Hessian is a matrix of second-order partial derivatives of a scalar
		tensor (see https://en.wikipedia.org/wiki/Hessian_matrix for more details).
		
		Args:
		  ys: A `Tensor` or list of tensors to be differentiated.
		  xs: A `Tensor` or list of tensors to be used for differentiation.
		  name: Optional name to use for grouping all the gradient ops together.
		    defaults to 'hessians'.
		  colocate_gradients_with_ops: See `gradients()` documentation for details.
		  gate_gradients: See `gradients()` documentation for details.
		  aggregation_method: See `gradients()` documentation for details.
		
		Returns:
		  A list of Hessian matrices of `sum(ys)` for each `x` in `xs`.
		
		Raises:
		  LookupError: if one of the operations between `xs` and `ys` does not
		    have a registered gradient function.
	**/
	static public function hessians(ys:Dynamic, xs:Dynamic, ?name:Dynamic, ?colocate_gradients_with_ops:Dynamic, ?gate_gradients:Dynamic, ?aggregation_method:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}