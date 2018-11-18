/* This file is generated, do not edit! */
package tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops;
@:pythonImport("tensorflow.contrib.cudnn_rnn.python.ops.cudnn_rnn_ops") extern class Cudnn_rnn_ops_Module {
	static public var CUDNN_GRU : Dynamic;
	static public var CUDNN_GRU_PARAMS_PER_LAYER : Dynamic;
	static public var CUDNN_INPUT_AUTO_MODE : Dynamic;
	static public var CUDNN_INPUT_LINEAR_MODE : Dynamic;
	static public var CUDNN_INPUT_SKIP_MODE : Dynamic;
	static public var CUDNN_LSTM : Dynamic;
	static public var CUDNN_LSTM_PARAMS_PER_LAYER : Dynamic;
	static public var CUDNN_RNN_BIDIRECTION : Dynamic;
	static public var CUDNN_RNN_RELU : Dynamic;
	static public var CUDNN_RNN_RELU_PARAMS_PER_LAYER : Dynamic;
	static public var CUDNN_RNN_TANH : Dynamic;
	static public var CUDNN_RNN_TANH_PARAMS_PER_LAYER : Dynamic;
	static public var CUDNN_RNN_UNIDIRECTION : Dynamic;
	static public var _BIAS_VARIABLE_NAME : Dynamic;
	static public var _WEIGHTS_VARIABLE_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_rnn_mode(rnn_mode:Dynamic):Dynamic;
	/**
		Cudnn RNN.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  input_c: the initial hidden state for c. This is only relevant for LSTM.
		    A Tensor of the same shape as input_h.
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		  rnn_mode: one of ('lstm', 'gru', 'rnn_relu', 'rnn_tanh').
		  input_mode: indicate whether there is a linear projection between the
		    input and the actual computation before the first layer. It could be
		    'linear_input', 'skip_input' or 'auto_select'.
		    'linear_input' (default) always applies a linear projection of input
		    onto RNN hidden state. (standard RNN behavior).
		    'skip_input' is only allowed when input_size == num_units;
		    'auto_select' implies 'skip_input' when input_size == num_units;
		    otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h, output_c
	**/
	static public function _cudnn_rnn(inputs:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, is_training:Dynamic, rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var _cudnn_rnn_common_doc_string : Dynamic;
	/**
		Cudnn RNN w/o input_c.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		  rnn_mode: one of ('lstm', 'gru', 'rnn_relu', 'rnn_tanh').
		  input_mode: indicate whether there is a linear projection between the
		    input and the actual computation before the first layer. It could be
		    'linear_input', 'skip_input' or 'auto_select'.
		    'linear_input' (default) always applies a linear projection of input
		    onto RNN hidden state. (standard RNN behavior).
		    'skip_input' is only allowed when input_size == num_units;
		    'auto_select' implies 'skip_input' when input_size == num_units;
		    otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h
	**/
	static public function _cudnn_rnn_no_input_c(inputs:Dynamic, input_h:Dynamic, params:Dynamic, is_training:Dynamic, rnn_mode:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Return num params for given Cudnn config.
	**/
	static public function _get_num_params(rnn_mode:Dynamic, num_layers:Dynamic, direction:Dynamic):Dynamic;
	static public function _get_seed(seed:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Check validity of direction.
	**/
	static public function check_direction(direction:Dynamic):Dynamic;
	static public function check_input_mode(input_mode:Dynamic):Dynamic;
	/**
		Cudnn GRU.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		    input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h
	**/
	static public function cudnn_gru(inputs:Dynamic, input_h:Dynamic, params:Dynamic, is_training:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Cudnn LSTM.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  input_c: the initial hidden state for c. This is only relevant for LSTM.
		    A Tensor of the same shape as input_h.
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		    input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h, output_c
	**/
	static public function cudnn_lstm(inputs:Dynamic, input_h:Dynamic, input_c:Dynamic, params:Dynamic, is_training:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Converts params from the canonical format to a specific format of cuDNN.
		
		Args:
		  rnn_mode: a string specifies the mode, under which this RNN model runs.
		      Could be either 'lstm', 'gru', 'rnn_tanh' or 'rnn_relu'.
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  weights: a Tensor for weight parameters.
		  biases: a Tensor for bias parameters.
		  input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  an opaque Cudnn param.
		Raises:
		  ValueError: if rnn_mode or direction is invalid.
	**/
	static public function cudnn_rnn_canonical_to_opaque_params(rnn_mode:Dynamic, num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, weights:Dynamic, biases:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Returns opaque params size for specific Cudnn config.
		
		Args:
		  rnn_mode: a string specifies the mode, under which this RNN model runs.
		      Could be either 'lstm', 'gru', 'rnn_tanh' or 'rnn_relu'.
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dtype: one of tf.float32 or tf.float64.
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  a int, size of Cudnn opaque params.
		Raises:
		  ValueError: if rnn_mode or direction is invalid.
	**/
	static public function cudnn_rnn_opaque_params_size(rnn_mode:Dynamic, num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dtype:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Convert cudnn opaque params to canonical.
		
		Args:
		  rnn_mode: a string specifies the mode, under which this RNN model runs.
		      Could be either 'lstm', 'gru', 'rnn_tanh' or 'rnn_relu'.
		  num_layers: the number of layers for the RNN model.
		  num_units: the number of units within the RNN model.
		  input_size: the size of the input, it could be different from the
		      num_units.
		  params: opaque cudnn params var.
		  input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  weights list and bias list
		Raises:
		  ValueError: if rnn_mode or direction is invalid.
	**/
	static public function cudnn_rnn_opaque_params_to_canonical(rnn_mode:Dynamic, num_layers:Dynamic, num_units:Dynamic, input_size:Dynamic, params:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Cudnn RNN Relu.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		    input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h
	**/
	static public function cudnn_rnn_relu(inputs:Dynamic, input_h:Dynamic, params:Dynamic, is_training:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Cudnn RNN Tanh.
		
		Args:
		  inputs: the input sequence to the RNN model. A Tensor of shape [?,
		    batch_size, input_size].
		  input_h: the initial hidden state for h. A Tensor of shape [num_layers,
		    batch_size, num_units].
		  params: the parameter buffer created for this model.
		  is_training: whether this operation will be used in training or inference
		    input_mode: indicate whether there is a linear projection between the
		      input and the actual computation before the first layer. It could be
		      'linear_input', 'skip_input' or 'auto_select'.
		      'linear_input' (default) always applies a linear projection of input
		      onto RNN hidden state. (standard RNN behavior).
		      'skip_input' is only allowed when input_size == num_units;
		      'auto_select' implies 'skip_input' when input_size == num_units;
		      otherwise, it implies 'linear_input'.
		  direction: the direction model that the model operates. Could be either
		      'unidirectional' or 'bidirectional'
		  dropout: whether to enable dropout. With it is 0, dropout is disabled.
		  seed: the op seed used for initializing dropout. See `tf.set_random_seed`
		      for behavior.
		  name: name of the operation.
		Returns:
		  outputs, output_h
	**/
	static public function cudnn_rnn_tanh(inputs:Dynamic, input_h:Dynamic, params:Dynamic, is_training:Dynamic, ?input_mode:Dynamic, ?direction:Dynamic, ?dropout:Dynamic, ?seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}