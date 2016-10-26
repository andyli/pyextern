/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn_cell;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn_cell", "GridLSTMCell") extern class GridLSTMCell {
	/**
		Run one step of LSTM.
		
		Args:
		  inputs: input Tensor, 2D, batch x num_units.
		  state: state Tensor, 2D, batch x state_size.
		  scope: VariableScope for the created subgraph; defaults to "LSTMCell".
		
		Returns:
		  A tuple containing:
		  - A 2D, batch x output_dim, Tensor representing the output of the LSTM
		    after reading "inputs" when previous state was "state".
		    Here output_dim is num_units.
		  - A 2D, batch x state_size, Tensor representing the new state of LSTM
		    after reading "inputs" when previous state was "state".
		Raises:
		  ValueError: if an input_size was specified and the provided inputs have
		    a different dimension.
	**/
	public function __call__(inputs:Dynamic, state:Dynamic, ?scope:Dynamic):Dynamic;
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
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: bool, default False. Set True to enable diagonal/peephole
		    connections.
		  share_time_frequency_weights: bool, default False. Set True to enable
		    shared cell weights between time and frequency LSTMs.
		  cell_clip: (optional) A float value, if provided the cell state is clipped
		    by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices.
		  num_unit_shards: int, How to split the weight matrix.  If >1, the weight
		    matrix is stored across num_unit_shards.
		  forget_bias: float, Biases of the forget gate are initialized by default
		    to 1 in order to reduce the scale of forgetting at the beginning
		    of the training.
		  feature_size: int, The size of the input feature the LSTM spans over.
		  frequency_skip: int, The amount the LSTM filter is shifted by in
		    frequency.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?use_peepholes:Dynamic, ?share_time_frequency_weights:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_unit_shards:Dynamic, ?forget_bias:Dynamic, ?feature_size:Dynamic, ?frequency_skip:Dynamic):Dynamic;
	/**
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: bool, default False. Set True to enable diagonal/peephole
		    connections.
		  share_time_frequency_weights: bool, default False. Set True to enable
		    shared cell weights between time and frequency LSTMs.
		  cell_clip: (optional) A float value, if provided the cell state is clipped
		    by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices.
		  num_unit_shards: int, How to split the weight matrix.  If >1, the weight
		    matrix is stored across num_unit_shards.
		  forget_bias: float, Biases of the forget gate are initialized by default
		    to 1 in order to reduce the scale of forgetting at the beginning
		    of the training.
		  feature_size: int, The size of the input feature the LSTM spans over.
		  frequency_skip: int, The amount the LSTM filter is shifted by in
		    frequency.
	**/
	public function new(num_units:Dynamic, ?use_peepholes:Dynamic, ?share_time_frequency_weights:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_unit_shards:Dynamic, ?forget_bias:Dynamic, ?feature_size:Dynamic, ?frequency_skip:Dynamic):Void;
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
		Make the frequency features.
		
		Args:
		  input_feat: input Tensor, 2D, batch x num_units.
		
		Returns:
		  A list of frequency features, with each element containing:
		  - A 2D, batch x output_dim, Tensor representing the time-frequency feature
		    for that frequency index. Here output_dim is feature_size.
		Raises:
		  ValueError: if input_size cannot be inferred from static shape inference.
	**/
	public function _make_tf_features(input_feat:Dynamic):Dynamic;
	/**
		Integer or TensorShape: size of outputs produced by this cell.
	**/
	public var output_size : Dynamic;
	/**
		size(s) of state(s) used by this cell.
		
		It can be represented by an Integer, a TensorShape or a tuple of Integers
		or TensorShapes.
	**/
	public var state_size : Dynamic;
	/**
		Return zero-filled state tensor(s).
		
		Args:
		  batch_size: int, float, or unit Tensor representing the batch size.
		  dtype: the data type to use for the state.
		
		Returns:
		  If `state_size` is an int or TensorShape, then the return value is a
		  `N-D` tensor of shape `[batch_size x state_size]` filled with zeros.
		
		  If `state_size` is a nested list or tuple, then the return value is
		  a nested list or tuple (of the same structure) of `2-D` tensors with
		the shapes `[batch_size x s]` for each s in `state_size`.
	**/
	public function zero_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
}