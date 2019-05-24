/* This file is generated, do not edit! */
package tensorflow.contrib.data.python.ops.batching;
@:pythonImport("tensorflow.contrib.data.python.ops.batching") extern class Batching_Module {
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
		Assert the shape of this `Dataset`.
		
		```python
		shapes = [tf.TensorShape([16, 256]), tf.TensorShape([None, 2])]
		result = dataset.apply(tf.contrib.data.assert_element_shape(shapes))
		print(result.output_shapes)  # ==> "((16, 256), (<unknown>, 2))"
		```
		
		If dataset shapes and expected_shape, are fully defined, assert they match.
		Otherwise, add assert op that will validate the shapes when tensors are
		evaluated, and set shapes on tensors, respectively.
		
		Note that unknown dimension in `expected_shapes` will be ignored.
		
		Args:
		  expected_shapes: A nested structure of `tf.TensorShape` objects.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function assert_element_shape(expected_shapes:Dynamic):Dynamic;
	/**
		A batching transformation that omits the final small batch (if present). (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.batch(..., drop_remainder=True)`.
		
		Like `tf.data.Dataset.batch`, this transformation combines
		consecutive elements of this dataset into batches. However, if the batch
		size does not evenly divide the input dataset size, this transformation will
		drop the final smaller element.
		
		The following example illustrates the difference between this
		transformation and `Dataset.batch()`:
		
		```python
		dataset = tf.data.Dataset.range(200)
		batched = dataset.apply(tf.contrib.data.batch_and_drop_remainder(128))
		print(batched.output_shapes)  # ==> "(128,)" (the batch dimension is known)
		```
		
		By contrast, `dataset.batch(128)` would yield a two-element dataset with
		shapes `(128,)` and `(72,)`, so the batch dimension would not be statically
		known.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		      consecutive elements of this dataset to combine in a single batch.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function batch_and_drop_remainder(batch_size:Dynamic):Dynamic;
	/**
		A transformation that batches ragged elements into `tf.SparseTensor`s. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.dense_to_sparse_batch(...)`.
		
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
		
		a.apply(tf.contrib.data.dense_to_sparse_batch(batch_size=2, row_shape=[6])) ==
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
		Fused implementation of `map` and `batch`. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.map_and_batch(...)`.
		
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
		A batching and padding transformation that omits the final small batch. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.Dataset.padded_batch(..., drop_remainder=True)`.
		
		Like `tf.data.Dataset.padded_batch`, this transformation combines
		consecutive elements of this dataset into batches. However, if the batch
		size does not evenly divide the input dataset size, this transformation will
		drop the final smaller element.
		
		See `tf.contrib.data.batch_and_drop_remainder` for more details.
		
		Args:
		  batch_size: A `tf.int64` scalar `tf.Tensor`, representing the number of
		    consecutive elements of this dataset to combine in a single batch.
		  padded_shapes: A nested structure of `tf.TensorShape` or
		    `tf.int64` vector tensor-like objects. See
		    `tf.data.Dataset.padded_batch` for details.
		  padding_values: (Optional.) A nested structure of scalar-shaped
		    `tf.Tensor`. See `tf.data.Dataset.padded_batch` for details.
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`
	**/
	static public function padded_batch_and_drop_remainder(batch_size:Dynamic, padded_shapes:Dynamic, ?padding_values:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Splits elements of a dataset into multiple elements on the batch dimension. (deprecated)
		
		Warning: THIS FUNCTION IS DEPRECATED. It will be removed in a future version.
		Instructions for updating:
		Use `tf.data.experimental.unbatch()`.
		
		For example, if elements of the dataset are shaped `[B, a0, a1, ...]`,
		where `B` may vary for each input element, then for each element in the
		dataset, the unbatched dataset will contain `B` consecutive elements
		of shape `[a0, a1, ...]`.
		
		```python
		# NOTE: The following example uses `{ ... }` to represent the contents
		# of a dataset.
		a = { ['a', 'b', 'c'], ['a', 'b'], ['a', 'b', 'c', 'd'] }
		
		a.apply(tf.contrib.data.unbatch()) == {
		    'a', 'b', 'c', 'a', 'b', 'a', 'b', 'c', 'd'}
		```
		
		Returns:
		  A `Dataset` transformation function, which can be passed to
		  `tf.data.Dataset.apply`.
	**/
	static public function unbatch():Dynamic;
	/**
		Asserts tensor has expected shape.
		
		If tensor shape and expected_shape, are fully defined, assert they match.
		Otherwise, add assert op that will validate the shape when tensor is
		evaluated, and set shape on tensor.
		
		Args:
		  expected_shape: Expected shape to assert, as a 1D array of ints, or tensor
		      of same.
		  tensor: Tensor whose shape we're validating.
		Returns:
		  tensor, perhaps with a dependent assert operation.
		Raises:
		  ValueError: if tensor has an invalid shape.
	**/
	static public function with_shape(expected_shape:Dynamic, tensor:Dynamic):Dynamic;
}