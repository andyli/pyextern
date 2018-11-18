/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.gmm_ops;
@:pythonImport("tensorflow.contrib.factorization.python.ops.gmm_ops", "GmmAlgorithm") extern class GmmAlgorithm {
	static public var CLUSTERS_COVS_VARIABLE : Dynamic;
	static public var CLUSTERS_VARIABLE : Dynamic;
	static public var CLUSTERS_WEIGHT : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Constructor.
		
		Args:
		  data: a list of Tensors with data, each row is a new example.
		  num_classes: number of clusters.
		  initial_means: a Tensor with a matrix of means. If None, means are
		    computed by sampling randomly.
		  params: Controls which parameters are updated in the training
		    process. Can contain any combination of "w" for weights, "m" for
		    means, and "c" for covariances.
		  covariance_type: one of "full", "diag".
		  random_seed: Seed for PRNG used to initialize seeds.
		
		Raises:
		  Exception if covariance type is unknown.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, num_classes:Dynamic, ?initial_means:Dynamic, ?params:Dynamic, ?covariance_type:Dynamic, ?random_seed:Dynamic):Dynamic;
	/**
		Constructor.
		
		Args:
		  data: a list of Tensors with data, each row is a new example.
		  num_classes: number of clusters.
		  initial_means: a Tensor with a matrix of means. If None, means are
		    computed by sampling randomly.
		  params: Controls which parameters are updated in the training
		    process. Can contain any combination of "w" for weights, "m" for
		    means, and "c" for covariances.
		  covariance_type: one of "full", "diag".
		  random_seed: Seed for PRNG used to initialize seeds.
		
		Raises:
		  Exception if covariance type is unknown.
	**/
	public function new(data:Dynamic, num_classes:Dynamic, ?initial_means:Dynamic, ?params:Dynamic, ?covariance_type:Dynamic, ?random_seed:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Initializes GMM algorithm.
	**/
	public function _create_variables():Dynamic;
	/**
		Defines the diagonal covariance probabilities per example in a class.
		
		Args:
		  shard_id: id of the current shard.
		  shard: current data shard, 1 X num_examples X dimensions.
		
		Returns a matrix num_examples * num_classes.
	**/
	public function _define_diag_covariance_probs(shard_id:Dynamic, shard:Dynamic):Dynamic;
	public function _define_expectation_operation(shard_id:Dynamic):Dynamic;
	/**
		Defines the full covariance probabilities per example in a class.
		
		Updates a matrix with dimension num_examples X num_classes.
		
		Args:
		  shard_id: id of the current shard.
		  shard: current data shard, 1 X num_examples X dimensions.
	**/
	public function _define_full_covariance_probs(shard_id:Dynamic, shard:Dynamic):Dynamic;
	/**
		Define graph for a single iteration.
		
		Args:
		  data: a list of Tensors defining the training data.
	**/
	public function _define_graph(data:Dynamic):Dynamic;
	/**
		Probability per example in a class.
		
		Updates a matrix with dimension num_examples X num_classes.
		
		Args:
		  shard_id: id of the current shard.
		  shard: current data shard, 1 X num_examples X dimensions.
	**/
	public function _define_log_prob_operation(shard_id:Dynamic, shard:Dynamic):Dynamic;
	/**
		Defines the total log-likelihood of current iteration.
	**/
	public function _define_loglikelihood_operation():Dynamic;
	/**
		Maximization operations.
	**/
	public function _define_maximization_operation(num_batches:Dynamic):Dynamic;
	/**
		Computes the partial statistics of the means and covariances.
		
		Args:
		  shard_id: current shard id.
		  shard: current data shard, 1 X num_examples X dimensions.
	**/
	public function _define_partial_maximization_operation(shard_id:Dynamic, shard:Dynamic):Dynamic;
	/**
		Computes the prior probability of all samples.
		
		Updates a vector where each item is the prior probability of an
		input example.
		
		Args:
		  shard_id: id of current shard_id.
	**/
	public function _define_prior_log_prob_operation(shard_id:Dynamic):Dynamic;
	/**
		Defines the likelihood of each data sample.
	**/
	public function _define_score_samples():Dynamic;
	/**
		Initializes variables.
		
		Args:
		  data: a list of Tensors with data, each row is a new example.
		  initial_means: a Tensor with a matrix of means.
	**/
	public function _initialize_variables(data:Dynamic, ?initial_means:Dynamic):Dynamic;
	public function alphas():Dynamic;
	/**
		Returns a list of Tensors with the matrix of assignments per shard.
	**/
	public function assignments():Dynamic;
	/**
		Returns the clusters with dimensions num_classes X 1 X num_dimensions.
	**/
	public function clusters():Dynamic;
	/**
		Returns the covariances matrices.
	**/
	public function covariances():Dynamic;
	/**
		Returns the initialization operation.
	**/
	public function init_ops():Dynamic;
	/**
		Returns a boolean operation for initialized variables.
	**/
	public function is_initialized():Dynamic;
	/**
		Returns the log-likelihood operation.
	**/
	public function log_likelihood_op():Dynamic;
	/**
		Returns the per-sample likelihood fo the data.
		
		Returns:
		  Log probabilities of each data point.
	**/
	public function scores():Dynamic;
	/**
		Returns the training operation.
	**/
	public function training_ops():Dynamic;
}