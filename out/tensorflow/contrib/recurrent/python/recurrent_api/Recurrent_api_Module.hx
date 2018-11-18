/* This file is generated, do not edit! */
package tensorflow.contrib.recurrent.python.recurrent_api;
@:pythonImport("tensorflow.contrib.recurrent.python.recurrent_api") extern class Recurrent_api_Module {
	/**
		Compute a recurrent neural net.
		
		Roughly, Recurrent() computes the following:
		  state = state0
		  for t in inputs' sequence length:
		    state = cell_fn(theta, state, inputs[t, :])
		    accumulate_state[t, :] = state
		  return accumulate_state, state
		
		theta, state, inputs are all structures of tensors.
		
		inputs[t, :] means taking a slice out from every tensor in the inputs.
		
		accumulate_state[t, :] = state means that we stash every tensor in
		'state' into a slice of the corresponding tensor in
		accumulate_state.
		
		cell_fn is a python callable computing (building up a TensorFlow
		graph) the recurrent neural network's one forward step. Two calls of
		cell_fn must describe two identical computations.
		
		By construction, Recurrent()'s backward computation does not access
		any intermediate values computed by cell_fn during forward
		computation. We may extend Recurrent() to support that by taking a
		customized backward function of cell_fn.
		
		Args:
		  theta: weights. A structure of tensors.
		  state0: initial state. A structure of tensors.
		  inputs: inputs. A structure of tensors.
		  cell_fn: A python function, which computes:
		    state1, extras = cell_fn(theta, state0, inputs[t, :])
		  cell_grad: A python function which computes:
		    dtheta, dstate0, dinputs[t, :] = cell_grad(
		      theta, state0, inputs[t, :], extras, dstate1)
		  extras: A structure of tensors. The 2nd return value of every
		    invocation of cell_fn is a structure of tensors with matching keys
		    and shapes of  this `extras`.
		  max_input_length: maximum length of effective input. This is used to
		    truncate the computation if the inputs have been allocated to a
		    larger size. A scalar tensor.
		  use_tpu: whether or not we are on TPU.
		  aligned_end: A boolean indicating whether the sequence is aligned at
		    the end.
		
		Returns:
		  accumulate_state and the final state.
	**/
	static public function Recurrent(theta:Dynamic, state0:Dynamic, inputs:Dynamic, cell_fn:Dynamic, ?cell_grad:Dynamic, ?extras:Dynamic, ?max_input_length:Dynamic, ?use_tpu:Dynamic, ?aligned_end:Dynamic):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	/**
		Same interface as `tf.nn.dynamic_rnn`.
	**/
	static public function functional_rnn(cell:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?time_major:Dynamic, ?scope:Dynamic, ?use_tpu:Dynamic, ?reverse:Dynamic):Dynamic;
}