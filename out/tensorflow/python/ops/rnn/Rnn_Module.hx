/* This file is generated, do not edit! */
package tensorflow.python.ops.rnn;
@:pythonImport("tensorflow.python.ops.rnn") extern class Rnn_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Internal implementation of Dynamic RNN.
		
		Args:
		  cell: An instance of RNNCell.
		  inputs: A `Tensor` of shape [time, batch_size, input_size], or a nested
		    tuple of such elements.
		  initial_state: A `Tensor` of shape `[batch_size, state_size]`, or if
		    `cell.state_size` is a tuple, then this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell.state_size`.
		  parallel_iterations: Positive Python int.
		  swap_memory: A Python boolean
		  sequence_length: (optional) An `int32` `Tensor` of shape [batch_size].
		  dtype: (optional) Expected dtype of output. If not specified, inferred from
		    initial_state.
		
		Returns:
		  Tuple `(final_outputs, final_state)`.
		  final_outputs:
		    A `Tensor` of shape `[time, batch_size, cell.output_size]`.  If
		    `cell.output_size` is a (possibly nested) tuple of ints or `TensorShape`
		    objects, then this returns a (possibly nsted) tuple of Tensors matching
		    the corresponding shapes.
		  final_state:
		    A `Tensor`, or possibly nested tuple of Tensors, matching in length
		    and shapes to `initial_state`.
		
		Raises:
		  ValueError: If the input depth cannot be inferred via shape inference
		    from the inputs.
	**/
	static public function _dynamic_rnn_loop(cell:Dynamic, inputs:Dynamic, initial_state:Dynamic, parallel_iterations:Dynamic, swap_memory:Dynamic, ?sequence_length:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Infer the dtype of an RNN state.
		
		Args:
		  explicit_dtype: explicitly declared dtype or None.
		  state: RNN's hidden state. Must be a Tensor or a nested iterable containing
		    Tensors.
		
		Returns:
		  dtype: inferred dtype of hidden state.
		
		Raises:
		  ValueError: if `state` has heterogeneous dtypes or is empty.
	**/
	static public function _infer_state_dtype(explicit_dtype:Dynamic, state:Dynamic):Dynamic;
	/**
		Reverse a list of Tensors up to specified lengths.
		
		Args:
		  input_seq: Sequence of seq_len tensors of dimension (batch_size, n_features)
		             or nested tuples of tensors.
		  lengths:   A `Tensor` of dimension batch_size, containing lengths for each
		             sequence in the batch. If "None" is specified, simply reverses
		             the list.
		
		Returns:
		  time-reversed sequence
	**/
	static public function _reverse_seq(input_seq:Dynamic, lengths:Dynamic):Dynamic;
	/**
		Calculate one step of a dynamic RNN minibatch.
		
		Returns an (output, state) pair conditioned on the sequence_lengths.
		When skip_conditionals=False, the pseudocode is something like:
		
		if t >= max_sequence_length:
		  return (zero_output, state)
		if t < min_sequence_length:
		  return call_cell()
		
		# Selectively output zeros or output, old state or new state depending
		# on if we've finished calculating each row.
		new_output, new_state = call_cell()
		final_output = np.vstack([
		  zero_output if time >= sequence_lengths[r] else new_output_r
		  for r, new_output_r in enumerate(new_output)
		])
		final_state = np.vstack([
		  state[r] if time >= sequence_lengths[r] else new_state_r
		  for r, new_state_r in enumerate(new_state)
		])
		return (final_output, final_state)
		
		Args:
		  time: Python int, the current time step
		  sequence_length: int32 `Tensor` vector of size [batch_size]
		  min_sequence_length: int32 `Tensor` scalar, min of sequence_length
		  max_sequence_length: int32 `Tensor` scalar, max of sequence_length
		  zero_output: `Tensor` vector of shape [output_size]
		  state: Either a single `Tensor` matrix of shape `[batch_size, state_size]`,
		    or a list/tuple of such tensors.
		  call_cell: lambda returning tuple of (new_output, new_state) where
		    new_output is a `Tensor` matrix of shape `[batch_size, output_size]`.
		    new_state is a `Tensor` matrix of shape `[batch_size, state_size]`.
		  state_size: The `cell.state_size` associated with the state.
		  skip_conditionals: Python bool, whether to skip using the conditional
		    calculations.  This is useful for `dynamic_rnn`, where the input tensor
		    matches `max_sequence_length`, and using conditionals just slows
		    everything down.
		
		Returns:
		  A tuple of (`final_output`, `final_state`) as given by the pseudocode above:
		    final_output is a `Tensor` matrix of shape [batch_size, output_size]
		    final_state is either a single `Tensor` matrix, or a tuple of such
		      matrices (matching length and shapes of input `state`).
		
		Raises:
		  ValueError: If the cell returns a state tuple whose length does not match
		    that returned by `state_size`.
	**/
	static public function _rnn_step(time:Dynamic, sequence_length:Dynamic, min_sequence_length:Dynamic, max_sequence_length:Dynamic, zero_output:Dynamic, state:Dynamic, call_cell:Dynamic, state_size:Dynamic, ?skip_conditionals:Dynamic):Dynamic;
	/**
		Helper function that enables int or TensorShape shape specification.
		
		This function takes a size specification, which can be an integer or a
		TensorShape, and converts it into a list of integers. One may specify any
		additional dimensions that precede the final state size specification.
		
		Args:
		  state_size: TensorShape or int that specifies the size of a tensor.
		  prefix: optional additional list of dimensions to prepend.
		
		Returns:
		  result_state_size: list of dimensions the resulting tensor size.
	**/
	static public function _state_size_with_prefix(state_size:Dynamic, ?prefix:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates a dynamic version of bidirectional recurrent neural network.
		
		Similar to the unidirectional case above (rnn) but takes input and builds
		independent forward and backward RNNs. The input_size of forward and
		backward cell must match. The initial state for both directions is zero by
		default (but can be set optionally) and no intermediate states are ever
		returned -- the network is fully unrolled for the given (passed in)
		length(s) of the sequence(s) or completely unrolled if length(s) is not
		given.
		
		Args:
		  cell_fw: An instance of RNNCell, to be used for forward direction.
		  cell_bw: An instance of RNNCell, to be used for backward direction.
		  inputs: The RNN inputs.
		    If time_major == False (default), this must be a tensor of shape:
		      `[batch_size, max_time, input_size]`.
		    If time_major == True, this must be a tensor of shape:
		      `[max_time, batch_size, input_size]`.
		    [batch_size, input_size].
		  sequence_length: An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		  initial_state_fw: (optional) An initial state for the forward RNN.
		    This must be a tensor of appropriate type and shape
		    `[batch_size x cell_fw.state_size]`.
		    If `cell_fw.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell_fw.state_size`.
		  initial_state_bw: (optional) Same as for `initial_state_fw`, but using
		    the corresponding properties of `cell_bw`.
		  dtype: (optional) The data type for the initial states and expected output.
		    Required if initial_states are not provided or RNN states have a
		    heterogeneous dtype.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  time_major: The shape format of the `inputs` and `outputs` Tensors.
		    If true, these `Tensors` must be shaped `[max_time, batch_size, depth]`.
		    If false, these `Tensors` must be shaped `[batch_size, max_time, depth]`.
		    Using `time_major = True` is a bit more efficient because it avoids
		    transposes at the beginning and end of the RNN calculation.  However,
		    most TensorFlow data is batch-major, so by default this function
		    accepts input and emits output in batch-major form.
		  dtype: (optional) The data type for the initial state.  Required if
		    initial_state is not provided.
		  sequence_length: An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		    either of the initial states are not provided.
		  scope: VariableScope for the created subgraph; defaults to "BiRNN"
		
		Returns:
		  A tuple (outputs, output_states) where:
		    outputs: A tuple (output_fw, output_bw) containing the forward and
		      the backward rnn output `Tensor`.
		      If time_major == False (default),
		        output_fw will be a `Tensor` shaped:
		        `[batch_size, max_time, cell_fw.output_size]`
		        and output_bw will be a `Tensor` shaped:
		        `[batch_size, max_time, cell_bw.output_size]`.
		      If time_major == True,
		        output_fw will be a `Tensor` shaped:
		        `[max_time, batch_size, cell_fw.output_size]`
		        and output_bw will be a `Tensor` shaped:
		        `[max_time, batch_size, cell_bw.output_size]`.
		      It returns a tuple instead of a single concatenated `Tensor`, unlike
		      in the `bidirectional_rnn`. If the concatenated one is preferred,
		      the forward and backward outputs can be concatenated as
		      `tf.concat(2, outputs)`.
		    output_states: A tuple (output_state_fw, output_state_bw) containing
		      the forward and the backward final states of bidirectional rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
	**/
	static public function bidirectional_dynamic_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?time_major:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a bidirectional recurrent neural network.
		
		Similar to the unidirectional case above (rnn) but takes input and builds
		independent forward and backward RNNs with the final forward and backward
		outputs depth-concatenated, such that the output will have the format
		[time][batch][cell_fw.output_size + cell_bw.output_size]. The input_size of
		forward and backward cell must match. The initial state for both directions
		is zero by default (but can be set optionally) and no intermediate states are
		ever returned -- the network is fully unrolled for the given (passed in)
		length(s) of the sequence(s) or completely unrolled if length(s) is not given.
		
		Args:
		  cell_fw: An instance of RNNCell, to be used for forward direction.
		  cell_bw: An instance of RNNCell, to be used for backward direction.
		  inputs: A length T list of inputs, each a tensor of shape
		    [batch_size, input_size], or a nested tuple of such elements.
		  initial_state_fw: (optional) An initial state for the forward RNN.
		    This must be a tensor of appropriate type and shape
		    `[batch_size x cell_fw.state_size]`.
		    If `cell_fw.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell_fw.state_size`.
		  initial_state_bw: (optional) Same as for `initial_state_fw`, but using
		    the corresponding properties of `cell_bw`.
		  dtype: (optional) The data type for the initial state.  Required if
		    either of the initial states are not provided.
		  sequence_length: (optional) An int32/int64 vector, size `[batch_size]`,
		    containing the actual lengths for each of the sequences.
		  scope: VariableScope for the created subgraph; defaults to "BiRNN"
		
		Returns:
		  A tuple (outputs, output_state_fw, output_state_bw) where:
		    outputs is a length `T` list of outputs (one for each input), which
		      are depth-concatenated forward and backward outputs.
		    output_state_fw is the final state of the forward rnn.
		    output_state_bw is the final state of the backward rnn.
		
		Raises:
		  TypeError: If `cell_fw` or `cell_bw` is not an instance of `RNNCell`.
		  ValueError: If inputs is None or an empty list.
	**/
	static public function bidirectional_rnn(cell_fw:Dynamic, cell_bw:Dynamic, inputs:Dynamic, ?initial_state_fw:Dynamic, ?initial_state_bw:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Creates a recurrent neural network specified by RNNCell `cell`.
		
		This function is functionally identical to the function `rnn` above, but
		performs fully dynamic unrolling of `inputs`.
		
		Unlike `rnn`, the input `inputs` is not a Python list of `Tensors`, one for
		each frame.  Instead, `inputs` may be a single `Tensor` where
		the maximum time is either the first or second dimension (see the parameter
		`time_major`).  Alternatively, it may be a (possibly nested) tuple of
		Tensors, each of them having matching batch and time dimensions.
		The corresponding output is either a single `Tensor` having the same number
		of time steps and batch size, or a (possibly nested) tuple of such tensors,
		matching the nested structure of `cell.output_size`.
		
		The parameter `sequence_length` is optional and is used to copy-through state
		and zero-out outputs when past a batch element's sequence length. So it's more
		for correctness than performance, unlike in rnn().
		
		Args:
		  cell: An instance of RNNCell.
		  inputs: The RNN inputs.
		
		    If `time_major == False` (default), this must be a `Tensor` of shape:
		      `[batch_size, max_time, ...]`, or a nested tuple of such
		      elements.
		
		    If `time_major == True`, this must be a `Tensor` of shape:
		      `[max_time, batch_size, ...]`, or a nested tuple of such
		      elements.
		
		    This may also be a (possibly nested) tuple of Tensors satisfying
		    this property.  The first two dimensions must match across all the inputs,
		    but otherwise the ranks and other shape components may differ.
		    In this case, input to `cell` at each time-step will replicate the
		    structure of these tuples, except for the time dimension (from which the
		    time is taken).
		
		    The input to `cell` at each time step will be a `Tensor` or (possibly
		    nested) tuple of Tensors each with dimensions `[batch_size, ...]`.
		  sequence_length: (optional) An int32/int64 vector sized `[batch_size]`.
		  initial_state: (optional) An initial state for the RNN.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size x cell.state_size]`.
		    If `cell.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell.state_size`.
		  dtype: (optional) The data type for the initial state and expected output.
		    Required if initial_state is not provided or RNN state has a heterogeneous
		    dtype.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  time_major: The shape format of the `inputs` and `outputs` Tensors.
		    If true, these `Tensors` must be shaped `[max_time, batch_size, depth]`.
		    If false, these `Tensors` must be shaped `[batch_size, max_time, depth]`.
		    Using `time_major = True` is a bit more efficient because it avoids
		    transposes at the beginning and end of the RNN calculation.  However,
		    most TensorFlow data is batch-major, so by default this function
		    accepts input and emits output in batch-major form.
		  scope: VariableScope for the created subgraph; defaults to "RNN".
		
		Returns:
		  A pair (outputs, state) where:
		
		    outputs: The RNN output `Tensor`.
		
		      If time_major == False (default), this will be a `Tensor` shaped:
		        `[batch_size, max_time, cell.output_size]`.
		
		      If time_major == True, this will be a `Tensor` shaped:
		        `[max_time, batch_size, cell.output_size]`.
		
		      Note, if `cell.output_size` is a (possibly nested) tuple of integers
		      or `TensorShape` objects, then `outputs` will be a tuple having the
		      same structure as `cell.output_size`, containing Tensors having shapes
		      corresponding to the shape data in `cell.output_size`.
		
		    state: The final state.  If `cell.state_size` is an int, this
		      will be shaped `[batch_size, cell.state_size]`.  If it is a
		      `TensorShape`, this will be shaped `[batch_size] + cell.state_size`.
		      If it is a (possibly nested) tuple of ints or `TensorShape`, this will
		      be a tuple having the corresponding shapes.
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If inputs is None or an empty list.
	**/
	static public function dynamic_rnn(cell:Dynamic, inputs:Dynamic, ?sequence_length:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?time_major:Dynamic, ?scope:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Creates an `RNN` specified by RNNCell `cell` and loop function `loop_fn`.
		
		**NOTE: This method is still in testing, and the API may change.**
		
		This function is a more primitive version of `dynamic_rnn` that provides
		more direct access to the inputs each iteration.  It also provides more
		control over when to start and finish reading the sequence, and
		what to emit for the output.
		
		For example, it can be used to implement the dynamic decoder of a seq2seq
		model.
		
		Instead of working with `Tensor` objects, most operations work with
		`TensorArray` objects directly.
		
		The operation of `raw_rnn`, in pseudo-code, is basically the following:
		```
		emit_ta = TensorArray(dynamic_size=True, dtype=initial_state.dtype)
		time = tf.constant(0, dtype=tf.int32)
		(finished, next_input, _, loop_state) = loop_fn(
		    time=time, cell_output=None, loop_state=None)
		state = initial_state
		while not all(finished):
		  (output, next_state) = cell(next_input, state)
		  (next_finished, next_input, emit, loop_state) = loop_fn(
		      time=time + 1, cell_output=output, loop_state=loop_state)
		  # Emit zeros and copy forward state for minibatch entries that are finished.
		  state = tf.select(finished, state, next_state)
		  emit = tf.select(finished, tf.zeros_like(emit), emit)
		  emit_ta = emit_ta.write(time, emit)
		  # If any new minibatch entries are marked as finished, mark these
		  finished = tf.logical_or(finished, next_finished)
		  time += 1
		return (emit_ta, state, loop_state)
		```
		
		with the additional properties that output and state may be (possibly nested)
		tuples, as determined by `cell.output_size` and `cell.state_size`, and
		as a result the final `state` and `emit_ta` may themselves be tuples.
		
		A simple implementation of `dynamic_rnn` via `raw_rnn` looks like this:
		
		```python
		inputs = tf.placeholder(shape=(max_time, batch_size, input_depth),
		                        dtype=tf.float32)
		sequence_length = tf.placeholder(shape=(batch_size,), dtype=tf.int32)
		inputs_ta = tf.TensorArray(dtype=tf.float32, size=max_time)
		inputs_ta = inputs_ta.unpack(inputs)
		
		def loop_fn(time, cell_output, loop_state):
		  emit_output = cell_output  # == None for time == 0
		  elements_finished = (time >= sequence_length)
		  finished = tf.reduce_all(elements_finished)
		  next_input = tf.cond(
		      finished,
		      lambda: tf.zeros([batch_size, input_depth], dtype=tf.float32),
		      lambda: inputs_ta.read(time))
		  next_loop_state = None
		  return (elements_finished, next_input, emit_output, next_loop_state)
		
		cell = tf.nn.rnn_cell.LSTMCell(num_units, state_is_tuple=True)
		initial_state = cell.zero_state(batch_size, tf.float32)
		outputs_ta, final_state, _ = raw_rnn(cell, loop_fn, initial_state)
		outputs = outputs_ta.pack()
		```
		
		Args:
		  cell: An instance of RNNCell.
		  loop_fn: A callable that takes inputs `(time, cell_output, loop_state)` and
		    returns the tuple `(finished, next_input, emit_output, next_loop_state)`.
		    Here `time` is an int32 scalar `Tensor`, `cell_output` is a
		    `Tensor` or (possibly nested) tuple of tensors as determined by
		    `cell.output_size`.  In addition, `finished` is a boolean `Tensor` of
		    shape `[batch_size]`, `next_input` is the next input to feed to `cell`,
		    and `emit_output` is the output to store for this iteration.  Note that
		    `emit_output` should be a `Tensor` or (possibly nested) tuple of tensors
		    with shapes and structure matching `cell.output_size` and `cell_output`
		    above.  The parameter `loop_state` and output `next_loop_state` may be
		    either a single or (possibly nested) tuple of tensors.  This paramter
		    may be ignored by `loop_fn` and the return value may be `None`.  If it
		    is not `None`, then the `loop_state` will be propagated through the RNN
		    loop, for use purely by `loop_fn` to keep track of its own state.
		    The `next_loop_state` parameter returned may be `None`.
		
		    The first call to `loop_fn` will be `time = 0`, `cell_output = None`,
		    and `loop_state = None`.  Its `emit_output` value in this case may be
		    either `None` or a (possibly nested) tuple structure of Tensors, e.g.,
		    `(tf.zeros(shape_0, dtype=dtype_0), tf.zeros(shape_1, dtype=dtype_1))`.
		    If this first `emit_output` return value is `None`,
		    then the `emit_ta` result of `raw_rnn` will have the same structure and
		    dtypes as `cell.output_size`.  Otherwise `emit_ta` will have the same
		    structure, shapes (prepended with a `batch_size` dimension), and dtypes
		    as `emit_output`.  The actual values returned for `emit_output` at this
		    initializing call are ignored.  Note, this emit structure must be
		    consistent across all time steps.
		
		  initial_state: An initial state for the RNN.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size, cell.state_size]`.
		    If `cell.state_size` is a `TensorShape`, this must be a `Tensor` of
		    appropriate type and shape `[batch_size] + cell.state_size`.
		    If `cell.state_size` is a (possibly nested) tuple of ints or
		    `TensorShape`, this will be a tuple having the corresponding shapes.
		  parallel_iterations: (Default: 32).  The number of iterations to run in
		    parallel.  Those operations which do not have any temporal dependency
		    and can be run in parallel, will be.  This parameter trades off
		    time for space.  Values >> 1 use more memory but take less time,
		    while smaller values use less memory but computations take longer.
		  swap_memory: Transparently swap the tensors produced in forward inference
		    but needed for back prop from GPU to CPU.  This allows training RNNs
		    which would typically not fit on a single GPU, with very minimal (or no)
		    performance penalty.
		  scope: VariableScope for the created subgraph; defaults to "RNN".
		
		Returns:
		  A tuple `(emit_ta, final_state, final_loop_state)` where:
		
		    `emit_ta`: The RNN output `TensorArray`.
		       If `loop_fn` returns a (possibly nested) set of Tensors for
		       `emit_output` during initialization, (inputs `time = 0`,
		       `cell_output = None`, and `loop_state = None`), then `emit_ta` will
		       have the same structure, dtypes, and shapes as `emit_output` instead.
		       If `loop_fn` returns `emit_output = None` during this call,
		       the structure of `cell.output_size` is used:
		
		       If `cell.output_size` is a (possibly nested) tuple of integers
		       or `TensorShape` objects, then `emit_ta` will be a tuple having the
		       same structure as `cell.output_size`, containing TensorArrays whose
		       elements' shapes correspond to the shape data in `cell.output_size`.
		
		    `final_state`: The final cell state.  If `cell.state_size` is an int, this
		      will be shaped `[batch_size, cell.state_size]`.  If it is a
		      `TensorShape`, this will be shaped `[batch_size] + cell.state_size`.
		      If it is a (possibly nested) tuple of ints or `TensorShape`, this will
		      be a tuple having the corresponding shapes.
		
		    `final_loop_state`: The final loop state as returned by `loop_fn`.
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell, or `loop_fn` is not
		    a `callable`.
	**/
	static public function raw_rnn(cell:Dynamic, loop_fn:Dynamic, initial_state:Dynamic, ?parallel_iterations:Dynamic, ?swap_memory:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		Creates a recurrent neural network specified by RNNCell `cell`.
		
		The simplest form of RNN network generated is:
		```py
		  state = cell.zero_state(...)
		  outputs = []
		  for input_ in inputs:
		    output, state = cell(input_, state)
		    outputs.append(output)
		  return (outputs, state)
		```
		However, a few other options are available:
		
		An initial state can be provided.
		If the sequence_length vector is provided, dynamic calculation is performed.
		This method of calculation does not compute the RNN steps past the maximum
		sequence length of the minibatch (thus saving computational time),
		and properly propagates the state at an example's sequence length
		to the final state output.
		
		The dynamic calculation performed is, at time t for batch row b,
		  (output, state)(b, t) =
		    (t >= sequence_length(b))
		      ? (zeros(cell.output_size), states(b, sequence_length(b) - 1))
		      : cell(input(b, t), state(b, t - 1))
		
		Args:
		  cell: An instance of RNNCell.
		  inputs: A length T list of inputs, each a `Tensor` of shape
		    `[batch_size, input_size]`, or a nested tuple of such elements.
		  initial_state: (optional) An initial state for the RNN.
		    If `cell.state_size` is an integer, this must be
		    a `Tensor` of appropriate type and shape `[batch_size, cell.state_size]`.
		    If `cell.state_size` is a tuple, this should be a tuple of
		    tensors having shapes `[batch_size, s] for s in cell.state_size`.
		  dtype: (optional) The data type for the initial state and expected output.
		    Required if initial_state is not provided or RNN state has a heterogeneous
		    dtype.
		  sequence_length: Specifies the length of each sequence in inputs.
		    An int32 or int64 vector (tensor) size `[batch_size]`, values in `[0, T)`.
		  scope: VariableScope for the created subgraph; defaults to "RNN".
		
		Returns:
		  A pair (outputs, state) where:
		    - outputs is a length T list of outputs (one for each input), or a nested
		      tuple of such elements.
		    - state is the final state
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If `inputs` is `None` or an empty list, or if the input depth
		    (column size) cannot be inferred from inputs via shape inference.
	**/
	static public function rnn(cell:Dynamic, inputs:Dynamic, ?initial_state:Dynamic, ?dtype:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
	/**
		RNN that accepts a state saver for time-truncated RNN calculation.
		
		Args:
		  cell: An instance of `RNNCell`.
		  inputs: A length T list of inputs, each a `Tensor` of shape
		    `[batch_size, input_size]`.
		  state_saver: A state saver object with methods `state` and `save_state`.
		  state_name: Python string or tuple of strings.  The name to use with the
		    state_saver. If the cell returns tuples of states (i.e.,
		    `cell.state_size` is a tuple) then `state_name` should be a tuple of
		    strings having the same length as `cell.state_size`.  Otherwise it should
		    be a single string.
		  sequence_length: (optional) An int32/int64 vector size [batch_size].
		    See the documentation for rnn() for more details about sequence_length.
		  scope: VariableScope for the created subgraph; defaults to "RNN".
		
		Returns:
		  A pair (outputs, state) where:
		    outputs is a length T list of outputs (one for each input)
		    states is the final state
		
		Raises:
		  TypeError: If `cell` is not an instance of RNNCell.
		  ValueError: If `inputs` is `None` or an empty list, or if the arity and
		   type of `state_name` does not match that of `cell.state_size`.
	**/
	static public function state_saving_rnn(cell:Dynamic, inputs:Dynamic, state_saver:Dynamic, state_name:Dynamic, ?sequence_length:Dynamic, ?scope:Dynamic):Dynamic;
}