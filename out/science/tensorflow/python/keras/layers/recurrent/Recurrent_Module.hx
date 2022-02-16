/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.recurrent;
@:pythonImport("tensorflow.python.keras.layers.recurrent") extern class Recurrent_Module {
	static public var RECURRENT_DROPOUT_WARNING_MSG : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the caching device for the RNN variable.
		
		This is useful for distributed training, when variable is not located as same
		device as the training worker. By enabling the device cache, this allows
		worker to read the variable once and cache locally, rather than read it every
		time step from remote when it is needed.
		
		Note that this is assuming the variable that cell needs for each time step is
		having the same value in the forward path, and only gets updated in the
		backprop. It is true for all the default cells (SimpleRNN, GRU, LSTM). If the
		cell body relies on any variable that gets updated every time step, then
		caching device will cause it to read the stall value.
		
		Args:
		  rnn_cell: the rnn cell instance.
	**/
	static public function _caching_device(rnn_cell:Dynamic):Dynamic;
	/**
		Return the dict config for RNN cell wrt to enable_caching_device field.
		
		Since enable_caching_device is a internal implementation detail for speed up
		the RNN variable read when running on the multi remote worker setting, we
		don't want this config to be serialized constantly in the JSON. We will only
		serialize this field when a none default value is used to create the cell.
		Args:
		  rnn_cell: the RNN cell for serialize.
		
		Returns:
		  A dict which contains the JSON config for enable_caching_device value or
		  empty dict if the enable_caching_device value is same as the default value.
	**/
	static public function _config_for_enable_caching_device(rnn_cell:Dynamic):Dynamic;
	static public function _generate_dropout_mask(ones:Dynamic, rate:Dynamic, ?training:Dynamic, ?count:Dynamic):Dynamic;
	/**
		Generate a zero filled tensor with shape [batch_size, state_size].
	**/
	static public function _generate_zero_filled_state(batch_size_tensor:Dynamic, state_size:Dynamic, dtype:Dynamic):Dynamic;
	static public function _generate_zero_filled_state_for_cell(cell:Dynamic, inputs:Dynamic, batch_size:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Check whether the state_size contains multiple states.
	**/
	static public function _is_multiple_state(state_size:Dynamic):Dynamic;
	/**
		Standardizes `__call__` to a single list of tensor inputs.
		
		When running a model loaded from a file, the input tensors
		`initial_state` and `constants` can be passed to `RNN.__call__()` as part
		of `inputs` instead of by the dedicated keyword arguments. This method
		makes sure the arguments are separated and that `initial_state` and
		`constants` are lists of tensors (or None).
		
		Args:
		  inputs: Tensor or list/tuple of tensors. which may include constants
		    and initial states. In that case `num_constant` must be specified.
		  initial_state: Tensor or list of tensors or None, initial states.
		  constants: Tensor or list of tensors or None, constant tensors.
		  num_constants: Expected number of constants (if constants are passed as
		    part of the `inputs` list.
		
		Returns:
		  inputs: Single tensor or tuple of tensors.
		  initial_state: List of tensors or None.
		  constants: List of tensors or None.
	**/
	static public function _standardize_args(inputs:Dynamic, initial_state:Dynamic, constants:Dynamic, num_constants:Dynamic):Dynamic;
	static public function keras_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}