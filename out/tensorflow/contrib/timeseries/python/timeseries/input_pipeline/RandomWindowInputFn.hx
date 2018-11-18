/* This file is generated, do not edit! */
package tensorflow.contrib.timeseries.python.timeseries.input_pipeline;
@:pythonImport("tensorflow.contrib.timeseries.python.timeseries.input_pipeline", "RandomWindowInputFn") extern class RandomWindowInputFn {
	/**
		Call self as a function.
	**/
	public function __call__():Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
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
		Configure the RandomWindowInputFn.
		
		Args:
		  time_series_reader: A TimeSeriesReader object.
		  window_size: The number of examples to keep together sequentially. This
		    controls the length of truncated backpropagation: smaller values mean
		    less sequential computation, which can lead to faster training, but
		    create a coarser approximation to the gradient (which would ideally be
		    computed by a forward pass over the entire sequence in order).
		  batch_size: The number of windows to place together in a batch. Larger
		    values will lead to more stable gradients during training.
		  queue_capacity_multiplier: The capacity for the queues used to create
		    batches, specified as a multiple of `batch_size` (for
		    RandomShuffleQueue) and `batch_size * window_size` (for the
		    FIFOQueue). Controls the maximum number of windows stored. Should be
		    greater than `shuffle_min_after_dequeue_multiplier`.
		  shuffle_min_after_dequeue_multiplier: The minimum number of windows in the
		    RandomShuffleQueue after a dequeue, which controls the amount of entropy
		    introduced during batching. Specified as a multiple of `batch_size`.
		  discard_out_of_order: If True, windows of data which have times which
		    decrease (a higher time followed by a lower time) are discarded. If
		    False, the window and associated features are instead sorted so that
		    times are non-decreasing. Discarding is typically faster, as models do
		    not have to deal with artificial gaps in the data. However, discarding
		    does create a bias where the beginnings and endings of files are
		    under-sampled.
		  discard_consecutive_batches_limit: Raise an OutOfRangeError if more than
		    this number of batches are discarded without a single non-discarded
		    window (prevents infinite looping when the dataset is too small).
		  jitter: If True, randomly discards examples between some windows in order
		    to avoid deterministic chunking patterns. This is important for models
		    like AR which may otherwise overfit a fixed chunking.
		  num_threads: Use this number of threads for queues. Setting a value of 1
		    removes one source of non-determinism (and in combination with
		    shuffle_seed should provide deterministic windowing).
		  shuffle_seed: A seed for window shuffling. The default value of None
		    provides random behavior. With `shuffle_seed` set and
		    `num_threads=1`, provides deterministic behavior.
	**/
	@:native("__init__")
	public function ___init__(time_series_reader:Dynamic, window_size:Dynamic, batch_size:Dynamic, ?queue_capacity_multiplier:Dynamic, ?shuffle_min_after_dequeue_multiplier:Dynamic, ?discard_out_of_order:Dynamic, ?discard_consecutive_batches_limit:Dynamic, ?jitter:Dynamic, ?num_threads:Dynamic, ?shuffle_seed:Dynamic):Dynamic;
	/**
		Configure the RandomWindowInputFn.
		
		Args:
		  time_series_reader: A TimeSeriesReader object.
		  window_size: The number of examples to keep together sequentially. This
		    controls the length of truncated backpropagation: smaller values mean
		    less sequential computation, which can lead to faster training, but
		    create a coarser approximation to the gradient (which would ideally be
		    computed by a forward pass over the entire sequence in order).
		  batch_size: The number of windows to place together in a batch. Larger
		    values will lead to more stable gradients during training.
		  queue_capacity_multiplier: The capacity for the queues used to create
		    batches, specified as a multiple of `batch_size` (for
		    RandomShuffleQueue) and `batch_size * window_size` (for the
		    FIFOQueue). Controls the maximum number of windows stored. Should be
		    greater than `shuffle_min_after_dequeue_multiplier`.
		  shuffle_min_after_dequeue_multiplier: The minimum number of windows in the
		    RandomShuffleQueue after a dequeue, which controls the amount of entropy
		    introduced during batching. Specified as a multiple of `batch_size`.
		  discard_out_of_order: If True, windows of data which have times which
		    decrease (a higher time followed by a lower time) are discarded. If
		    False, the window and associated features are instead sorted so that
		    times are non-decreasing. Discarding is typically faster, as models do
		    not have to deal with artificial gaps in the data. However, discarding
		    does create a bias where the beginnings and endings of files are
		    under-sampled.
		  discard_consecutive_batches_limit: Raise an OutOfRangeError if more than
		    this number of batches are discarded without a single non-discarded
		    window (prevents infinite looping when the dataset is too small).
		  jitter: If True, randomly discards examples between some windows in order
		    to avoid deterministic chunking patterns. This is important for models
		    like AR which may otherwise overfit a fixed chunking.
		  num_threads: Use this number of threads for queues. Setting a value of 1
		    removes one source of non-determinism (and in combination with
		    shuffle_seed should provide deterministic windowing).
		  shuffle_seed: A seed for window shuffling. The default value of None
		    provides random behavior. With `shuffle_seed` set and
		    `num_threads=1`, provides deterministic behavior.
	**/
	public function new(time_series_reader:Dynamic, window_size:Dynamic, batch_size:Dynamic, ?queue_capacity_multiplier:Dynamic, ?shuffle_min_after_dequeue_multiplier:Dynamic, ?discard_out_of_order:Dynamic, ?discard_consecutive_batches_limit:Dynamic, ?jitter:Dynamic, ?num_threads:Dynamic, ?shuffle_seed:Dynamic):Void;
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
	/**
		Create queues to window and batch time series data.
		
		Returns:
		  A dictionary of Tensors corresponding to the output of `self._reader`
		  (from the `time_series_reader` constructor argument), each with shapes
		  prefixed by [`batch_size`, `window_size`].
	**/
	public function create_batch():Dynamic;
}