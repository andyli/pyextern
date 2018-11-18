/* This file is generated, do not edit! */
package tensorflow.python.data.experimental.ops.batching;
@:pythonImport("tensorflow.python.data.experimental.ops.batching") extern class Batching_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Batches a window of dense tensors.
	**/
	static public function _batch_dense_window(dataset:Dynamic):Dynamic;
	/**
		Batches a window of sparse tensors.
	**/
	static public function _batch_sparse_window(dataset:Dynamic):Dynamic;
	/**
		Batches a window of dense tensors with padding.
	**/
	static public function _padded_batch_dense_window(dataset:Dynamic, padded_shape:Dynamic, ?padding_value:Dynamic):Dynamic;
	/**
		Batches a window of sparse tensors with padding.
	**/
	static public function _padded_batch_sparse_window(dataset:Dynamic, padded_shape:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Batches a window of tensors.
		
		Args:
		  dataset: the input dataset.
		
		Returns:
		  A `Tensor` representing the batch of the entire input dataset.
	**/
	static public function batch_window(dataset:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.SparseTensor`s.
		
		Like `Dataset.padded_batch()`, this transformation combines multiple
		consecutive elements of the dataset, which might have different
		shapes, into a single element. The resulting element has three
		components (`indices`, `values`, and `dense_shape`), which
		comprise a `tf.SparseTensor` that represents the same data. The
		`row_shape` represents the dense shape of each row in the
		resulting `tf.SparseTensor`, to which the effective batch size is
		prepended. For example:
		
		```python
		# NOTE: The following examples use `{ ... }` to represent the
		# contents of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.data.experimental.dense_to_sparse_batch(
		    batch_size=2, row_shape=[6])) ==
		{
		    ([[0, 0], [0, 1], [0, 2], [1, 0], [1, 1]],  # indices
		     ['a', 'b', 'c', 'a', 'b'],                 # values
		     [2, 6]),                                   # dense_shape
		    ([[0, 0], [0, 1], [0, 2], [0, 3]],
		     ['a', 'b', 'c', 'd'],
		     [1, 6])
		}
		```
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the
		    number of consecutive elements of this dataset to combine in a
		    single batch.
		  row_shape: A `tf.TensorShape` or `tf.int64` vector tensor-like
		    object representing the equivalent dense shape of a row in the
		    resulting `tf.SparseTensor`. Each element of this dataset must
		    have the same rank as `row_shape`, and must have size less
		    than or equal to `row_shape` in each dimension.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function dense_to_sparse_batch(batch_size:Dynamic, row_shape:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Fused implementation of `map` and `batch`.
		
		Maps `map_func` across `batch_size` consecutive elements of this dataset
		and then combines them into a batch. Functionally, it is equivalent to `map`
		followed by `batch`. However, by fusing the two transformations together, the
		implementation can be more efficient. Surfacing this transformation in the API
		is temporary. Once automatic input pipeline optimization is implemented,
		the fusing of `map` and `batch` will happen automatically and this API will be
		deprecated.
		
		Args:
		  map_func: A function mapping a nested structure of tensors to another
		    nested structure of tensors.
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  num_parallel_batches: (Optional.) A `tf.int64` scalar `tf.Tensor`,
		    representing the number of batches to create in parallel. On one hand,
		    higher values can help mitigate the effect of stragglers. On the other
		    hand, higher values can increase contention if CPU is scarce.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in case its size is smaller than
		    desired; the default behavior is not to drop the smaller batch.
		  num_parallel_calls: (Optional.) A `tf.int32` scalar `tf.Tensor`,
		      representing the number of elements to process in parallel. If not
		      specified, `batch_size * num_parallel_batches` elements will be
		      processed in parallel.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		Batches a window of tensors with padding.
		
		Args:
		  dataset: the input dataset.
		  padded_shape: (Optional.) `tf.TensorShape` or `tf.int64` vector tensor-like
		    object representing the shape to which the input elements should be padded
		    prior to batching. Any unknown dimensions (e.g. `tf.Dimension(None)` in a
		    `tf.TensorShape` or `-1` in a tensor-like object) will be padded to the
		    maximum size of that dimension in each batch.
		  padding_value: (Optional.) A scalar-shaped `tf.Tensor`, representing the
		    padding value to use. Defaults are `0` for numeric types and the empty
		    string for string types. If `dataset` contains `tf.SparseTensor`, this
		    value is ignored.
		
		Returns:
		  A `Tensor` representing the batch of the entire input dataset.
		
		Raises:
		  ValueError: if invalid arguments are provided.
	**/
	static public function padded_batch_window(dataset:Dynamic, padded_shape:Dynamic, ?padding_value:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Splits elements of a dataset into multiple elements on the batch dimension.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		```python
		# NOTE: The following example uses `{ ... }` to represent the contents
		# of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.data.experimental.unbatch()) == {
		    'a', 'b', 'c', 'a', 'b', 'a', 'b', 'c', 'd'}
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unbatch():Dynamic;
}