/* This file is generated, do not edit! */
package tensorflow.contrib.factorization;
@:pythonImport("tensorflow.contrib.factorization") extern class Factorization_Module {
	static public var COSINE_DISTANCE : Dynamic;
	static public var KMEANS_PLUS_PLUS_INIT : Dynamic;
	static public var RANDOM_INIT : Dynamic;
	static public var SQUARED_EUCLIDEAN_DISTANCE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _allowed_symbols : Dynamic;
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
		  assignments: A vector (or list of vectors). Each element in the vector
		    corresponds to an input row in 'inp' and specifies the cluster id
		    corresponding to the input.
		  training_op: an op that runs an iteration of training.
		  init_op: an op that runs the initialization.
	**/
	static public function gmm(inp:Dynamic, initial_clusters:Dynamic, num_clusters:Dynamic, random_seed:Dynamic, ?covariance_type:Dynamic, ?params:Dynamic):Dynamic;
}