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
		Deals with doing gather differently for resource variables.
	**/
	static public function _do_gather(params:Dynamic, ids:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Looks up `ids` in a list of embedding tensors.
		
		This function is used to perform parallel lookups on the list of
		tensors in `params`.  It is a generalization of
		@{tf.gather}, where `params` is
		interpreted as a partitioning of a large embedding tensor.  `params` may be
		a `PartitionedVariable` as returned by using `tf.get_variable()` with a
		partitioner.
		
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
		
		The results of the lookup are concatenated into a dense
		tensor. The returned tensor has shape `shape(ids) + shape(params)[1:]`.
		
		Args:
		  params: A single tensor representing the complete embedding tensor,
		    or a list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  ids: A `Tensor` with type `int32` or `int64` containing the ids to be looked
		    up in `params`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`.
		  name: A name for the operation (optional).
		  validate_indices: DEPRECATED. If this operation is assigned to CPU, values
		    in `indices` are always validated to be within range.  If assigned to GPU,
		    out-of-bound indices result in safe but unspecified behavior, which may
		    include raising an error.
		  max_norm: If not None, embedding values are l2-normalized to the value of
		   max_norm.
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params`.
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?validate_indices:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Computes embeddings for the given ids and weights.
		
		This op assumes that there is at least one id for each row in the dense tensor
		represented by sp_ids (i.e. there are no rows with empty features), and that
		all the indices of sp_ids are in canonical row-major order.
		
		It also assumes that all id values lie in the range [0, p0), where p0
		is the sum of the size of params along dimension 0.
		
		Args:
		  params: A single tensor representing the complete embedding tensor,
		    or a list of P tensors all of same shape except for the first dimension,
		    representing sharded embedding tensors.  Alternatively, a
		    `PartitionedVariable`, created by partitioning along dimension 0. Each
		    element must be appropriately sized for the given `partition_strategy`.
		  sp_ids: N x M SparseTensor of int64 ids (typically from FeatureValueToId),
		    where N is typically batch size and M is arbitrary.
		  sp_weights: either a SparseTensor of float / double weights, or None to
		    indicate all weights should be taken to be 1. If specified, sp_weights
		    must have exactly the same shape and indices as sp_ids.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`. See `tf.nn.embedding_lookup` for more details.
		  name: Optional name for the op.
		  combiner: A string specifying the reduction op. Currently "mean", "sqrtn"
		    and "sum" are supported.
		    "sum" computes the weighted sum of the embedding results for each row.
		    "mean" is the weighted sum divided by the total weight.
		    "sqrtn" is the weighted sum divided by the square root of the sum of the
		    squares of the weights.
		  max_norm: If not None, each embedding is normalized to have l2 norm equal
		    to max_norm before combining.
		
		Returns:
		  A dense tensor representing the combined embeddings for the
		  sparse ids. For each row in the dense tensor represented by sp_ids, the op
		  looks up the embeddings for all ids in that row, multiplies them by the
		  corresponding weight, and combines these embeddings as specified.
		
		  In other words, if
		
		    shape(combined params) = [p0, p1, ..., pm]
		
		  and
		
		    shape(sp_ids) = shape(sp_weights) = [d0, d1, ..., dn]
		
		  then
		
		    shape(output) = [d0, d1, ..., dn-1, p1, ..., pm].
		
		  For instance, if params is a 10x20 matrix, and sp_ids / sp_weights are
		
		    [0, 0]: id 1, weight 2.0
		    [0, 1]: id 3, weight 0.5
		    [1, 0]: id 0, weight 1.0
		    [2, 3]: id 1, weight 3.0
		
		  with `combiner`="mean", then the output will be a 3x20 matrix where
		
		    output[0, :] = (params[1, :] * 2.0 + params[3, :] * 0.5) / (2.0 + 0.5)
		    output[1, :] = params[0, :] * 1.0
		    output[2, :] = params[1, :] * 3.0
		
		Raises:
		  TypeError: If sp_ids is not a SparseTensor, or if sp_weights is neither
		    None nor SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}