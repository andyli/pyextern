/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.generator_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.generator_io") extern class Generator_io_Module {
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
		Decorator for marking functions or methods deprecated.
		
		This decorator logs a deprecation warning whenever the decorated function is
		called. It has the following format:
		
		  <function> (from <module>) is deprecated and will be removed after <date>.
		  Instructions for updating:
		  <instructions>
		
		If `date` is None, 'after <date>' is replaced with 'in a future version'.
		<function> will include the class name if it is a method.
		
		It also edits the docstring of the function: ' (deprecated)' is appended
		to the first line of the docstring and a deprecation notice is prepended
		to the rest of the docstring.
		
		Args:
		  date: String or None. The date the function is scheduled to be removed.
		    Must be ISO 8601 (YYYY-MM-DD), or None.
		  instructions: String. Instructions on how to update code using the
		    deprecated function.
		  warn_once: Boolean. Set to `True` to warn only the first time the decorated
		    function is called. Otherwise, every call will log a warning.
		
		Returns:
		  Decorated function or method.
		
		Raises:
		  ValueError: If date is not None or in ISO 8601 format, or instructions are
		    empty.
	**/
	static public function deprecated(date:Dynamic, instructions:Dynamic, ?warn_once:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a queue filled from a numpy array or pandas `DataFrame`.
		
		  Returns a queue filled with the rows of the given (`OrderedDict` of) array
		  or `DataFrame`. In the case of a pandas `DataFrame`, the first enqueued
		  `Tensor` corresponds to the index of the `DataFrame`. For (`OrderedDict` of)
		  numpy arrays, the first enqueued `Tensor` contains the row number.
		
		Args:
		  data: a numpy `ndarray`, `OrderedDict` of numpy arrays, or a generator
		     yielding `dict`s of numpy arrays or pandas `DataFrame` that will be read
		     into the queue.
		  capacity: the capacity of the queue.
		  shuffle: whether or not to shuffle the rows of the array.
		  min_after_dequeue: minimum number of elements that can remain in the queue
		  after a dequeue operation. Only used when `shuffle` is true. If not set,
		  defaults to `capacity` / 4.
		  num_threads: number of threads used for reading and enqueueing.
		  seed: used to seed shuffling and reader starting points.
		  name: a scope name identifying the data.
		  enqueue_size: the number of rows to enqueue per step.
		  num_epochs: limit enqueuing to a specified number of epochs, if provided.
		  pad_value: default value for dynamic padding of data samples, if provided.
		
		Returns:
		  A queue filled with the rows of the given (`OrderedDict` of) array or
		    `DataFrame`.
		
		Raises:
		  TypeError: `data` is not a Pandas `DataFrame`, an `OrderedDict` of numpy
		    arrays, a numpy `ndarray`, or a generator producing these.
		  NotImplementedError: padding and shuffling data at the same time.
		  NotImplementedError: padding usage with non generator data type.
	**/
	static public function enqueue_data(data:Dynamic, capacity:Dynamic, ?shuffle:Dynamic, ?min_after_dequeue:Dynamic, ?num_threads:Dynamic, ?seed:Dynamic, ?name:Dynamic, ?enqueue_size:Dynamic, ?num_epochs:Dynamic, ?pad_value:Dynamic):Dynamic;
	/**
		Returns input function that returns dicts of numpy arrays (deprecated)
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Please use tf.data.
		
		   yielded from a generator.
		
		It is assumed that every dict of numpy arrays yielded from the dictionary
		represents a single sample. The generator should consume a single epoch of the
		data.
		
		This returns a function outputting `features` and `target` based on the dict
		of numpy arrays. The dict `features` has the same keys as an element yielded
		from x.
		
		Example:
		  ```python
		  def generator():
		    for index in range(10):
		      yield {'height': np.random.randint(32,36),
		            'age': np.random.randint(18, 80),
		            'label': np.ones(1)}
		
		  with tf.Session() as session:
		    input_fn = generator_io.generator_input_fn(
		        generator, target_key="label", batch_size=2, shuffle=False,
		        num_epochs=1)
		  ```
		
		Args:
		  x: Generator Function, returns a `Generator` that will yield the data
		    in `dict` of numpy arrays
		  target_key: String or Container of Strings, the key or Container of keys of
		    the numpy arrays in x dictionaries to use as target.
		  batch_size: Integer, size of batches to return.
		  num_epochs: Integer, number of epochs to iterate over data. If `None` will
		    run forever.
		  shuffle: Boolean, if True shuffles the queue. Avoid shuffle at prediction
		    time.
		  queue_capacity: Integer, size of queue to accumulate.
		  num_threads: Integer, number of threads used for reading and enqueueing.
		  pad_value: default value for dynamic padding of data samples, if provided.
		
		Returns:
		  Function, that returns a feature `dict` with `Tensors` and an optional
		   label `dict` with `Tensors`, or if target_key is `str` label is a `Tensor`
		
		Raises:
		  TypeError: `x` is not `FunctionType`.
		  TypeError: `x()` is not `GeneratorType`.
		  TypeError: `next(x())` is not `dict`.
		  TypeError: `target_key` is not `str` or `target_key` is not `Container`
		     of `str`.
		  KeyError:  `target_key` not a key or `target_key[index]` not in next(`x()`).
		  KeyError: `key` mismatch between dicts emitted from `x()`
	**/
	static public function generator_input_fn(x:Dynamic, ?target_key:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?pad_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}