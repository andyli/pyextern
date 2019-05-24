/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.shuffle_ops;
@:pythonImport("tensorflow.contrib.data.python.ops.shuffle_ops") extern class Shuffle_ops_Module {
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
	/**
		Shuffles and repeats a Dataset returning a new permutation for each epoch. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.shuffle_and_repeat(...)`.
		
		`dataset.apply(tf.contrib.data.shuffle_and_repeat(buffer_size, count))`
		
		is equivalent to
		
		`dataset.shuffle(buffer_size, reshuffle_each_iteration=True).repeat(count)`
		
		The difference is that the latter dataset is not serializable. So,
		if you need to checkpoint an input pipeline with reshuffling you must use
		this implementation.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    maximum number elements that will be buffered when prefetching.
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    number of times the dataset should be repeated. The default behavior
		    (if `count` is `None` or `-1`) is for the dataset be repeated
		    indefinitely.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    random seed that will be used to create the distribution. See
		    `tf.set_random_seed` for behavior.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function shuffle_and_repeat(buffer_size:Dynamic, ?count:Dynamic, ?seed:Dynamic):Dynamic;
}