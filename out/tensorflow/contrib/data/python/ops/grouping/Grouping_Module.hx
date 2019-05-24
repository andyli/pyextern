/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.grouping;
@:pythonImport("tensorflow.contrib.data.python.ops.grouping") extern class Grouping_Module {
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
		Use `tf.data.experimental.bucket_by_sequence_length(...)`.
		
		Elements of the `Dataset` are grouped together by length and then are padded
		and batched.
		
		This is useful for sequence tasks in which the elements have variable length.
		Grouping together elements that have similar lengths reduces the total
		fraction of padding in a batch which increases training step efficiency.
		
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
		    need to be either of type `tf.SparseTensor` or of same shape).
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if `len(bucket_batch_sizes) != len(bucket_boundaries) + 1`.
	**/
	static public function bucket_by_sequence_length(element_length_func:Dynamic, bucket_boundaries:Dynamic, bucket_batch_sizes:Dynamic, ?padded_shapes:Dynamic, ?padding_values:Dynamic, ?pad_to_bucket_boundary:Dynamic, ?no_padding:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		A transformation that groups elements and performs a reduction. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.group_by_reducer(...)`.
		
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
		Use `tf.data.experimental.group_by_window(...)`.
		
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
}