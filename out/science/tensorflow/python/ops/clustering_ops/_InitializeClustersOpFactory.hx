/* This file is generated, do not edit! */
package tensorflow.python.ops.clustering_ops;
@:pythonImport("tensorflow.python.ops.clustering_ops", "_InitializeClustersOpFactory") extern class _InitializeClustersOpFactory {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Creates an op factory.
		
		Args:
		  inputs: See KMeans constructor.
		  num_clusters: An integer Tensor providing the number of clusters.
		  initial_clusters: See KMeans constructor.
		  distance_metric: See KMeans constructor.
		  random_seed: See KMeans constructor.
		  kmeans_plus_plus_num_retries: See KMeans constructor.
		  kmc2_chain_length: See KMeans constructor.
		  cluster_centers: The TF variable holding the initial centers. It may
		    already contain some centers when the op is executed.
		  cluster_centers_updated: A second TF variable to hold a copy of the
		    initial centers, used for full-batch mode. In mini-batch mode,
		    cluster_centers_updated is the same variable as cluster_centers.
		  cluster_centers_initialized: A boolean TF variable that will be set to
		    true when all the initial centers have been chosen.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, num_clusters:Dynamic, initial_clusters:Dynamic, distance_metric:Dynamic, random_seed:Dynamic, kmeans_plus_plus_num_retries:Dynamic, kmc2_chain_length:Dynamic, cluster_centers:Dynamic, cluster_centers_updated:Dynamic, cluster_centers_initialized:Dynamic):Dynamic;
	/**
		Creates an op factory.
		
		Args:
		  inputs: See KMeans constructor.
		  num_clusters: An integer Tensor providing the number of clusters.
		  initial_clusters: See KMeans constructor.
		  distance_metric: See KMeans constructor.
		  random_seed: See KMeans constructor.
		  kmeans_plus_plus_num_retries: See KMeans constructor.
		  kmc2_chain_length: See KMeans constructor.
		  cluster_centers: The TF variable holding the initial centers. It may
		    already contain some centers when the op is executed.
		  cluster_centers_updated: A second TF variable to hold a copy of the
		    initial centers, used for full-batch mode. In mini-batch mode,
		    cluster_centers_updated is the same variable as cluster_centers.
		  cluster_centers_initialized: A boolean TF variable that will be set to
		    true when all the initial centers have been chosen.
	**/
	public function new(inputs:Dynamic, num_clusters:Dynamic, initial_clusters:Dynamic, distance_metric:Dynamic, random_seed:Dynamic, kmeans_plus_plus_num_retries:Dynamic, kmc2_chain_length:Dynamic, cluster_centers:Dynamic, cluster_centers_updated:Dynamic, cluster_centers_initialized:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Adds some centers and returns the number of centers remaining.
	**/
	public function _add_new_centers():Dynamic;
	public function _choose_initial_centers():Dynamic;
	public function _greedy_batch_sampler(sampler:Dynamic):Dynamic;
	public function _initialize():Dynamic;
	/**
		Adds new initial cluster centers using the k-MC2 algorithm.
		
		In each call to the op, the provided batch is split into subsets based on
		the specified `kmc2_chain_length`. On each subset, a single Markov chain of
		the k-MC2 algorithm is used to add *one* new center cluster center. If there
		are less than `kmc2_chain_length` points in the subset, a single center is
		added using one Markov chain on the full input. It is assumed that the
		provided batch has previously been randomly permuted. Otherwise, k-MC2 may
		return suboptimal centers.
		
		Returns:
		  An op that adds new cluster centers.
	**/
	public function _kmc2_multiple_centers():Dynamic;
	public function _kmeans_plus_plus():Dynamic;
	public function _random():Dynamic;
	public function _single_batch_sampler(sampler:Dynamic):Dynamic;
	/**
		Returns the cluster initializer op.
	**/
	public function op():Dynamic;
}