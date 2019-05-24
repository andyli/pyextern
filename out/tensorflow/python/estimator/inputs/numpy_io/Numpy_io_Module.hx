/* This file is generated, do not edit! */
package tensorflow.python.estimator.inputs.numpy_io;
@:pythonImport("tensorflow.python.estimator.inputs.numpy_io") extern class Numpy_io_Module {
	static public var _HAS_DYNAMIC_ATTRIBUTES : Dynamic;
	static public var _TARGET_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a key not existed in the input dict `features`.
		
		Caller of `input_fn` usually provides `features` (dict of numpy arrays) and
		`target`, but the underlying feeding module expects a single dict of numpy
		arrays as input. So, the `target` needs to be packed into the `features`
		temporarily and unpacked after calling the feeding function. Toward this goal,
		this function returns a key not existed in the `features` to pack the
		`target`.
		
		Args:
		  features: OrderedDict of numpy arrays
		
		Returns:
		  A unique key that can be used to insert the subsequent target into
		    features dict.
	**/
	static public function _get_unique_target_key(features:Dynamic):Dynamic;
	/**
		Type check input data and make a shadow copy as an ordered dict.
		
		Args:
		  x: numpy array object or dict of numpy array objects. If an array,
		    the array will be treated as a single feature.
		
		Returns:
		  OrderedDict copy of x.
		
		Raises:
		  ValueError: if x is empty
		  TypeError: if x is an unknown type.
	**/
	static public function _validate_and_convert_features(x:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public function estimator_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var print_function : Dynamic;
	static public var string_types : Dynamic;
}