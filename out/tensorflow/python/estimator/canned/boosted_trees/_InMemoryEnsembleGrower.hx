/* This file is generated, do not edit! */
package tensorflow.python.estimator.canned.boosted_trees;
@:pythonImport("tensorflow.python.estimator.canned.boosted_trees", "_InMemoryEnsembleGrower") extern class _InMemoryEnsembleGrower {
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
		Initializes a grower object.
		
		Args:
		  tree_ensemble: A TreeEnsemble variable.
		  tree_hparams: TODO. collections.namedtuple for hyper parameters.
		  feature_ids_list: a list of lists of feature ids for each bucket size.
		
		Raises:
		  ValueError: when pruning mode is invalid or pruning is used and no tree
		  complexity is set.
	**/
	@:native("__init__")
	public function ___init__(tree_ensemble:Dynamic, tree_hparams:Dynamic, feature_ids_list:Dynamic):Dynamic;
	/**
		Initializes a grower object.
		
		Args:
		  tree_ensemble: A TreeEnsemble variable.
		  tree_hparams: TODO. collections.namedtuple for hyper parameters.
		  feature_ids_list: a list of lists of feature ids for each bucket size.
		
		Raises:
		  ValueError: when pruning mode is invalid or pruning is used and no tree
		  complexity is set.
	**/
	public function new(tree_ensemble:Dynamic, tree_hparams:Dynamic, feature_ids_list:Dynamic):Void;
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
		Updates the ensembles and cache (if needed) with logits prior.
	**/
	public function _center_bias_fn(center_bias_var:Dynamic, mean_gradients:Dynamic, mean_hessians:Dynamic):Dynamic;
	/**
		Updates ensemble based on the best gains from stats summaries.
	**/
	public function _grow_tree_from_stats_summaries(stats_summaries_list:Dynamic, last_layer_nodes_range:Dynamic):Dynamic;
	/**
		Centers bias, if ready, based on statistics.
		
		Args:
		  center_bias_var: A variable that will be updated when bias centering
		    finished.
		  gradients: A rank 2 tensor of gradients.
		  hessians: A rank 2 tensor of hessians.
		
		Returns:
		  An operation for centering bias.
	**/
	public function center_bias(center_bias_var:Dynamic, gradients:Dynamic, hessians:Dynamic):Dynamic;
	/**
		Ops that chief needs to run to initialize the state.
	**/
	public function chief_init_op():Dynamic;
	/**
		Grows a tree, if ready, based on provided statistics.
		
		Args:
		  stats_summaries_list: List of stats summary tensors, representing sums of
		    gradients and hessians for each feature bucket.
		  last_layer_nodes_range: A tensor representing ids of the nodes in the
		    current layer, to be split.
		
		Returns:
		  An op for growing a tree.
	**/
	public function grow_tree(stats_summaries_list:Dynamic, last_layer_nodes_range:Dynamic):Dynamic;
}