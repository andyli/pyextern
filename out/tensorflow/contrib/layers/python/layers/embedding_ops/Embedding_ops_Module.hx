/* This file is generated, do not edit! */
package tensorflow.contrib.layers.python.layers.embedding_ops;
@:pythonImport("tensorflow.contrib.layers.python.layers.embedding_ops") extern class Embedding_ops_Module {
	static public var __all__ : Dynamic;
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
	/**
		Lookup helper for embedding_lookup_sparse_with_distributed_aggregation.
	**/
	static public function _embedding_lookup_with_distributed_aggregation(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?max_norm:Dynamic, ?weights:Dynamic, ?idx:Dynamic, ?segment_ids:Dynamic):Dynamic;
	/**
		Prune invalid IDs (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_ids(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	/**
		Prune invalid weights (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_weights(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	/**
		Looks up embeddings using parameter hashing for each value in `values`.
		
		This method looks up selected embedding dimensions if `sampled_candidates` is
		given, otherwise looks up all dimensions.
		
		The i-th embedding component of a value v in `values` is found by retrieving
		the weight whose index is a fingerprint of the pair (v,i).
		The concept is explored as "feature hashing" for model compression in this
		paper: http://arxiv.org/pdf/1504.04788.pdf
		
		Feature hashing has the pleasant effect of allowing us to compute an embedding
		without needing a pre-determined vocabulary, relieving some amount of process
		complexity. It also allows for us to maintain embeddings for possibly
		trillions of features with a fixed amount of memory.
		
		Note that this is superior to out-of-vocabulary shared "hash buckets" in that
		the embedding is extremely likely to be unique for each token as opposed to
		being shared across probably-colliding tokens. The price is that we must
		compute a hash once for each scalar in the token's embedding as opposed to
		once per token.
		
		If `params` is a list, it represents a partition of the embedding parameters.
		Each tensor in the list should have the same length, except for the first ones
		which may have an additional element. For instance 10 parameters can be
		partitioned in 4 tensors with length `[3, 3, 2, 2]`.
		
		Args:
		  params: A `Tensor`, `list` of `Tensors`, or `PartitionedVariable`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  values: `Tensor` of values to be embedded with shape `[d0, ..., dn]`.
		  dimension: Embedding dimension. The user must specify either `dimension` or
		    `sampled_candidates`.
		  sampled_candidates: An optional `Tensor` of slice indices to keep along the
		    final dimension with shape `[d0, ..., dn, N]`. If given, `dimension` is
		    ignored. If `None`, looks up all candidates.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		  name: An optional name for this op.
		
		Returns:
		  A `Tensor` with shape `[d0, ..., dn, dimension]`.
		  If `sampled_candidates` is given, the output shape is `[d0, ..., dn, N]`
		
		Raises:
		  ValueError: if dimension is not positive or the partition size is invalid.
	**/
	static public function _sampled_scattered_embedding_lookup(params:Dynamic, values:Dynamic, ?dimension:Dynamic, ?sampled_candidates:Dynamic, ?hash_key:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings using parameter hashing for sparse values.
		
		This method looks up selected embedding dimensions if `sampled_candidates` is
		given, otherwise looks up all dimensions.
		
		The i-th embedding component of a value v in `values` is found by retrieving
		the weight whose index is a fingerprint of the pair (v,i).
		The concept is explored as "feature hashing" for model compression in this
		paper: http://arxiv.org/pdf/1504.04788.pdf
		
		This is logically equivalent to:
		* Transforming `sp_values` (which has shape `[d0, d1]`) into a one-hot
		  `Tensor` of shape `[d0, N]`.
		* Multiplying with a `Tensor` `h` of shape `[N, dimension]`, where
		  `h(i, j) = params[hash(i, j)]`.
		
		Args:
		  params: A float `Tensor` with rank 1 and fully-defined shape.
		  sp_values: A 2D `SparseTensor` to be embedded with shape `[d0, d1]`.
		  dimension: An int `Tensor` of the final dimension. The user needs to provide
		    either `dimension` or `sampled_candidates`.
		  sampled_candidates: An optional `Tensor` of column indices to keep along
		    the final dimension with shape `[d0, N]`. If given, `dimension` is
		    ignored. If `None`, looks up all candidates.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		  with_sign_hash:  A `bool` indicating whether `h(i, j)` should be multiplied
		    by `+1` or `-1`, where the value selected is determined by hashing
		    `(i, j)`. This is often necessary to remove bias resulting from hash
		    collisions.
		  name: An optional name for this op.
		
		Returns:
		  A `Tensor` of shape `[d0, dimension]`.
		  If `sampled_candidates` is given, the output shape is `[d0, N]`.
		
		Raises:
		  TypeError: If sp_values is not `SparseTensor`.
		  ValueError: If both `dimension` and `sampled_candidates` are `None`.
	**/
	static public function _sampled_scattered_embedding_lookup_sparse(params:Dynamic, sp_values:Dynamic, ?dimension:Dynamic, ?sampled_candidates:Dynamic, ?hash_key:Dynamic, ?with_sign_hash:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	/**
		Computes embeddings for the given ids and weights.
		
		Embeddings belonging to same param are aggregated on that device first. This
		op is intended to decrease data transmission and improve parallelism. See
		`tf.nn.embedding_lookup_sparse` for the functionality and example of this op.
		
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
		
		Raises:
		  TypeError: If sp_ids is not a SparseTensor, or if sp_weights is neither
		    None nor SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function embedding_lookup_sparse_with_distributed_aggregation(params:Dynamic, sp_ids:Dynamic, sp_weights:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic, ?combiner:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Version of embedding_lookup that avoids duplicate lookups.
		
		This can save communication in the case of repeated ids.
		Same interface as embedding_lookup. Except it supports multi-dimensional `ids`
		which allows to not reshape input/output to fit gather.
		
		Args:
		  params: A list of tensors with the same shape and type, or a
		    `PartitionedVariable`. Shape `[index, d1, d2, ...]`.
		  ids: A one-dimensional `Tensor` with type `int32` or `int64` containing
		    the ids to be looked up in `params`. Shape `[ids1, ids2, ...]`.
		  partition_strategy: A string specifying the partitioning strategy, relevant
		    if `len(params) > 1`. Currently `"div"` and `"mod"` are supported. Default
		    is `"mod"`.
		  name: A name for this operation (optional).
		
		Returns:
		  A `Tensor` with the same type as the tensors in `params` and dimension of
		  `[ids1, ids2, d1, d2, ...]`.
		
		Raises:
		  ValueError: If `params` is empty.
	**/
	static public function embedding_lookup_unique(params:Dynamic, ids:Dynamic, ?partition_strategy:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of `P`.  `embedding_weights`
		may be a `PartitionedVariable` as returned by using `tf.get_variable()` with a
		partitioner.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		Args:
		  embedding_weights:  A list of `P` float tensors or values representing
		      partitioned embedding tensors.  Alternatively, a `PartitionedVariable`,
		      created by partitioning along dimension 0.  The total unpartitioned
		      shape should be `[e_0, e_1, ..., e_m]`, where `e_0` represents the
		      vocab size and `e_1, ..., e_m` are the embedding dimensions.
		  sparse_ids: `SparseTensor` of shape `[d_0, d_1, ..., d_n]` containing the
		      ids. `d_0` is typically batch size.
		  sparse_weights: `SparseTensor` of same shape as `sparse_ids`, containing
		      float weights corresponding to `sparse_ids`, or `None` if all weights
		      are be assumed to be 1.0.
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_id: The id to use for an entry with no features.
		  name: A name for this operation (optional).
		  partition_strategy: A string specifying the partitioning strategy.
		      Currently `"div"` and `"mod"` are supported. Default is `"div"`.
		  max_norm: If not None, all embeddings are l2-normalized to max_norm before
		      combining.
		
		
		Returns:
		  Dense tensor of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic, ?max_norm:Dynamic):Dynamic;
	/**
		Looks up embeddings using parameter hashing for each value in `values`.
		
		The i-th embedding component of a value v in `values` is found by retrieving
		the weight whose index is a fingerprint of the pair (v,i).
		The concept is explored as "feature hashing" for model compression in this
		paper: http://arxiv.org/pdf/1504.04788.pdf
		
		Feature hashing has the pleasant effect of allowing us to compute an embedding
		without needing a pre-determined vocabulary, relieving some amount of process
		complexity. It also allows for us to maintain embeddings for possibly
		trillions of features with a fixed amount of memory.
		
		Note that this is superior to out-of-vocabulary shared "hash buckets" in that
		the embedding is extremely likely to be unique for each token as opposed to
		being shared across probably-colliding tokens. The price is that we must
		compute a hash once for each scalar in the token's embedding as opposed to
		once per token.
		
		If `params` is a list, it represents a partition of the embedding parameters.
		Each tensor in the list should have the same length, except for the first ones
		which may have an additional element. For instance 10 parameters can be
		partitioned in 4 tensors with length `[3, 3, 2, 2]`.
		
		Args:
		  params: A `Tensor`, `list` of `Tensors`, or `PartitionedVariable`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  values: `Tensor` of values to be embedded with shape `[d0, ..., dn]`.
		  dimension: Embedding dimension.
		  name: An optional name for this op.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		  A `Tensor` with shape `[d0, ..., dn, dimension]`.
		
		Raises:
		  ValueError: if dimension is not positive or the partition size is invalid.
	**/
	static public function scattered_embedding_lookup(params:Dynamic, values:Dynamic, dimension:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
	/**
		Looks up embeddings of a sparse feature using parameter hashing.
		
		See `tf.contrib.layers.scattered_embedding_lookup` for embedding with hashing.
		
		Args:
		  params: A `Tensor`, `list` of `Tensors`, or `PartitionedVariable`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  sparse_values: A 2-D `SparseTensor` containing the values to be embedded.
		    Some rows may be empty.
		  dimension: Embedding dimension
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_value: The value to use for an entry with no features.
		  name: An optional name for this op.
		  hash_key: Specify the hash_key that will be used by the `FingerprintCat64`
		    function to combine the crosses fingerprints on SparseFeatureCrossOp
		    (optional).
		
		Returns:
		   Dense tensor with shape [N, dimension] with N the number of rows in
		     sparse_values.
		
		Raises:
		  TypeError: If sparse_values is not a SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function scattered_embedding_lookup_sparse(params:Dynamic, sparse_values:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?default_value:Dynamic, ?name:Dynamic, ?hash_key:Dynamic):Dynamic;
}