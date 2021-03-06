/* This file is generated, do not edit! */
package tensorflow.contrib.boosted_trees.lib.learner.batch.base_split_handler;
@:pythonImport("tensorflow.contrib.boosted_trees.lib.learner.batch.base_split_handler", "BaseSplitHandler") extern class BaseSplitHandler {
	static public var __abstractmethods__ : Dynamic;
	/**
		Metaclass for defining Abstract Base Classes (ABCs).
		
		Use this metaclass to create an ABC.  An ABC can be subclassed
		directly, and then acts as a mix-in class.  You can also register
		unrelated concrete classes (even built-in classes) and unrelated
		ABCs as 'virtual subclasses' -- these and their descendants will
		be considered subclasses of the registering ABC by the built-in
		issubclass() function, but the registering ABC won't show up in
		their MRO (Method Resolution Order) nor will method
		implementations defined by the registering ABC be callable (not
		even via super()).
	**/
	static public function __class__(name:Dynamic, bases:Dynamic, namespace:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Constructor for BaseSplitHandler.
		
		Args:
		  l1_regularization: L1 regularization applied for this split handler.
		  l2_regularization: L2 regularization applied for this split handler.
		  tree_complexity_regularization: Tree complexity regularization applied
		      for this split handler.
		  min_node_weight: Minimum sum of weights of examples in each partition to
		      be considered for splitting.
		  feature_column_group_id: Feature column group index.
		  gradient_shape: A TensorShape, containing shape of gradients.
		  hessian_shape: A TensorShape, containing shape of hessians.
		  multiclass_strategy: Strategy describing how to treat multiclass problems.
		  loss_uses_sum_reduction: A scalar boolean tensor that specifies whether
		      SUM or MEAN reduction was used for the loss.
		  name: An optional handler name.
	**/
	@:native("__init__")
	public function ___init__(l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, feature_column_group_id:Dynamic, gradient_shape:Dynamic, hessian_shape:Dynamic, multiclass_strategy:Dynamic, ?loss_uses_sum_reduction:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Constructor for BaseSplitHandler.
		
		Args:
		  l1_regularization: L1 regularization applied for this split handler.
		  l2_regularization: L2 regularization applied for this split handler.
		  tree_complexity_regularization: Tree complexity regularization applied
		      for this split handler.
		  min_node_weight: Minimum sum of weights of examples in each partition to
		      be considered for splitting.
		  feature_column_group_id: Feature column group index.
		  gradient_shape: A TensorShape, containing shape of gradients.
		  hessian_shape: A TensorShape, containing shape of hessians.
		  multiclass_strategy: Strategy describing how to treat multiclass problems.
		  loss_uses_sum_reduction: A scalar boolean tensor that specifies whether
		      SUM or MEAN reduction was used for the loss.
		  name: An optional handler name.
	**/
	public function new(l1_regularization:Dynamic, l2_regularization:Dynamic, tree_complexity_regularization:Dynamic, min_node_weight:Dynamic, feature_column_group_id:Dynamic, gradient_shape:Dynamic, hessian_shape:Dynamic, multiclass_strategy:Dynamic, ?loss_uses_sum_reduction:Dynamic, ?name:Dynamic):Void;
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
	static public var _abc_cache : Dynamic;
	static public var _abc_negative_cache : Dynamic;
	static public var _abc_negative_cache_version : Dynamic;
	static public var _abc_registry : Dynamic;
	/**
		Create the best split using the accumulated stats and flush the state.
		
		This should only be called by the master.
		
		Args:
		  stamp_token: An int32 scalar tensor containing the current stamp token.
		  next_stamp_token: An int32 scalar tensor containing the stamp token for
		    the next iteration.
		  class_id: what class id the handler gathers stats for (for tree per class
		    strategy). When class_id=-1, the strategy is not tree per class.
		Returns:
		  A tuple (are_splits_ready, partition_id, gain, split_info) where
		  are_splits_ready is a scalar boolean tensor, partition_id is a rank 1,
		  int32 tensor, gain is a rank 1 float32 tensor and split_info is a rank 1
		  string tensor containing serialized SplitInfo protos.
	**/
	public function make_splits(stamp_token:Dynamic, next_stamp_token:Dynamic, class_id:Dynamic):Dynamic;
	/**
		Resets the state maintained by the handler.
	**/
	public function reset(stamp_token:Dynamic, next_stamp_token:Dynamic):Dynamic;
	/**
		Returns the list of `ScheduledOp`s required for update_stats.
	**/
	public function scheduled_reads():Dynamic;
	/**
		Updates the state for this split handler.
		
		Args:
		  stamp_token: An int32 scalar tensor containing the current stamp token.
		  example_partition_ids: A dense tensor, containing an int32 for each
		    example which is the partition id that the example ends up in.
		  gradients: A dense tensor of gradients.
		  hessians: A dense tensor of hessians.
		  empty_gradients: A dense empty tensor of the same shape (for dimensions >
		    0) as gradients.
		  empty_hessians: A dense empty tensor of the same shape (for dimensions >
		    0) as hessians.
		  weights: A dense float32 tensor with a weight for each example.
		  is_active: A boolean tensor that says if this handler is active or not.
		      One value for the current layer and one value for the next layer.
		  scheduled_reads: List of results from the scheduled reads.
		
		Returns:
		  A tuple of the op that updates the stats for this handler and a list of
		  `ScheduledOp`s.
	**/
	public function update_stats(stamp_token:Dynamic, example_partition_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, empty_gradients:Dynamic, empty_hessians:Dynamic, weights:Dynamic, is_active:Dynamic, scheduled_reads:Dynamic):Dynamic;
	/**
		Updates the state for this split handler running the scheduled I/O.
		
		Args:
		  stamp_token: An int32 scalar tensor containing the current stamp token.
		  example_partition_ids: A dense tensor, containing an int32 for each
		    example which is the partition id that the example ends up in.
		  gradients: A dense tensor of gradients.
		  hessians: A dense tensor of hessians.
		  empty_gradients: A dense empty tensor of the same shape (for dimensions >
		    0) as gradients.
		  empty_hessians: A dense empty tensor of the same shape (for dimensions >
		    0) as hessians.
		  weights: A dense float32 tensor with a weight for each example.
		  is_active: A boolean tensor that says if this handler is active or not.
		      One value for the current layer and one value for the next layer.
		
		Returns:
		  Op that updates the stats for this handler.
	**/
	public function update_stats_sync(stamp_token:Dynamic, example_partition_ids:Dynamic, gradients:Dynamic, hessians:Dynamic, empty_gradients:Dynamic, empty_hessians:Dynamic, weights:Dynamic, is_active:Dynamic):Dynamic;
}