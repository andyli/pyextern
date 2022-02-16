/* This file is generated, do not edit! */
package tensorflow.python.ops.embedding_ops;
@:pythonImport("tensorflow.python.ops.embedding_ops") extern class Embedding_ops_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Helper function for _embedding_lookup_and_transform.
		
		This function optionally clips embeddings to an l2-norm of max_norm.
		
		Args:
		  params: A `Tensor` of embeddings retrieved by `gather`.
		  ids: The `ids` argument that was passed to `gather`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value.
		
		Returns:
		  A `Tensor` with the same type as `params`.
	**/
	static public function _clip(params:Dynamic, ids:Dynamic, max_norm:Dynamic):Dynamic;
	static public function _colocate_with(param:Dynamic):Dynamic;
	/**
		Helper function for embedding_lookup and _compute_sampled_logits.
		
		This function is a generalization of embedding_lookup that optionally
		applies a caller-specified transformation to each embedding. This is
		done through the `transform_fn` argument. If provided, the function is
		applied to each partitioned tensor of retrieved embeddings, colocated
		with the embeddings. This function will be called with a single `Tensor`
		argument of the same type as the `params` tensor and should return a
		`Tensor`. The shape of the argument will be the same as `params` except
		for the size of the first dimension. The first dimension of the result's
		shape must be the same size as the argument's.
		
		Args:
		  params: See embedding_lookup.
		  ids: See embedding_lookup.
		  partition_strategy: See embedding_lookup.
		  name: See embedding_lookup.
		  max_norm: See embedding_lookup.
		  transform_fn: An optional function to apply to each retrieved embedding. If
		    max_norm is provided, transform_fn is applied to the norm-limited
		    embeddings.
		
		Returns:
		  See embedding_lookup for details.
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function _embedding_lookup_and_transform(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?max_norm:Dynamic, ?transform_fn:Dynamic):Dynamic;
	/**
		Prune invalid IDs (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_ids(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	/**
		Prune invalid weights (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_weights(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Looks up embeddings for the given `ids` from a list of tensors.
		
		This function is used to perform parallel lookups on the list of tensors in
		`params`.  It is a generalization of `tf.gather`, where `params` is
		interpreted as a partitioning of a large embedding tensor.  `params` may be
		a `PartitionedVariable` as returned by using `tf.compat.v1.get_variable()`
		with a partitioner.
		
		If `len(params) > 1`, each element `id` of `ids` is partitioned between
		the elements of `params` according to the `partition_strategy`.
		In all strategies, if the id space does not evenly divide the number of
		partitions, each of the first `(max_id + 1) % len(params)` partitions will
		be assigned one more id.
		
		If `partition_strategy` is `"mod"`, we assign each id to partition
		`p = id % len(params)`. For instance,
		13 ids are split across 5 partitions as:
		`[[0, 5, 10], [1, 6, 11], [2, 7, 12], [3, 8], [4, 9]]`
		
		If `partition_strategy` is `"div"`, we assign ids to partitions in a
		contiguous manner. In this case, 13 ids are split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`
		
		If the input ids are ragged tensors, partition variables are not supported and
		the partition strategy and the max_norm are ignored.
		The results of the lookup are concatenated into a dense
		tensor. The returned tensor has shape `shape(ids) + shape(params)[1:]`.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  ids: A `Tensor` or a 'RaggedTensor' with type `int32` or `int64` containing
		    the ids to be looked up in `params`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`.
		  name: A name for the operation (optional).
		  validate_indices: DEPRECATED. If this operation is assigned to CPU, values
		    in `indices` are always validated to be within range.  If assigned to GPU,
		    out-of-bound indices result in safe but unspecified behavior, which may
		    include raising an error.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value.
		
		Returns:
		  A `Tensor` or a 'RaggedTensor', depending on the input, with the same type
		  as the tensors in `params`.
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?validate_indices:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Look up the ragged ids in a list of embedding tensors.
		
		Args:
		  embedding_weights: A tensor representing the complete embedding tensor
		    having the shape [e1, ...eM]
		  ragged_ids: A 'RaggedTensor' with type 'int32' or 'int64' containing the ids
		    to be looked up in 'embedding_weights' of shape [r0, ..rN]. Values must be
		    in the range '[0, embedding_weights.shape[0]]'.
		  partition_strategy: A string specifying the partitioning strategy.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value.
		  name: A name for the operation (optional)
		
		Returns:
		  A ragged tensor of shape [r0, r1, ...rN, e1, ...eM].
		
		Raises:
		  ValueError: whether the embedding_weights is empty or the ragged_ids is
		  not a RaggedTensor.
	**/
	static public function embedding_lookup_ragged(embedding_weights:Dynamic, ragged_ids:Dynamic, ?partition_strategy:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings for the given ids and weights from a list of tensors.
		
		This op assumes that there is at least one id for each row in the dense tensor
		represented by sp_ids (i.e. there are no rows with empty features), and that
		all the indices of sp_ids are in canonical row-major order.
		
		`sp_ids` and `sp_weights` (if not None) are `SparseTensor`s with rank of 2.
		Embeddings are always aggregated along the last dimension.
		
		It also assumes that all id values lie in the range [0, p0), where p0
		is the sum of the size of params along dimension 0.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors. Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  sp_ids: N x M `SparseTensor` of int64 ids where N is typically batch size
		    and M is arbitrary.
		  sp_weights: either a `SparseTensor` of float / double weights, or `None` to
		    indicate all weights should be taken to be 1. If specified, `sp_weights`
		    must have exactly the same shape and indices as `sp_ids`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: Optional name for the op.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported. "sum" computes the weighted sum of the embedding
		    results for each row. "mean" is the weighted sum divided by the total
		    weight. "sqrtn" is the weighted sum divided by the square root of the sum
		    of the squares of the weights. Defaults to `mean`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value, before combining.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sp_ids`, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined params) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sp_ids) = shape(sp_weights) = [d0, d1]`
		
		  then
		
		    `shape(output) = [d0, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id 0, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  TypeError: If `sp_ids` is not a `SparseTensor`, or if `sp_weights` is
		    neither `None` nor `SparseTensor`.
		  ValueError: If `combiner` is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Looks up embeddings for the given ids and weights from a list of tensors.
		
		This op assumes that there is at least one id for each row in the dense tensor
		represented by sp_ids (i.e. there are no rows with empty features), and that
		all the indices of sp_ids are in canonical row-major order.
		
		`sp_ids` and `sp_weights` (if not None) are `SparseTensor`s with rank of 2.
		Embeddings are always aggregated along the last dimension.
		
		It also assumes that all id values lie in the range [0, p0), where p0
		is the sum of the size of params along dimension 0.
		
		If `len(params) > 1`, each element of `sp_ids` is partitioned between the
		elements of `params` according to the "div" partition strategy, which means we
		assign ids to partitions in a contiguous manner. For instance, 13 ids are
		split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(params)` partitions will be assigned one more id.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list of tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors following "div" partition strategy.
		  sp_ids: N x M `SparseTensor` of int64 ids where N is typically batch size
		    and M is arbitrary.
		  sp_weights: either a `SparseTensor` of float / double weights, or `None` to
		    indicate all weights should be taken to be 1. If specified, `sp_weights`
		    must have exactly the same shape and indices as `sp_ids`.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported. "sum" computes the weighted sum of the embedding
		    results for each row. "mean" is the weighted sum divided by the total
		    weight. "sqrtn" is the weighted sum divided by the square root of the sum
		    of the squares of the weights. Defaults to `mean`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value, before combining.
		  name: Optional name for the op.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sp_ids`, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined params) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sp_ids) = shape(sp_weights) = [d0, d1]`
		
		  then
		
		    `shape(output) = [d0, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id 0, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  TypeError: If `sp_ids` is not a `SparseTensor`, or if `sp_weights` is
		    neither `None` nor `SparseTensor`.
		  ValueError: If `combiner` is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse_v2(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings for the given `ids` from a list of tensors.
		
		This function is used to perform parallel lookups on the list of tensors in
		`params`.  It is a generalization of `tf.gather`, where `params` is
		interpreted as a partitioning of a large embedding tensor.
		
		If `len(params) > 1`, each element `id` of `ids` is partitioned between the
		elements of `params` according to the "div" partition strategy, which means we
		assign ids to partitions in a contiguous manner. For instance, 13 ids are
		split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(params)` partitions will be assigned one more id.
		
		The results of the lookup are concatenated into a dense
		tensor. The returned tensor has shape `shape(ids) + shape(params)[1:]`.
		
		Args:
		  params: A single tensor representing the complete embedding tensor, or a
		    list of tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors following "div" partition strategy.
		  ids: A `Tensor` with type `int32` or `int64` containing the ids to be looked
		    up in `params`.
		  max_norm: If not `None`, each embedding is clipped if its l2-norm is larger
		    than this value.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params`.
		
		  For instance, if `params` is a 5x2 matrix:
		
		  ```python
		  [[1, 2], [3, 4], [5, 6], [7, 8], [9, 10]]
		  ```
		
		  or a list of matrices:
		
		  ```python
		  params[0]: [[1, 2], [3, 4]]
		  params[1]: [[5, 6], [7, 8]]
		  params[2]: [[9, 10]]
		  ```
		
		  and `ids` is:
		
		  ```python
		  [0, 3, 4]
		  ```
		
		  The output will be a 3x2 matrix:
		
		  ```python
		  [[1, 2], [7, 8], [9, 10]]
		  ```
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup_v2(params:Dynamic, ids:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of `P`.  `embedding_weights`
		may be a `PartitionedVariable` as returned by using
		`tf.compat.v1.get_variable()` with a
		partitioner.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		Args:
		  embedding_weights: A single tensor representing the complete embedding
		    tensor, or a list tensors all of same shape except for the first
		    dimension, representing sharded embedding tensors. Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		    ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		    float weights corresponding to `sparse_ids`, or `None` if all weights are
		    be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		    entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean" the
		    default.
		  default_id: The id to use for an entry with no features.
		  name: A name for this operation (optional).
		  partition_strategy: A string specifying the partitioning strategy. Currently
		    `"div"` and `"mod"` are supported. Default is `"div"`.
		  max_norm: If not `None`, all embeddings are l2-normalized to max_norm before
		    combining.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sp_ids`, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined embedding_weights) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sparse_ids) = shape(sparse_weights) = [d0, d1, ..., dn]`
		
		  then
		
		    `shape(output) = [d0, d1, ... dn-1, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id -1, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  `default_id` is 0.
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of num of shards.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		If `len(embedding_weights) > 1`, each element `id` of `ids` is partitioned
		between the elements of `embedding_weights` according to the "div" partition
		strategy, which means we assign ids to partitions in a contiguous manner. For
		instance, 13 ids are split across 5 partitions as:
		`[[0, 1, 2], [3, 4, 5], [6, 7, 8], [9, 10], [11, 12]]`.
		
		If the id space does not evenly divide the number of partitions, each of the
		first `(max_id + 1) % len(embedding_weights)` partitions will be assigned one
		more id.
		
		Args:
		  embedding_weights: A single tensor representing the complete embedding
		    tensor, or a list of tensors all of same shape except for the first
		    dimension, representing sharded embedding tensors following "div"
		    partition strategy.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		    ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		    float weights corresponding to `sparse_ids`, or `None` if all weights are
		    be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		    entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean" the
		    default.
		  default_id: The id to use for an entry with no features. Defaults to
		    0-vector.
		  max_norm: If not `None`, all embeddings are l2-normalized to max_norm before
		    combining.
		  name: A name for this operation (optional).
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by `sparse_ids`,
		  the op looks up the embeddings for all ids in that row, multiplies them by
		  the corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    `shape(combined embedding_weights) = [p0, p1, ..., pm]`
		
		  and
		
		    `shape(sparse_ids) = shape(sparse_weights) = [d0, d1, ..., dn]`
		
		  then
		
		    `shape(output) = [d0, d1, ... dn-1, p1, ..., pm]`.
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    ```python
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id -1, weight 1.0
		    [2, 3]: id 1, weight 3.0
		    ```
		
		  `default_id` is 0.
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    ```python
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = (params[0, :] * 1.0) / 1.0
		    output[2, :] = (params[1, :] * 3.0) / 3.0
		    ```
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse_v2(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?max_norm:Dynamic, ?name:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}