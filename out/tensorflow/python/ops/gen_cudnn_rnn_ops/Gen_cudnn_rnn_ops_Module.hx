/* This file is generated, do not edit! */
package tensorflow.python.ops.gen_cudnn_rnn_ops;
@:pythonImport("tensorflow.python.ops.gen_cudnn_rnn_ops") extern class Gen_cudnn_rnn_ops_Module {
	static public function _InitOpDefLibrary(op_list_proto_bytes:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _cudnn_rnn_backprop_outputs : Dynamic;
	static public var _cudnn_rnn_backprop_v2_outputs : Dynamic;
	static public var _cudnn_rnn_outputs : Dynamic;
	static public var _cudnn_rnn_params_to_canonical_outputs : Dynamic;
	static public var _cudnn_rnnv2_outputs : Dynamic;
	static public var _op_def_lib : Dynamic;
	/**
		A RNN backed by cuDNN.
		
		Computes the RNN from the input and initial states, with respect to the params
		buffer.
		
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicate whether there is a linear projection between the input and
		  the actual computation before the first layer. 'skip_input' is only allowed
		  when input_size == num_units; 'auto_select' implies 'skip_input' when
		  input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used. Should be
		  "unidirectional" or "bidirectional".
		dropout: Dropout probability. When set to 0., dropout is disabled.
		seed: The 1st part of a seed to initialize dropout.
		seed2: The 2nd part of a seed to initialize dropout.
		input: A 3-D tensor with the shape of [seq_length, batch_size, input_size].
		input_h: A 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		input_c: For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		params: A 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		output: A 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		output_h: The same shape has input_h.
		output_c: The same shape as input_c for LSTM. An empty tensor for other models.
		is_training: Indicates whether this operation is used for inferenece or
		  training.
		reserve_space: An opaque tensor that can be used in backprop calculation. It
		  is only produced if is_training is false.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  input_h: A `Tensor`. Must have the same type as `input`.
		  input_c: A `Tensor`. Must have the same type as `input`.
		  params: A `Tensor`. Must have the same type as `input`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  is_training: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_h, output_c, reserve_space).
		
		  output: A `Tensor`. Has the same type as `input`.
		  output_h: A `Tensor`. Has the same type as `input`.
		  output_c: A `Tensor`. Has the same type as `input`.
		  reserve_space: A `Tensor`. Has the same type as `input`.
	**/
	static public function cudnn_rnn(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Backprop step of CudnnRNN.
		
		Compute the backprop of both data and weights in a RNN.
		
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicate whether there is a linear projection between the input and
		    the actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used. Should be
		  "unidirectional" or "bidirectional".
		dropout: Dropout probability. When set to 0., dropout is disabled.
		seed: The 1st part of a seed to initialize dropout.
		seed2: The 2nd part of a seed to initialize dropout.
		input: A 3-D tensor with the shape of [seq_length, batch_size, input_size].
		input_h: A 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		input_c: For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		params: A 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		output: A 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		output_h: The same shape has input_h.
		output_c: The same shape as input_c for LSTM. An empty tensor for other models.
		output_backprop: A 3-D tensor with the same shape as output in the forward pass.
		output_h_backprop: A 3-D tensor with the same shape as output_h in the forward
		    pass.
		output_c_backprop: A 3-D tensor with the same shape as output_c in the forward
		    pass.
		reserve_space: The same reserve_space produced in for forward operation.
		input_backprop: The backprop to input in the forward pass. Has the same shape
		    as input.
		input_h_backprop: The backprop to input_h in the forward pass. Has the same
		    shape as input_h.
		input_c_backprop: The backprop to input_c in the forward pass. Has the same
		    shape as input_c.
		params_backprop: The backprop to the params buffer in the forward pass. Has the
		    same shape as params.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  input_h: A `Tensor`. Must have the same type as `input`.
		  input_c: A `Tensor`. Must have the same type as `input`.
		  params: A `Tensor`. Must have the same type as `input`.
		  output: A `Tensor`. Must have the same type as `input`.
		  output_h: A `Tensor`. Must have the same type as `input`.
		  output_c: A `Tensor`. Must have the same type as `input`.
		  output_backprop: A `Tensor`. Must have the same type as `input`.
		  output_h_backprop: A `Tensor`. Must have the same type as `input`.
		  output_c_backprop: A `Tensor`. Must have the same type as `input`.
		  reserve_space: A `Tensor`. Must have the same type as `input`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (input_backprop, input_h_backprop, input_c_backprop, params_backprop).
		
		  input_backprop: A `Tensor`. Has the same type as `input`.
		  input_h_backprop: A `Tensor`. Has the same type as `input`.
		  input_c_backprop: A `Tensor`. Has the same type as `input`.
		  params_backprop: A `Tensor`. Has the same type as `input`.
	**/
	static public function cudnn_rnn_backprop(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, output:Dynamic, output_h:Dynamic, output_c:Dynamic, output_backprop:Dynamic, output_h_backprop:Dynamic, output_c_backprop:Dynamic, reserve_space:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn_backprop
	**/
	static public function cudnn_rnn_backprop_eager_fallback(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, output:Dynamic, output_h:Dynamic, output_c:Dynamic, output_backprop:Dynamic, output_h_backprop:Dynamic, output_c_backprop:Dynamic, reserve_space:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Backprop step of CudnnRNN.
		
		Compute the backprop of both data and weights in a RNN. Takes an extra
		    "host_reserved" inupt than CudnnRNNBackprop, which is used to determine RNN
		    cudnnRNNAlgo_t and cudnnMathType_t.
		
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicates whether there is a linear projection between the input and
		    the actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used. Should be
		  "unidirectional" or "bidirectional".
		dropout: Dropout probability. When set to 0., dropout is disabled.
		seed: The 1st part of a seed to initialize dropout.
		seed2: The 2nd part of a seed to initialize dropout.
		input: A 3-D tensor with the shape of [seq_length, batch_size, input_size].
		input_h: A 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		input_c: For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		params: A 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		output: A 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		output_h: The same shape has input_h.
		output_c: The same shape as input_c for LSTM. An empty tensor for other models.
		output_backprop: A 3-D tensor with the same shape as output in the forward pass.
		output_h_backprop: A 3-D tensor with the same shape as output_h in the forward
		    pass.
		output_c_backprop: A 3-D tensor with the same shape as output_c in the forward
		    pass.
		reserve_space: The same reserve_space produced in the forward operation.
		host_reserved: The same host_reserved produced in the forward operation.
		input_backprop: The backprop to input in the forward pass. Has the same shape
		    as input.
		input_h_backprop: The backprop to input_h in the forward pass. Has the same
		    shape as input_h.
		input_c_backprop: The backprop to input_c in the forward pass. Has the same
		    shape as input_c.
		params_backprop: The backprop to the params buffer in the forward pass. Has the
		    same shape as params.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  input_h: A `Tensor`. Must have the same type as `input`.
		  input_c: A `Tensor`. Must have the same type as `input`.
		  params: A `Tensor`. Must have the same type as `input`.
		  output: A `Tensor`. Must have the same type as `input`.
		  output_h: A `Tensor`. Must have the same type as `input`.
		  output_c: A `Tensor`. Must have the same type as `input`.
		  output_backprop: A `Tensor`. Must have the same type as `input`.
		  output_h_backprop: A `Tensor`. Must have the same type as `input`.
		  output_c_backprop: A `Tensor`. Must have the same type as `input`.
		  reserve_space: A `Tensor`. Must have the same type as `input`.
		  host_reserved: A `Tensor` of type `int8`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (input_backprop, input_h_backprop, input_c_backprop, params_backprop).
		
		  input_backprop: A `Tensor`. Has the same type as `input`.
		  input_h_backprop: A `Tensor`. Has the same type as `input`.
		  input_c_backprop: A `Tensor`. Has the same type as `input`.
		  params_backprop: A `Tensor`. Has the same type as `input`.
	**/
	static public function cudnn_rnn_backprop_v2(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, output:Dynamic, output_h:Dynamic, output_c:Dynamic, output_backprop:Dynamic, output_h_backprop:Dynamic, output_c_backprop:Dynamic, reserve_space:Dynamic, host_reserved:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn_backprop_v2
	**/
	static public function cudnn_rnn_backprop_v2_eager_fallback(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, output:Dynamic, output_h:Dynamic, output_c:Dynamic, output_backprop:Dynamic, output_h_backprop:Dynamic, output_c_backprop:Dynamic, reserve_space:Dynamic, host_reserved:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Converts CudnnRNN params from canonical form to usable form.
		
		Writes a set of weights into the opaque params buffer so they can be used in
		upcoming training or inferences.
		
		Note that the params buffer may not be compatible across different GPUs. So any
		save and restoration should be converted to and from the canonical weights and
		biases.
		
		num_layers: Specifies the number of layers in the RNN model.
		num_units: Specifies the size of the hidden state.
		input_size: Specifies the size of the input state.
		weights: the canonical form of weights that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		biases: the canonical form of biases that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		num_params: number of parameter sets for all layers.
		    Each layer may contain multiple parameter sets, with each set consisting of
		    a weight matrix and a bias vector.
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		dropout: dropout probability. When set to 0., dropout is disabled.
		seed: the 1st part of a seed to initialize dropout.
		seed2: the 2nd part of a seed to initialize dropout.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		  num_units: A `Tensor` of type `int32`.
		  input_size: A `Tensor` of type `int32`.
		  weights: A list of at least 1 `Tensor` objects with the same type in: `half`, `float32`, `float64`.
		  biases: A list with the same length as `weights` of `Tensor` objects with the same type as `weights`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor`. Has the same type as `weights`.
	**/
	static public function cudnn_rnn_canonical_to_params(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, weights:Dynamic, biases:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn_canonical_to_params
	**/
	static public function cudnn_rnn_canonical_to_params_eager_fallback(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, weights:Dynamic, biases:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn
	**/
	static public function cudnn_rnn_eager_fallback(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Computes size of weights that can be used by a Cudnn RNN model.
		
		Return the params size that can be used by the Cudnn RNN model. Subsequent
		weight allocation and initialization should use this size.
		
		num_layers: Specifies the number of layers in the RNN model.
		num_units: Specifies the size of the hidden state.
		input_size: Specifies the size of the input state.
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicate whether there is a linear projection between the input and
		  The actual computation before the first layer. 'skip_input' is only allowed
		  when input_size == num_units; 'auto_select' implies 'skip_input' when
		  input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used.
		  dir = (direction == bidirectional) ? 2 : 1
		dropout: dropout probability. When set to 0., dropout is disabled.
		seed: the 1st part of a seed to initialize dropout.
		seed2: the 2nd part of a seed to initialize dropout.
		params_size: The size of the params buffer that should be allocated and
		  initialized for this RNN model. Note that this params buffer may not be
		  compatible across GPUs. Please use CudnnRNNParamsWeights and
		  CudnnRNNParamsBiases to save and restore them in a way that is compatible
		  across different runs.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		  num_units: A `Tensor` of type `int32`.
		  input_size: A `Tensor` of type `int32`.
		  T: A `tf.DType` from: `tf.half, tf.float32, tf.float64`.
		  S: A `tf.DType` from: `tf.int32, tf.int64`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A `Tensor` of type `S`.
	**/
	static public function cudnn_rnn_params_size(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, T:Dynamic, S:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn_params_size
	**/
	static public function cudnn_rnn_params_size_eager_fallback(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, T:Dynamic, S:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Retrieves CudnnRNN params in canonical form.
		
		Retrieves a set of weights from the opaque params buffer that can be saved and
		restored in a way compatible with future runs.
		
		Note that the params buffer may not be compatible across different GPUs. So any
		save and restoration should be converted to and from the canonical weights and
		biases.
		
		num_layers: Specifies the number of layers in the RNN model.
		num_units: Specifies the size of the hidden state.
		input_size: Specifies the size of the input state.
		num_params: number of parameter sets for all layers.
		    Each layer may contain multiple parameter sets, with each set consisting of
		    a weight matrix and a bias vector.
		weights: the canonical form of weights that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		biases: the canonical form of biases that can be used for saving
		    and restoration. They are more likely to be compatible across different
		    generations.
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicate whether there is a linear projection between the input and
		    The actual computation before the first layer. 'skip_input' is only allowed
		    when input_size == num_units; 'auto_select' implies 'skip_input' when
		    input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used.
		    dir = (direction == bidirectional) ? 2 : 1
		dropout: dropout probability. When set to 0., dropout is disabled.
		seed: the 1st part of a seed to initialize dropout.
		seed2: the 2nd part of a seed to initialize dropout.
		
		Args:
		  num_layers: A `Tensor` of type `int32`.
		  num_units: A `Tensor` of type `int32`.
		  input_size: A `Tensor` of type `int32`.
		  params: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  num_params: An `int` that is `>= 1`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (weights, biases).
		
		  weights: A list of `num_params` `Tensor` objects with the same type as `params`.
		  biases: A list of `num_params` `Tensor` objects with the same type as `params`.
	**/
	static public function cudnn_rnn_params_to_canonical(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, params:Dynamic, num_params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnn_params_to_canonical
	**/
	static public function cudnn_rnn_params_to_canonical_eager_fallback(num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, params:Dynamic, num_params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		A RNN backed by cuDNN.
		
		Computes the RNN from the input and initial states, with respect to the params
		buffer. Produces one extra output "host_reserved" than CudnnRNN.
		
		rnn_mode: Indicates the type of the RNN model.
		input_mode: Indicates whether there is a linear projection between the input and
		  the actual computation before the first layer. 'skip_input' is only allowed
		  when input_size == num_units; 'auto_select' implies 'skip_input' when
		  input_size == num_units; otherwise, it implies 'linear_input'.
		direction: Indicates whether a bidirectional model will be used. Should be
		  "unidirectional" or "bidirectional".
		dropout: Dropout probability. When set to 0., dropout is disabled.
		seed: The 1st part of a seed to initialize dropout.
		seed2: The 2nd part of a seed to initialize dropout.
		input: A 3-D tensor with the shape of [seq_length, batch_size, input_size].
		input_h: A 3-D tensor with the shape of [num_layer * dir, batch_size,
		    num_units].
		input_c: For LSTM, a 3-D tensor with the shape of
		    [num_layer * dir, batch, num_units]. For other models, it is ignored.
		params: A 1-D tensor that contains the weights and biases in an opaque layout.
		    The size must be created through CudnnRNNParamsSize, and initialized
		    separately. Note that they might not be compatible across different
		    generations. So it is a good idea to save and restore
		output: A 3-D tensor with the shape of [seq_length, batch_size,
		    dir * num_units].
		output_h: The same shape has input_h.
		output_c: The same shape as input_c for LSTM. An empty tensor for other models.
		is_training: Indicates whether this operation is used for inferenece or
		  training.
		reserve_space: An opaque tensor that can be used in backprop calculation. It
		  is only produced if is_training is true.
		host_reserved: An opaque tensor that can be used in backprop calculation. It is
		  only produced if is_training is true. It is output on host memory rather than
		  device memory.
		
		Args:
		  input: A `Tensor`. Must be one of the following types: `half`, `float32`, `float64`.
		  input_h: A `Tensor`. Must have the same type as `input`.
		  input_c: A `Tensor`. Must have the same type as `input`.
		  params: A `Tensor`. Must have the same type as `input`.
		  rnn_mode: An optional `string` from: `"rnn_relu", "rnn_tanh", "lstm", "gru"`. Defaults to `"lstm"`.
		  input_mode: An optional `string` from: `"linear_input", "skip_input", "auto_select"`. Defaults to `"linear_input"`.
		  direction: An optional `string` from: `"unidirectional", "bidirectional"`. Defaults to `"unidirectional"`.
		  dropout: An optional `float`. Defaults to `0`.
		  seed: An optional `int`. Defaults to `0`.
		  seed2: An optional `int`. Defaults to `0`.
		  is_training: An optional `bool`. Defaults to `True`.
		  name: A name for the operation (optional).
		
		Returns:
		  A tuple of `Tensor` objects (output, output_h, output_c, reserve_space, host_reserved).
		
		  output: A `Tensor`. Has the same type as `input`.
		  output_h: A `Tensor`. Has the same type as `input`.
		  output_c: A `Tensor`. Has the same type as `input`.
		  reserve_space: A `Tensor`. Has the same type as `input`.
		  host_reserved: A `Tensor` of type `int8`.
	**/
	static public function cudnn_rnnv2(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?is_training:Dynamic, ?name:Dynamic):Dynamic;
	/**
		This is the slowpath function for Eager mode.
		This is for function cudnn_rnnv2
	**/
	static public function cudnn_rnnv2_eager_fallback(input:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, ?rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?seed2:Dynamic, ?is_training:Dynamic, ?name:Dynamic, ?ctx:Dynamic):Dynamic;
	/**
		Decorator for marking endpoints deprecated.
		
		This decorator does not print deprecation messages.
		TODO(annarev): eventually start printing deprecation warnings when
		@deprecation_endpoints decorator is added.
		
		Args:
		  *args: Deprecated endpoint names.
		
		Returns:
		  A function that takes symbol as an argument and adds
		  _tf_deprecated_api_names to that symbol.
		  _tf_deprecated_api_names would be set to a list of deprecated
		  endpoint names for the symbol.
	**/
	static public function deprecated_endpoints(?args:python.VarArgs<Dynamic>):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}