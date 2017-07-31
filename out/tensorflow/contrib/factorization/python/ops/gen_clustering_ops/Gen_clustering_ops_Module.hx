/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.gen_clustering_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.gen_clustering_ops") extern class Gen_clustering_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _nearest_neighbors_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
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
		    Scalar. The number of rows to sample. This value must not be
		    larger than n.
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
		  Matrix of shape (num_to_sample, d). The sampled rows.
	**/
	static public function kmeans_plus_plus_initialization(points:Dynamic, num_to_sample:Dynamic, seed:Dynamic, num_retries_per_sample:Dynamic, ?name:Dynamic):Dynamic;
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
		    Scalar. Number of nearest centers to return for each point. If k is larger
		    than m, then only m centers are returned.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (nearest_center_indices, nearest_center_distances).
		
		  nearest_center_indices: A `Tensor` of type `int64`. Matrix of shape (n, min(m, k)). Each row contains the
		    indices of the centers closest to the corresponding point, ordered by
		    increasing distance.
		  nearest_center_distances: A `Tensor` of type `float32`. Matrix of shape (n, min(m, k)). Each row contains the
		    squared L2 distance to the corresponding center in nearest_center_indices.
	**/
	static public function nearest_neighbors(points:Dynamic, centers:Dynamic, k:Dynamic, ?name:Dynamic):Dynamic;
}