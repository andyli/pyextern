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
		
		This returns a function outputting `features` and `targets` based on the dict
		of numpy arrays. The dict `features` has the same keys as the `x`. The dict
		`targets` has the same keys as the `y` if `y` is a dict.
		
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
		  x: numpy array object or dict of numpy array objects. If an array,
		    the array will be treated as a single feature.
		  y: numpy array object or dict of numpy array object. `None` if absent.
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
		  Function, that has signature of ()->(dict of `features`, `targets`)
		
		Raises:
		  ValueError: if the shape of `y` mismatches the shape of values in `x` (i.e.,
		    values in `x` have same shape).
		  ValueError: if duplicate keys are in both `x` and `y` when `y` is a dict.
		  ValueError: if x or y is an empty dict.
		  TypeError: `x` is not a dict or array.
		  ValueError: if 'shuffle' is not provided or a bool.
	**/
	static public function core_numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
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
		This input_fn diffs from the core version with default `shuffle`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use tf.compat.v1.estimator.inputs.numpy_input_fn.
	**/
	static public function numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}