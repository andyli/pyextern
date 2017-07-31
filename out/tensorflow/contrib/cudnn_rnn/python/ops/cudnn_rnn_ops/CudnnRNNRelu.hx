/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops", "CudnnRNNRelu") extern class CudnnRNNRelu {
	static public var _NUM_PARAMS_PER_LAYER : Dynamic;
	/**
		Runs the forward step for the Cudnn LSTM model.
		
		Args:
		  input_data: the input sequence to the LSTM model.
		  input_h: the initial hidden state for h.
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference.
		
		Returns:
		  output: the output sequuence.
		  output_h: the final state for h.
	**/
	public function __call__(input_data:Dynamic, input_h:Dynamic, params:Dynamic, ?is_training:Dynamic):Dynamic;
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
		Creates a Cudnn RNN model from model without hidden-state C.
		
		Args:
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  input_mode: indicate whether there is a linear projection between the
		      input and The actual computation before the first layer. It could be
		      'skip_input', 'linear_input' or 'auto_select'.
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the seed used for initializing dropout.
	**/
	@:native("__init__")
	public function ___init__(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic):Dynamic;
	/**
		Creates a Cudnn RNN model from model without hidden-state C.
		
		Args:
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  input_mode: indicate whether there is a linear projection between the
		      input and The actual computation before the first layer. It could be
		      'skip_input', 'linear_input' or 'auto_select'.
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the seed used for initializing dropout.
	**/
	public function new(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic):Void;
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
	static public var _rnn_mode : Dynamic;
	/**
		Converts params from the canonical format to a specific format of cuDNN.
		
		Args:
		  weights: a Tensor for weight parameters.
		  biases: a Tensor for bias parameters.
		
		Returns:
		  A function for the canonical-to-params-to-specific conversion..
	**/
	public function canonical_to_params(weights:Dynamic, biases:Dynamic):Dynamic;
	/**
		Calculates the size of the opaque parameter buffer needed for this model.
		
		Returns:
		  The calculated parameter buffer size.
	**/
	public function params_size():Dynamic;
	/**
		Converts params from a specific format of cuDNN to the canonical format.
		
		Args:
		  params: a Variable for weight and bias parameters.
		
		Returns:
		  A function for the specific-to-canonical conversion.
	**/
	public function params_to_canonical(params:Dynamic):Dynamic;
}