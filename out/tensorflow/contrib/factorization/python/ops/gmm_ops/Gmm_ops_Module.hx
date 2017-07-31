/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.gmm_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.gmm_ops") extern class Gmm_ops_Module {
	static public var DIAG_COVARIANCE : Dynamic;
	static public var FULL_COVARIANCE : Dynamic;
	static public var MEPS : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Defines the covariance operation of a matrix.
		
		Args:
		  x: a matrix Tensor. Dimension 0 should contain the number of examples.
		  diag: if True, it computes the diagonal covariance.
		
		Returns:
		  A Tensor representing the covariance of x. In the case of
		diagonal matrix just the diagonal is returned.
	**/
	static public function _covariance(x:Dynamic, diag:Dynamic):Dynamic;
	/**
		Does random initialization of clusters.
		
		Args:
		  data: a list of Tensors with a matrix of data, each row is an example.
		  num_clusters: an integer with the number of clusters.
		  random_seed: Seed for PRNG used to initialize seeds.
		
		Returns:
		  A Tensor with num_clusters random rows of data.
	**/
	static public function _init_clusters_random(data:Dynamic, num_clusters:Dynamic, random_seed:Dynamic):Dynamic;
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
		Creates the graph for Gaussian mixture model (GMM) clustering.
		
		Args:
		  inp: An input tensor or list of input tensors
		  initial_clusters: Specifies the clusters used during
		    initialization. Can be a tensor or numpy array, or a function
		    that generates the clusters. Can also be "random" to specify
		    that clusters should be chosen randomly from input data. Note: type
		    is diverse to be consistent with skflow.
		  num_clusters: number of clusters.
		  random_seed: Python integer. Seed for PRNG used to initialize centers.
		  covariance_type: one of "diag", "full".
		  params: Controls which parameters are updated in the training
		    process. Can contain any combination of "w" for weights, "m" for
		    means, and "c" for covars.
		
		Returns:
		  Note: tuple of lists returned to be consistent with skflow
		  A tuple consisting of:
		  all_scores: A matrix (or list of matrices) of dimensions (num_input,
		    num_clusters) where the value is the distance of an input vector and a
		    cluster center.
		  assignments: A vector (or list of vectors). Each element in the vector
		    corresponds to an input row in 'inp' and specifies the cluster id
		    corresponding to the input.
		  scores: Similar to assignments but specifies the distance to the
		    assigned cluster instead.
		  training_op: an op that runs an iteration of training.
	**/
	static public function gmm(inp:Dynamic, initial_clusters:Dynamic, num_clusters:Dynamic, random_seed:Dynamic, ?covariance_type:Dynamic, ?params:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}