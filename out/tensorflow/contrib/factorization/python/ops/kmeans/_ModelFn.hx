/* This file is generated, do not edit! */
package tensorflow.contrib.factorization.python.ops.kmeans;
@:pythonImport("tensorflow.contrib.factorization.python.ops.kmeans", "_ModelFn") extern class _ModelFn {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(num_clusters:Dynamic, initial_clusters:Dynamic, distance_metric:Dynamic, random_seed:Dynamic, use_mini_batch:Dynamic, mini_batch_steps_per_iteration:Dynamic, kmeans_plus_plus_num_retries:Dynamic, relative_tolerance:Dynamic, feature_columns:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(num_clusters:Dynamic, initial_clusters:Dynamic, distance_metric:Dynamic, random_seed:Dynamic, use_mini_batch:Dynamic, mini_batch_steps_per_iteration:Dynamic, kmeans_plus_plus_num_retries:Dynamic, relative_tolerance:Dynamic, feature_columns:Dynamic):Void;
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
		Model function for the estimator.
		
		Note that this does not take a `labels` arg. This works, but `input_fn` must
		return either `features` or, equivalently, `(features, None)`.
		
		Args:
		  features: The input points. See `tf.estimator.Estimator`.
		  mode: See `tf.estimator.Estimator`.
		  config: See `tf.estimator.Estimator`.
		
		Returns:
		  A `tf.estimator.EstimatorSpec` (see `tf.estimator.Estimator`) specifying
		  this behavior:
		    * `train_op`: Execute one mini-batch or full-batch run of Lloyd's
		         algorithm.
		    * `loss`: The sum of the squared distances from each input point to its
		         closest center.
		    * `eval_metric_ops`: Maps `SCORE` to `loss`.
		    * `predictions`: Maps `ALL_DISTANCES` to the distance from each input
		         point to each cluster center; maps `CLUSTER_INDEX` to the index of
		         the closest cluster center for each input point.
	**/
	public function model_fn(features:Dynamic, mode:Dynamic, config:Dynamic):Dynamic;
}