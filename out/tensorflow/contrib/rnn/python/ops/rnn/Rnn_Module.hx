/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn") extern class Rnn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates a dynamic bidirectional recurrent neural network.
		
		Stacks several bidirectional rnn layers. The combined forward and backward
		layer outputs are used as input of the next layer. tf.bidirectional_rnn
		does not allow to share forward and backward information between layers.
		The input_size of the first forward and backward cells must match.
		The initial state for both directions is zero and no intermediate states
		are returned.
		
		Args:
		  cells_fw: List of instances of RNNCell, one per layer,
		    to be used for forward direction.
		  cells_bw: List of instances of RNNCell, one per layer,
		    to be used for backward direction.
		  inputs: The RNN inputs. this must be a tensor of shape:
		    `[batch_size, max_time, ...]`, or a nested tuple of such elements.
		  initial_states_fw: (optional) A list of the initial states (one per layer)
		    for the forward RNN.
		    Each tensor must has an appropriate type and shape
		    `[batch_size, cell_fw.state_size]`.
		  initial_states_bw: (optional) Same as for `initial_states_fw`, but using
		    the corresponding properties of `cells_bw`.
		  dtype: (optional) The data type for the initial state.  Required if
		    either of the initial states are not provided.
		  sequence_length: (optional) An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  scope: VariableScope for the created subgraph; defaults to None.
		
		Returns:
		  A tuple (outputs, output_state_fw, output_state_bw) where:
		    outputs: Output `Tensor` shaped:
		      `batch_size, max_time, layers_output]`. Where layers_output
		      are depth-concatenated forward and backward outputs.
		    output_states_fw is the final states, one tensor per layer,
		      of the forward rnn.
		    output_states_bw is the final states, one tensor per layer,
		      of the backward rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
		  ValueError: If inputs is `None`.
	**/
	static public function stack_bidirectional_dynamic_rnn(cells_fw:Dynamic, cells_bw:Dynamic, inputs:Dynamic, ?initial_states_fw:Dynamic, ?initial_states_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?parallel_iterations:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a bidirectional recurrent neural network.
		
		Stacks several bidirectional rnn layers. The combined forward and backward
		layer outputs are used as input of the next layer. tf.bidirectional_rnn
		does not allow to share forward and backward information between layers.
		The input_size of the first forward and backward cells must match.
		The initial state for both directions is zero and no intermediate states
		are returned.
		
		As described in https://arxiv.org/abs/1303.5778
		
		Args:
		  cells_fw: List of instances of RNNCell, one per layer,
		    to be used for forward direction.
		  cells_bw: List of instances of RNNCell, one per layer,
		    to be used for backward direction.
		  inputs: A length T list of inputs, each a tensor of shape
		    [batch_size, input_size], or a nested tuple of such elements.
		  initial_states_fw: (optional) A list of the initial states (one per layer)
		    for the forward RNN.
		    Each tensor must has an appropriate type and shape
		    `[batch_size, cell_fw.state_size]`.
		  initial_states_bw: (optional) Same as for `initial_states_fw`, but using
		    the corresponding properties of `cells_bw`.
		  dtype: (optional) The data type for the initial state.  Required if
		    either of the initial states are not provided.
		  sequence_length: (optional) An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		  scope: VariableScope for the created subgraph; defaults to None.
		
		Returns:
		  A tuple (outputs, output_state_fw, output_state_bw) where:
		    outputs is a length `T` list of outputs (one for each input), which
		      are depth-concatenated forward and backward outputs.
		    output_states_fw is the final states, one tensor per layer,
		      of the forward rnn.
		    output_states_bw is the final states, one tensor per layer,
		      of the backward rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
		  ValueError: If inputs is None, not a list or an empty list.
	**/
	static public function stack_bidirectional_rnn(cells_fw:Dynamic, cells_bw:Dynamic, inputs:Dynamic, ?initial_states_fw:Dynamic, ?initial_states_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
}