/* This file is generated, do not edit! */
package torch.jit;
@:pythonImport("torch.jit", "Future") extern class Future {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public function __class_getitem__(params:Dynamic):Dynamic;
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		__getstate__(self: torch._C.Future) -> tuple
	**/
	public function __getstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Create an empty unset ``Future``. If the future is intended to hold
		values containing CUDA tensors, (a superset of) their CUDA devices must
		be specified at construction. (This is only supported if
		``torch.cuda.is_available()`` returns ``True``). This is needed to
		ensure proper CUDA stream synchronization. The child futures, returned
		by the ``then`` method, will inherit these devices.
		
		Args:
		    devices(``List[Union[int, str, torch.device]]``, optional): the set
		        of devices on which tensors contained in this future's value are
		        allowed to reside and on which callbacks are allowed to operate.
	**/
	@:native("__init__")
	public function ___init__(?devices:Dynamic):Dynamic;
	/**
		Create an empty unset ``Future``. If the future is intended to hold
		values containing CUDA tensors, (a superset of) their CUDA devices must
		be specified at construction. (This is only supported if
		``torch.cuda.is_available()`` returns ``True``). This is needed to
		ensure proper CUDA stream synchronization. The child futures, returned
		by the ``then`` method, will inherit these devices.
		
		Args:
		    devices(``List[Union[int, str, torch.device]]``, optional): the set
		        of devices on which tensors contained in this future's value are
		        allowed to reside and on which callbacks are allowed to operate.
	**/
	public function new(?devices:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var __orig_bases__ : Dynamic;
	static public var __parameters__ : Dynamic;
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
		__setstate__(self: torch._C.Future, arg0: tuple) -> None
	**/
	public function __setstate__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
	static public var __slots__ : Dynamic;
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
	static public var _is_protocol : Dynamic;
	/**
		_set_unwrap_func(self: torch._C.Future, arg0: function) -> None
	**/
	public function _set_unwrap_func(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Append the given callback function to this ``Future``, which will be run
		when the ``Future`` is completed.  Multiple callbacks can be added to
		the same ``Future``, but the order in which they will be executed cannot
		be guaranteed. The callback must take one argument, which is the
		reference to this ``Future``. The callback function can use the
		:meth:`value` method to get the value. Note that if this ``Future`` is
		already completed, the given callback will be run inline.
		
		We recommend that you use the :meth:`then` method as it provides a way
		to synchronize after your callback has completed. ``add_done_callback``
		can be cheaper if your callback does not return anything. But both
		:meth:`then` and ``add_done_callback`` use the same callback
		registration API under the hood.
		
		With respect to GPU tensors, this method behaves in the same way as
		:meth:`then`.
		
		Args:
		    callback(``Future``): a ``Callable`` that takes in one argument,
		    which is the reference to this ``Future``.
		
		.. note:: Note that if the callback function throws, either
		    through the original future being completed with an exception and
		    calling ``fut.wait()``, or through other code in the callback,
		    error handling must be carefully taken care of. For example, if
		    this callback later completes additional futures, those futures are
		    not marked as completed with an error and the user is responsible
		    for handling completion/waiting on those futures independently.
		
		Example::
		    >>> def callback(fut):
		    ...     print(f"This will run after the future has finished.")
		    ...     print(fut.wait())
		    >>> fut = torch.futures.Future()
		    >>> fut.add_done_callback(callback)
		    >>> fut.set_result(5)
		    This will run after the future has finished.
		    5
	**/
	public function add_done_callback(callback:Dynamic):Dynamic;
	/**
		Return ``True`` if this ``Future`` is done. A ``Future`` is done if it
		has a result or an exception.
		
		If the value contains tensors that reside on GPUs, ``Future.done()``
		will return ``True`` even if the asynchronous kernels that are
		populating those tensors haven't yet completed running on the device,
		because at such stage the result is already usable, provided one
		performs the appropriate synchronizations (see :meth:`wait`).
	**/
	public function done():Dynamic;
	/**
		Set an exception for this ``Future``, which will mark this ``Future`` as
		completed with an error and trigger all attached callbacks. Note that
		when calling wait()/value() on this ``Future``, the exception set here
		will be raised inline.
		
		Args:
		    result (BaseException): the exception for this ``Future``.
		
		Example::
		    >>> fut = torch.futures.Future()
		    >>> fut.set_exception(ValueError("foo"))
		    >>> fut.wait()
		    Traceback (most recent call last):
		    ...
		    ValueError: foo
	**/
	public function set_exception(result:Dynamic):Dynamic;
	/**
		Set the result for this ``Future``, which will mark this ``Future`` as
		completed and trigger all attached callbacks. Note that a ``Future``
		cannot be marked completed twice.
		
		If the result contains tensors that reside on GPUs, this method can be
		called even if the asynchronous kernels that are populating those
		tensors haven't yet completed running on the device, provided that the
		streams on which those kernels were enqueued are set as the current ones
		when this method is called. Put simply, it's safe to call this method
		immediately after launching those kernels, without any additional
		synchronization, as long as one doesn't change streams in between. This
		method will record events on all the relevant current streams and will
		use them to ensure proper scheduling for all the consumers of this
		``Future``.
		
		Args:
		    result (object): the result object of this ``Future``.
		
		Example::
		    >>> import threading
		    >>> import time
		    >>> def slow_set_future(fut, value):
		    ...     time.sleep(0.5)
		    ...     fut.set_result(value)
		    >>> fut = torch.futures.Future()
		    >>> t = threading.Thread(
		    ...     target=slow_set_future,
		    ...     args=(fut, torch.ones(2) * 3)
		    ... )
		    >>> t.start()
		    >>> print(fut.wait())
		    tensor([3., 3.])
		    >>> t.join()
	**/
	public function set_result(result:Dynamic):Dynamic;
	/**
		Append the given callback function to this ``Future``, which will be run
		when the ``Future`` is completed.  Multiple callbacks can be added to
		the same ``Future``, but the order in which they will be executed cannot
		be guaranteed (to enforce a certain order consider chaining:
		``fut.then(cb1).then(cb2)``). The callback must take one argument, which
		is the reference to this ``Future``. The callback function can use the
		:meth:`value` method to get the value. Note that if this ``Future`` is
		already completed, the given callback will be run immediately inline.
		
		If the ``Future``'s value contains tensors that reside on GPUs, the
		callback might be invoked while the async kernels that are populating
		those tensors haven't yet finished executing on the device. However, the
		callback will be invoked with some dedicated streams set as current
		(fetched from a global pool) which will be synchronized with those
		kernels. Hence any operation performed by the callback on these tensors
		will be scheduled on the device after the kernels complete. In other
		words, as long as the callback doesn't switch streams, it can safely
		manipulate the result without any additional synchronization. This is
		similar to the non-blocking behavior of :meth:`wait`.
		
		Similarly, if the callback returns a value that contains tensors that
		reside on a GPU, it can do so even if the kernels that are producing
		these tensors are still running on the device, as long as the callback
		didn't change streams during its execution. If one wants to change
		streams, one must be careful to re-synchronize them with the original
		streams, that is, those that were current when the callback was invoked.
		
		Args:
		    callback(``Callable``): a ``Callable`` that takes this ``Future`` as
		                            the only argument.
		
		Returns:
		    A new ``Future`` object that holds the return value of the
		    ``callback`` and will be marked as completed when the given
		    ``callback`` finishes.
		
		.. note:: Note that if the callback function throws, either
		    through the original future being completed with an exception and
		    calling ``fut.wait()``, or through other code in the callback, the
		    future returned by ``then`` will be marked appropriately with the
		    encountered error. However, if this callback later completes
		    additional futures, those futures are not marked as completed with
		    an error and the user is responsible for handling completion/waiting
		    on those futures independently.
		
		Example::
		    >>> def callback(fut):
		    ...     print(f"RPC return value is {fut.wait()}.")
		    >>> fut = torch.futures.Future()
		    >>> # The inserted callback will print the return value when
		    >>> # receiving the response from "worker1"
		    >>> cb_fut = fut.then(callback)
		    >>> chain_cb_fut = cb_fut.then(
		    ...     lambda x : print(f"Chained cb done. {x.wait()}")
		    ... )
		    >>> fut.set_result(5)
		    RPC return value is 5.
		    Chained cb done. None
	**/
	public function then(callback:Dynamic):Dynamic;
	/**
		Obtain the value of an already-completed future.
		
		This method should only be called after a call to :meth:`wait` has
		completed, or inside a callback function passed to :meth:`then`. In
		other cases this ``Future`` may not yet hold a value and calling
		``value()`` could fail.
		
		If the value contains tensors that reside on GPUs, then this method will
		*not* perform any additional synchronization. This should be done
		beforehand, separately, through a call to :meth:`wait` (except within
		callbacks, for which it's already being taken care of by :meth:`then`).
		
		Returns:
		    The value held by this ``Future``. If the function (callback or RPC)
		    creating the value has thrown an error, this ``value()`` method will
		    also throw an error.
	**/
	public function value():Dynamic;
	/**
		Block until the value of this ``Future`` is ready.
		
		If the value contains tensors that reside on GPUs, then an additional
		synchronization is performed with the kernels (executing on the device)
		which may be asynchronously populating those tensors. Such sync is
		non-blocking, which means that ``wait()`` will insert the necessary
		instructions in the current streams to ensure that further operations
		enqueued on those streams will be properly scheduled after the async
		kernels but, once that is done, ``wait()`` will return, even if those
		kernels are still running. No further synchronization is required when
		accessing and using the values, as long as one doesn't change streams.
		
		Returns:
		    The value held by this ``Future``. If the function (callback or RPC)
		    creating the value has thrown an error, this ``wait`` method will
		    also throw an error.
	**/
	public function wait():Dynamic;
}