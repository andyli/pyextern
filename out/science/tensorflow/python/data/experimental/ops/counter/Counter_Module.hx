/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.counter;
@:pythonImport("tensorflow.python.data.experimental.ops.counter") extern class Counter_Module {
	/**
		Creates a `Dataset` that counts from `start` in steps of size `step`.
		
		Unlike `tf.data.Dataset.range` which will stop at some ending number,
		`Counter` will produce elements indefinitely.
		
		>>> dataset = tf.data.experimental.Counter().take(5)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int64, name=None)
		>>> dataset = tf.data.experimental.Counter(dtype=tf.int32)
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int32, name=None)
		>>> dataset = tf.data.experimental.Counter(start=2).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 3, 4, 5, 6]
		>>> dataset = tf.data.experimental.Counter(start=2, step=5).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 7, 12, 17, 22]
		>>> dataset = tf.data.experimental.Counter(start=10, step=-1).take(5)
		>>> list(dataset.as_numpy_iterator())
		[10, 9, 8, 7, 6]
		
		Args:
		  start: (Optional.) The starting value for the counter. Defaults to 0.
		  step: (Optional.) The step size for the counter. Defaults to 1.
		  dtype: (Optional.) The data type for counter elements. Defaults to
		    `tf.int64`.
		
		Returns:
		  A `Dataset` of scalar `dtype` elements.
	**/
	static public function Counter(?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that counts from `start` in steps of size `step`.
		
		Unlike `tf.data.Dataset.range` which will stop at some ending number,
		`Counter` will produce elements indefinitely.
		
		>>> dataset = tf.data.experimental.Counter().take(5)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int64, name=None)
		>>> dataset = tf.data.experimental.Counter(dtype=tf.int32)
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int32, name=None)
		>>> dataset = tf.data.experimental.Counter(start=2).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 3, 4, 5, 6]
		>>> dataset = tf.data.experimental.Counter(start=2, step=5).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 7, 12, 17, 22]
		>>> dataset = tf.data.experimental.Counter(start=10, step=-1).take(5)
		>>> list(dataset.as_numpy_iterator())
		[10, 9, 8, 7, 6]
		
		Args:
		  start: (Optional.) The starting value for the counter. Defaults to 0.
		  step: (Optional.) The step size for the counter. Defaults to 1.
		  dtype: (Optional.) The data type for counter elements. Defaults to
		    `tf.int64`.
		
		Returns:
		  A `Dataset` of scalar `dtype` elements.
	**/
	static public function CounterV1(?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Creates a `Dataset` that counts from `start` in steps of size `step`.
		
		Unlike `tf.data.Dataset.range` which will stop at some ending number,
		`Counter` will produce elements indefinitely.
		
		>>> dataset = tf.data.experimental.Counter().take(5)
		>>> list(dataset.as_numpy_iterator())
		[0, 1, 2, 3, 4]
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int64, name=None)
		>>> dataset = tf.data.experimental.Counter(dtype=tf.int32)
		>>> dataset.element_spec
		TensorSpec(shape=(), dtype=tf.int32, name=None)
		>>> dataset = tf.data.experimental.Counter(start=2).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 3, 4, 5, 6]
		>>> dataset = tf.data.experimental.Counter(start=2, step=5).take(5)
		>>> list(dataset.as_numpy_iterator())
		[2, 7, 12, 17, 22]
		>>> dataset = tf.data.experimental.Counter(start=10, step=-1).take(5)
		>>> list(dataset.as_numpy_iterator())
		[10, 9, 8, 7, 6]
		
		Args:
		  start: (Optional.) The starting value for the counter. Defaults to 0.
		  step: (Optional.) The step size for the counter. Defaults to 1.
		  dtype: (Optional.) The data type for counter elements. Defaults to
		    `tf.int64`.
		
		Returns:
		  A `Dataset` of scalar `dtype` elements.
	**/
	static public function CounterV2(?start:Dynamic, ?step:Dynamic, ?dtype:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}