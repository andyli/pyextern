/* This file is generated, do not edit! */
package tensorflow.python.keras.layers.recurrent;
@:pythonImport("tensorflow.python.keras.layers.recurrent") extern class Recurrent_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Utility function convert variable to CuDNN compatible parameter.
		
		Note that Keras weights for kernels are different from the CuDNN format. Eg.:
		
		```
		  Keras                 CuDNN
		  [[0, 1, 2],  <--->  [[0, 2, 4],
		   [3, 4, 5]]          [1, 3, 5]]
		```
		
		If the input weights need to be in a unified format, then set
		`transpose_weights=True` to convert the weights.
		
		Args:
		  weights: list of weights for the individual kernels and recurrent kernels.
		  biases: list of biases for individual gate.
		  shape: the shape for the converted variables that will be feed to CuDNN.
		  transpose_weights: boolean, whether to transpose the weights.
		
		Returns:
		  The converted weights that can be feed to CuDNN ops as param.
	**/
	static public function _canonical_to_params(weights:Dynamic, biases:Dynamic, shape:Dynamic, ?transpose_weights:Dynamic):Dynamic;
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
		
		Arguments:
		    inputs: Tensor or list/tuple of tensors. which may include constants
		      and initial states. In that case `num_constant` must be specified.
		    initial_state: Tensor or list of tensors or None, initial states.
		    constants: Tensor or list of tensors or None, constant tensors.
		    num_constants: Expected number of constants (if constants are passed as
		      part of the `inputs` list.
		    num_inputs: Expected number of real input tensors (exclude initial_states
		      and constants).
		
		Returns:
		    inputs: Single tensor or tuple of tensors.
		    initial_state: List of tensors or None.
		    constants: List of tensors or None.
	**/
	static public function _standardize_args(inputs:Dynamic, initial_state:Dynamic, constants:Dynamic, num_constants:Dynamic, ?num_inputs:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		LSTM with CuDNN implementation which is only available for GPU.
	**/
	static public function cudnn_lstm(inputs:Dynamic, input_h:Dynamic, input_c:Dynamic, kernel:Dynamic, recurrent_kernel:Dynamic, bias:Dynamic, time_major:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		LSTM with standard kernel implementation.
		
		This implementation can be run on all types for hardware.
		
		This implementation lifts out all the layer weights and make them function
		parameters. It has same number of tensor input params as the CuDNN
		counterpart. The RNN step logic has been simplified, eg dropout and mask is
		removed since CuDNN implementation does not support that.
		
		Note that the first half of the bias tensor should be ignored by this impl.
		The CuDNN impl need an extra set of input gate bias. In order to make the both
		function take same shape of parameter, that extra set of bias is also feed
		here.
		
		Args:
		  inputs: input tensor of LSTM layer.
		  init_h: initial state tensor for the cell output.
		  init_c: initial state tensor for the cell hidden state.
		  kernel: weights for cell kernel.
		  recurrent_kernel: weights for cell recurrent kernel.
		  bias: weights for cell kernel bias and recurrent bias. Only recurrent bias
		    is used in this case.
		  activation: Activation function to use for output.
		  recurrent_activation: Activation function to use for hidden recurrent state.
		  time_major: boolean, whether the inputs are in the format of
		    [time, batch, feature] or [batch, time, feature].
		
		Returns:
		  last_output: output tensor for the last timestep, which has shape
		    [batch, units].
		  outputs: output tensor for all timesteps, which has shape
		    [batch, time, units].
		  state_0: the cell output, which has same shape as init_h.
		  state_1: the cell hidden state, which has same shape as init_c.
		  runtime: constant string tensor which indicate real runtime hardware. This
		    value is for testing purpose and should be used by user.
	**/
	static public function standard_lstm(inputs:Dynamic, init_h:Dynamic, init_c:Dynamic, kernel:Dynamic, recurrent_kernel:Dynamic, bias:Dynamic, activation:Dynamic, recurrent_activation:Dynamic, time_major:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}