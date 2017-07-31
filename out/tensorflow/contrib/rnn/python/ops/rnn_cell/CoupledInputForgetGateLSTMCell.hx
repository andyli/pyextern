/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn_cell;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn_cell", "CoupledInputForgetGateLSTMCell") extern class CoupledInputForgetGateLSTMCell {
	/**
		Run this RNN cell on inputs, starting from the given state.
		
		Args:
		  inputs: `2-D` tensor with shape `[batch_size x input_size]`.
		  state: if `self.state_size` is an integer, this should be a `2-D Tensor`
		    with shape `[batch_size x self.state_size]`.  Otherwise, if
		    `self.state_size` is a tuple of integers, this should be a tuple
		    with shapes `[batch_size x s] for s in self.state_size`.
		  scope: VariableScope for the created subgraph; defaults to class name.
		
		Returns:
		  A pair containing:
		
		  - Output: A `2-D` tensor with shape `[batch_size x self.output_size]`.
		  - New state: Either a single `2-D` tensor, or a tuple of tensors matching
		    the arity and shapes of `state`.
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
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: bool, set True to enable diagonal/peephole connections.
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
		  reuse: (optional) Python boolean describing whether to reuse variables
		    in an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?use_peepholes:Dynamic, ?initializer:Dynamic, ?num_proj:Dynamic, ?proj_clip:Dynamic, ?num_unit_shards:Dynamic, ?num_proj_shards:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: bool, set True to enable diagonal/peephole connections.
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
		  reuse: (optional) Python boolean describing whether to reuse variables
		    in an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
	**/
	public function new(num_units:Dynamic, ?use_peepholes:Dynamic, ?initializer:Dynamic, ?num_proj:Dynamic, ?proj_clip:Dynamic, ?num_unit_shards:Dynamic, ?num_proj_shards:Dynamic, ?forget_bias:Dynamic, ?state_is_tuple:Dynamic, ?activation:Dynamic, ?reuse:Dynamic):Void;
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
		Run one step of LSTM.
		
		Args:
		  inputs: input Tensor, 2D, batch x num_units.
		  state: if `state_is_tuple` is False, this must be a state Tensor,
		    `2-D, batch x state_size`.  If `state_is_tuple` is True, this must be a
		    tuple of state Tensors, both `2-D`, with column sizes `c_state` and
		    `m_state`.
		
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
	public function call(inputs:Dynamic, state:Dynamic):Dynamic;
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