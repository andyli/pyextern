/* This file is generated, do not edit! */
package tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell;
@:pythonImport("tensorflow.contrib.grid_rnn.python.ops.grid_rnn_cell", "GridRNNCell") extern class GridRNNCell {
	/**
		Run one step of GridRNN.
		
		Args:
		  inputs: input Tensor, 2D, batch x input_size. Or None
		  state: state Tensor, 2D, batch x state_size. Note that state_size =
		    cell_state_size * recurrent_dims
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
	public function __deepcopy__(memo:Dynamic):Dynamic;
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
		  output_dims: int or list, List of dimensions from which the output will be
		    recorded.
		  priority_dims: int or list, List of dimensions to be considered as
		    priority dimensions.
		          If None, no dimension is prioritized.
		  non_recurrent_dims: int or list, List of dimensions that are not
		    recurrent.
		          The transfer function for non-recurrent dimensions is specified
		            via `non_recurrent_fn`, which is
		            default to be `tensorflow.nn.relu`.
		  tied: bool, Whether to share the weights among the dimensions of this
		    GridRNN cell.
		          If there are non-recurrent dimensions in the grid, weights are
		            shared between each group of recurrent and non-recurrent
		            dimensions.
		  cell_fn: function, a function which returns the recurrent cell object.
		    Has to be in the following signature:
		          ```
		          def cell_func(num_units):
		            # ...
		          ```
		          and returns an object of type `RNNCell`. If None, LSTMCell with
		            default parameters will be used.
		    Note that if you use a custom RNNCell (with `cell_fn`), it is your
		    responsibility to make sure the inner cell use `state_is_tuple=True`.
		
		  non_recurrent_fn: a tensorflow Op that will be the transfer function of
		    the non-recurrent dimensions
		  state_is_tuple: If True, accepted and returned states are tuples of the
		    states of the recurrent dimensions. If False, they are concatenated
		    along the column axis. The latter behavior will soon be deprecated.
		
		    Note that if you use a custom RNNCell (with `cell_fn`), it is your
		    responsibility to make sure the inner cell use `state_is_tuple=True`.
		
		  output_is_tuple: If True, the output is a tuple of the outputs of the
		    recurrent dimensions. If False, they are concatenated along the
		    column axis. The later behavior will soon be deprecated.
		
		Raises:
		  TypeError: if cell_fn does not return an RNNCell instance.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?num_dims:Dynamic, ?input_dims:Dynamic, ?output_dims:Dynamic, ?priority_dims:Dynamic, ?non_recurrent_dims:Dynamic, ?tied:Dynamic, ?cell_fn:Dynamic, ?non_recurrent_fn:Dynamic, ?state_is_tuple:Dynamic, ?output_is_tuple:Dynamic):Dynamic;
	/**
		Initialize the parameters of a Grid RNN cell
		
		Args:
		  num_units: int, The number of units in all dimensions of this GridRNN cell
		  num_dims: int, Number of dimensions of this grid.
		  input_dims: int or list, List of dimensions which will receive input data.
		  output_dims: int or list, List of dimensions from which the output will be
		    recorded.
		  priority_dims: int or list, List of dimensions to be considered as
		    priority dimensions.
		          If None, no dimension is prioritized.
		  non_recurrent_dims: int or list, List of dimensions that are not
		    recurrent.
		          The transfer function for non-recurrent dimensions is specified
		            via `non_recurrent_fn`, which is
		            default to be `tensorflow.nn.relu`.
		  tied: bool, Whether to share the weights among the dimensions of this
		    GridRNN cell.
		          If there are non-recurrent dimensions in the grid, weights are
		            shared between each group of recurrent and non-recurrent
		            dimensions.
		  cell_fn: function, a function which returns the recurrent cell object.
		    Has to be in the following signature:
		          ```
		          def cell_func(num_units):
		            # ...
		          ```
		          and returns an object of type `RNNCell`. If None, LSTMCell with
		            default parameters will be used.
		    Note that if you use a custom RNNCell (with `cell_fn`), it is your
		    responsibility to make sure the inner cell use `state_is_tuple=True`.
		
		  non_recurrent_fn: a tensorflow Op that will be the transfer function of
		    the non-recurrent dimensions
		  state_is_tuple: If True, accepted and returned states are tuples of the
		    states of the recurrent dimensions. If False, they are concatenated
		    along the column axis. The latter behavior will soon be deprecated.
		
		    Note that if you use a custom RNNCell (with `cell_fn`), it is your
		    responsibility to make sure the inner cell use `state_is_tuple=True`.
		
		  output_is_tuple: If True, the output is a tuple of the outputs of the
		    recurrent dimensions. If False, they are concatenated along the
		    column axis. The later behavior will soon be deprecated.
		
		Raises:
		  TypeError: if cell_fn does not return an RNNCell instance.
	**/
	public function new(num_units:Dynamic, ?num_dims:Dynamic, ?input_dims:Dynamic, ?output_dims:Dynamic, ?priority_dims:Dynamic, ?non_recurrent_dims:Dynamic, ?tied:Dynamic, ?cell_fn:Dynamic, ?non_recurrent_fn:Dynamic, ?state_is_tuple:Dynamic, ?output_is_tuple:Dynamic):Void;
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
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `inputs` verify the input assumptions
		of the layer (if any). If not, a clear and actional exception gets raised.
		
		Arguments:
		    inputs: input tensor or list of input tensors.
		
		Raises:
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	public function _assert_input_compatibility(inputs:Dynamic):Dynamic;
	/**
		Total size of the state of the inner cell used in this grid.
		
		Returns:
		  Total size of the state of the inner cell.
	**/
	public function _cell_state_size():Dynamic;
	/**
		Computes the output shape of the layer given the input shape.
		
		Assumes that the layer will be built to match that input shape.
		If this method is not implemented by child classes, the default
		assumption will be that the layer does not alter the shape of the tensors
		passing through it.
		
		Args:
		  input_shape: A (possibly nested tuple of) `TensorShape`.  It need not
		    be fully defined (e.g. the batch size may be unknown).
		
		Returns:
		  A (possibly nested tuple of) `TensorShape`.
		
		Raises:
		  TypeError: if `input_shape` is not a (possibly nested tuple of)
		    `TensorShape`.
		  ValueError: if `input_shape` is incomplete or is incompatible with the
		    the layer.
	**/
	public function _compute_output_shape(input_shape:Dynamic):Dynamic;
	/**
		Extract the cell and previous output tensors from the given state.
		
		Args:
		  state: The RNN state.
		
		Returns:
		  Tuple of the cell value, previous output, and cell_output_size.
		
		Raises:
		  ValueError: If len(self._config.recurrents) != len(state).
	**/
	public function _extract_states(state:Dynamic):Dynamic;
	/**
		Fills in c_prev and m_prev with projected input, for input dimensions.
		
		Args:
		  inputs: inputs tensor
		  c_prev: cell value
		  m_prev: previous output
		  with_c: boolean; whether to include project_c.
		
		Raises:
		  ValueError: if len(self._config.input) != len(inputs)
	**/
	public function _project_input(inputs:Dynamic, c_prev:Dynamic, m_prev:Dynamic, with_c:Dynamic):Dynamic;
	public function _rnn_get_variable(getter:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _set_scope(?scope:Dynamic):Dynamic;
	/**
		Add loss tensor(s), potentially dependent on layer inputs.
		
		Some losses (for instance, activity regularization losses) may be dependent
		on the inputs passed when calling a layer. Hence, when reusing a same layer
		on different inputs `a` and `b`, some entries in `layer.losses` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_losses_for` method allows to retrieve the losses relevant to a
		specific set of inputs.
		
		Arguments:
		  losses: Loss tensor, or list/tuple of tensors.
		  inputs: Optional input tensor(s) that the loss(es) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the losses are created. If `None` is passed, the losses are assumed
		    to be unconditional, and will apply across all dataflows of the layer
		    (e.g. weight regularization losses).
	**/
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Add update op(s), potentially dependent on layer inputs.
		
		Weight updates (for instance, the updates of the moving mean and variance
		in a BatchNormalization layer) may be dependent on the inputs passed
		when calling a layer. Hence, when reusing a same layer on
		different inputs `a` and `b`, some entries in `layer.updates` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_updates_for` method allows to retrieve the updates relevant to a
		specific set of inputs.
		
		Arguments:
		  updates: Update op, or list/tuple of update ops.
		  inputs: Optional input tensor(s) that the update(s) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the updates are created. If `None` is passed, the updates are assumed
		    to be unconditional, and will apply across all dataflows of the layer.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Adds a new variable to the layer, or gets an existing one; returns it.
		
		Arguments:
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype`.
		  initializer: initializer instance (callable).
		  regularizer: regularizer instance (callable).
		  trainable: whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		
		Returns:
		  The created variable.
	**/
	public function add_variable(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Apply the layer on a input.
		
		This simply wraps `self.__call__`.
		
		Arguments:
		  inputs: Input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
	**/
	public function apply(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates the variables of the layer.
		    
	**/
	public function build(_:Dynamic):Dynamic;
	/**
		The logic of the layer lives here.
		
		Arguments:
		  inputs: input tensor(s).
		 **kwargs: additional keyword arguments.
		
		Returns:
		  Output tensor(s).
	**/
	public function call(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Retrieves losses relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__`
		    method at the time the losses were created.
		    If you pass `inputs=None`, unconditional losses are returned,
		    such as weight regularization losses.
		
		Returns:
		  List of loss tensors of the layer that depend on `inputs`.
	**/
	public function get_losses_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves updates relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__` method
		    at the time the updates were created.
		    If you pass `inputs=None`, unconditional updates are returned.
		
		Returns:
		  List of update ops of the layer that depend on `inputs`.
	**/
	public function get_updates_for(inputs:Dynamic):Dynamic;
	public var graph : Dynamic;
	public var losses : Dynamic;
	public var non_trainable_variables : Dynamic;
	public var non_trainable_weights : Dynamic;
	/**
		Integer or TensorShape: size of outputs produced by this cell.
	**/
	public var output_size : Dynamic;
	public var scope_name : Dynamic;
	/**
		size(s) of state(s) used by this cell.
		
		It can be represented by an Integer, a TensorShape or a tuple of Integers
		or TensorShapes.
	**/
	public var state_size : Dynamic;
	public var trainable_variables : Dynamic;
	public var trainable_weights : Dynamic;
	public var updates : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Returns:
		  A list of variables.
	**/
	public var variables : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Returns:
		  A list of variables.
	**/
	public var weights : Dynamic;
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