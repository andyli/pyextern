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
	static public var division : Dynamic;
	/**
		Returns input function that would dicts of numpy arrays
		     yielded from a generator.
		
		It is assumed that every dict yielded from the dictionary represents
		a single sample. The generator should consume a single epoch of the data.
		
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
	static public function generator_input_fn(x:Dynamic, ?target_key:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}