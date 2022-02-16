/* This file is generated, do not edit! */
package tensorflow.python.ops.clustering_ops;
@:pythonImport("tensorflow.python.ops.clustering_ops") extern class Clustering_ops_Module {
	static public var CLUSTERS_VAR_NAME : Dynamic;
	static public var COSINE_DISTANCE : Dynamic;
	/**
		Returns the index of a data point that should be added to the seed set.
		
		Entries in distances are assumed to be squared distances of candidate points to
		the already sampled centers in the seed set. The op constructs one Markov chain
		of the k-MC^2 algorithm and returns the index of one candidate point to be added
		as an additional cluster center.
		
		Args:
		  distances: A `Tensor` of type `float32`.
		    Vector with squared distances to the closest previously sampled cluster center
		    for each candidate point.
		  seed: A `Tensor` of type `int64`.
		    Scalar. Seed for initializing the random number generator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function KMC2ChainInitialization(distances:Dynamic, seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var KMC2_INIT : Dynamic;
	static public var KMEANS_PLUS_PLUS_INIT : Dynamic;
	/**
		Selects num_to_sample rows of input using the KMeans++ criterion.
		
		Rows of points are assumed to be input points. One row is selected at random.
		Subsequent rows are sampled with probability proportional to the squared L2
		distance from the nearest row selected thus far till num_to_sample rows have
		been sampled.
		
		Args:
		  points: A `Tensor` of type `float32`.
		    Matrix of shape (n, d). Rows are assumed to be input points.
		  num_to_sample: A `Tensor` of type `int64`.
		    Scalar. The number of rows to sample. This value must not be larger than n.
		  seed: A `Tensor` of type `int64`.
		    Scalar. Seed for initializing the random number generator.
		  num_retries_per_sample: A `Tensor` of type `int64`.
		    Scalar. For each row that is sampled, this parameter
		    specifies the number of additional points to draw from the current
		    distribution before selecting the best. If a negative value is specified, a
		    heuristic is used to sample O(log(num_to_sample)) additional points.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function KmeansPlusPlusInitialization(points:Dynamic, num_to_sample:Dynamic, seed:Dynamic, num_retries_per_sample:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Selects the k nearest centers for each point.
		
		Rows of points are assumed to be input points. Rows of centers are assumed to be
		the list of candidate centers. For each point, the k centers that have least L2
		distance to it are computed.
		
		Args:
		  points: A `Tensor` of type `float32`.
		    Matrix of shape (n, d). Rows are assumed to be input points.
		  centers: A `Tensor` of type `float32`.
		    Matrix of shape (m, d). Rows are assumed to be centers.
		  k: A `Tensor` of type `int64`.
		    Number of nearest centers to return for each point. If k is larger than m, then
		    only m centers are returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (nearest_center_indices, nearest_center_distances).
		
		  nearest_center_indices: A `Tensor` of type `int64`.
		  nearest_center_distances: A `Tensor` of type `float32`.
	**/
	static public function NearestNeighbors(points:Dynamic, centers:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	static public var RANDOM_INIT : Dynamic;
	static public var SQUARED_EUCLIDEAN_DISTANCE : Dynamic;
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
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
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
		Returns the index of a data point that should be added to the seed set.
		
		Entries in distances are assumed to be squared distances of candidate points to
		the already sampled centers in the seed set. The op constructs one Markov chain
		of the k-MC^2 algorithm and returns the index of one candidate point to be added
		as an additional cluster center.
		
		Args:
		  distances: A `Tensor` of type `float32`.
		    Vector with squared distances to the closest previously sampled cluster center
		    for each candidate point.
		  seed: A `Tensor` of type `int64`.
		    Scalar. Seed for initializing the random number generator.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `int64`.
	**/
	static public function kmc2_chain_initialization(distances:Dynamic, seed:Dynamic, ?name:Dynamic):Dynamic;
	static public function kmc2_chain_initialization_eager_fallback(distances:Dynamic, seed:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Selects num_to_sample rows of input using the KMeans++ criterion.
		
		Rows of points are assumed to be input points. One row is selected at random.
		Subsequent rows are sampled with probability proportional to the squared L2
		distance from the nearest row selected thus far till num_to_sample rows have
		been sampled.
		
		Args:
		  points: A `Tensor` of type `float32`.
		    Matrix of shape (n, d). Rows are assumed to be input points.
		  num_to_sample: A `Tensor` of type `int64`.
		    Scalar. The number of rows to sample. This value must not be larger than n.
		  seed: A `Tensor` of type `int64`.
		    Scalar. Seed for initializing the random number generator.
		  num_retries_per_sample: A `Tensor` of type `int64`.
		    Scalar. For each row that is sampled, this parameter
		    specifies the number of additional points to draw from the current
		    distribution before selecting the best. If a negative value is specified, a
		    heuristic is used to sample O(log(num_to_sample)) additional points.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `float32`.
	**/
	static public function kmeans_plus_plus_initialization(points:Dynamic, num_to_sample:Dynamic, seed:Dynamic, num_retries_per_sample:Dynamic, ?name:Dynamic):Dynamic;
	static public function kmeans_plus_plus_initialization_eager_fallback(points:Dynamic, num_to_sample:Dynamic, seed:Dynamic, num_retries_per_sample:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	/**
		Selects the k nearest centers for each point.
		
		Rows of points are assumed to be input points. Rows of centers are assumed to be
		the list of candidate centers. For each point, the k centers that have least L2
		distance to it are computed.
		
		Args:
		  points: A `Tensor` of type `float32`.
		    Matrix of shape (n, d). Rows are assumed to be input points.
		  centers: A `Tensor` of type `float32`.
		    Matrix of shape (m, d). Rows are assumed to be centers.
		  k: A `Tensor` of type `int64`.
		    Number of nearest centers to return for each point. If k is larger than m, then
		    only m centers are returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (nearest_center_indices, nearest_center_distances).
		
		  nearest_center_indices: A `Tensor` of type `int64`.
		  nearest_center_distances: A `Tensor` of type `float32`.
	**/
	static public function nearest_neighbors(points:Dynamic, centers:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
	static public function nearest_neighbors_eager_fallback(points:Dynamic, centers:Dynamic, k:Dynamic, name:Dynamic, ctx:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}