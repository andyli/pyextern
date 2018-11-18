/* This file is generated, do not edit! */
package tensorflow.contrib.recurrent.python.ops.functional_rnn;
@:pythonImport("tensorflow.contrib.recurrent.python.ops.functional_rnn") extern class Functional_rnn_Module {
	/**
		Sets the output to be zero at the end of the sequence.
	**/
	static public function _ApplyLengthsToBatch(sequence_lengths:Dynamic, tf_output:Dynamic):Dynamic;
	static public function _GetDTypesFromStructure(struct:Dynamic):Dynamic;
	/**
		Implements acc_state[sequence_length - 1].
	**/
	static public function _PickFinalStateFromHistory(acc_state:Dynamic, sequence_length:Dynamic):Dynamic;
	/**
		Post-process output of recurrent.
		
		This function takes the accumulated extended state and extracts the requested
		state and output.
		
		When `inputs_lengths` has been set, it extracts the output from the
		accumulated state. It also sets outputs past.
		
		When `is_reversed` is true, the output will be reversed in this function.
		
		It also sets the static shape information.
		
		Args:
		  extended_acc_state: A structure containing the accumulated state at each
		    time. It may contain the output at each time as well.
		  extended_final_state: A structure containing the final state. It may
		    contain the output at the final time.
		  func_cell: The functional wrapper around the cell.
		  total_time: A scalar integer tensor.
		  inputs_lengths: An integer tensor with one entry per input.
		  is_reversed: A boolean to indicate if the sequence is reversed.
		
		Returns:
		  A tuple with the outputs at each time, and the final state.
	**/
	static public function _PostProcessOutput(extended_acc_state:Dynamic, extended_final_state:Dynamic, func_cell:Dynamic, total_time:Dynamic, inputs_lengths:Dynamic, is_reversed:Dynamic):Dynamic;
	static public function _SetShapeFromTemplate(struct:Dynamic, struct_template:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a bidirectional recurrent neural network.
		
		Performs fully dynamic unrolling of inputs in both directions. Built to be API
		compatible with `tf.nn.bidirectional_dynamic_rnn`, but implemented with
		functional control flow for TPU compatibility.
		
		Args:
		  cell_fw: An instance of `tf.contrib.rnn.RNNCell`.
		  cell_bw: An instance of `tf.contrib.rnn.RNNCell`.
		  inputs: The RNN inputs. If time_major == False (default), this must be a
		    Tensor (or hierarchical structure of Tensors) of shape
		    [batch_size, max_time, ...]. If time_major == True, this must be a Tensor
		    (or hierarchical structure of Tensors) of shape:
		    [max_time, batch_size, ...]. The first two dimensions must match across
		    all the inputs, but otherwise the ranks and other shape components may
		    differ.
		  initial_state_fw: An optional initial state for `cell_fw`. Should match
		    `cell_fw.zero_state` in structure and type.
		  initial_state_bw: An optional initial state for `cell_bw`. Should match
		    `cell_bw.zero_state` in structure and type.
		  dtype: (optional) The data type for the initial state and expected output.
		    Required if initial_states are not provided or RNN state has a
		    heterogeneous dtype.
		  sequence_length: An optional int32/int64 vector sized [batch_size]. Used to
		    copy-through state and zero-out outputs when past a batch element's
		    sequence length. So it's more for correctness than performance.
		  time_major: Whether the `inputs` tensor is in "time major" format.
		  use_tpu: Whether to enable TPU-compatible operation. If True, does not truly
		    reverse `inputs` in the backwards RNN. Once b/69305369 is fixed, we can
		    remove this flag.
		  fast_reverse: Whether to use fast tf.reverse to replace tf.reverse_sequence.
		    This is only possible when either all sequence lengths are the same inside
		    the batch, or when the cell function does not change the state on padded
		    input.
		  scope: An optional scope name for the dynamic RNN.
		
		Returns:
		  outputs: A tuple of `(output_fw, output_bw)`. The output of the forward and
		    backward RNN. If time_major == False (default), these will
		    be Tensors shaped: [batch_size, max_time, cell.output_size]. If
		    time_major == True, these will be Tensors shaped:
		    [max_time, batch_size, cell.output_size]. Note, if cell.output_size is a
		    (possibly nested) tuple of integers or TensorShape objects, then the
		    output for that direction will be a tuple having the same structure as
		    cell.output_size, containing Tensors having shapes corresponding to the
		    shape data in cell.output_size.
		  final_states: A tuple of `(final_state_fw, final_state_bw)`. A Tensor or
		    hierarchical structure of Tensors indicating the final cell state in each
		    direction. Must have the same structure and shape as cell.zero_state.
		
		Raises:
		  ValueError: If `initial_state_fw` is None or `initial_state_bw` is None and
		    `dtype` is not provided.
	**/
	static public function bidirectional_functional_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?time_major:Dynamic, ?use_tpu:Dynamic, ?fast_reverse:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Same interface as `tf.nn.dynamic_rnn`.
	**/
	static public function functional_rnn(cell:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?time_major:Dynamic, ?scope:Dynamic, ?use_tpu:Dynamic, ?reverse:Dynamic):Dynamic;
	static public var print_function : Dynamic;
}