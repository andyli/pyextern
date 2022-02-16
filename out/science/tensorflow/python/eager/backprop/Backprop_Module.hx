/* This file is generated, do not edit! */
package tensorflow.python.eager.backprop;
@:pythonImport("tensorflow.python.eager.backprop") extern class Backprop_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Aggregate gradients from multiple sources.
		
		Args:
		  gradients: A list of 'Tensor' or 'IndexedSlices' gradients.
		
		Returns:
		  If 'gradients' only has 'Tensor', returns an aggregated 'Tensor'.
		  Otherwise returns an aggregated 'IndexedSlices'.
	**/
	static public function _aggregate_grads(gradients:Dynamic):Dynamic;
	static public var _default_vspace : Dynamic;
	/**
		Make each of the parameter_positions in args a unique ops.Tensor object.
		
		Ensure that each parameter is treated independently.
		For example:
		
		def f(x, y): return x * y
		g = gradients_function(f)
		one = tf.constant(1.)
		
		g(one, one) should return [1., 1.]
		(even though the two arguments are the same Tensor object).
		
		Args:
		  parameter_positions: List of indices into args defining the arguments to
		    differentiate against.
		  args: A list of arguments to the function to be differentiated.
		
		Returns:
		  args, possibly edited in-place.
	**/
	static public function _ensure_unique_tensor_objects(parameter_positions:Dynamic, args:Dynamic):Dynamic;
	static public function _fast_fill(value:Dynamic, shape:Dynamic, dtype:Dynamic):Dynamic;
	/**
		The positions of the parameters of f to be differentiated in param_args.
	**/
	static public function _get_arg_spec(f:Dynamic, params:Dynamic, param_args:Dynamic):Dynamic;
	/**
		Calls the gradient function of the op.
		
		Args:
		  op_name: the name of the op to be differentiated.
		  attr_tuple: the attrs, as a tuple.
		  num_inputs: the number of inputs to the op.
		  inputs: inputs to the original operation.
		  outputs: outputs to the original operation.
		  out_grads: gradients of the operation wrt its outputs.
		  skip_input_indices: a tuple that is passed to the gradient function,
		    indicating which inputs to skip calculating the gradient for
		  forward_pass_name_scope: the namescope of the op in the forward pass.
		
		Returns:
		  The gradients with respect to the inputs of the function, as a list.
	**/
	static public function _gradient_function(op_name:Dynamic, attr_tuple:Dynamic, num_inputs:Dynamic, inputs:Dynamic, outputs:Dynamic, out_grads:Dynamic, skip_input_indices:Dynamic, forward_pass_name_scope:Dynamic):Dynamic;
	/**
		Unwrap resource variable/ndarray to return tensors.
	**/
	static public function _handle_or_self(x:Dynamic):Dynamic;
	static public function _must_record_gradient():Dynamic;
	/**
		The number of elements in the `grad` tensor.
	**/
	static public function _num_elements(grad:Dynamic):Dynamic;
	static public function _ones(shape:Dynamic, dtype:Dynamic):Dynamic;
	static public var _op_attr_type_cache : Dynamic;
	/**
		Helper to return (possibly cached) zero tensors in eager mode.
	**/
	static public function _zeros(shape:Dynamic, dtype:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Aggregates gradients containing `IndexedSlices`s.
	**/
	static public function aggregate_indexed_slices_gradients(grads:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public function flatten_nested_indexed_slices(grad:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to params.
		
		Example:
		```python
		# f(x, y) = (x ^ 3) * y - x * (y ^ 2)
		# Therefore, the 1st order derivatives are:
		#   df / dx = 3 * (x ^ 2) * y - y ^ 2
		#   df / dy = x ^ 3 - 2 * x * y
		# The 2nd order derivatives with respect to x is:
		#   d^2 f / (dx)^2 = 6 * x * y
		def f(x, y):
		  return x * x * x * y - x * y * y
		
		# Obtain a function that returns 1st order gradients.
		grad_fn = tfe.gradients_function(f)
		
		x = 2.0
		y = 3.0
		
		# Invoke the 1st order gradient function.
		x_grad, y_grad = grad_fn(x, y)
		assert x_grad.numpy() == 3 * (2 ** 2) * 3 - 3 ** 2
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		
		# Obtain a function that returns the 2nd order gradient with respect to x.
		gradgrad_fn = tfe.gradients_function(lambda x, y: grad_fn(x, y)[0])
		
		# Invoke the 2nd order gradient function.
		x_gradgrad = gradgrad_fn(x, y)[0]
		assert x_gradgrad.numpy() == 6 * 2 * 3
		
		# To obtain a callable that returns the gradient(s) of `f` with respect to a
		# subset of its inputs, use the `params` keyword argument with
		# `gradients_function()`.
		ygrad_fn = tfe.gradients_function(f, params=[1])
		
		(y_grad,) = ygrad_fn(x, y)
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		```
		
		Note that only tensors with real or complex dtypes are differentiable.
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar. If desired, the tensors can be elementwise multiplied by the
		    tensors passed as the `dy` keyword argument to the returned gradient
		    function.
		  params: list of parameter names of f or list of integers indexing the
		    parameters with respect to which we'll differentiate. Passing None
		    differentiates with respect to all parameters.
		
		Returns:
		  function which, when called, returns the value of f and the gradient
		  of `f` with respect to all of `params`. The function takes an extra optional
		  keyword argument `dy`. Setting it allows computation of vector jacobian
		  products for vectors other than the vector of ones.
		
		Raises:
		  ValueError: if the params are not all strings or all integers.
	**/
	static public function gradients_function(f:Dynamic, ?params:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to variables.
		
		The wrapped function returns the gradient of f when called with the same
		arguments. The gradient is with respect to all trainable TFE variables
		accessed by `f`.
		
		This function is useful when the exact set of variables to differentiate with
		is not known ahead of time.
		
		Example:
		
		```python
		dense_layer = tf.compat.v1.layers.Dense(1)
		def loss(x, y):
		  return tf.reduce_sum(tf.square(dense_layer(x) - y))
		
		# Obtain the gradient function.
		grad_fn = tfe.implicit_gradients(loss)
		
		# Invoke the gradient function with concrete values of x and y.
		x = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		y = tf.constant([[10.0], [20.0]])
		grads_and_vars = grad_fn(x, y)
		
		# Apply the gradients to Variables.
		optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		optimizer.apply_gradients(grads_and_vars)
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar.
		
		Returns:
		  A function which, when called, returns a list of (gradient, variable) pairs.
	**/
	static public function implicit_grad(f:Dynamic):Dynamic;
	/**
		Returns a function which differentiates f with respect to variables.
		
		The wrapped function returns the value and the gradient of f when called with
		the same arguments. The gradient is with respect to all trainable TFE
		variables accessed by `f`.
		
		This function is useful when the exact set of variables to differentiate with
		is not known ahead of time.
		
		Example:
		
		```python
		dense_layer = tf.compat.v1.layers.Dense(1)
		def loss(x, y):
		  return tf.reduce_sum(tf.square(dense_layer(x) - y))
		
		# Obtain the gradient function.
		val_grad_fn = tfe.implicit_value_and_gradients(loss)
		
		# Invoke the gradient function with concrete values of x and y.
		x = tf.constant([[1.0, 2.0, 3.0], [4.0, 5.0, 6.0]])
		y = tf.constant([[10.0], [20.0]])
		value, grads_and_vars = val_grad_fn(x, y)
		print('Value of loss: %s' % value)
		
		# Apply the gradients to Variables.
		optimizer = tf.compat.v1.train.GradientDescentOptimizer(0.1)
		optimizer.apply_gradients(grads_and_vars)
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar.
		
		Returns:
		  A function which, when called, returns a tuple pair.
		  Its first element is the value to which the function evaluates.
		  Its second element is list of (gradient, variable) pairs.
		
		Raises:
		  ValueError: if `f` returns None.
	**/
	static public function implicit_val_and_grad(f:Dynamic):Dynamic;
	static public function make_attr(attr_type:Dynamic, value:Dynamic):Dynamic;
	/**
		Returns a function that computes f and its vjp w.r.t.
		
		params.
		
		The term "vjp" here is an abbreviation for vector-jacobian product.
		
		Args:
		  f: the function to be differentiated.
		  params: the parameters (numbers or names) to differentiate with respect to.
		    A value of None will differentiate with respect to all parameters.
		  persistent: Boolean controlling whether the VJP function can be re-used.
		    Must be True or False.
		
		Returns:
		  A function, which when called, returns a tuple (value, vjp), where:
		  - value is the result of calling f.
		  - vjp is a function, which takes a vector as an argument and
		    returns the product of that vector with the Jacobian of f.
		    Providing no argument to vjp is equivalent to providing a
		    vector of ones.
		
		  For example,
		  ```python
		  def f(x):
		    return x * x
		
		  wrapped_fn = tfe.make_vjp(f)
		  result, vjp = wrapped_fn(tf.constant(3.0))
		  # result is 9.0
		  vjp()  # the vjp function returns 6.0
		
		Raises:
		  ValueError: if `f` returns None.
	**/
	static public function make_vjp(f:Dynamic, ?params:Dynamic, ?persistent:Dynamic):Dynamic;
	static public function op_attr_type(op_type:Dynamic, attr_name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Explicitly record the gradient for a given op.
		
		Args:
		  op_name: The op name as listed in the `OpDef` for the op.
		  inputs: A list of tensor inputs to the op.
		  attrs: The op attributes as a flattened list of alternating attribute names
		    and attribute values.
		  outputs: A list of tensor outputs from the op.
	**/
	static public function record_gradient(op_name:Dynamic, inputs:Dynamic, attrs:Dynamic, outputs:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a function that computes f and its derivative w.r.t. params.
		
		Example:
		```python
		# f(x, y) = (x ^ 3) * y - x * (y ^ 2)
		# Therefore, the 1st order derivatives are:
		#   df / dx = 3 * (x ^ 2) * y - y ^ 2
		#   df / dy = x ^ 3 - 2 * x * y
		def f(x, y):
		  return x * x * x * y - x * y * y
		
		# Obtain a function that returns the function value and the 1st order
		# gradients.
		val_grads_fn = tfe.value_and_gradients_function(f)
		
		x = 2.0
		y = 3.0
		
		# Invoke the value-and-gradients function.
		f_val, (x_grad, y_grad) = val_grads_fn(x, y)
		assert f_val.numpy() == (2 ** 3) * 3 - 2 * (3 ** 2)
		assert x_grad.numpy() == 3 * (2 ** 2) * 3 - 3 ** 2
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		
		# To obtain a callable that returns the value of `f` and the gradient(s) of
		# `f` with respect to a subset of its inputs, use the `params` keyword
		# argument with `value_and_gradients_function()`.
		val_ygrad_fn = tfe.value_and_gradients_function(f, params=[1])
		
		f_val, (y_grad,) = val_ygrad_fn(x, y)
		assert f_val.numpy() == (2 ** 3) * 3 - 2 * (3 ** 2)
		assert y_grad.numpy() == (2 ** 3) - 2 * 2 * 3
		```
		
		Args:
		  f: function to be differentiated. If `f` returns a scalar, this scalar will
		    be differentiated. If `f` returns a tensor or list of tensors, by default
		    a scalar will be computed by adding all their values to produce a single
		    scalar. If desired, the tensors can be elementwise multiplied by the
		    tensors passed as the `dy` keyword argument to the returned gradient
		    function.
		  params: list of parameter names of f or list of integers indexing the
		    parameters with respect to which we'll differentiate. Passing `None`
		    differentiates with respect to all parameters.
		
		Returns:
		  function which, when called, returns the value of f and the gradient
		  of f with respect to all of `params`. The function takes an extra optional
		  keyword argument "dy". Setting it allows computation of vector jacobian
		  products for vectors other than the vector of ones.
		
		Raises:
		  ValueError: if the params are not all strings or all integers.
	**/
	static public function val_and_grad_function(f:Dynamic, ?params:Dynamic):Dynamic;
}