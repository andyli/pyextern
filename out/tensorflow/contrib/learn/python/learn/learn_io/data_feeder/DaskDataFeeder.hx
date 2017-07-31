/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.learn_io.data_feeder;
@:pythonImport("tensorflow.contrib.learn.python.learn.learn_io.data_feeder", "DaskDataFeeder") extern class DaskDataFeeder {
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
		Initializes a DaskDataFeeder instance.
		
		Args:
		  x: iterator that returns for each element, returns features.
		  y: iterator that returns for each element, returns 1 or many classes /
		    regression values.
		  n_classes: indicator of how many classes the label has.
		  batch_size: Mini batch size to accumulate.
		  shuffle: Whether to shuffle the inputs.
		  random_state: random state for RNG. Note that it will mutate so use a
		    int value for this if you want consistent sized batches.
		  epochs: Number of epochs to run.
		
		Attributes:
		  x: input features.
		  y: input label.
		  n_classes: number of classes.
		  batch_size: mini batch size to accumulate.
		  input_shape: shape of the input.
		  output_shape: shape of the output.
		  input_dtype: dtype of input.
		  output_dtype: dtype of output.
		
		Raises:
		  ValueError: if `x` or `y` are `dict`, as they are not supported currently.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic, n_classes:Dynamic, batch_size:Dynamic, ?shuffle:Dynamic, ?random_state:Dynamic, ?epochs:Dynamic):Dynamic;
	/**
		Initializes a DaskDataFeeder instance.
		
		Args:
		  x: iterator that returns for each element, returns features.
		  y: iterator that returns for each element, returns 1 or many classes /
		    regression values.
		  n_classes: indicator of how many classes the label has.
		  batch_size: Mini batch size to accumulate.
		  shuffle: Whether to shuffle the inputs.
		  random_state: random state for RNG. Note that it will mutate so use a
		    int value for this if you want consistent sized batches.
		  epochs: Number of epochs to run.
		
		Attributes:
		  x: input features.
		  y: input label.
		  n_classes: number of classes.
		  batch_size: mini batch size to accumulate.
		  input_shape: shape of the input.
		  output_shape: shape of the output.
		  input_dtype: dtype of input.
		  output_dtype: dtype of output.
		
		Raises:
		  ValueError: if `x` or `y` are `dict`, as they are not supported currently.
	**/
	public function new(x:Dynamic, y:Dynamic, n_classes:Dynamic, batch_size:Dynamic, ?shuffle:Dynamic, ?random_state:Dynamic, ?epochs:Dynamic):Void;
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
		Returns a function, that will sample data and provide it to placeholders.
		
		Args:
		  input_placeholder: tf.Placeholder for input features mini batch.
		  output_placeholder: tf.Placeholder for output labels.
		
		Returns:
		  A function that when called samples a random subset of batch size
		  from x and y.
	**/
	public function get_feed_dict_fn(input_placeholder:Dynamic, output_placeholder:Dynamic):Dynamic;
	/**
		Function returns a `dict` with data feed params while training.
		
		Returns:
		  A `dict` with data feed params while training.
	**/
	public function get_feed_params():Dynamic;
}