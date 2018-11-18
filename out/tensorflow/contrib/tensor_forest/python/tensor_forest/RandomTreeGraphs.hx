/* This file is generated, do not edit! */
package tensorflow.contrib.tensor_forest.python.tensor_forest;
@:pythonImport("tensorflow.contrib.tensor_forest.python.tensor_forest", "RandomTreeGraphs") extern class RandomTreeGraphs {
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
	public function ___init__(variables:Dynamic, params:Dynamic, tree_num:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(variables:Dynamic, params:Dynamic, tree_num:Dynamic):Void;
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
	public function feature_usage_counts():Dynamic;
	/**
		Constructs a TF graph for evaluating a random tree.
		
		Args:
		  input_data: A tensor or placeholder for input data.
		  data_spec: A TensorForestDataSpec proto specifying the original
		    input columns.
		  sparse_features: A tf.SparseTensor for sparse input data.
		
		Returns:
		  A tuple of (probabilities, tree_paths).
	**/
	public function inference_graph(input_data:Dynamic, data_spec:Dynamic, ?sparse_features:Dynamic):Dynamic;
	/**
		Constructs a TF graph for evaluating the current number of nodes.
		
		Returns:
		  The current number of nodes in the tree.
	**/
	public function size():Dynamic;
	/**
		Constructs a TF graph for training a random tree.
		
		Args:
		  input_data: A tensor or placeholder for input data.
		  input_labels: A tensor or placeholder for labels associated with
		    input_data.
		  random_seed: The random number generator seed to use for this tree.  0
		    means use the current time as the seed.
		  data_spec: A data_ops.TensorForestDataSpec object specifying the
		    original feature/columns of the data.
		  sparse_features: A tf.SparseTensor for sparse input data.
		  input_weights: A float tensor or placeholder holding per-input weights,
		    or None if all inputs are to be weighted equally.
		
		Returns:
		  The last op in the random tree training graph.
	**/
	public function training_graph(input_data:Dynamic, input_labels:Dynamic, random_seed:Dynamic, data_spec:Dynamic, ?sparse_features:Dynamic, ?input_weights:Dynamic):Dynamic;
}