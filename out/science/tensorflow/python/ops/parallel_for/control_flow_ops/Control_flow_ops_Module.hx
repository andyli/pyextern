/* This file is generated, do not edit! */
package tensorflow.python.ops.parallel_for.control_flow_ops;
@:pythonImport("tensorflow.python.ops.parallel_for.control_flow_ops") extern class Control_flow_ops_Module {
	static public var PFOR_CONFIG_ARG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Wrapper for gather that implicitly broadcasts unit dimensions.
	**/
	static public function _broadcasting_gather(x:Dynamic, i:Dynamic):Dynamic;
	/**
		Converts a list of stacked tensors to a batch CompositeTensor.
	**/
	static public function _composite_from_tensors(stacked_tensors:Dynamic, preconverted_value:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Converts a CompositeTensor into a list of stackable tensors.
	**/
	static public function _composite_to_tensors(value:Dynamic, ?is_batched:Dynamic):Dynamic;
	/**
		Flattens the first two dimensions of x into a single dimension.
	**/
	static public function _flatten_first_two_dims(x:Dynamic):Dynamic;
	/**
		Wrapper for gather that handles CompositeTensors.
	**/
	static public function _gather_from_tensor_or_composite(x:Dynamic, i:Dynamic):Dynamic;
	/**
		Check if we are currently inside an XLA compile context.
	**/
	static public function _is_under_xla_context():Dynamic;
	/**
		Test if `loop_fn` has a `pfor_config` argument.
	**/
	static public function _loop_fn_has_config(loop_fn:Dynamic):Dynamic;
	/**
		Implementation of pfor.
	**/
	static public function _pfor_impl(loop_fn:Dynamic, iters:Dynamic, fallback_to_while_loop:Dynamic, ?parallel_iterations:Dynamic, ?pfor_config:Dynamic):Dynamic;
	static public function _should_expand_composite(value:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Runs `loop_fn` `iters` times and stacks the outputs.
		
		
		Runs `loop_fn` `iters` times, with input values from 0 to `iters - 1`, and
		stacks corresponding outputs of the different runs.
		
		Args:
		  loop_fn: A function that takes an int32 scalar tf.Tensor object representing
		    the iteration number, and returns a possibly nested structure of tensor
		    objects. The shape of these outputs should not depend on the input.
		  loop_fn_dtypes: dtypes for the outputs of `loop_fn`.
		  iters: Number of iterations for which to run `loop_fn`.
		  parallel_iterations: The number of iterations that can be dispatched in
		    parallel. This knob can be used to control the total memory usage.
		
		Returns:
		  Returns a nested structure of stacked output tensor objects with the same
		  nested structure as the output of `loop_fn`.
	**/
	static public function for_loop(loop_fn:Dynamic, loop_fn_dtypes:Dynamic, iters:Dynamic, ?parallel_iterations:Dynamic):Dynamic;
	/**
		Equivalent to running `loop_fn` `iters` times and stacking the outputs.
		
		`pfor` has functionality similar to `for_loop`, i.e. running `loop_fn` `iters`
		times, with input from 0 to `iters - 1`, and stacking corresponding output of
		each iteration. However the implementation does not use a `tf.while_loop`.
		Instead it adds new operations to the graph that collectively compute the same
		value as what running `loop_fn` in a loop would compute.
		
		
		This is an experimental feature and currently has a lot of limitations:
		  - There should be no data dependency between the different iterations. For
		    example, a future iteration should not depend on a value or side-effect of
		    a previous iteration.
		  - Stateful kernels may mostly not be supported since these often imply a
		    data dependency or ordering of the iterations. We do support a limited set
		    of such stateful kernels though (like RandomFoo, Variable operations like
		    reads, etc).
		  - Conversion works only on a limited set of kernels for which a converter
		    has been registered.
		  - `loop_fn` has limited support for control flow operations. `tf.cond` in
		    particular is not supported.
		  - `loop_fn` should return nested structure of Tensors or Operations. However
		    if an Operation is returned, it should have zero outputs.
		  - The shape and dtype of `loop_fn` outputs should not depend on the input
		    to loop_fn.
		
		Args:
		  loop_fn: A function that takes an int32 scalar tf.Tensor object representing
		    the iteration number, and optionally a keyword argument `pfor_config` set
		    to a PForConfig object. It returns a possibly nested structure of Tensor
		    or Operation objects. Note that if setting `parallel_iterations` argument
		    to something other than None, `loop_fn` may be called more than once
		    during graph construction. So it may need to avoid mutating global state.
		  iters: Number of iterations for which to run `loop_fn`.
		  fallback_to_while_loop: If true, on failing to vectorize an operation, pfor
		    fallbacks to using a `tf.while_loop` to dispatch the iterations.
		  parallel_iterations: A knob to control how many iterations are vectorized
		    and dispatched in parallel. The default value of None corresponds to
		    vectorizing all the iterations.  If `parallel_iterations` is smaller than
		    `iters`, then chunks of at most that many iterations are dispatched in
		    sequence. This knob can be used to control the total memory usage.
		
		Returns:
		  Returns a nested structure of stacked tensor objects with the same nested
		  structure as the output of `loop_fn`.
		Raises:
		  ValueError: If parallel_iterations is not None and not an integer > 1.
	**/
	static public function pfor(loop_fn:Dynamic, iters:Dynamic, ?fallback_to_while_loop:Dynamic, ?parallel_iterations:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parallel map on the list of tensors unpacked from `elems` on dimension 0.
		
		This method works similar to `tf.map_fn` but is optimized to run much faster,
		possibly with a much larger memory footprint. The speedups are obtained by
		vectorization (see [Auto-Vectorizing TensorFlow Graphs: Jacobians,
		Auto-Batching and Beyond](https://arxiv.org/pdf/1903.04243.pdf)). The idea
		behind vectorization is to semantically launch all the invocations of `fn` in
		parallel and fuse corresponding operations across all these invocations. This
		fusion is done statically at graph generation time and the generated code is
		often similar in performance to a manually fused version.
		
		Because `tf.vectorized_map` fully parallelizes the batch, this method will
		generally be significantly faster than using `tf.map_fn`, especially in eager
		mode. However this is an experimental feature and currently has a lot of
		limitations:
		  - There should be no data dependency between the different semantic
		    invocations of `fn`, i.e. it should be safe to map the elements of the
		    inputs in any order.
		  - Stateful kernels may mostly not be supported since these often imply a
		    data dependency. We do support a limited set of such stateful kernels
		    though (like RandomFoo, Variable operations like reads, etc).
		  - `fn` has limited support for control flow operations.
		  - `fn` should return nested structure of Tensors or Operations. However
		    if an Operation is returned, it should have zero outputs.
		  - The shape and dtype of any intermediate or output tensors in the
		    computation of `fn` should not depend on the input to `fn`.
		
		Examples:
		```python
		def outer_product(a):
		  return tf.tensordot(a, a, 0)
		
		batch_size = 100
		a = tf.ones((batch_size, 32, 32))
		c = tf.vectorized_map(outer_product, a)
		assert c.shape == (batch_size, 32, 32, 32, 32)
		```
		
		```python
		# Computing per-example gradients
		
		batch_size = 10
		num_features = 32
		layer = tf.keras.layers.Dense(1)
		
		def model_fn(arg):
		  with tf.GradientTape() as g:
		    inp, label = arg
		    inp = tf.expand_dims(inp, 0)
		    label = tf.expand_dims(label, 0)
		    prediction = layer(inp)
		    loss = tf.nn.l2_loss(label - prediction)
		  return g.gradient(loss, (layer.kernel, layer.bias))
		
		inputs = tf.random.uniform([batch_size, num_features])
		labels = tf.random.uniform([batch_size, 1])
		per_example_gradients = tf.vectorized_map(model_fn, (inputs, labels))
		assert per_example_gradients[0].shape == (batch_size, num_features, 1)
		assert per_example_gradients[1].shape == (batch_size, 1)
		```
		
		Args:
		  fn: The callable to be performed. It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`, and returns a possibly
		    nested structure of Tensors and Operations, which may be different than
		    the structure of `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unpacked along their first dimension. The nested sequence of the
		    resulting slices will be mapped over by `fn`. The first dimensions of all
		    elements must broadcast to a consistent value; equivalently, each
		    element tensor must have first dimension of either `B` or `1`, for some
		    common batch size `B >= 1`.
		  fallback_to_while_loop: If true, on failing to vectorize an operation,
		    the unsupported op is wrapped in a tf.while_loop to execute the map
		    iterations. Note that this fallback only happens for unsupported ops and
		    other parts of `fn` are still vectorized. If false, on encountering an
		    unsupported op, a ValueError is thrown. Note that the fallbacks can result
		    in slowdowns since vectorization often yields speedup of one to two orders
		    of magnitude.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors. Each tensor packs the
		  results of applying fn to tensors unpacked from elems along the first
		  dimension, from first to last.
		
		  Although they are less common as user-visible inputs and outputs, note that
		  tensors of type `tf.variant` which represent tensor lists (for example from
		  `tf.raw_ops.TensorListFromTensor`) are vectorized by stacking the list
		  contents rather than the variant itself, and so the container tensor will
		  have a scalar shape when returned rather than the usual stacked shape. This
		  improves the performance of control flow gradient vectorization.
		
		Raises:
		  ValueError: If vectorization fails and fallback_to_while_loop is False.
	**/
	static public function vectorized_map(fn:Dynamic, elems:Dynamic, ?fallback_to_while_loop:Dynamic):Dynamic;
}