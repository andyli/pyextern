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
		Computes the gradient using operations recorded in context of this tape.
		
		Args:
		  target: Tensor (or list of tensors) to be differentiated.
		  sources: a list or nested structure of Tensors or Variables. `target`
		    will be differentiated against elements in `sources`.
		  output_gradients: a list of gradients, one for each element of
		    target. Defaults to None.
		
		Returns:
		  a list or nested structure of Tensors (or IndexedSlices, or None),
		  one for each element in `sources`. Returned structure is the same as
		  the structure of `sources`.
		
		Raises:
		  RuntimeError: if called inside the context of the tape, or if called more
		   than once on a non-persistent tape.
	**/
	public function gradient(target:Dynamic, sources:Dynamic, ?output_gradients:Dynamic):Dynamic;
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