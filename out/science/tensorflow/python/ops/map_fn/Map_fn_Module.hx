/* This file is generated, do not edit! */
package tensorflow.python.ops.map_fn;
@:pythonImport("tensorflow.python.ops.map_fn") extern class Map_fn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _dtype_to_spec(d:Dynamic):Dynamic;
	/**
		Converts elems_flat -> elems_batchable.
	**/
	static public function _elems_flat_to_batchable(elems_flat:Dynamic):Dynamic;
	/**
		Converts elems_value_batchable -> elems_value_flat.
	**/
	static public function _elems_value_batchable_to_flat(elems_value_batchable:Dynamic, elems_flat_signature:Dynamic):Dynamic;
	/**
		Returns the most general TypeSpec compatible with `spec`.
	**/
	static public function _most_general_compatible_type(spec:Dynamic):Dynamic;
	/**
		Converts result_batchable -> result_flat.
	**/
	static public function _result_batchable_to_flat(result_batchable:Dynamic, result_flat_signature:Dynamic, batch_size:Dynamic):Dynamic;
	/**
		Converts result_flat_signature -> result_batchable_tensor_specs.
	**/
	static public function _result_flat_signature_to_batchable_tensor_spec(result_flat_signature:Dynamic):Dynamic;
	/**
		Converts result_value_flat -> result_value_batchable.
	**/
	static public function _result_value_flat_to_batchable(result_value_flat:Dynamic, result_flat_signature:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Transforms `elems` by applying `fn` to each element unstacked on axis 0. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Use fn_output_signature instead
		
		See also `tf.scan`.
		
		`map_fn` unstacks `elems` on axis 0 to obtain a sequence of elements;
		calls `fn` to transform each element; and then stacks the transformed
		values back together.
		
		#### Mapping functions with single-Tensor inputs and outputs
		
		If `elems` is a single tensor and `fn`'s signature is `tf.Tensor->tf.Tensor`,
		then `map_fn(fn, elems)` is equivalent to
		`tf.stack([fn(elem) for elem in tf.unstack(elems)])`.  E.g.:
		
		>>> tf.map_fn(fn=lambda t: tf.range(t, t + 3), elems=tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		`map_fn(fn, elems).shape = [elems.shape[0]] + fn(elems[0]).shape`.
		
		#### Mapping functions with multi-arity inputs and outputs
		
		`map_fn` also supports functions with multi-arity inputs and outputs:
		
		* If `elems` is a tuple (or nested structure) of tensors, then those tensors
		  must all have the same outer-dimension size (`num_elems`); and `fn` is
		  used to transform each tuple (or structure) of corresponding slices from
		  `elems`.  E.g., if `elems` is a tuple `(t1, t2, t3)`, then `fn` is used to
		  transform each tuple of slices `(t1[i], t2[i], t3[i])`
		  (where `0 <= i < num_elems`).
		
		* If `fn` returns a tuple (or nested structure) of tensors, then the
		  result is formed by stacking corresponding elements from those structures.
		
		#### Specifying `fn`'s output signature
		
		If `fn`'s input and output signatures are different, then the output
		signature must be specified using `fn_output_signature`.  (The input and
		output signatures are differ if their structures, dtypes, or tensor types do
		not match).  E.g.:
		
		>>> tf.map_fn(fn=tf.strings.length,  # input & output have different dtypes
		...           elems=tf.constant(["hello", "moon"]),
		...           fn_output_signature=tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([5, 4], dtype=int32)>
		>>> tf.map_fn(fn=tf.strings.join,  # input & output have different structures
		...           elems=[tf.constant(['The', 'A']), tf.constant(['Dog', 'Cat'])],
		...           fn_output_signature=tf.string)
		<tf.Tensor: shape=(2,), dtype=string,
		 numpy=array([b'TheDog', b'ACat'], dtype=object)>
		
		`fn_output_signature` can be specified using any of the following:
		
		* A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		* A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		* A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		* A (possibly nested) tuple, list, or dict containing the above types.
		
		#### RaggedTensors
		
		`map_fn` supports `tf.RaggedTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `RaggedTensor`, then `fn` will be called with each
		  row of that ragged tensor.
		  * If `elems` has only one ragged dimension, then the values passed to
		    `fn` will be `tf.Tensor`s.
		  * If `elems` has multiple ragged dimensions, then the values passed to
		    `fn` will be `tf.RaggedTensor`s with one fewer ragged dimension.
		
		* If the result of `map_fn` should be a `RaggedTensor`, then use a
		  `tf.RaggedTensorSpec` to specify `fn_output_signature`.
		  * If `fn` returns `tf.Tensor`s with varying sizes, then use a
		    `tf.RaggedTensorSpec` with `ragged_rank=0` to combine them into a
		    single ragged tensor (which will have ragged_rank=1).
		  * If `fn` returns `tf.RaggedTensor`s, then use a `tf.RaggedTensorSpec`
		    with the same `ragged_rank`.
		
		>>> # Example: RaggedTensor input
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.map_fn(tf.reduce_sum, rt, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([6, 0, 9, 6], dtype=int32)>
		
		>>> # Example: RaggedTensor output
		>>> elems = tf.constant([3, 5, 0, 2])
		>>> tf.map_fn(tf.range, elems,
		...           fn_output_signature=tf.RaggedTensorSpec(shape=[None],
		...                                                   dtype=tf.int32))
		<tf.RaggedTensor [[0, 1, 2], [0, 1, 2, 3, 4], [], [0, 1]]>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `RaggedTensor`.  If you wish to map a function over the
		individual values, then you should use:
		
		* `tf.ragged.map_flat_values(fn, rt)`
		  (if fn is expressible as TensorFlow ops)
		* `rt.with_flat_values(map_fn(fn, rt.flat_values))`
		  (otherwise)
		
		E.g.:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(lambda x: x + 2, rt)
		<tf.RaggedTensor [[3, 4, 5], [], [6, 7], [8]]>
		
		#### SparseTensors
		
		`map_fn` supports `tf.sparse.SparseTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `SparseTensor`, then `fn` will be called with each row
		  of that sparse tensor. In particular, the value passed to `fn` will be a
		  `tf.sparse.SparseTensor` with one fewer dimension than `elems`.
		
		* If the result of `map_fn` should be a `SparseTensor`, then use a
		  `tf.SparseTensorSpec` to specify `fn_output_signature`.  The individual
		  `SparseTensor`s returned by `fn` will be stacked into a single
		  `SparseTensor` with one more dimension.
		
		>>> # Example: SparseTensor input
		>>> st = tf.sparse.SparseTensor([[0, 0], [2, 0], [2, 1]], [2, 3, 4], [4, 4])
		>>> tf.map_fn(tf.sparse.reduce_sum, st, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([2, 0, 7, 0], dtype=int32)>
		
		>>> # Example: SparseTensor output
		>>> tf.sparse.to_dense(
		...     tf.map_fn(tf.sparse.eye, tf.constant([2, 3]),
		...               fn_output_signature=tf.SparseTensorSpec(None, tf.float32)))
		<tf.Tensor: shape=(2, 3, 3), dtype=float32, numpy=
		  array([[[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 0.]],
		         [[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 1.]]], dtype=float32)>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `SparseTensor`.  If you wish to map a function over the nonzero
		values, then you should use:
		
		* If the function is expressible as TensorFlow ops, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, fn(st.values), st.dense_shape)
		  ```
		* Otherwise, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, tf.map_fn(fn, st.values),
		                         st.dense_shape)
		  ```
		
		#### `map_fn` vs. vectorized operations
		
		`map_fn` will apply the operations used by `fn` to each element of `elems`,
		resulting in `O(elems.shape[0])` total operations.  This is somewhat
		mitigated by the fact that `map_fn` can process elements in parallel.
		However, a transform expressed using `map_fn` is still typically less
		efficient than an equivalent transform expressed using vectorized operations.
		
		`map_fn` should typically only be used if one of the following is true:
		
		* It is difficult or expensive to express the desired transform with
		  vectorized operations.
		* `fn` creates large intermediate values, so an equivalent vectorized
		  transform would take too much memory.
		* Processing elements in parallel is more efficient than an equivalent
		  vectorized transform.
		* Efficiency of the transform is not critical, and using `map_fn` is
		  more readable.
		
		E.g., the example given above that maps `fn=lambda t: tf.range(t, t + 3)`
		across `elems` could be rewritten more efficiently using vectorized ops:
		
		>>> elems = tf.constant([3, 5, 2])
		>>> tf.range(3) + tf.expand_dims(elems, 1)
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		In some cases, `tf.vectorized_map` can be used to automatically convert a
		function to a vectorized equivalent.
		
		#### Eager execution
		
		When executing eagerly, `map_fn` does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.function` decorator:
		
		>>> fn=lambda t: tf.range(t, t + 3)
		>>> @tf.function
		... def func(elems):
		...   return tf.map_fn(fn, elems, parallel_iterations=3)
		>>> func(tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		
		Note: if you use the `tf.function` decorator, any non-TensorFlow Python
		code that you may have written in your function won't get executed. See
		`tf.function` for more  details. The recommendation would be to debug without
		`tf.function` but switch to it to get performance benefits of running `map_fn`
		in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`.  Its output must have the
		    same structure as `fn_output_signature` if one is provided; otherwise it
		    must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unstacked along their first dimension.  `fn` will be applied to the
		    nested sequence of the resulting slices.  `elems` may include ragged and
		    sparse tensors. `elems` must consist of at least one tensor.
		  dtype: Deprecated: Equivalent to `fn_output_signature`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) False disables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		  fn_output_signature: The output signature of `fn`. Must be specified if
		    `fn`'s input and output signatures are different (i.e., if their
		    structures, dtypes, or tensor types do not match).
		    `fn_output_signature` can be specified using any of the following:
		
		    * A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		    * A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		    * A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		    * A (possibly nested) tuple, list, or dict containing the above types.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor stacks the
		  results of applying `fn` to tensors unstacked from `elems` along the first
		  dimension, from first to last.  The result may include ragged and sparse
		  tensors.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `fn_output_signature` do not match.
		  ValueError: if the lengths of the output of `fn` and `fn_output_signature`
		    do not match, or if the `elems` does not contain any tensor.
		
		Examples:
		
		  >>> elems = np.array([1, 2, 3, 4, 5, 6])
		  >>> tf.map_fn(lambda x: x * x, elems)
		  <tf.Tensor: shape=(6,), dtype=int64, numpy=array([ 1,  4,  9, 16, 25, 36])>
		
		  >>> elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  >>> tf.map_fn(lambda x: x[0] * x[1], elems, fn_output_signature=tf.int64)
		  <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1,  2, -3])>
		
		  >>> elems = np.array([1, 2, 3])
		  >>> tf.map_fn(lambda x: (x, -x), elems,
		  ...          fn_output_signature=(tf.int64, tf.int64))
		  (<tf.Tensor: shape=(3,), dtype=int64, numpy=array([1, 2, 3])>,
		   <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1, -2, -3])>)
	**/
	static public function map_fn(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic, ?fn_output_signature:Dynamic):Dynamic;
	/**
		Transforms `elems` by applying `fn` to each element unstacked on axis 0. (deprecated arguments)
		
		Warning: SOME ARGUMENTS ARE DEPRECATED: `(dtype)`. They will be removed in a future version.
		Instructions for updating:
		Use fn_output_signature instead
		
		See also `tf.scan`.
		
		`map_fn` unstacks `elems` on axis 0 to obtain a sequence of elements;
		calls `fn` to transform each element; and then stacks the transformed
		values back together.
		
		#### Mapping functions with single-Tensor inputs and outputs
		
		If `elems` is a single tensor and `fn`'s signature is `tf.Tensor->tf.Tensor`,
		then `map_fn(fn, elems)` is equivalent to
		`tf.stack([fn(elem) for elem in tf.unstack(elems)])`.  E.g.:
		
		>>> tf.map_fn(fn=lambda t: tf.range(t, t + 3), elems=tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		`map_fn(fn, elems).shape = [elems.shape[0]] + fn(elems[0]).shape`.
		
		#### Mapping functions with multi-arity inputs and outputs
		
		`map_fn` also supports functions with multi-arity inputs and outputs:
		
		* If `elems` is a tuple (or nested structure) of tensors, then those tensors
		  must all have the same outer-dimension size (`num_elems`); and `fn` is
		  used to transform each tuple (or structure) of corresponding slices from
		  `elems`.  E.g., if `elems` is a tuple `(t1, t2, t3)`, then `fn` is used to
		  transform each tuple of slices `(t1[i], t2[i], t3[i])`
		  (where `0 <= i < num_elems`).
		
		* If `fn` returns a tuple (or nested structure) of tensors, then the
		  result is formed by stacking corresponding elements from those structures.
		
		#### Specifying `fn`'s output signature
		
		If `fn`'s input and output signatures are different, then the output
		signature must be specified using `fn_output_signature`.  (The input and
		output signatures are differ if their structures, dtypes, or tensor types do
		not match).  E.g.:
		
		>>> tf.map_fn(fn=tf.strings.length,  # input & output have different dtypes
		...           elems=tf.constant(["hello", "moon"]),
		...           fn_output_signature=tf.int32)
		<tf.Tensor: shape=(2,), dtype=int32, numpy=array([5, 4], dtype=int32)>
		>>> tf.map_fn(fn=tf.strings.join,  # input & output have different structures
		...           elems=[tf.constant(['The', 'A']), tf.constant(['Dog', 'Cat'])],
		...           fn_output_signature=tf.string)
		<tf.Tensor: shape=(2,), dtype=string,
		 numpy=array([b'TheDog', b'ACat'], dtype=object)>
		
		`fn_output_signature` can be specified using any of the following:
		
		* A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		* A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		* A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		* A (possibly nested) tuple, list, or dict containing the above types.
		
		#### RaggedTensors
		
		`map_fn` supports `tf.RaggedTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `RaggedTensor`, then `fn` will be called with each
		  row of that ragged tensor.
		  * If `elems` has only one ragged dimension, then the values passed to
		    `fn` will be `tf.Tensor`s.
		  * If `elems` has multiple ragged dimensions, then the values passed to
		    `fn` will be `tf.RaggedTensor`s with one fewer ragged dimension.
		
		* If the result of `map_fn` should be a `RaggedTensor`, then use a
		  `tf.RaggedTensorSpec` to specify `fn_output_signature`.
		  * If `fn` returns `tf.Tensor`s with varying sizes, then use a
		    `tf.RaggedTensorSpec` with `ragged_rank=0` to combine them into a
		    single ragged tensor (which will have ragged_rank=1).
		  * If `fn` returns `tf.RaggedTensor`s, then use a `tf.RaggedTensorSpec`
		    with the same `ragged_rank`.
		
		>>> # Example: RaggedTensor input
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.map_fn(tf.reduce_sum, rt, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([6, 0, 9, 6], dtype=int32)>
		
		>>> # Example: RaggedTensor output
		>>> elems = tf.constant([3, 5, 0, 2])
		>>> tf.map_fn(tf.range, elems,
		...           fn_output_signature=tf.RaggedTensorSpec(shape=[None],
		...                                                   dtype=tf.int32))
		<tf.RaggedTensor [[0, 1, 2], [0, 1, 2, 3, 4], [], [0, 1]]>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `RaggedTensor`.  If you wish to map a function over the
		individual values, then you should use:
		
		* `tf.ragged.map_flat_values(fn, rt)`
		  (if fn is expressible as TensorFlow ops)
		* `rt.with_flat_values(map_fn(fn, rt.flat_values))`
		  (otherwise)
		
		E.g.:
		
		>>> rt = tf.ragged.constant([[1, 2, 3], [], [4, 5], [6]])
		>>> tf.ragged.map_flat_values(lambda x: x + 2, rt)
		<tf.RaggedTensor [[3, 4, 5], [], [6, 7], [8]]>
		
		#### SparseTensors
		
		`map_fn` supports `tf.sparse.SparseTensor` inputs and outputs.  In particular:
		
		* If `elems` is a `SparseTensor`, then `fn` will be called with each row
		  of that sparse tensor. In particular, the value passed to `fn` will be a
		  `tf.sparse.SparseTensor` with one fewer dimension than `elems`.
		
		* If the result of `map_fn` should be a `SparseTensor`, then use a
		  `tf.SparseTensorSpec` to specify `fn_output_signature`.  The individual
		  `SparseTensor`s returned by `fn` will be stacked into a single
		  `SparseTensor` with one more dimension.
		
		>>> # Example: SparseTensor input
		>>> st = tf.sparse.SparseTensor([[0, 0], [2, 0], [2, 1]], [2, 3, 4], [4, 4])
		>>> tf.map_fn(tf.sparse.reduce_sum, st, fn_output_signature=tf.int32)
		<tf.Tensor: shape=(4,), dtype=int32, numpy=array([2, 0, 7, 0], dtype=int32)>
		
		>>> # Example: SparseTensor output
		>>> tf.sparse.to_dense(
		...     tf.map_fn(tf.sparse.eye, tf.constant([2, 3]),
		...               fn_output_signature=tf.SparseTensorSpec(None, tf.float32)))
		<tf.Tensor: shape=(2, 3, 3), dtype=float32, numpy=
		  array([[[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 0.]],
		         [[1., 0., 0.],
		          [0., 1., 0.],
		          [0., 0., 1.]]], dtype=float32)>
		
		Note: `map_fn` should only be used if you need to map a function over the
		*rows* of a `SparseTensor`.  If you wish to map a function over the nonzero
		values, then you should use:
		
		* If the function is expressible as TensorFlow ops, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, fn(st.values), st.dense_shape)
		  ```
		* Otherwise, use:
		  ```python
		  tf.sparse.SparseTensor(st.indices, tf.map_fn(fn, st.values),
		                         st.dense_shape)
		  ```
		
		#### `map_fn` vs. vectorized operations
		
		`map_fn` will apply the operations used by `fn` to each element of `elems`,
		resulting in `O(elems.shape[0])` total operations.  This is somewhat
		mitigated by the fact that `map_fn` can process elements in parallel.
		However, a transform expressed using `map_fn` is still typically less
		efficient than an equivalent transform expressed using vectorized operations.
		
		`map_fn` should typically only be used if one of the following is true:
		
		* It is difficult or expensive to express the desired transform with
		  vectorized operations.
		* `fn` creates large intermediate values, so an equivalent vectorized
		  transform would take too much memory.
		* Processing elements in parallel is more efficient than an equivalent
		  vectorized transform.
		* Efficiency of the transform is not critical, and using `map_fn` is
		  more readable.
		
		E.g., the example given above that maps `fn=lambda t: tf.range(t, t + 3)`
		across `elems` could be rewritten more efficiently using vectorized ops:
		
		>>> elems = tf.constant([3, 5, 2])
		>>> tf.range(3) + tf.expand_dims(elems, 1)
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		In some cases, `tf.vectorized_map` can be used to automatically convert a
		function to a vectorized equivalent.
		
		#### Eager execution
		
		When executing eagerly, `map_fn` does not execute in parallel even if
		`parallel_iterations` is set to a value > 1. You can still get the
		performance benefits of running a function in parallel by using the
		`tf.function` decorator:
		
		>>> fn=lambda t: tf.range(t, t + 3)
		>>> @tf.function
		... def func(elems):
		...   return tf.map_fn(fn, elems, parallel_iterations=3)
		>>> func(tf.constant([3, 5, 2]))
		<tf.Tensor: shape=(3, 3), dtype=int32, numpy=
		  array([[3, 4, 5],
		         [5, 6, 7],
		         [2, 3, 4]], dtype=int32)>
		
		
		Note: if you use the `tf.function` decorator, any non-TensorFlow Python
		code that you may have written in your function won't get executed. See
		`tf.function` for more  details. The recommendation would be to debug without
		`tf.function` but switch to it to get performance benefits of running `map_fn`
		in parallel.
		
		Args:
		  fn: The callable to be performed.  It accepts one argument, which will have
		    the same (possibly nested) structure as `elems`.  Its output must have the
		    same structure as `fn_output_signature` if one is provided; otherwise it
		    must have the same structure as `elems`.
		  elems: A tensor or (possibly nested) sequence of tensors, each of which will
		    be unstacked along their first dimension.  `fn` will be applied to the
		    nested sequence of the resulting slices.  `elems` may include ragged and
		    sparse tensors. `elems` must consist of at least one tensor.
		  dtype: Deprecated: Equivalent to `fn_output_signature`.
		  parallel_iterations: (optional) The number of iterations allowed to run in
		    parallel. When graph building, the default value is 10. While executing
		    eagerly, the default value is set to 1.
		  back_prop: (optional) Deprecated: prefer using `tf.stop_gradient` instead.  False disables support for back propagation.
		  swap_memory: (optional) True enables GPU-CPU memory swapping.
		  infer_shape: (optional) False disables tests for consistent output shapes.
		  name: (optional) Name prefix for the returned tensors.
		  fn_output_signature: The output signature of `fn`. Must be specified if
		    `fn`'s input and output signatures are different (i.e., if their
		    structures, dtypes, or tensor types do not match).
		    `fn_output_signature` can be specified using any of the following:
		
		    * A `tf.DType` or `tf.TensorSpec` (to describe a `tf.Tensor`)
		    * A `tf.RaggedTensorSpec` (to describe a `tf.RaggedTensor`)
		    * A `tf.SparseTensorSpec` (to describe a `tf.sparse.SparseTensor`)
		    * A (possibly nested) tuple, list, or dict containing the above types.
		
		Returns:
		  A tensor or (possibly nested) sequence of tensors.  Each tensor stacks the
		  results of applying `fn` to tensors unstacked from `elems` along the first
		  dimension, from first to last.  The result may include ragged and sparse
		  tensors.
		
		Raises:
		  TypeError: if `fn` is not callable or the structure of the output of
		    `fn` and `fn_output_signature` do not match.
		  ValueError: if the lengths of the output of `fn` and `fn_output_signature`
		    do not match, or if the `elems` does not contain any tensor.
		
		Examples:
		
		  >>> elems = np.array([1, 2, 3, 4, 5, 6])
		  >>> tf.map_fn(lambda x: x * x, elems)
		  <tf.Tensor: shape=(6,), dtype=int64, numpy=array([ 1,  4,  9, 16, 25, 36])>
		
		  >>> elems = (np.array([1, 2, 3]), np.array([-1, 1, -1]))
		  >>> tf.map_fn(lambda x: x[0] * x[1], elems, fn_output_signature=tf.int64)
		  <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1,  2, -3])>
		
		  >>> elems = np.array([1, 2, 3])
		  >>> tf.map_fn(lambda x: (x, -x), elems,
		  ...          fn_output_signature=(tf.int64, tf.int64))
		  (<tf.Tensor: shape=(3,), dtype=int64, numpy=array([1, 2, 3])>,
		   <tf.Tensor: shape=(3,), dtype=int64, numpy=array([-1, -2, -3])>)
	**/
	static public function map_fn_v2(fn:Dynamic, elems:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?back_prop:Dynamic, ?swap_memory:Dynamic, ?infer_shape:Dynamic, ?name:Dynamic, ?fn_output_signature:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}