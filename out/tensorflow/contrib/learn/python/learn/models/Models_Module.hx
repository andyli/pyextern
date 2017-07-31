/* This file is generated, do not edit! */
package tensorflow.contrib.learn.python.learn.models;
@:pythonImport("tensorflow.contrib.learn.python.learn.models") extern class Models_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Reverse a list of Tensors up to specified lengths.
		
		Args:
		  input_seq: Sequence of seq_len tensors of dimension (batch_size, depth)
		  lengths:   A tensor of dimension batch_size, containing lengths for each
		             sequence in the batch. If "None" is specified, simply
		             reverses the list.
		
		Returns:
		  time-reversed sequence
	**/
	static public function _reverse_seq(input_seq:Dynamic, lengths:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a bidirectional recurrent neural network.
		
		Similar to the unidirectional case (rnn) but takes input and builds
		independent forward and backward RNNs with the final forward and backward
		outputs depth-concatenated, such that the output will have the format
		[time][batch][cell_fw.output_size + cell_bw.output_size]. The input_size of
		forward and backward cell must match. The initial state for both directions
		is zero by default (but can be set optionally) and no intermediate states
		are ever returned -- the network is fully unrolled for the given (passed in)
		length(s) of the sequence(s) or completely unrolled if length(s) is not
		given.
		Args:
		  cell_fw: An instance of RNNCell, to be used for forward direction.
		  cell_bw: An instance of RNNCell, to be used for backward direction.
		  inputs: A length T list of inputs, each a tensor of shape
		    [batch_size, cell.input_size].
		  initial_state_fw: (optional) An initial state for the forward RNN.
		    This must be a tensor of appropriate type and shape
		    [batch_size x cell.state_size].
		  initial_state_bw: (optional) Same as for initial_state_fw.
		  dtype: (optional) The data type for the initial state.  Required if
		    either of the initial states are not provided.
		  sequence_length: (optional) An int64 vector (tensor) of size
		    [batch_size],
		    containing the actual lengths for each of the sequences.
		  scope: VariableScope for the created subgraph; defaults to "BiRNN"
		
		Returns:
		  A pair (outputs, state) where:
		    outputs is a length T list of outputs (one for each input), which
		    are depth-concatenated forward and backward outputs
		    state is the concatenated final state of the forward and backward RNN
		
		Raises:
		  TypeError: If "cell_fw" or "cell_bw" is not an instance of RNNCell.
		  ValueError: If inputs is None or an empty list.
	**/
	static public function bidirectional_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Returns a function that creates a RNN TensorFlow subgraph.
		
		Args:
		  rnn_size: The size for rnn cell, e.g. size of your word embeddings.
		  cell_type: The type of rnn cell, including rnn, gru, and lstm.
		  num_layers: The number of layers of the rnn model.
		  input_op_fn: Function that will transform the input tensor, such as
		               creating word embeddings, byte list, etc. This takes
		               an argument `x` for input and returns transformed `x`.
		  bidirectional: boolean, Whether this is a bidirectional rnn.
		  target_predictor_fn: Function that will predict target from input
		                       features. This can be logistic regression,
		                       linear regression or any other model,
		                       that takes `x`, `y` and returns predictions and loss
		                       tensors.
		  sequence_length: If sequence_length is provided, dynamic calculation is
		    performed. This saves computational time when unrolling past max sequence
		    length. Required for bidirectional RNNs.
		  initial_state: An initial state for the RNN. This must be a tensor of
		    appropriate type and shape [batch_size x cell.state_size].
		  attn_length: integer, the size of attention vector attached to rnn cells.
		  attn_size: integer, the size of an attention window attached to rnn cells.
		  attn_vec_size: integer, the number of convolutional features calculated on
		    attention state and the size of the hidden layer built from base cell
		    state.
		
		Returns:
		  A function that creates the subgraph.
	**/
	static public function get_rnn_model(rnn_size:Dynamic, cell_type:Dynamic, num_layers:Dynamic, input_op_fn:Dynamic, bidirectional:Dynamic, target_predictor_fn:Dynamic, sequence_length:Dynamic, initial_state:Dynamic, attn_length:Dynamic, attn_size:Dynamic, attn_vec_size:Dynamic):Dynamic;
	/**
		Creates linear regression TensorFlow subgraph.
		
		Args:
		  x: tensor or placeholder for input features.
		  y: tensor or placeholder for labels.
		  init_mean: the mean value to use for initialization.
		  init_stddev: the standard devation to use for initialization.
		
		Returns:
		  Predictions and loss tensors.
		
		Side effects:
		  The variables linear_regression.weights and linear_regression.bias are
		  initialized as follows.  If init_mean is not None, then initialization
		  will be done using a random normal initializer with the given init_mean
		  and init_stddv.  (These may be set to 0.0 each if a zero initialization
		  is desirable for convex use cases.)  If init_mean is None, then the
		  uniform_unit_scaling_initialzer will be used.
	**/
	static public function linear_regression(x:Dynamic, y:Dynamic, ?init_mean:Dynamic, ?init_stddev:Dynamic):Dynamic;
	/**
		Linear regression subgraph with zero-value initial weights and bias.
		
		Args:
		  x: tensor or placeholder for input features.
		  y: tensor or placeholder for labels.
		
		Returns:
		  Predictions and loss tensors.
	**/
	static public function linear_regression_zero_init(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Creates logistic regression TensorFlow subgraph.
		
		Args:
		  x: tensor or placeholder for input features,
		     shape should be [batch_size, n_features].
		  y: tensor or placeholder for labels (one-hot),
		     shape should be [batch_size, n_classes].
		  class_weight: tensor, [n_classes], where for each class
		                it has weight of the class. If not provided
		                will check if graph contains tensor `class_weight:0`.
		                If that is not provided either all ones are used.
		  init_mean: the mean value to use for initialization.
		  init_stddev: the standard devation to use for initialization.
		
		Returns:
		  Predictions and loss tensors.
		
		Side effects:
		  The variables linear_regression.weights and linear_regression.bias are
		  initialized as follows.  If init_mean is not None, then initialization
		  will be done using a random normal initializer with the given init_mean
		  and init_stddv.  (These may be set to 0.0 each if a zero initialization
		  is desirable for convex use cases.)  If init_mean is None, then the
		  uniform_unit_scaling_initialzer will be used.
	**/
	static public function logistic_regression(x:Dynamic, y:Dynamic, ?class_weight:Dynamic, ?init_mean:Dynamic, ?init_stddev:Dynamic):Dynamic;
	/**
		Logistic regression subgraph with zero-value initial weights and bias.
		
		Args:
		  x: tensor or placeholder for input features.
		  y: tensor or placeholder for labels.
		
		Returns:
		  Predictions and loss tensors.
	**/
	static public function logistic_regression_zero_init(x:Dynamic, y:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}