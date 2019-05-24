/* This file is generated, do not edit! */
package tensorflow.python.ops.gradients;
@:pythonImport("tensorflow.python.ops.gradients") extern class Gradients_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator to define a function with a custom gradient.
		
		This decorator allows fine grained control over the gradients of a sequence
		for operations.  This may be useful for multiple reasons, including providing
		a more efficient or numerically stable gradient for a sequence of operations.
		
		For example, consider the following function that commonly occurs in the
		computation of cross entropy and log likelihoods:
		
		```python
		def log1pexp(x):
		  return tf.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient this function evaluated at x=100 is
		NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(dy):
		    return dy * (1 - 1 / (1 + e))
		  return tf.log(1 + e), grad
		```
		
		With this definition, the gradient at x=100 will be correctly evaluated as
		1.0.
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of `Tensor` inputs to the function.
		     - `y` is a `Tensor` or sequence of `Tensor` outputs of applying
		       TensorFlow operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s - the derivatives of `Tensor`s in `y` with respect
		       to the `Tensor`s in `x`.  `grad_ys` is a `Tensor` or sequence of
		       `Tensor`s the same size as `y` holding the initial value gradients for
		       each `Tensor` in `y`. In a pure mathematical sense, a vector-argument
		       vector-valued function `f`'s derivatives should be its Jacobian matrix
		       `J`. Here we are expressing the Jacobian `J` as a function `grad_fn`
		       which defines how `J` will transform a vector `grad_ys` when
		       left-multiplied with it (`grad_ys * J`). This functional representation
		       of a matrix is convenient to use for chain-rule calculation
		       (in e.g. the back-propagation algorithm).
		
		       If `f` uses `Variable`s (that are not part of the
		       inputs), i.e. through `get_variable`, then `grad_fn` should have
		       signature `g(*grad_ys, variables=None)`, where `variables` is a list of
		       the `Variable`s, and return a 2-tuple `(grad_xs, grad_vars)`, where
		       `grad_xs` is the same as above, and `grad_vars` is a `list<Tensor>`
		       with the derivatives of `Tensor`s in `y` with respect to the variables
		       (that is, grad_vars has one Tensor per variable in variables).
		
		Returns:
		  A function `h(x)` which returns the same value as `f(x)[0]` and whose
		  gradient (as calculated by `tf.gradients`) is determined by `f(x)[1]`.
	**/
	static public function custom_gradient(f:Dynamic):Dynamic;
	static public var division : Dynamic;
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
}