/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.clustering_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.clustering_ops", "KMeans") extern class KMeans {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Creates an object for generating KMeans clustering graph.
		
		This class implements the following variants of K-means algorithm:
		
		If use_mini_batch is False, it runs standard full batch K-means. Each step
		runs a single iteration of K-Means. This step can be run sharded across
		multiple workers by passing a list of sharded inputs to this class. Note
		however that a single step needs to process the full input at once.
		
		If use_mini_batch is True, it runs a generalization of the mini-batch
		K-means algorithm. It runs multiple iterations, where each iteration is
		composed of mini_batch_steps_per_iteration steps. Two copies of cluster
		centers are maintained: one that is updated at the end of each iteration,
		and one that is updated every step. The first copy is used to compute
		cluster allocations for each step, and for inference, while the second copy
		is the one updated each step using the mini-batch update rule. After each
		iteration is complete, this second copy is copied back the first copy.
		
		Note that for use_mini_batch=True, when mini_batch_steps_per_iteration=1,
		the algorithm reduces to the standard mini-batch algorithm. Also by setting
		mini_batch_steps_per_iteration = num_inputs / batch_size, the algorithm
		becomes an asynchronous version of the full-batch algorithm. Note however
		that there is no guarantee by this implementation that each input is seen
		exactly once per iteration. Also, different updates are applied
		asynchronously without locking. So this asynchronous version may not behave
		exactly like a full-batch version.
		
		Args:
		  inputs: An input tensor or list of input tensors
		  num_clusters: number of clusters.
		  initial_clusters: Specifies the clusters used during initialization.  Can
		    be a tensor or numpy array, or a function that generates the clusters.
		    Can also be "random" to specify that clusters should be chosen randomly
		    from input data.
		  distance_metric: distance metric used for clustering.
		  use_mini_batch: If true, use the mini-batch k-means algorithm. Else assume
		    full batch.
		  mini_batch_steps_per_iteration: number of steps after which the updated
		    cluster centers are synced back to a master copy.
		  random_seed: Seed for PRNG used to initialize seeds.
		  kmeans_plus_plus_num_retries: For each point that is sampled during
		    kmeans++ initialization, this parameter specifies the number of
		    additional points to draw from the current distribution before selecting
		    the best. If a negative value is specified, a heuristic is used to
		    sample O(log(num_to_sample)) additional points.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, num_clusters:Dynamic, ?initial_clusters:Dynamic, ?distance_metric:Dynamic, ?use_mini_batch:Dynamic, ?mini_batch_steps_per_iteration:Dynamic, ?random_seed:Dynamic, ?kmeans_plus_plus_num_retries:Dynamic):Dynamic;
	/**
		Creates an object for generating KMeans clustering graph.
		
		This class implements the following variants of K-means algorithm:
		
		If use_mini_batch is False, it runs standard full batch K-means. Each step
		runs a single iteration of K-Means. This step can be run sharded across
		multiple workers by passing a list of sharded inputs to this class. Note
		however that a single step needs to process the full input at once.
		
		If use_mini_batch is True, it runs a generalization of the mini-batch
		K-means algorithm. It runs multiple iterations, where each iteration is
		composed of mini_batch_steps_per_iteration steps. Two copies of cluster
		centers are maintained: one that is updated at the end of each iteration,
		and one that is updated every step. The first copy is used to compute
		cluster allocations for each step, and for inference, while the second copy
		is the one updated each step using the mini-batch update rule. After each
		iteration is complete, this second copy is copied back the first copy.
		
		Note that for use_mini_batch=True, when mini_batch_steps_per_iteration=1,
		the algorithm reduces to the standard mini-batch algorithm. Also by setting
		mini_batch_steps_per_iteration = num_inputs / batch_size, the algorithm
		becomes an asynchronous version of the full-batch algorithm. Note however
		that there is no guarantee by this implementation that each input is seen
		exactly once per iteration. Also, different updates are applied
		asynchronously without locking. So this asynchronous version may not behave
		exactly like a full-batch version.
		
		Args:
		  inputs: An input tensor or list of input tensors
		  num_clusters: number of clusters.
		  initial_clusters: Specifies the clusters used during initialization.  Can
		    be a tensor or numpy array, or a function that generates the clusters.
		    Can also be "random" to specify that clusters should be chosen randomly
		    from input data.
		  distance_metric: distance metric used for clustering.
		  use_mini_batch: If true, use the mini-batch k-means algorithm. Else assume
		    full batch.
		  mini_batch_steps_per_iteration: number of steps after which the updated
		    cluster centers are synced back to a master copy.
		  random_seed: Seed for PRNG used to initialize seeds.
		  kmeans_plus_plus_num_retries: For each point that is sampled during
		    kmeans++ initialization, this parameter specifies the number of
		    additional points to draw from the current distribution before selecting
		    the best. If a negative value is specified, a heuristic is used to
		    sample O(log(num_to_sample)) additional points.
	**/
	public function new(inputs:Dynamic, num_clusters:Dynamic, ?initial_clusters:Dynamic, ?distance_metric:Dynamic, ?use_mini_batch:Dynamic, ?mini_batch_steps_per_iteration:Dynamic, ?random_seed:Dynamic, ?kmeans_plus_plus_num_retries:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Returns True if clusters centers are kept normalized.
	**/
	public function _clusters_l2_normalized():Dynamic;
	/**
		Computes cosine distance between each input and each cluster center.
		
		Args:
		  inputs: list of input Tensor.
		  clusters: cluster Tensor
		  inputs_normalized: if True, it assumes that inp and clusters are
		  normalized and computes the dot product which is equivalent to the cosine
		  distance. Else it L2 normalizes the inputs first.
		
		Returns:
		  list of Tensors, where each element corresponds to each element in inp.
		  The value is the distance of each row to all the cluster centers.
	**/
	static public function _compute_cosine_distance(inputs:Dynamic, clusters:Dynamic, ?inputs_normalized:Dynamic):Dynamic;
	/**
		Computes Euclidean distance between each input and each cluster center.
		
		Args:
		  inputs: list of input Tensors.
		  clusters: cluster Tensor.
		
		Returns:
		  list of Tensors, where each element corresponds to each element in inputs.
		  The value is the distance of each row to all the cluster centers.
	**/
	static public function _compute_euclidean_distance(inputs:Dynamic, clusters:Dynamic):Dynamic;
	/**
		Creates variables.
		
		Returns:
		Tuple with following elements:
		  cluster_centers: a Tensor for storing cluster centers
		  cluster_centers_initialized: bool Variable indicating whether clusters
		    are initialized.
		  cluster_counts: a Tensor for storing counts of points assigned to this
		    cluster. This is used by mini-batch training.
		  cluster_centers_updated: Tensor representing copy of cluster centers that
		    are updated every step.
		  update_in_steps: numbers of steps left before we sync
		    cluster_centers_updated back to cluster_centers.
	**/
	public function _create_variables():Dynamic;
	/**
		Computes distance between each input and each cluster center.
		
		Args:
		  inputs: list of input Tensors.
		  clusters: cluster Tensor.
		  distance_metric: distance metric used for clustering
		
		Returns:
		  list of Tensors, where each element corresponds to each element in inputs.
		  The value is the distance of each row to all the cluster centers.
		  Currently only Euclidean distance and cosine distance are supported.
	**/
	static public function _distance_graph(inputs:Dynamic, clusters:Dynamic, distance_metric:Dynamic):Dynamic;
	/**
		Creates an op for training for full batch case.
		
		Args:
		  inputs: list of input Tensors.
		  cluster_idx_list: A vector (or list of vectors). Each element in the
		    vector corresponds to an input row in 'inp' and specifies the cluster id
		    corresponding to the input.
		  cluster_centers: Tensor Ref of cluster centers.
		
		Returns:
		  An op for doing an update of mini-batch k-means.
	**/
	public function _full_batch_training_op(inputs:Dynamic, cluster_idx_list:Dynamic, cluster_centers:Dynamic):Dynamic;
	/**
		Maps input to closest cluster and the score.
		
		Args:
		  inputs: list of input Tensors.
		  clusters: Tensor of cluster centers.
		
		Returns:
		  List of tuple, where each value in tuple corresponds to a value in inp.
		  The tuple has following three elements:
		  all_scores: distance of each input to each cluster center.
		  score: distance of each input to closest cluster center.
		  cluster_idx: index of cluster center closest to the corresponding input.
	**/
	public function _infer_graph(inputs:Dynamic, clusters:Dynamic):Dynamic;
	/**
		Does random initialization of clusters.
		
		Returns:
		  Tensor of randomly initialized clusters.
	**/
	public function _init_clusters_random():Dynamic;
	/**
		Returns an op to initialize the cluster centers.
	**/
	public function _initialize_clusters(cluster_centers:Dynamic, cluster_centers_initialized:Dynamic, cluster_centers_updated:Dynamic):Dynamic;
	/**
		Normalized the input data.
	**/
	static public function _l2_normalize_data(inputs:Dynamic):Dynamic;
	public function _mini_batch_sync_updates_op(update_in_steps:Dynamic, cluster_centers_var:Dynamic, cluster_centers_updated:Dynamic, total_counts:Dynamic):Dynamic;
	/**
		Creates an op for training for mini batch case.
		
		Args:
		  inputs: list of input Tensors.
		  cluster_idx_list: A vector (or list of vectors). Each element in the
		    vector corresponds to an input row in 'inp' and specifies the cluster id
		    corresponding to the input.
		  cluster_centers: Tensor Ref of cluster centers.
		  total_counts: Tensor Ref of cluster counts.
		
		Returns:
		  An op for doing an update of mini-batch k-means.
	**/
	public function _mini_batch_training_op(inputs:Dynamic, cluster_idx_list:Dynamic, cluster_centers:Dynamic, total_counts:Dynamic):Dynamic;
	/**
		Generate a training graph for kmeans algorithm.
		
		Returns:
		  A tuple consisting of:
		  all_scores: A matrix (or list of matrices) of dimensions (num_input,
		    num_clusters) where the value is the distance of an input vector and a
		    cluster center.
		  cluster_idx: A vector (or list of vectors). Each element in the vector
		    corresponds to an input row in 'inp' and specifies the cluster id
		    corresponding to the input.
		  scores: Similar to cluster_idx but specifies the distance to the
		    assigned cluster instead.
		  cluster_centers_initialized: scalar indicating whether clusters have been
		    initialized.
		  init_op: an op to initialize the clusters.
		  training_op: an op that runs an iteration of training.
	**/
	public function training_graph():Dynamic;
}