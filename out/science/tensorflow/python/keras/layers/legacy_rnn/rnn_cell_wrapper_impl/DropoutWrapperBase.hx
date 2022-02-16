/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.legacy_rnn.rnn_cell_wrapper_impl;
@:pythonImport("tensorflow.python.keras.layers.legacy_rnn.rnn_cell_wrapper_impl", "DropoutWrapperBase") extern class DropoutWrapperBase {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Create a cell with added input, state, and/or output dropout.
		
		If `variational_recurrent` is set to `True` (**NOT** the default behavior),
		then the same dropout mask is applied at every step, as described in:
		[A Theoretically Grounded Application of Dropout in Recurrent
		Neural Networks. Y. Gal, Z. Ghahramani](https://arxiv.org/abs/1512.05287).
		
		Otherwise a different dropout mask is applied at every time step.
		
		Note, by default (unless a custom `dropout_state_filter` is provided),
		the memory state (`c` component of any `LSTMStateTuple`) passing through
		a `DropoutWrapper` is never modified.  This behavior is described in the
		above article.
		
		Args:
		  cell: an RNNCell, a projection to output_size is added to it.
		  input_keep_prob: unit Tensor or float between 0 and 1, input keep
		    probability; if it is constant and 1, no input dropout will be added.
		  output_keep_prob: unit Tensor or float between 0 and 1, output keep
		    probability; if it is constant and 1, no output dropout will be added.
		  state_keep_prob: unit Tensor or float between 0 and 1, output keep
		    probability; if it is constant and 1, no output dropout will be added.
		    State dropout is performed on the outgoing states of the cell. **Note**
		    the state components to which dropout is applied when `state_keep_prob`
		    is in `(0, 1)` are also determined by the argument
		    `dropout_state_filter_visitor` (e.g. by default dropout is never applied
		    to the `c` component of an `LSTMStateTuple`).
		  variational_recurrent: Python bool.  If `True`, then the same dropout
		    pattern is applied across all time steps per run call. If this parameter
		    is set, `input_size` **must** be provided.
		  input_size: (optional) (possibly nested tuple of) `TensorShape` objects
		    containing the depth(s) of the input tensors expected to be passed in to
		    the `DropoutWrapper`.  Required and used **iff** `variational_recurrent
		    = True` and `input_keep_prob < 1`.
		  dtype: (optional) The `dtype` of the input, state, and output tensors.
		    Required and used **iff** `variational_recurrent = True`.
		  seed: (optional) integer, the randomness seed.
		  dropout_state_filter_visitor: (optional), default: (see below).  Function
		    that takes any hierarchical level of the state and returns a scalar or
		    depth=1 structure of Python booleans describing which terms in the state
		    should be dropped out.  In addition, if the function returns `True`,
		    dropout is applied across this sublevel.  If the function returns
		    `False`, dropout is not applied across this entire sublevel.
		    Default behavior: perform dropout on all terms except the memory (`c`)
		      state of `LSTMCellState` objects, and don't try to apply dropout to
		    `TensorArray` objects: ```
		    def dropout_state_filter_visitor(s):
		      if isinstance(s, LSTMCellState): # Never perform dropout on the c
		        state. return LSTMCellState(c=False, h=True)
		      elif isinstance(s, TensorArray): return False return True ```
		  **kwargs: dict of keyword arguments for base layer.
		
		Raises:
		  TypeError: if `cell` is not an `RNNCell`, or `keep_state_fn` is provided
		    but not `callable`.
		  ValueError: if any of the keep_probs are not between 0 and 1.
	**/
	@:native("__init__")
	public function ___init__(cell:Dynamic, ?input_keep_prob:Dynamic, ?output_keep_prob:Dynamic, ?state_keep_prob:Dynamic, ?variational_recurrent:Dynamic, ?input_size:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?dropout_state_filter_visitor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a cell with added input, state, and/or output dropout.
		
		If `variational_recurrent` is set to `True` (**NOT** the default behavior),
		then the same dropout mask is applied at every step, as described in:
		[A Theoretically Grounded Application of Dropout in Recurrent
		Neural Networks. Y. Gal, Z. Ghahramani](https://arxiv.org/abs/1512.05287).
		
		Otherwise a different dropout mask is applied at every time step.
		
		Note, by default (unless a custom `dropout_state_filter` is provided),
		the memory state (`c` component of any `LSTMStateTuple`) passing through
		a `DropoutWrapper` is never modified.  This behavior is described in the
		above article.
		
		Args:
		  cell: an RNNCell, a projection to output_size is added to it.
		  input_keep_prob: unit Tensor or float between 0 and 1, input keep
		    probability; if it is constant and 1, no input dropout will be added.
		  output_keep_prob: unit Tensor or float between 0 and 1, output keep
		    probability; if it is constant and 1, no output dropout will be added.
		  state_keep_prob: unit Tensor or float between 0 and 1, output keep
		    probability; if it is constant and 1, no output dropout will be added.
		    State dropout is performed on the outgoing states of the cell. **Note**
		    the state components to which dropout is applied when `state_keep_prob`
		    is in `(0, 1)` are also determined by the argument
		    `dropout_state_filter_visitor` (e.g. by default dropout is never applied
		    to the `c` component of an `LSTMStateTuple`).
		  variational_recurrent: Python bool.  If `True`, then the same dropout
		    pattern is applied across all time steps per run call. If this parameter
		    is set, `input_size` **must** be provided.
		  input_size: (optional) (possibly nested tuple of) `TensorShape` objects
		    containing the depth(s) of the input tensors expected to be passed in to
		    the `DropoutWrapper`.  Required and used **iff** `variational_recurrent
		    = True` and `input_keep_prob < 1`.
		  dtype: (optional) The `dtype` of the input, state, and output tensors.
		    Required and used **iff** `variational_recurrent = True`.
		  seed: (optional) integer, the randomness seed.
		  dropout_state_filter_visitor: (optional), default: (see below).  Function
		    that takes any hierarchical level of the state and returns a scalar or
		    depth=1 structure of Python booleans describing which terms in the state
		    should be dropped out.  In addition, if the function returns `True`,
		    dropout is applied across this sublevel.  If the function returns
		    `False`, dropout is not applied across this entire sublevel.
		    Default behavior: perform dropout on all terms except the memory (`c`)
		      state of `LSTMCellState` objects, and don't try to apply dropout to
		    `TensorArray` objects: ```
		    def dropout_state_filter_visitor(s):
		      if isinstance(s, LSTMCellState): # Never perform dropout on the c
		        state. return LSTMCellState(c=False, h=True)
		      elif isinstance(s, TensorArray): return False return True ```
		  **kwargs: dict of keyword arguments for base layer.
		
		Raises:
		  TypeError: if `cell` is not an `RNNCell`, or `keep_state_fn` is provided
		    but not `callable`.
		  ValueError: if any of the keep_probs are not between 0 and 1.
	**/
	public function new(cell:Dynamic, ?input_keep_prob:Dynamic, ?output_keep_prob:Dynamic, ?state_keep_prob:Dynamic, ?variational_recurrent:Dynamic, ?input_size:Dynamic, ?dtype:Dynamic, ?seed:Dynamic, ?dropout_state_filter_visitor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	/**
		Runs the wrapped cell and applies dropout.
		
		Args:
		  inputs: A tensor with wrapped cell's input.
		  state: A tensor or tuple of tensors with wrapped cell's state.
		  cell_call_fn: Wrapped cell's method to use for step computation (cell's
		    `__call__` or 'call' method).
		  **kwargs: Additional arguments.
		
		Returns:
		  A pair containing:
		
		  - Output: A tensor with cell's output.
		  - New state: A tensor or tuple of tensors with new wrapped cell's state.
	**/
	public function _call_wrapped_cell(inputs:Dynamic, state:Dynamic, cell_call_fn:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Decides whether to perform standard dropout or recurrent dropout.
	**/
	public function _dropout(values:Dynamic, salt_prefix:Dynamic, recurrent_noise:Dynamic, keep_prob:Dynamic, ?shallow_filtered_substructure:Dynamic):Dynamic;
	public function _gen_seed(salt_prefix:Dynamic, index:Dynamic):Dynamic;
	/**
		Performs dropout given the pre-calculated noise tensor.
	**/
	public function _variational_recurrent_dropout_value(unused_index:Dynamic, value:Dynamic, noise:Dynamic, keep_prob:Dynamic):Dynamic;
	public function build(inputs_shape:Dynamic):Dynamic;
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
	/**
		Returns the config of the dropout wrapper.
	**/
	public function get_config():Dynamic;
	public var output_size : Dynamic;
	public var state_size : Dynamic;
	public var wrapped_cell : Dynamic;
	public function zero_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
}