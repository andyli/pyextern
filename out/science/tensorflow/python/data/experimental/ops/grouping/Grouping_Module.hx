/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.grouping;
@:pythonImport("tensorflow.python.data.experimental.ops.grouping") extern class Grouping_Module {
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
		A transformation that buckets elements in a `Dataset` by length. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.bucket_by_sequence_length(...)`.
		
		Elements of the `Dataset` are grouped together by length and then are padded
		and batched.
		
		This is useful for sequence tasks in which the elements have variable length.
		Grouping together elements that have similar lengths reduces the total
		fraction of padding in a batch which increases training step efficiency.
		
		Below is an example to bucketize the input data to the 3 buckets
		"[0, 3), [3, 5), [5, inf)" based on sequence length, with batch size 2.
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...     lambda: elements, tf.int64, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[3, 5],
		...         bucket_batch_sizes=[2, 2, 2]))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[1 2 3 4]
		 [5 6 7 0]]
		[[ 7  8  9 10 11  0]
		 [13 14 15 16 19 20]]
		[[ 0  0]
		 [21 22]]
		
		There is also a possibility to pad the dataset till the bucket boundary.
		You can also provide which value to be used while padding the data.
		Below example uses `-1` as padding and it also shows the input data
		being bucketizied to two buckets "[0,3], [4,6]".
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...   lambda: elements, tf.int32, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[4, 7],
		...         bucket_batch_sizes=[2, 2, 2],
		...         pad_to_bucket_boundary=True,
		...         padding_values=-1))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[ 0 -1 -1]
		 [ 5  6  7]]
		[[ 1  2  3  4 -1 -1]
		 [ 7  8  9 10 11 -1]]
		[[21 22 -1]]
		[[13 14 15 16 19 20]]
		
		When using `pad_to_bucket_boundary` option, it can be seen that it is
		not always possible to maintain the bucket batch size.
		You can drop the batches that do not maintain the bucket batch size by
		using the option `drop_remainder`. Using the same input data as in the
		above example you get the following result.
		
		>>> elements = [
		...   [0], [1, 2, 3, 4], [5, 6, 7],
		...   [7, 8, 9, 10, 11], [13, 14, 15, 16, 19, 20], [21, 22]]
		
		>>> dataset = tf.data.Dataset.from_generator(
		...   lambda: elements, tf.int32, output_shapes=[None])
		
		>>> dataset = dataset.apply(
		...     tf.data.experimental.bucket_by_sequence_length(
		...         element_length_func=lambda elem: tf.shape(elem)[0],
		...         bucket_boundaries=[4, 7],
		...         bucket_batch_sizes=[2, 2, 2],
		...         pad_to_bucket_boundary=True,
		...         padding_values=-1,
		...         drop_remainder=True))
		
		>>> for elem in dataset.as_numpy_iterator():
		...   print(elem)
		[[ 0 -1 -1]
		 [ 5  6  7]]
		[[ 1  2  3  4 -1 -1]
		 [ 7  8  9 10 11 -1]]
		
		Args:
		  element_length_func: function from element in `Dataset` to `tf.int32`,
		    determines the length of the element, which will determine the bucket it
		    goes into.
		  bucket_boundaries: `list<int>`, upper length boundaries of the buckets.
		  bucket_batch_sizes: `list<int>`, batch size per bucket. Length should be
		    `len(bucket_boundaries) + 1`.
		  padded_shapes: Nested structure of `tf.TensorShape` to pass to
		    `tf.data.Dataset.padded_batch`. If not provided, will use
		    `dataset.output_shapes`, which will result in variable length dimensions
		    being padded out to the maximum length in each batch.
		  padding_values: Values to pad with, passed to
		    `tf.data.Dataset.padded_batch`. Defaults to padding with 0.
		  pad_to_bucket_boundary: bool, if `False`, will pad dimensions with unknown
		    size to maximum length in batch. If `True`, will pad dimensions with
		    unknown size to bucket boundary minus 1 (i.e., the maximum length in each
		    bucket), and caller must ensure that the source `Dataset` does not contain
		    any elements with length longer than `max(bucket_boundaries)`.
		  no_padding: `bool`, indicates whether to pad the batch features (features
		    need to be either of type `tf.sparse.SparseTensor` or of same shape).
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if `len(bucket_batch_sizes) != len(bucket_boundaries) + 1`.
	**/
	static public function bucket_by_sequence_length(element_length_func:Dynamic, bucket_boundaries:Dynamic, bucket_batch_sizes:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?pad_to_bucket_boundary:Dynamic, ?no_padding:Dynamic, ?drop_remainder:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A transformation that groups elements and performs a reduction.
		
		This transformation maps element of a dataset to a key using `key_func` and
		groups the elements by key. The `reducer` is used to process each group; its
		`init_func` is used to initialize state for each group when it is created, the
		`reduce_func` is used to update the state every time an element is mapped to
		the matching group, and the `finalize_func` is used to map the final state to
		an output value.
		
		Args:
		  key_func: A function mapping a nested structure of tensors
		    (having shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.int64` tensor.
		  reducer: An instance of `Reducer`, which captures the reduction logic using
		    the `init_func`, `reduce_func`, and `finalize_func` functions.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function group_by_reducer(key_func:Dynamic, reducer:Dynamic):Dynamic;
	/**
		A transformation that groups windows of elements by key and reduces them. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.group_by_window(...)`.
		
		This transformation maps each consecutive element in a dataset to a key
		using `key_func` and groups the elements by key. It then applies
		`reduce_func` to at most `window_size_func(key)` elements matching the same
		key. All except the final window for each key will contain
		`window_size_func(key)` elements; the final window may be smaller.
		
		You may provide either a constant `window_size` or a window size determined by
		the key through `window_size_func`.
		
		Args:
		  key_func: A function mapping a nested structure of tensors
		    (having shapes and types defined by `self.output_shapes` and
		    `self.output_types`) to a scalar `tf.int64` tensor.
		  reduce_func: A function mapping a key and a dataset of up to `window_size`
		    consecutive elements matching that key to another dataset.
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements matching the same key to combine in a single
		    batch, which will be passed to `reduce_func`. Mutually exclusive with
		    `window_size_func`.
		  window_size_func: A function mapping a key to a `tf.int64` scalar
		    `tf.Tensor`, representing the number of consecutive elements matching
		    the same key to combine in a single batch, which will be passed to
		    `reduce_func`. Mutually exclusive with `window_size`.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if neither or both of {`window_size`, `window_size_func`} are
		    passed.
	**/
	static public function group_by_window(key_func:Dynamic, reduce_func:Dynamic, ?window_size:Dynamic, ?window_size_func:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}