/* This file is generated, do not edit! */
package tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell;
@:pythonImport("tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell", "GridRNNCell") extern class GridRNNCell {
	/**
		Run one step of GridRNN.
		
		Args:
		  inputs: input Tensor, 2D, batch x input_size. Or None
		  state: state Tensor, 2D, batch x state_size. Note that state_size = cell_state_size * recurrent_dims
		  scope: VariableScope for the created subgraph; defaults to "GridRNNCell".
		
		Returns:
		  A tuple containing:
		  - A 2D, batch x output_size, Tensor representing the output of the cell
		    after reading "inputs" when previous state was "state".
		  - A 2D, batch x state_size, Tensor representing the new state of the cell
		    after reading "inputs" when previous state was "state".
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
		Initialize the parameters of a Grid RNN cell
		
		Args:
		  num_units: int, The number of units in all dimensions of this GridRNN cell
		  num_dims: int, Number of dimensions of this grid.
		  input_dims: int or list, List of dimensions which will receive input data.
		  output_dims: int or list, List of dimensions from which the output will be recorded.
		  priority_dims: int or list, List of dimensions to be considered as priority dimensions.
		          If None, no dimension is prioritized.
		  non_recurrent_dims: int or list, List of dimensions that are not recurrent.
		          The transfer function for non-recurrent dimensions is specified via `non_recurrent_fn`,
		          which is default to be `tensorflow.nn.relu`.
		  tied: bool, Whether to share the weights among the dimensions of this GridRNN cell.
		          If there are non-recurrent dimensions in the grid, weights are shared between each
		          group of recurrent and non-recurrent dimensions.
		  cell_fn: function, a function which returns the recurrent cell object. Has to be in the following signature:
		          def cell_func(num_units, input_size):
		            # ...
		
		          and returns an object of type `RNNCell`. If None, LSTMCell with default parameters will be used.
		  non_recurrent_fn: a tensorflow Op that will be the transfer function of the non-recurrent dimensions
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?num_dims:Dynamic, ?input_dims:Dynamic, ?output_dims:Dynamic, ?priority_dims:Dynamic, ?non_recurrent_dims:Dynamic, ?tied:Dynamic, ?cell_fn:Dynamic, ?non_recurrent_fn:Dynamic):Dynamic;
	/**
		Initialize the parameters of a Grid RNN cell
		
		Args:
		  num_units: int, The number of units in all dimensions of this GridRNN cell
		  num_dims: int, Number of dimensions of this grid.
		  input_dims: int or list, List of dimensions which will receive input data.
		  output_dims: int or list, List of dimensions from which the output will be recorded.
		  priority_dims: int or list, List of dimensions to be considered as priority dimensions.
		          If None, no dimension is prioritized.
		  non_recurrent_dims: int or list, List of dimensions that are not recurrent.
		          The transfer function for non-recurrent dimensions is specified via `non_recurrent_fn`,
		          which is default to be `tensorflow.nn.relu`.
		  tied: bool, Whether to share the weights among the dimensions of this GridRNN cell.
		          If there are non-recurrent dimensions in the grid, weights are shared between each
		          group of recurrent and non-recurrent dimensions.
		  cell_fn: function, a function which returns the recurrent cell object. Has to be in the following signature:
		          def cell_func(num_units, input_size):
		            # ...
		
		          and returns an object of type `RNNCell`. If None, LSTMCell with default parameters will be used.
		  non_recurrent_fn: a tensorflow Op that will be the transfer function of the non-recurrent dimensions
	**/
	public function new(num_units:Dynamic, ?num_dims:Dynamic, ?input_dims:Dynamic, ?output_dims:Dynamic, ?priority_dims:Dynamic, ?non_recurrent_dims:Dynamic, ?tied:Dynamic, ?cell_fn:Dynamic, ?non_recurrent_fn:Dynamic):Void;
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
	public var input_size : Dynamic;
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