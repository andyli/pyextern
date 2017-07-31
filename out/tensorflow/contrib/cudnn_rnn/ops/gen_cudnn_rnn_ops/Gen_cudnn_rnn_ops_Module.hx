/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.ops.gen_cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.ops.gen_cudnn_rnn_ops") extern class Gen_cudnn_rnn_ops_Module {
	static public function _InitOpDefLibrary():Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cudnn_rnn_backprop_outputs : Dynamic;
	static public var _cudnn_rnn_outputs : Dynamic;
	static public var _cudnn_rnn_params_to_canonical_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		Computes the RNN from the input and initial states, with respect to the params
		
		buffer.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`.
		    a 3-D tensor with the shape of [seq_length, batch_size, input_size].
		  input_h: A `Tensor`. Must have the same type as `input`.
		    a 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		  input_c: A `Tensor`. Must have the same type as `input`.
		    For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		  params: A `Tensor`. Must have the same type as `input`.
		    a 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		    Indicates the type of the RNN model.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"auto_select"`.
		    Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		    Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		  dropout: An optional `float`. Defaults to `0`.
		    dropout probability. When set to 0., dropout is disabled.
		  seed: An optional `int`. Defaults to `0`.
		    the 1st part of a seed to initialize dropout.
		  seed2: An optional `int`. Defaults to `0`.
		    the 2nd part of a seed to initialize dropout.
		  is_training: An optional `bool`. Defaults to `True`.
		    Indicates whether this operation is used for inferenece or
		    training.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_h, output_c, reserve_space).
		
		  output: A `Tensor`. Has the same type as `input`. a 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		  output_h: A `Tensor`. Has the same type as `input`. the same shape has input_h.
		  output_c: A `Tensor`. Has the same type as `input`. the same shape as input_c for LSTM. An empty tensor for other models.
		  reserve_space: A `Tensor`. Has the same type as `input`. an opaque tensor that can be used in backprop calculation. It
		    is only produced if is_training is false.
	**/
	static public function cudnn_rnn(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Compute the backprop of both data and weights in a RNN.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `float32`.
		    a 3-D tensor with the shape of [seq_length, batch_size, input_size].
		  input_h: A `Tensor`. Must have the same type as `input`.
		    a 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		  input_c: A `Tensor`. Must have the same type as `input`.
		    For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		  params: A `Tensor`. Must have the same type as `input`.
		    a 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		  output: A `Tensor`. Must have the same type as `input`.
		    a 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		  output_h: A `Tensor`. Must have the same type as `input`.
		    the same shape has input_h.
		  output_c: A `Tensor`. Must have the same type as `input`.
		    the same shape as input_c for LSTM. An empty tensor for other models.
		  output_backprop: A `Tensor`. Must have the same type as `input`.
		    A 3-D tensor with the same shape as output in the forward pass.
		  output_h_backprop: A `Tensor`. Must have the same type as `input`.
		    A 3-D tensor with the same shape as output_h in the forward
		    pass.
		  output_c_backprop: A `Tensor`. Must have the same type as `input`.
		    A 3-D tensor with the same shape as output_c in the forward
		    pass.
		  reserve_space: A `Tensor`. Must have the same type as `input`.
		    The same reserve_space produced in for forward operation.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		    Indicates the type of the RNN model.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"auto_select"`.
		    Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		    Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		  dropout: An optional `float`. Defaults to `0`.
		    dropout probability. When set to 0., dropout is disabled.
		  seed: An optional `int`. Defaults to `0`.
		    the 1st part of a seed to initialize dropout.
		  seed2: An optional `int`. Defaults to `0`.
		    the 2nd part of a seed to initialize dropout.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (input_backprop, input_h_backprop, input_c_backprop, params_backprop).
		
		  input_backprop: A `Tensor`. Has the same type as `input`. The backprop to input in the forward pass. Has the same shape
		    as input.
		  input_h_backprop: A `Tensor`. Has the same type as `input`. The backprop to input_h in the forward pass. Has the same
		    shape as input_h.
		  input_c_backprop: A `Tensor`. Has the same type as `input`. The backprop to input_c in the forward pass. Has the same
		    shape as input_c.
		  params_backprop: A `Tensor`. Has the same type as `input`. The backprop to the params buffer in the forward pass. Has the
		    same shape as params.
	**/
	static public function cudnn_rnn_backprop(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, output:Dynamic, output_h:Dynamic, output_c:Dynamic, output_backprop:Dynamic, output_h_backprop:Dynamic, output_c_backprop:Dynamic, reserve_space:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Writes a set of weights into the opaque params buffer so they can be used in
		
		upcoming training or inferences.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		    Specifies the number of layers in the RNN model.
		  num_units: A `Tensor` of type `int32`.
		    Specifies the size of the hidden state.
		  input_size: A `Tensor` of type `int32`.
		    Specifies the size of the input state.
		  weights: A list of at least 1 `Tensor` objects with the same type in: `float32`.
		    the canonical form of weights that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		  biases: A list with the same length as `weights` of `Tensor` objects with the same type as `weights`.
		    the canonical form of biases that can be used for saving
		        and restoration. They are more likely to be compatible across different
		        generations.
		
		    Note that the params buffer may not be compatible across different GPUs. So any
		    save and restoration should be converted to and from the canonical weights and
		    biases.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		    Indicates the type of the RNN model.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"auto_select"`.
		    Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		    Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		  dropout: An optional `float`. Defaults to `0`.
		    dropout probability. When set to 0., dropout is disabled.
		  seed: An optional `int`. Defaults to `0`.
		    the 1st part of a seed to initialize dropout.
		  seed2: An optional `int`. Defaults to `0`.
		    the 2nd part of a seed to initialize dropout.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function cudnn_rnn_canonical_to_params(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, weights:Dynamic, biases:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return the params size that can be used by the Cudnn RNN model. Subsequent
		
		weight allocation and initialization should use this size.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		    Specifies the number of layers in the RNN model.
		  num_units: A `Tensor` of type `int32`.
		    Specifies the size of the hidden state.
		  input_size: A `Tensor` of type `int32`.
		    Specifies the size of the input state.
		  T: A `tf.DType` from: `tf.float32`.
		  S: A `tf.DType` from: `tf.int32, tf.int64`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		    Indicates the type of the RNN model.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"auto_select"`.
		    Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		    Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		  dropout: An optional `float`. Defaults to `0`.
		    dropout probability. When set to 0., dropout is disabled.
		  seed: An optional `int`. Defaults to `0`.
		    the 1st part of a seed to initialize dropout.
		  seed2: An optional `int`. Defaults to `0`.
		    the 2nd part of a seed to initialize dropout.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `S`.
		  The size of the params buffer that should be allocated and
		      initialized for this RNN model. Note that this params buffer may not be
		      compatible across GPUs. Please use CudnnRNNParamsWeights and
		      CudnnRNNParamsBiases to save and restore them in a way that is compatible
		      across different runs.
		
		  Note that the params buffer may not be compatible across different GPUs. So any
		  save and restoration should be converted to and from the canonical weights and
		  biases.
	**/
	static public function cudnn_rnn_params_size(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, T:Dynamic, S:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Retrieves a set of weights from the opaque params buffer that can be saved and
		
		restored in a way compatible with future runs.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		    Specifies the number of layers in the RNN model.
		  num_units: A `Tensor` of type `int32`.
		    Specifies the size of the hidden state.
		  input_size: A `Tensor` of type `int32`.
		    Specifies the size of the input state.
		
		    Note that the params buffer may not be compatible across different GPUs. So any
		    save and restoration should be converted to and from the canonical weights and
		    biases.
		  params: A `Tensor`. Must be one of the following types: `float32`.
		  num_params: An `int` that is `>= 1`.
		    number of parameter sets for all layers.
		    Each layer may contain multiple parameter sets, with each set consisting of
		    a weight matrix and a bias vector.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		    Indicates the type of the RNN model.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"auto_select"`.
		    Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		    Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		  dropout: An optional `float`. Defaults to `0`.
		    dropout probability. When set to 0., dropout is disabled.
		  seed: An optional `int`. Defaults to `0`.
		    the 1st part of a seed to initialize dropout.
		  seed2: An optional `int`. Defaults to `0`.
		    the 2nd part of a seed to initialize dropout.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (weights, biases).
		
		  weights: A list of `num_params` `Tensor` objects with the same type as `params`. the canonical form of weights that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		  biases: A list of `num_params` `Tensor` objects with the same type as `params`. the canonical form of biases that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
	**/
	static public function cudnn_rnn_params_to_canonical(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, params:Dynamic, num_params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
}