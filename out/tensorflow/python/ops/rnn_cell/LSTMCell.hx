/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn_cell;
@:pythonImport("tensorflow.python.ops.rnn_cell", "LSTMCell") extern class LSTMCell {
	/**
		Run one step of LSTM.
		
		Args:
		  inputs: input Tensor, 2D, batch x num_units.
		  state: if `state_is_tuple` is False, this must be a state Tensor,
		    `2-D, batch x state_size`.  If `state_is_tuple` is True, this must be a
		    tuple of state Tensors, both `2-D`, with column sizes `c_state` and
		    `m_state`.
		  scope: VariableScope for the created subgraph; defaults to "LSTMCell".
		
		Returns:
		  A tuple containing:
		  - A `2-D, [batch x output_dim]`, Tensor representing the output of the
		    LSTM after reading `inputs` when previous state was `state`.
		    Here output_dim is:
		       num_proj if num_proj was set,
		       num_units otherwise.
		  - Tensor(s) representing the new state of LSTM after reading `inputs` when
		    the previous state was `state`.  Same type and shape(s) as `state`.
		
		Raises:
		  ValueError: If input size cannot be inferred from inputs via
		    static shape inference.
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
		  input_size: Deprecated and unused.
		  use_peepholes: bool, set True to enable diagonal/peephole connections.
		  cell_clip: (optional) A float value, if provided the cell state is clipped
		    by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices.
		  num_proj: (optional) int, The output dimensionality for the projection
		    matrices.  If None, no projection is performed.
		  proj_clip: (optional) A float value.  If `num_proj > 0` and `proj_clip` is
		  provided, then the projected values are clipped elementwise to within
		  `[-proj_clip, proj_clip]`.
		  num_unit_shards: How to split the weight matrix.  If >1, the weight
		    matrix is stored across num_unit_shards.
		  num_proj_shards: How to split the projection matrix.  If >1, the
		    projection matrix is stored across num_proj_shards.
		  forget_bias: Biases of the forget gate are initialized by default to 1
		    in order to reduce the scale of forgetting at the beginning of
		    the training.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of
		    the `c_state` and `m_state`.  By default (False), they are concatenated
		    along the column axis.  This default behavior will soon be deprecated.
		  activation: Activation function of the inner states.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?input_size:Dynamic, ?use_peepholes:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_proj:Dynamic, ?proj_clip:Dynamic, ?num_unit_shards:Dynamic, ?num_proj_shards:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic):Dynamic;
	/**
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  input_size: Deprecated and unused.
		  use_peepholes: bool, set True to enable diagonal/peephole connections.
		  cell_clip: (optional) A float value, if provided the cell state is clipped
		    by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices.
		  num_proj: (optional) int, The output dimensionality for the projection
		    matrices.  If None, no projection is performed.
		  proj_clip: (optional) A float value.  If `num_proj > 0` and `proj_clip` is
		  provided, then the projected values are clipped elementwise to within
		  `[-proj_clip, proj_clip]`.
		  num_unit_shards: How to split the weight matrix.  If >1, the weight
		    matrix is stored across num_unit_shards.
		  num_proj_shards: How to split the projection matrix.  If >1, the
		    projection matrix is stored across num_proj_shards.
		  forget_bias: Biases of the forget gate are initialized by default to 1
		    in order to reduce the scale of forgetting at the beginning of
		    the training.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of
		    the `c_state` and `m_state`.  By default (False), they are concatenated
		    along the column axis.  This default behavior will soon be deprecated.
		  activation: Activation function of the inner states.
	**/
	public function new(num_units:Dynamic, ?input_size:Dynamic, ?use_peepholes:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_proj:Dynamic, ?proj_clip:Dynamic, ?num_unit_shards:Dynamic, ?num_proj_shards:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic):Void;
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