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
		  return tf.math.log(1 + tf.exp(x))
		```
		
		Due to numerical instability, the gradient of this function evaluated at x=100
		is NaN.  For example:
		
		```python
		x = tf.constant(100.)
		y = log1pexp(x)
		dy_dx = tf.gradients(y, x) # Will be NaN when evaluated.
		```
		
		The gradient expression can be analytically simplified to provide numerical
		stability:
		
		```python
		@tf.custom_gradient
		def log1pexp(x):
		  e = tf.exp(x)
		  def grad(upstream):
		    return upstream * (1 - 1 / (1 + e))
		  return tf.math.log(1 + e), grad
		```
		
		With this definition, the gradient `dy_dx` at `x = 100` will be correctly
		evaluated as 1.0.
		
		The variable `upstream` is defined as the upstream gradient. i.e. the gradient
		from all the layers or functions originating from this layer. The above
		example has no upstream functions, therefore `upstream = dy/dy = 1.0`.
		
		Assume that `x_i` is `log1pexp` in the forward pass `x_1 = x_1(x_0)`,
		`x_2 = x_2(x_1)`, ..., `x_i = x_i(x_i-1)`, ..., `x_n = x_n(x_n-1)`. By
		chain rule we know that `dx_n/dx_0 = dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... *
		dx_i/dx_i-1 * ... * dx_1/dx_0`.
		
		In this case the gradient of our current function defined as
		`dx_i/dx_i-1 = (1 - 1 / (1 + e))`. The upstream gradient `upstream` would be
		`dx_n/dx_n-1 * dx_n-1/dx_n-2 * ... * dx_i+1/dx_i`. The upstream gradient
		multiplied by the current gradient is then passed downstream.
		
		In case the function takes multiple variables as input, the `grad`
		function must also return  the same number of variables.
		We take the function `z = x * y` as an example.
		
		>>> @tf.custom_gradient
		... def bar(x, y):
		...   def grad(upstream):
		...     dz_dx = y
		...     dz_dy = x
		...     return upstream * dz_dx, upstream * dz_dy
		...   z = x * y
		...   return z, grad
		>>> x = tf.constant(2.0, dtype=tf.float32)
		>>> y = tf.constant(3.0, dtype=tf.float32)
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   tape.watch(y)
		...   z = bar(x, y)
		>>> z
		<tf.Tensor: shape=(), dtype=float32, numpy=6.0>
		>>> tape.gradient(z, x)
		<tf.Tensor: shape=(), dtype=float32, numpy=3.0>
		>>> tape.gradient(z, y)
		<tf.Tensor: shape=(), dtype=float32, numpy=2.0>
		
		Nesting custom gradients can lead to unintuitive results. The default
		behavior does not correspond to n-th order derivatives. For example
		
		```python
		@tf.custom_gradient
		def op(x):
		  y = op1(x)
		  @tf.custom_gradient
		  def grad_fn(dy):
		    gdy = op2(x, y, dy)
		    def grad_grad_fn(ddy):  # Not the 2nd order gradient of op w.r.t. x.
		      return op3(x, y, dy, ddy)
		    return gdy, grad_grad_fn
		  return y, grad_fn
		```
		
		The function `grad_grad_fn` will be calculating the first order gradient
		of `grad_fn` with respect to `dy`, which is used to generate forward-mode
		gradient graphs from backward-mode gradient graphs, but is not the same as
		the second order gradient of `op` with respect to `x`.
		
		Instead, wrap nested `@tf.custom_gradients` in another function:
		
		```python
		@tf.custom_gradient
		def op_with_fused_backprop(x):
		  y, x_grad = fused_op(x)
		  def first_order_gradient(dy):
		    @tf.custom_gradient
		    def first_order_custom(unused_x):
		      def second_order_and_transpose(ddy):
		        return second_order_for_x(...), gradient_wrt_dy(...)
		      return x_grad, second_order_and_transpose
		    return dy * first_order_custom(x)
		  return y, first_order_gradient
		```
		
		Additional arguments to the inner `@tf.custom_gradient`-decorated function
		control the expected return values of the innermost function.
		
		The examples above illustrate how to specify custom gradients for functions
		which do not read from variables. The following example uses variables, which
		require special handling because they are effectively inputs of the forward
		function.
		
		>>> weights = tf.Variable(tf.ones([2]))  # Trainable variable weights
		>>> @tf.custom_gradient
		... def linear_poly(x):
		...   # Creating polynomial
		...   poly = weights[1] * x + weights[0]
		...
		...   def grad_fn(dpoly, variables):
		...     # dy/dx = weights[1] and we need to left multiply dpoly
		...     grad_xs = dpoly * weights[1]  # Scalar gradient
		...
		...     grad_vars = []  # To store gradients of passed variables
		...     assert variables is not None
		...     assert len(variables) == 1
		...     assert variables[0] is weights
		...     # Manually computing dy/dweights
		...     dy_dw = dpoly * tf.stack([x ** 1, x ** 0])
		...     grad_vars.append(
		...         tf.reduce_sum(tf.reshape(dy_dw, [2, -1]), axis=1)
		...     )
		...     return grad_xs, grad_vars
		...   return poly, grad_fn
		>>> x = tf.constant([1., 2., 3.])
		>>> with tf.GradientTape(persistent=True) as tape:
		...   tape.watch(x)
		...   poly = linear_poly(x)
		>>> poly # poly = x + 1
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([2., 3., 4.], dtype=float32)>
		>>> tape.gradient(poly, x)  # conventional scalar gradient dy/dx
		<tf.Tensor: shape=(3,),
		  dtype=float32,
		  numpy=array([1., 1., 1.], dtype=float32)>
		>>> tape.gradient(poly, weights)
		<tf.Tensor: shape=(2,), dtype=float32, numpy=array([6., 3.], dtype=float32)>
		
		Above example illustrates usage of trainable variable `weights`.
		In the example, the inner `grad_fn` accepts an extra `variables` input
		parameter and also returns an extra `grad_vars` output. That extra argument
		is passed if the forward function reads any variables. You need to
		compute the gradient w.r.t. each of those `variables` and output it as a list
		of `grad_vars`. Note here that default value of `variables` is set to `None`
		when no variables are used in the forward function.
		
		It should be noted `tf.GradientTape` is still watching the forward pass of a
		`tf.custom_gradient`, and will use the ops it watches. As a consequence,
		calling `tf.function` while the tape is still watching leads
		to a gradient graph being built. If an op is used in `tf.function` without
		registered gradient, a `LookupError` will be raised.
		
		Users can insert `tf.stop_gradient` to customize this behavior. This
		is demonstrated in the example below. `tf.random.shuffle` does not have a
		registered gradient. As a result `tf.stop_gradient` is used to avoid the
		`LookupError`.
		
		```python
		x = tf.constant([0.3, 0.5], dtype=tf.float32)
		
		@tf.custom_gradient
		def test_func_with_stop_grad(x):
		  @tf.function
		  def _inner_func():
		    # Avoid exception during the forward pass
		    return tf.stop_gradient(tf.random.shuffle(x))
		    # return tf.random.shuffle(x)  # This will raise
		
		  res = _inner_func()
		  def grad(upstream):
		    return upstream  # Arbitrarily defined custom gradient
		  return res, grad
		
		with tf.GradientTape() as g:
		  g.watch(x)
		  res = test_func_with_stop_grad(x)
		
		g.gradient(res, x)
		```
		
		See also `tf.RegisterGradient` which registers a gradient function for a
		primitive TensorFlow operation. `tf.custom_gradient` on the other hand allows
		for fine grained control over the gradient computation of a sequence of
		operations.
		
		Note that if the decorated function uses `Variable`s, the enclosing variable
		scope must be using `ResourceVariable`s.
		
		Args:
		  f: function `f(*x)` that returns a tuple `(y, grad_fn)` where:
		     - `x` is a sequence of (nested structures of) `Tensor` inputs to the
		       function.
		     - `y` is a (nested structure of) `Tensor` outputs of applying TensorFlow
		       operations in `f` to `x`.
		     - `grad_fn` is a function with the signature `g(*grad_ys)` which returns
		       a list of `Tensor`s the same size as (flattened) `x` - the derivatives
		       of `Tensor`s in `y` with respect to the `Tensor`s in `x`.  `grad_ys` is
		       a sequence of `Tensor`s the same size as (flattened) `y` holding the
		       initial value gradients for each `Tensor` in `y`.
		
		       In a pure mathematical sense, a vector-argument vector-valued function
		       `f`'s derivatives should be its Jacobian matrix `J`. Here we are
		       expressing the Jacobian `J` as a function `grad_fn` which defines how
		       `J` will transform a vector `grad_ys` when left-multiplied with it
		       (`grad_ys * J`, the vector-Jacobian product, or VJP). This functional
		       representation of a matrix is convenient to use for chain-rule
		       calculation (in e.g. the back-propagation algorithm).
		
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
	static public function custom_gradient(?f:Dynamic):Dynamic;
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