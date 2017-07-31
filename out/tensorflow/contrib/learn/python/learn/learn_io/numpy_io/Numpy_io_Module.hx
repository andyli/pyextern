/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.numpy_io;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.numpy_io") extern class Numpy_io_Module {
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
		Returns input function that would feed dict of numpy arrays into the model.
		
		This returns a function outputting `features` and `target` based on the dict
		of numpy arrays. The dict `features` has the same keys as the `x`.
		
		Example:
		```python
		age = np.arange(4) * 1.0
		height = np.arange(32, 36)
		x = {'age': age, 'height': height}
		y = np.arange(-32, -28)
		
		with tf.Session() as session:
		  input_fn = numpy_io.numpy_input_fn(
		      x, y, batch_size=2, shuffle=False, num_epochs=1)
		```
		
		Args:
		  x: dict of numpy array object.
		  y: numpy array object. `None` if absent.
		  batch_size: Integer, size of batches to return.
		  num_epochs: Integer, number of epochs to iterate over data. If `None` will
		    run forever.
		  shuffle: Boolean, if True shuffles the queue. Avoid shuffle at prediction
		    time.
		  queue_capacity: Integer, size of queue to accumulate.
		  num_threads: Integer, number of threads used for reading and enqueueing. In
		    order to have predicted and repeatable order of reading and enqueueing,
		    such as in prediction and evaluation mode, `num_threads` should be 1.
		
		Returns:
		  Function, that has signature of ()->(dict of `features`, `target`)
		
		Raises:
		  ValueError: if the shape of `y` mismatches the shape of values in `x` (i.e.,
		    values in `x` have same shape).
		  TypeError: `x` is not a dict or `shuffle` is not bool.
	**/
	static public function core_numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		This input_fn diffs from the core version with default `shuffle`.
	**/
	static public function numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}