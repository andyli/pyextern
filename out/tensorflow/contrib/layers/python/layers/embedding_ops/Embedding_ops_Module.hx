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
		Prune invalid IDs (< 0) from the input ids and weights.
	**/
	static public function _prune_invalid_ids(sparse_ids:Dynamic, sparse_weights:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
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
		  params: A `Tensor` or `list` of `Tensors`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  values: `Tensor` of values to be embedded.
		  dimension: Embedding dimension
		  name: An optional name for this op.
		
		Returns:
		  A tensor with shape [d0, ..., dn, dimension]
		    with shape(values) = [d0, ..., dn]
		
		Raises:
		  ValueError: if dimension is not positive or the partition size is invalid.
	**/
	static public function hashed_embedding_lookup(params:Dynamic, values:Dynamic, dimension:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Looks up embeddings of a sparse feature using parameter hashing.
		
		See `tf.contrib.layers.hashed_embedding_lookup` for embedding with hashing.
		
		Args:
		  params: A `Tensor` or `list` of `Tensors`.
		    Each tensor must be of rank 1 with fully-defined shape.
		  sparse_values: A 2-D `SparseTensor` containing the values to be embedded.
		    Some rows may be empty.
		  dimension: Embedding dimension
		  combiner: A string specifying how to combine embedding results for each
		      entry. Currently "mean", "sqrtn" and "sum" are supported, with "mean"
		      the default.
		  default_value: The value to use for an entry with no features.
		  name: An optional name for this op.
		
		Returns:
		   Dense tensor with shape [N, dimension] with N the number of rows in
		     sparse_values.
		
		Raises:
		  TypeError: If sparse_values is not a SparseTensor.
		  ValueError: If combiner is not one of {"mean", "sqrtn", "sum"}.
	**/
	static public function hashed_embedding_lookup_sparse(params:Dynamic, sparse_values:Dynamic, dimension:Dynamic, ?combiner:Dynamic, ?default_value:Dynamic, ?name:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Lookup embedding results, accounting for invalid IDs and empty features.
		
		The partitioned embedding in `embedding_weights` must all be the same shape
		except for the first dimension. The first dimension is allowed to vary as the
		vocabulary size is not necessarily a multiple of `P`.
		
		Invalid IDs (< 0) are pruned from input IDs and weights, as well as any IDs
		with non-positive weight. For an entry with no features, the embedding vector
		for `default_id` is returned, or the 0-vector if `default_id` is not supplied.
		
		The ids and weights may be multi-dimensional. Embeddings are always aggregated
		along the last dimension.
		
		Args:
		  embedding_weights:  A list of `P` float tensors or values representing
		      partitioned embedding tensors.  The total unpartitioned shape should be
		      `[e_0, e_1, ..., e_m]`, where `e_0` represents the vocab size and
		      `e_1, ..., e_m` are the embedding dimensions.
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
		
		
		Returns:
		  Dense tensor of shape `[d_0, d_1, ..., d_{n-1}, e_1, ..., e_m]`.
		
		Raises:
		  ValueError: if `embedding_weights` is empty.
	**/
	static public function safe_embedding_lookup_sparse(embedding_weights:Dynamic, sparse_ids:Dynamic, ?sparse_weights:Dynamic, ?combiner:Dynamic, ?default_id:Dynamic, ?name:Dynamic, ?partition_strategy:Dynamic):Dynamic;
}