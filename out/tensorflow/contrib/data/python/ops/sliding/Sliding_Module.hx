/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.sliding;
@:pythonImport("tensorflow.contrib.data.python.ops.sliding") extern class Sliding_Module {
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
		A sliding window over a dataset. (deprecated) (deprecated arguments)
		
		SOME ARGUMENTS ARE DEPRECATED. They will be removed in a future version.
		Instructions for updating:
		stride is deprecated, use window_shift instead
		
		THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.window(size=window_size, shift=window_shift, stride=window_stride).flat_map(lambda x: x.batch(window.size))` instead.
		
		This transformation passes a sliding window over this dataset. The window size
		is `window_size`, the stride of the input elements is `window_stride`, and the
		shift between consecutive windows is `window_shift`. If the remaining elements
		cannot fill up the sliding window, this transformation will drop the final
		smaller element. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { [1], [2], [3], [4], [5], [6] }
		
		a.apply(sliding_window_batch(window_size=3)) ==
		{ [[1], [2], [3]], [[2], [3], [4]], [[3], [4], [5]], [[4], [5], [6]] }
		
		a.apply(sliding_window_batch(window_size=3, window_shift=2)) ==
		{ [[1], [2], [3]], [[3], [4], [5]] }
		
		a.apply(sliding_window_batch(window_size=3, window_stride=2)) ==
		{ [[1], [3], [5]], [[2], [4], [6]] }
		```
		
		Args:
		  window_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    elements in the sliding window. It must be positive.
		  stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    forward shift of the sliding window in each iteration. The default is `1`.
		    It must be positive. Deprecated alias for `window_shift`.
		  window_shift: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    forward shift of the sliding window in each iteration. The default is `1`.
		    It must be positive.
		  window_stride: (Optional.) A `tf.int64` scalar `tf.Tensor`, representing the
		    stride of the input elements in the sliding window. The default is `1`.
		    It must be positive.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: if invalid arguments are provided.
	**/
	static public function sliding_window_batch(window_size:Dynamic, ?stride:Dynamic, ?window_shift:Dynamic, ?window_stride:Dynamic):Dynamic;
}