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
	static public var absolute_import : Dynamic;
	/**
		A transformation that batches ragged elements into `tf.RaggedTensor`s.
		
		This transformation combines multiple consecutive elements of the input
		dataset into a single element.
		
		Like `tf.data.Dataset.batch`, the components of the resulting element will
		have an additional outer dimension, which will be `batch_size` (or
		`N % batch_size` for the last element if `batch_size` does not divide the
		number of input elements `N` evenly and `drop_remainder` is `False`). If
		your program depends on the batches having the same outer dimension, you
		should set the `drop_remainder` argument to `True` to prevent the smaller
		batch from being produced.
		
		Unlike `tf.data.Dataset.batch`, the input elements to be batched may have
		different shapes:
		
		*  If an input element is a `tf.Tensor` whose static `tf.TensorShape` is
		   fully defined, then it is batched as normal.
		*  If an input element is a `tf.Tensor` whose static `tf.TensorShape` contains
		   one or more axes with unknown size (i.e., `shape[i]=None`), then the output
		   will contain a `tf.RaggedTensor` that is ragged up to any of such
		   dimensions.
		*  If an input element is a `tf.RaggedTensor` or any other type, then it is
		   batched as normal.
		
		Example:
		
		>>> dataset = tf.data.Dataset.from_tensor_slices(np.arange(6))
		>>> dataset = dataset.map(lambda x: tf.range(x))
		>>> dataset.element_spec.shape
		TensorShape([None])
		>>> dataset = dataset.apply(
		...     tf.data.experimental.dense_to_ragged_batch(batch_size=2))
		>>> for batch in dataset:
		...   print(batch)
		<tf.RaggedTensor [[], [0]]>
		<tf.RaggedTensor [[0, 1], [0, 1, 2]]>
		<tf.RaggedTensor [[0, 1, 2, 3], [0, 1, 2, 3, 4]]>
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  drop_remainder: (Optional.) A `tf.bool` scalar `tf.Tensor`, representing
		    whether the last batch should be dropped in the case it has fewer than
		    `batch_size` elements; the default behavior is not to drop the smaller
		    batch.
		  row_splits_dtype: The dtype that should be used for the `row_splits` of any
		    new ragged tensors.  Existing `tf.RaggedTensor` elements do not have their
		    row_splits dtype changed.
		
		Returns:
		  Dataset: A `Dataset`.
	**/
	static public function dense_to_ragged_batch(batch_size:Dynamic, ?drop_remainder:Dynamic, ?row_splits_dtype:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.sparse.SparseTensor`s.
		
		Like `Dataset.padded_batch()`, this transformation combines multiple
		consecutive elements of the dataset, which might have different
		shapes, into a single element. The resulting element has three
		components (`indices`, `values`, and `dense_shape`), which
		comprise a `tf.sparse.SparseTensor` that represents the same data. The
		`row_shape` represents the dense shape of each row in the
		resulting `tf.sparse.SparseTensor`, to which the effective batch size is
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
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  row_shape: A `tf.TensorShape` or `tf.int64` vector tensor-like object
		    representing the equivalent dense shape of a row in the resulting
		    `tf.sparse.SparseTensor`. Each element of this dataset must have the same
		    rank as `row_shape`, and must have size less than or equal to `row_shape`
		    in each dimension.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function dense_to_sparse_batch(batch_size:Dynamic, row_shape:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.map(map_func, num_parallel_calls)` followed by `tf.data.Dataset.batch(batch_size, drop_remainder)`. Static tf.data optimizations will take care of using the fused implementation.
		
		Maps `map_func` across `batch_size` consecutive elements of this dataset
		and then combines them into a batch. Functionally, it is equivalent to `map`
		followed by `batch`. This API is temporary and deprecated since input pipeline
		optimization now fuses consecutive `map` and `batch` operations automatically.
		
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
		    specified, `batch_size * num_parallel_batches` elements will be processed
		    in parallel. If the value `tf.data.AUTOTUNE` is used, then
		    the number of parallel calls is set dynamically based on available CPU.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	/**
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.map_and_batch()
		
		NOTE: This is an escape hatch for existing uses of `map_and_batch` that do not
		work with V2 functions. New uses are strongly discouraged and existing uses
		should migrate to `map_and_batch` as this method will not be removed in V2.
		
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
		    specified, `batch_size * num_parallel_batches` elements will be processed
		    in parallel. If the value `tf.data.AUTOTUNE` is used, then
		    the number of parallel calls is set dynamically based on available CPU.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
		
		Raises:
		  ValueError: If both `num_parallel_batches` and `num_parallel_calls` are
		    specified.
	**/
	static public function map_and_batch_with_legacy_function(map_func:Dynamic, batch_size:Dynamic, ?num_parallel_batches:Dynamic, ?drop_remainder:Dynamic, ?num_parallel_calls:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Splits elements of a dataset into multiple elements on the batch dimension. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.unbatch()`.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		```python
		# NOTE: The following example uses `{ ... }` to represent the contents
		# of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.unbatch() == {
		    'a', 'b', 'c', 'a', 'b', 'a', 'b', 'c', 'd'}
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unbatch():Dynamic;
}