/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.shuffle_ops;
@:pythonImport("tensorflow.python.data.experimental.ops.shuffle_ops") extern class Shuffle_ops_Module {
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
		Shuffles and repeats a Dataset, reshuffling with each repetition. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.shuffle(buffer_size, seed)` followed by `tf.data.Dataset.repeat(count)`. Static tf.data optimizations will take care of using the fused implementation.
		
		>>> d = tf.data.Dataset.from_tensor_slices([1, 2, 3])
		>>> d = d.apply(tf.data.experimental.shuffle_and_repeat(2, count=2))
		>>> [elem.numpy() for elem in d] # doctest: +SKIP
		[2, 3, 1, 1, 3, 2]
		
		```python
		dataset.apply(
		  tf.data.experimental.shuffle_and_repeat(buffer_size, count, seed))
		```
		
		produces the same output as
		
		```python
		dataset.shuffle(
		  buffer_size, seed=seed, reshuffle_each_iteration=True).repeat(count)
		```
		
		In each repetition, this dataset fills a buffer with `buffer_size` elements,
		then randomly samples elements from this buffer, replacing the selected
		elements with new elements. For perfect shuffling, set the buffer size equal
		to the full size of the dataset.
		
		For instance, if your dataset contains 10,000 elements but `buffer_size` is
		set to 1,000, then `shuffle` will initially select a random element from
		only the first 1,000 elements in the buffer. Once an element is selected,
		its space in the buffer is replaced by the next (i.e. 1,001-st) element,
		maintaining the 1,000 element buffer.
		
		Args:
		  buffer_size: A `tf.int64` scalar `tf.Tensor`, representing the maximum
		    number elements that will be buffered when prefetching.
		  count: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the number
		    of times the dataset should be repeated. The default behavior (if `count`
		    is `None` or `-1`) is for the dataset be repeated indefinitely.
		  seed: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the random
		    seed that will be used to create the distribution. See
		    `tf.random.set_seed` for behavior.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function shuffle_and_repeat(buffer_size:Dynamic, ?count:Dynamic, ?seed:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}