/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.tensor_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.python.tensor_forest", "RandomForestGraphs") extern class RandomForestGraphs {
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
	public function ___init__(params:Dynamic, ?tree_configs:Dynamic, ?tree_stats:Dynamic, ?device_assigner:Dynamic, ?variables:Dynamic, ?tree_variables_class:Dynamic, ?tree_graphs:Dynamic, ?training:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(params:Dynamic, ?tree_configs:Dynamic, ?tree_stats:Dynamic, ?device_assigner:Dynamic, ?variables:Dynamic, ?tree_variables_class:Dynamic, ?tree_graphs:Dynamic, ?training:Dynamic):Void;
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
	public function _bag_features(tree_num:Dynamic, input_data:Dynamic):Dynamic;
	/**
		Constructs a TF graph for evaluating the leaf impurity of a forest.
		
		Returns:
		  The last op in the graph.
	**/
	public function average_impurity():Dynamic;
	/**
		Constructs a TF graph for evaluating the average size of a forest.
		
		Returns:
		  The average number of nodes over the trees.
	**/
	public function average_size():Dynamic;
	public function feature_importances():Dynamic;
	public function get_all_resource_handles():Dynamic;
	/**
		Constructs a TF graph for evaluating a random forest.
		
		Args:
		  input_data: A tensor or dict of string->Tensor for the input data.
		              This input_data must generate the same spec as the
		              input_data used in training_graph:  the dict must have
		              the same keys, for example, and all tensors must have
		              the same size in their first dimension.
		  **inference_args: Keyword arguments to pass through to each tree.
		
		Returns:
		  A tuple of (probabilities, tree_paths, variance).
		
		Raises:
		  NotImplementedError: If trying to use feature bagging with sparse
		    features.
	**/
	public function inference_graph(input_data:Dynamic, ?inference_args:python.KwArgs<Dynamic>):Dynamic;
	/**
		Constructs a TF graph for training a random forest.
		
		Args:
		  input_data: A tensor or dict of string->Tensor for input data.
		  input_labels: A tensor or placeholder for labels associated with
		    input_data.
		  num_trainers: Number of parallel trainers to split trees among.
		  trainer_id: Which trainer this instance is.
		  **tree_kwargs: Keyword arguments passed to each tree's training_graph.
		
		Returns:
		  The last op in the random forest training graph.
		
		Raises:
		  NotImplementedError: If trying to use bagging with sparse features.
	**/
	public function training_graph(input_data:Dynamic, input_labels:Dynamic, ?num_trainers:Dynamic, ?trainer_id:Dynamic, ?tree_kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function training_loss(features:Dynamic, labels:Dynamic, ?name:Dynamic):Dynamic;
	public function validation_loss(features:Dynamic, labels:Dynamic):Dynamic;
}