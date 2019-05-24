/* This file is generated, do not edit! */
package tensorflow._api.v1.compat.v1.estimator.inputs;
@:pythonImport("tensorflow._api.v1.compat.v1.estimator.inputs") extern class Inputs_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public function numpy_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic):Dynamic;
	/**
		Returns input function that would feed Pandas DataFrame into the model.
		
		Note: `y`'s index must match `x`'s index.
		
		Args:
		  x: pandas `DataFrame` object.
		  y: pandas `Series` object or `DataFrame`. `None` if absent.
		  batch_size: int, size of batches to return.
		  num_epochs: int, number of epochs to iterate over data. If not `None`,
		    read attempts that would exceed this value will raise `OutOfRangeError`.
		  shuffle: bool, whether to read the records in random order.
		  queue_capacity: int, size of the read queue. If `None`, it will be set
		    roughly to the size of `x`.
		  num_threads: Integer, number of threads used for reading and enqueueing. In
		    order to have predicted and repeatable order of reading and enqueueing,
		    such as in prediction and evaluation mode, `num_threads` should be 1.
		  target_column: str, name to give the target column `y`. This parameter
		    is not used when `y` is a `DataFrame`.
		
		Returns:
		  Function, that has signature of ()->(dict of `features`, `target`)
		
		Raises:
		  ValueError: if `x` already contains a column with the same name as `y`, or
		    if the indexes of `x` and `y` don't match.
		  ValueError: if 'shuffle' is not provided or a bool.
	**/
	static public function pandas_input_fn(x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?num_epochs:Dynamic, ?shuffle:Dynamic, ?queue_capacity:Dynamic, ?num_threads:Dynamic, ?target_column:Dynamic):Dynamic;
}