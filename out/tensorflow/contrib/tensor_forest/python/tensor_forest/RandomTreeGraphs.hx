/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.tensor_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.python.tensor_forest", "RandomTreeGraphs") extern class RandomTreeGraphs {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(variables:Dynamic, params:Dynamic, t_ops:Dynamic, i_ops:Dynamic, tree_num:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(variables:Dynamic, params:Dynamic, t_ops:Dynamic, i_ops:Dynamic, tree_num:Dynamic):Void;
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
		Calculate the Gini impurity.
		
		If c(i) denotes the i-th class count and c = sum_i c(i) then
		  score = 1 - sum_i ( c(i) / c )^2
		
		Args:
		  class_counts: A 2-D tensor of per-class counts, usually a slice or
		    gather from variables.node_sums.
		
		Returns:
		  A 1-D tensor of the Gini impurities for each row in the input.
	**/
	public function _gini(class_counts:Dynamic):Dynamic;
	/**
		Calculate the variance for each row of the input tensors.
		
		Variance is V = E[x^2] - (E[x])^2.
		
		Args:
		  sums: A tensor containing output sums, usually a slice from
		    variables.node_sums.  Should contain the number of examples seen
		    in index 0 so we can calculate expected value.
		  squares: Same as sums, but sums of squares.
		
		Returns:
		  A 1-D tensor of the variances for each row in the input.
	**/
	public function _variance(sums:Dynamic, squares:Dynamic):Dynamic;
	/**
		Our split score is the Gini impurity times the number of examples.
		
		If c(i) denotes the i-th class count and c = sum_i c(i) then
		  score = c * (1 - sum_i ( c(i) / c )^2 )
		        = c - sum_i c(i)^2 / c
		Args:
		  class_counts: A 2-D tensor of per-class counts, usually a slice or
		    gather from variables.node_sums.
		
		Returns:
		  A 1-D tensor of the Gini impurities for each row in the input.
	**/
	public function _weighted_gini(class_counts:Dynamic):Dynamic;
	/**
		Constructs a TF graph for evaluating the average leaf impurity of a tree.
		
		If in regression mode, this is the leaf variance. If in classification mode,
		this is the gini impurity.
		
		Returns:
		  The last op in the graph.
	**/
	public function average_impurity():Dynamic;
	/**
		Perform any operations that should be done at the end of an iteration.
		
		This is mostly useful for subclasses that need to reset variables after
		an iteration, such as ones that are used to finish nodes.
		
		Returns:
		  A list of operations.
	**/
	public function finish_iteration():Dynamic;
	public function get_stats(session:Dynamic):Dynamic;
	/**
		Constructs a TF graph for evaluating a random tree.
		
		Args:
		  input_data: A tensor or SparseTensor or placeholder for input data.
		  data_spec: A list of tf.dtype values specifying the original types of
		    each column.
		
		Returns:
		  The last op in the random tree inference graph.
	**/
	public function inference_graph(input_data:Dynamic, data_spec:Dynamic):Dynamic;
	/**
		Constructs a TF graph for evaluating the current number of nodes.
		
		Returns:
		  The current number of nodes in the tree.
	**/
	public function size():Dynamic;
	/**
		Constructs a TF graph for training a random tree.
		
		Args:
		  input_data: A tensor or SparseTensor or placeholder for input data.
		  input_labels: A tensor or placeholder for labels associated with
		    input_data.
		  random_seed: The random number generator seed to use for this tree.  0
		    means use the current time as the seed.
		  data_spec: A list of tf.dtype values specifying the original types of
		    each column.
		  epoch: A tensor or placeholder for the epoch the training data comes from.
		
		Returns:
		  The last op in the random tree training graph.
	**/
	public function training_graph(input_data:Dynamic, input_labels:Dynamic, random_seed:Dynamic, data_spec:Dynamic, ?epoch:Dynamic):Dynamic;
	public function tree_initialization():Dynamic;
}