/* This file is generated, do not edit! */
package tensorflow.python.eager.backprop;
@:pythonImport("tensorflow.python.eager.backprop", "GradientTape") extern class GradientTape {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __del__():Dynamic;
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
		Creates a new GradientTape.
		
		Args:
		  persistent: Boolean controlling whether a persistent gradient tape
		    is created. False by default, which means at most one call can
		    be made to the gradient() method on this object.
		  watch_accessed_variables: Boolean controlling whether the tape will
		    automatically `watch` any (trainable) variables accessed while the tape
		    is active. Defaults to True meaning gradients can be requested from any
		    result computed in the tape derived from reading a trainable `Variable`.
		    If False users must explicitly `watch` any `Variable`s they want to
		    request gradients from.
	**/
	@:native("__init__")
	public function ___init__(?persistent:Dynamic, ?watch_accessed_variables:Dynamic):Dynamic;
	/**
		Creates a new GradientTape.
		
		Args:
		  persistent: Boolean controlling whether a persistent gradient tape
		    is created. False by default, which means at most one call can
		    be made to the gradient() method on this object.
		  watch_accessed_variables: Boolean controlling whether the tape will
		    automatically `watch` any (trainable) variables accessed while the tape
		    is active. Defaults to True meaning gradients can be requested from any
		    result computed in the tape derived from reading a trainable `Variable`.
		    If False users must explicitly `watch` any `Variable`s they want to
		    request gradients from.
	**/
	public function new(?persistent:Dynamic, ?watch_accessed_variables:Dynamic):Void;
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
	public function _pop_tape():Dynamic;
	public function _push_tape():Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Computes and stacks per-example jacobians.
		
		See http://en.wikipedia.org/wiki/jacobian_matrix_and_determinant for the
		definition of a Jacobian.  This function is essentially an efficient
		implementation of the following:
		`tf.stack([self.jacobian(y[i], x[i]) for i in range(x.shape[0])])`.
		
		Note that compared to `GradientTape.jacobian` which computes gradient of
		each output value w.r.t each input value, this function is useful when
		`target[i,...] is independent of `source[j,...]` for `j != i`. This
		independence assumption allows more efficient computation as compared to
		`GradientTape.jacobian`. The output, as well as intermediate activations,
		are lower dimensional and avoid a bunch of redundant zeros which would
		result in the jacobian computation given the independence assumption.
		
		Example usage:
		with tf.GradientTape() as g:
		  x = tf.constant([[1, 2], [3, 4]], dtype=tf.float32)
		  g.watch(x)
		  y = x * x
		batch_jacobian = g.batch_jacobian(y, x)
		# batch_jacobian is [[[2,  0], [0,  4]], [[6,  0], [0,  8]]]
		
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
		  RuntimeError: If called on a non-persistent tape with eager execution
		    enabled and without enabling experimental_use_pfor.
		  ValueError: If vectorization of jacobian computation fails or if first
		    dimension of `target` and `source` do not match.
	**/
	public function batch_jacobian(target:Dynamic, source:Dynamic, ?unconnected_gradients:Dynamic, ?parallel_iterations:Dynamic, ?experimental_use_pfor:Dynamic):Dynamic;
	/**
		Computes the gradient using operations recorded in context of this tape.
		
		Args:
		  target: Tensor (or list of tensors) to be differentiated.
		  sources: a list or nested structure of Tensors or Variables. `target`
		    will be differentiated against elements in `sources`.
		  output_gradients: a list of gradients, one for each element of
		    target. Defaults to None.
		  unconnected_gradients: a value which can either hold 'none' or 'zero' and
		    alters the value which will be returned if the target and sources are
		    unconnected. The possible values and effects are detailed in
		    'UnconnectedGradients' and it defaults to 'none'.
		
		Returns:
		  a list or nested structure of Tensors (or IndexedSlices, or None),
		  one for each element in `sources`. Returned structure is the same as
		  the structure of `sources`.
		
		Raises:
		  RuntimeError: if called inside the context of the tape, or if called more
		   than once on a non-persistent tape.
		  ValueError: if the target is a variable or if unconnected gradients is
		   called with an unknown value.
	**/
	public function gradient(target:Dynamic, sources:Dynamic, ?output_gradients:Dynamic, ?unconnected_gradients:Dynamic):Dynamic;
	/**
		Computes the jacobian using operations recorded in context of this tape.
		
		See http://en.wikipedia.org/wiki/jacobian_matrix_and_determinant for the
		definition of a Jacobian.
		
		Example usage:
		
		with tf.GradientTape() as g:
		  x  = tf.constant([1.0, 2.0])
		  g.watch(x)
		  y = x * x
		jacobian = g.jacobian(y, x)
		# jacobian value is [[2., 0.], [0., 4.]]
		
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
		  a list or nested structure of Tensors (or IndexedSlices, or None),
		  one for each element in `sources`. Returned structure is the same as
		  the structure of `sources`.
		
		Raises:
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
		
		```
		  with tf.GradientTape(persistent=True) as t:
		    loss = compute_loss(model)
		    with t.stop_recording():
		      # The gradient computation below is not traced, saving memory.
		      grads = t.gradient(loss, model.variables)
		```
		
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
	**/
	public function watch(tensor:Dynamic):Dynamic;
	/**
		Returns variables watched by this tape in order of construction.
	**/
	public function watched_variables():Dynamic;
}