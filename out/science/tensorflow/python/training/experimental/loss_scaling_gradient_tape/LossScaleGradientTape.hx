/* This file is generated, do not edit! */
package tensorflow.python.training.experimental.loss_scaling_gradient_tape;
@:pythonImport("tensorflow.python.training.experimental.loss_scaling_gradient_tape", "LossScaleGradientTape") extern class LossScaleGradientTape {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Enters a context inside which operations are recorded on this tape.
	**/
	public function __enter__():Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Exits the recording context, no further operations are traced.
	**/
	public function __exit__(typ:Dynamic, value:Dynamic, traceback:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Creates a new LossScaleGradientTape.
		
		Args:
		  loss_scale: `tf.mixed_precision.experimental.LossScale` object that
		    manages what quantity to scale by. This is typically either a
		    FixedLossScale object with a constant scalar or a
		    `tf.mixed_precision.experimental.DynamicLossScale` object that will
		    adjust the scalar appropriately if any non-finite gradients are
		    encountered.
		  persistent: Boolean controlling whether a persistent gradient tape is
		    created. False by default, which means at most one call can be made to
		    the gradient() method on this object.
		  watch_accessed_variables: Boolean controlling whether the tape will
		    automatically `watch` any (trainable) variables accessed while the tape
		    is active. Defaults to True meaning gradients can be requested from any
		    result computed in the tape derived from reading a trainable `Variable`.
		    If False users must explicitly `watch` any `Variable`s they want to
		    request gradients from.
	**/
	@:native("__init__")
	public function ___init__(loss_scale:Dynamic, ?persistent:Dynamic, ?watch_accessed_variables:Dynamic):Dynamic;
	/**
		Creates a new LossScaleGradientTape.
		
		Args:
		  loss_scale: `tf.mixed_precision.experimental.LossScale` object that
		    manages what quantity to scale by. This is typically either a
		    FixedLossScale object with a constant scalar or a
		    `tf.mixed_precision.experimental.DynamicLossScale` object that will
		    adjust the scalar appropriately if any non-finite gradients are
		    encountered.
		  persistent: Boolean controlling whether a persistent gradient tape is
		    created. False by default, which means at most one call can be made to
		    the gradient() method on this object.
		  watch_accessed_variables: Boolean controlling whether the tape will
		    automatically `watch` any (trainable) variables accessed while the tape
		    is active. Defaults to True meaning gradients can be requested from any
		    result computed in the tape derived from reading a trainable `Variable`.
		    If False users must explicitly `watch` any `Variable`s they want to
		    request gradients from.
	**/
	public function new(loss_scale:Dynamic, ?persistent:Dynamic, ?watch_accessed_variables:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Ensures that this tape is recording.
	**/
	public function _ensure_recording():Dynamic;
	public function _pop_tape():Dynamic;
	/**
		Pushes a new tape onto the tape stack.
	**/
	public function _push_tape():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Computes and stacks per-example jacobians.
		
		See [wikipedia article](http://en.wikipedia.org/wiki/jacobian_matrix_and_determinant)
		for the definition of a Jacobian. This function is essentially an efficient
		implementation of the following:
		
		`tf.stack([self.jacobian(y[i], x[i]) for i in range(x.shape[0])])`.
		
		Note that compared to `GradientTape.jacobian` which computes gradient of
		each output value w.r.t each input value, this function is useful when
		`target[i,...]` is independent of `source[j,...]` for `j != i`. This
		assumption allows more efficient computation as compared to
		`GradientTape.jacobian`. The output, as well as intermediate activations,
		are lower dimensional and avoid a bunch of redundant zeros which would
		result in the jacobian computation given the independence assumption.
		
		Note: Unless you set `persistent=True` a GradientTape can only be used to
		compute one set of gradients (or jacobians).
		
		Note: By default the batch_jacobian implementation uses parallel for (pfor),
		which creates a tf.function under the hood for each batch_jacobian call.
		For better performance, and to avoid recompilation and vectorization
		rewrites on each call, enclose GradientTape code in @tf.function.
		
		
		Example usage:
		
		```python
		with tf.GradientTape() as g:
		  x = tf.constant([[1., 2.], [3., 4.]], dtype=tf.float32)
		  g.watch(x)
		  y = x * x
		batch_jacobian = g.batch_jacobian(y, x)
		# batch_jacobian is [[[2,  0], [0,  4]], [[6,  0], [0,  8]]]
		```
		
		Args:
		  target: A tensor with rank 2 or higher and with shape [b, y1, ..., y_n].
		    `target[i,...]` should only depend on `source[i,...]`.
		  source: A tensor with rank 2 or higher and with shape [b, x1, ..., x_m].
		  unconnected_gradients: a value which can either hold 'none' or 'zero' and
		    alters the value which will be returned if the target and sources are
		    unconnected. The possible values and effects are detailed in
		    'UnconnectedGradients' and it defaults to 'none'.
		  parallel_iterations: A knob to control how many iterations are dispatched
		    in parallel. This knob can be used to control the total memory usage.
		  experimental_use_pfor: If true, uses pfor for computing the Jacobian. Else
		    uses a tf.while_loop.
		
		Returns:
		  A tensor `t` with shape [b, y_1, ..., y_n, x1, ..., x_m] where `t[i, ...]`
		  is the jacobian of `target[i, ...]` w.r.t. `source[i, ...]`, i.e. stacked
		  per-example jacobians.
		
		Raises:
		  RuntimeError: If called on a used, non-persistent tape.
		  RuntimeError: If called on a non-persistent tape with eager execution
		    enabled and without enabling experimental_use_pfor.
		  ValueError: If vectorization of jacobian computation fails or if first
		    dimension of `target` and `source` do not match.
	**/
	public function batch_jacobian(target:Dynamic, source:Dynamic, ?unconnected_gradients:Dynamic, ?parallel_iterations:Dynamic, ?experimental_use_pfor:Dynamic):Dynamic;
	/**
		Computes the gradient using operations recorded in context of this tape.
		
		Uses the `LossScale` object provided in the constructor to scale `target`
		and then to unscale the resulting gradients.
		
		Args:
		  target: a list or nested structure of Tensors or Variables to be
		    differentiated.
		  sources: a list or nested structure of Tensors or Variables. `target` will
		    be differentiated against elements in `sources`.
		  output_gradients: a list of gradients, one for each element of target.
		    Defaults to None.
		  unconnected_gradients: a value which can either hold 'none' or 'zero' and
		    alters the value which will be returned if the target and sources are
		    unconnected. The possible values and effects are detailed in
		    'UnconnectedGradients' and it defaults to 'none'.
		
		Returns:
		  a list or nested structure of Tensors (or IndexedSlices, or None),
		  one for each element in `sources`. Returned structure is the same as
		  the structure of `sources`. If non-finite gradients are encountered
		  after dynamic scaling, the loss scale will be updated and the gradients
		  recomputed until either finite gradients are encountered or the loss scale
		  becomes 1.
		
		Raises:
		  RuntimeError: if called inside the context of the tape, or if called more
		   than once on a non-persistent tape.
		  ValueError: if the target is a variable or if unconnected gradients is
		   called with an unknown value.
	**/
	public function gradient(target:Dynamic, sources:Dynamic, ?output_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Computes the jacobian using operations recorded in context of this tape.
		
		Note: Unless you set `persistent=True` a GradientTape can only be used to
		compute one set of gradients (or jacobians).
		
		Note: By default the jacobian implementation uses parallel for (pfor), which
		creates a tf.function under the hood for each jacobian call. For better
		performance, and to avoid recompilation and vectorization rewrites on each
		call, enclose GradientTape code in @tf.function.
		
		See[wikipedia
		article](http://en.wikipedia.org/wiki/jacobian_matrix_and_determinant)
		for the definition of a Jacobian.
		
		Example usage:
		
		```python
		with tf.GradientTape() as g:
		  x  = tf.constant([1.0, 2.0])
		  g.watch(x)
		  y = x * x
		jacobian = g.jacobian(y, x)
		# jacobian value is [[2., 0.], [0., 4.]]
		```
		
		Args:
		  target: Tensor to be differentiated.
		  sources: a list or nested structure of Tensors or Variables. `target`
		    will be differentiated against elements in `sources`.
		  unconnected_gradients: a value which can either hold 'none' or 'zero' and
		    alters the value which will be returned if the target and sources are
		    unconnected. The possible values and effects are detailed in
		    'UnconnectedGradients' and it defaults to 'none'.
		  parallel_iterations: A knob to control how many iterations are dispatched
		    in parallel. This knob can be used to control the total memory usage.
		  experimental_use_pfor: If true, vectorizes the jacobian computation. Else
		    falls back to a sequential while_loop. Vectorization can sometimes fail
		    or lead to excessive memory usage. This option can be used to disable
		    vectorization in such cases.
		
		Returns:
		  A list or nested structure of Tensors (or None), one for each element in
		  `sources`. Returned structure is the same as the structure of `sources`.
		  Note if any gradient is sparse (IndexedSlices), jacobian function
		  currently makes it dense and returns a Tensor instead. This may change in
		  the future.
		
		
		Raises:
		  RuntimeError: If called on a used, non-persistent tape.
		  RuntimeError: If called on a non-persistent tape with eager execution
		    enabled and without enabling experimental_use_pfor.
		  ValueError: If vectorization of jacobian computation fails.
	**/
	public function jacobian(target:Dynamic, sources:Dynamic, ?unconnected_gradients:Dynamic, ?parallel_iterations:Dynamic, ?experimental_use_pfor:Dynamic):Dynamic;
	/**
		Clears all information stored in this tape.
		
		Equivalent to exiting and reentering the tape context manager with a new
		tape. For example, the two following code blocks are equivalent:
		
		```
		with tf.GradientTape() as t:
		  loss = loss_fn()
		with tf.GradientTape() as t:
		  loss += other_loss_fn()
		t.gradient(loss, ...)  # Only differentiates other_loss_fn, not loss_fn
		
		
		# The following is equivalent to the above
		with tf.GradientTape() as t:
		  loss = loss_fn()
		  t.reset()
		  loss += other_loss_fn()
		t.gradient(loss, ...)  # Only differentiates other_loss_fn, not loss_fn
		```
		
		This is useful if you don't want to exit the context manager for the tape,
		or can't because the desired reset point is inside a control flow construct:
		
		```
		with tf.GradientTape() as t:
		  loss = ...
		  if loss > k:
		    t.reset()
		```
	**/
	public function reset():Dynamic;
	/**
		Temporarily stops recording operations on this tape.
		
		Operations executed while this context manager is active will not be
		recorded on the tape. This is useful for reducing the memory used by tracing
		all computations.
		
		For example:
		
		>>> x = tf.constant(4.0)
		>>> with tf.GradientTape() as tape:
		...   with tape.stop_recording():
		...     y = x ** 2
		>>> dy_dx = tape.gradient(y, x)
		>>> print(dy_dx)
		None
		
		Yields:
		  None
		Raises:
		  RuntimeError: if the tape is not currently recording.
	**/
	public function stop_recording():Dynamic;
	/**
		Ensures that `tensor` is being traced by this tape.
		
		Args:
		  tensor: a Tensor or list of Tensors.
		
		Raises:
		  ValueError: if it encounters something that is not a tensor.
	**/
	public function watch(tensor:Dynamic):Dynamic;
	/**
		Returns variables watched by this tape in order of construction.
	**/
	public function watched_variables():Dynamic;
}