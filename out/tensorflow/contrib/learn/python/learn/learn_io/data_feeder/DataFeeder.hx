/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.data_feeder;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.data_feeder", "DataFeeder") extern class DataFeeder {
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
		Initializes a DataFeeder instance.
		
		Args:
		  x: Feature Nd numpy matrix of shape `[n_samples, n_features, ...]`.
		  y: Target vector, either floats for regression or class id for
		    classification. If matrix, will consider as a sequence
		    of targets. Can be `None` for unsupervised setting.
		  n_classes: Number of classes, 0 and 1 are considered regression, `None`
		    will pass through the input labels without one-hot conversion.
		  batch_size: Mini-batch size to accumulate.
		  shuffle: Whether to shuffle `x`.
		  random_state: Numpy `RandomState` object to reproduce sampling.
		  epochs: Number of times to iterate over input data before raising
		    `StopIteration` exception.
		
		Attributes:
		  x: Input features.
		  y: Input target.
		  n_classes: Number of classes (if `None`, pass through indices without
		    one-hot conversion).
		  batch_size: Mini-batch size to accumulate.
		  input_shape: Shape of the input.
		  output_shape: Shape of the output.
		  input_dtype: DType of input.
		  output_dtype: DType of output.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?random_state:Dynamic, ?epochs:Dynamic):Dynamic;
	/**
		Initializes a DataFeeder instance.
		
		Args:
		  x: Feature Nd numpy matrix of shape `[n_samples, n_features, ...]`.
		  y: Target vector, either floats for regression or class id for
		    classification. If matrix, will consider as a sequence
		    of targets. Can be `None` for unsupervised setting.
		  n_classes: Number of classes, 0 and 1 are considered regression, `None`
		    will pass through the input labels without one-hot conversion.
		  batch_size: Mini-batch size to accumulate.
		  shuffle: Whether to shuffle `x`.
		  random_state: Numpy `RandomState` object to reproduce sampling.
		  epochs: Number of times to iterate over input data before raising
		    `StopIteration` exception.
		
		Attributes:
		  x: Input features.
		  y: Input target.
		  n_classes: Number of classes (if `None`, pass through indices without
		    one-hot conversion).
		  batch_size: Mini-batch size to accumulate.
		  input_shape: Shape of the input.
		  output_shape: Shape of the output.
		  input_dtype: DType of input.
		  output_dtype: DType of output.
	**/
	public function new(x:Dynamic, y:Dynamic, n_classes:Dynamic, ?batch_size:Dynamic, ?shuffle:Dynamic, ?random_state:Dynamic, ?epochs:Dynamic):Void;
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
	public var batch_size : Dynamic;
	/**
		Returns a function that samples data into given placeholders.
		
		Returns:
		  A function that when called samples a random subset of batch size
		  from x and y.
	**/
	public function get_feed_dict_fn():Dynamic;
	/**
		Function returns a dict with data feed params while training.
		
		Returns:
		  A dict with data feed params while training.
	**/
	public function get_feed_params():Dynamic;
	/**
		Builds inputs in the graph.
		
		Returns:
		  Two placeholders for inputs and outputs.
	**/
	public function input_builder():Dynamic;
	public var input_dtype : Dynamic;
	/**
		Adds a placeholder variable for the epoch to the graph.
		
		Returns:
		  The epoch placeholder.
	**/
	public function make_epoch_variable():Dynamic;
	public var output_dtype : Dynamic;
	/**
		Sets placeholders for this data feeder.
		
		Args:
		  input_placeholder: Placeholder for `x` variable. Should match shape
		    of the examples in the x dataset.
		  output_placeholder: Placeholder for `y` variable. Should match
		    shape of the examples in the y dataset. Can be None.
	**/
	public function set_placeholders(input_placeholder:Dynamic, output_placeholder:Dynamic):Dynamic;
	public var shuffle : Dynamic;
	public var x : Dynamic;
	public var y : Dynamic;
}