/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.python_input;
@:pythonImport("tensorflow.contrib.training.python.training.python_input") extern class Python_input_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Read feature_values from the generator and emit a proper output dict.
	**/
	static public function _process_yielded_dict(feature_values:Dynamic, keys:Dynamic, features:Dynamic, dtypes:Dynamic, shapes:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Easily feed data from a python generator into TensorFlow queues.
		
		Example usage:
		
		```python
		def generator():
		  for i in range(3):
		    yield {"value": i}
		
		features = {
		  "value": tf.FixedLenFeature(shape=[], dtype=dtypes.int32)
		}
		
		tensor_dict = tf.contrib.training.python_input(generator, features)
		batched_dict = tf.train.batch(
		  tensor_dict, batch_size=2, allow_smaller_final_batch=True)
		
		s = tf.Session()
		tf.train.start_queue_runners()
		
		batch1 = s.run(batched_dict)  # returns {"value": np.array([0, 1])}
		batch2 = s.run(batched_dict)  # returns {"value": np.array([2])}
		s.run(batched_dict)  # error: Queue is closed (generator finished at i==3)
		```
		
		Args:
		  generator: A python generator that takes no arguments, and yields dicts
		    containing a single minibatch entry one at a time.
		  features: A python `dict` mapping keys expected from the generator to
		    instances of `tf.FixedLenFeature`, or `tf.FixedLenSequenceFeature`.
		  name: (Optional) A name for the operations.
		
		Returns:
		  A dict mapping keys of the `features` dict to `Tensor` objects.
		  These `Tensor` objects are outputs of a queue that is fed by `generator`.
		
		Raises:
		  TypeError: If generator is not callable or features is not a dict.
		  TypeError: If any of features' values are not a Feature object.
		  NotImplementedError: If any of features' values are instances of
		    `SparseFeature` or `VarLenFeature`  (these are not currently supported).
		  ValueError: If any FixedLenSequenceFeatures contain a default value
		    (this field is not supported).
		  ValueError: if any FixedLenSequenceFeatures have allow_missing=False
		    (this field is not supported).
	**/
	static public function python_input(generator:Dynamic, features:Dynamic, ?name:Dynamic):Dynamic;
}