/* This file is generated, do not edit! */
package tensorflow.contrib.training.python.training.sequence_queueing_state_saver;
@:pythonImport("tensorflow.contrib.training.python.training.sequence_queueing_state_saver") extern class Sequence_queueing_state_saver_Module {
	static public var _SPARSE_CONTEXT_PREFIX_KEY : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Check the dimensions of Tensor `value`, via shape inference and assertions.
		
		Args:
		  value: A Tensor, with optional / partial shape associated shape information.
		  dimensions: An int list, the dimensions to check.
		  expected_sizes: list of mixed ints and int32 scalar tensors.
		    Optionally also a vector `Tensor`.
		  debug_prefix: A string, used for naming ops and printing debugging messages.
		
		Returns:
		  new_value: A Tensor matching `value`.  Accessing this tensor tests
		    assertions on its shape.  If expected_sizes is not a `Tensor`, then
		    new_value's shape has been set for all `dimensions[i]` where
		    `expected_sizes[i]` is not a `Tensor`.
		
		Raises:
		  TypeError: if any of the input contains invalid types:
		    if `value` is not a `Tensor`.
		    if `dimensions` is not a `list` or `tuple`.
		  ValueError: if input has incorrect sizes or inferred shapes do not match:
		    if `dimensions` contains repeated dimensions.
		    if `expected_sizes` is not a `Tensor` and its length does not match that
		      `dimensions`.
		    if `value`'s shape has a well-defined rank, and one of the values in
		      `dimensions` is equal to or above this rank.
		    if `value`'s shape is well defined for some `dimensions[i]`, and
		      `expected_sizes[i]` is not a `Tensor`, and these two values do
		      not match.
	**/
	static public function _check_dimensions(value:Dynamic, dimensions:Dynamic, expected_sizes:Dynamic, debug_prefix:Dynamic):Dynamic;
	/**
		Checks that value `value` is a non-zero multiple of `multiple_of`.
		
		Args:
		  value: an int32 scalar Tensor.
		  multiple_of: an int or int32 scalar Tensor.
		
		Returns:
		  new_value: an int32 scalar Tensor matching `value`, but which includes an
		    assertion that `value` is a multiple of `multiple_of`.
	**/
	static public function _check_multiple_of(value:Dynamic, multiple_of:Dynamic):Dynamic;
	/**
		Check the rank of Tensor `value`, via shape inference and assertions.
		
		Args:
		  value: A Tensor, possibly with shape associated shape information.
		  expected_rank: int32 scalar (optionally a `Tensor`).
		
		Returns:
		  new_value: A Tensor matching `value`.  Accessing this tensor tests
		    assertions on its rank.  If expected_rank is not a `Tensor`, then
		    new_value's shape's rank has been set.
		
		Raises:
		  ValueError: if `expected_rank` is not a `Tensor` and the rank of `value`
		    is known and is not equal to `expected_rank`.
	**/
	static public function _check_rank(value:Dynamic, expected_rank:Dynamic):Dynamic;
	/**
		Check the shape of Tensor `value`, via shape inference and assertions.
		
		Args:
		  value: A Tensor, possibly with shape associated shape information.
		  expected_shape: a `TensorShape`, list of `int32`, or a vector `Tensor`.
		
		Returns:
		  new_value: A Tensor matching `value`.  Accessing this tensor tests
		    assertions on its shape.  If expected_shape is not a `Tensor`, then
		    new_value's shape has been set.
		
		Raises:
		  ValueError: if `expected_shape` is not a `Tensor` and the shape of `value`
		    is known and is not equal to `expected_shape`.
	**/
	static public function _check_shape(value:Dynamic, expected_shape:Dynamic):Dynamic;
	/**
		Converts `SparseTensor` values into `Tensors` of IDs and meta data.
		
		Given a dict of keys -> `Tensor` or `SparseTensor` transforms the
		`SparseTensor` values into `Tensor` values of IDs by calling `_store_sparse`.
		The IDs are pointers into and underlying `SparseTensorsMap` that is being
		constructed. Additional meta data is returned in order to be able to
		reconstruct `SparseTensor` values after batching and segmenting the IDs
		`Tensor`.
		
		Args:
		  input_sequence: dictionary with `Tensor` or `SparseTensor` values.
		  shared_name: The shared name for the underlying `SparseTensorsMap`
		    (optional, defaults to the name of the newly created op).
		Returns:
		  A tuple `(sequence, sparse_tensor_keys, tensor_list)` where `sequence` is
		  dictionary with the same keys as `input_sequence` but only `Tensor` values,
		  `sparse_tensor_keys` is a list of the keys of the `SparseTensor` values that
		  were converted, and `tensor_list` is a list of the same length with
		  `Tensor` objects.
	**/
	static public function _deconstruct_sparse_tensor_seq(input_sequence:Dynamic, ?shared_name:Dynamic):Dynamic;
	static public function _move_sparse_tensor_in_context(context:Dynamic, sequences:Dynamic):Dynamic;
	/**
		Moves `SparseTensor`s from `input_context` into `input_sequences` as seq.
		
		For `key, value` pairs in `input_context` with `SparseTensor` `value` removes
		them from `input_context` and transforms the `value` into a sequence and
		then adding `key`, transformed `value` into `input_seuqences`.
		The transformation is done by adding a new first dimension of `value_length`
		equal to that of the other values in input_sequences` and tiling the `value`
		every `num_unroll` steps.
		
		Args:
		  input_context: dictionary with `Tensor` or `SparseTensor` values. To be
		    modified to take out `SparseTensor` values.
		  input_sequences: dictionary with `Tensor` or `SparseTensor` values. To be
		    modified to add transformed `SparseTensor` values from `input_context`.
		  num_unroll: int specifying to what multiple to pad sequences to.
	**/
	static public function _move_sparse_tensor_out_context(input_context:Dynamic, input_sequences:Dynamic, num_unroll:Dynamic):Dynamic;
	/**
		For a dictionary of sequences, pads tensors to a multiple of `num_unroll`.
		
		Args:
		  sequences: dictionary with `Tensor` values.
		  num_unroll: int specifying to what multiple to pad sequences to.
		Returns:
		  length: Scalar `Tensor` of dimension 0 of all the values in sequences.
		  padded_sequence: Dictionary of sequences that are padded to a multiple of
		    `num_unroll`.
		Raises:
		  ValueError: If `num_unroll` not an int or sequences not a dictionary from
		              string to `Tensor`.
	**/
	static public function _padding(sequences:Dynamic, num_unroll:Dynamic):Dynamic;
	/**
		Convert input to tensors and validate shape information.
		
		Args:
		  inputs: A `_SequenceInputWrapper` instance.
		  states: A dictionary mapping state names to input constants or tensors.
		
		Returns:
		  The tuple (length, key, sorted_states, sorted_sequences, sorted_context),
		  where each value has been checked for valid shape, and the sorted_* dicts
		  are instances of OrderedDict; with key-value pairs sorted by key.
		
		Raises:
		  ValueError: if the shapes of inputs.context.values(), states.values(),
		    or inputs.sequences.values() are not fully defined (with the exception
		    of the dimension of any `Tensor` in inputs.sequences.values()).
		  TypeError: if the dtype of length is not int32.
	**/
	static public function _prepare_sequence_inputs(inputs:Dynamic, states:Dynamic):Dynamic;
	/**
		Inverse of _deconstruct_sparse_tensor_seq.
		
		Given a dict of keys -> `Tensor` reconstructs `SparseTensor` values for keys
		in `sparse_tensor_keys`. Their `Tensor` values are assumed to be IDs into the
		underlying `SparseTensorsMap`. The `dense_shape` of the `SparseTensor`s is
		`[batch_size, num_unroll, d_0, d_1, ..., d_n]` when the original
		`SparseTensor` that got deconstructed with `_deconstruct_sparse_tensor_seq`
		has a `dense_shape` of `[None, d_0, d_1, ..., d_n]`.
		
		Args:
		  sequence: dictionary with only `Tensor` values that is being updated.
		  sparse_tensor_keys: list of the keys present in `sequence` identifying
		    `SparseTensor` values that should be reconstructed.
		  tensor_op_list: list of the same length as `sparse_tensor_keys` with
		    `Tensor` objects.
		  batch_size: int or int32 scalar `Tensor`, how large minibatches should
		    be.
		  num_unroll: Python integer, how many time steps were unrolled at a time.
	**/
	static public function _reconstruct_sparse_tensor_seq(sequence:Dynamic, sparse_tensor_keys:Dynamic, tensor_op_list:Dynamic, batch_size:Dynamic, num_unroll:Dynamic):Dynamic;
	/**
		Read `SparseTensors` from a `SparseTensorsMap` and concatenate them.
		
		The input `sparse_handles` must be a string matrix of shape `[N, 1]` where
		`N` is the minibatch size and the rows correspond to packed outputs of
		`add_sparse_to_tensors_map`.  The ranks of the original `SparseTensor` objects
		must all match.  When the final `SparseTensor` is created, it has rank one
		higher than the ranks of the incoming `SparseTensor` objects (they have been
		concatenated along a new row dimension).
		
		The output `SparseTensor` object's shape values for all dimensions but the
		first are the max across the input `SparseTensor` objects' shape values
		for the corresponding dimensions.  Its first shape value is `N`, the minibatch
		size.
		
		The input `SparseTensor` objects' indices are assumed ordered in
		standard lexicographic order.  If this is not the case, after this
		step run `sparse_reorder` to restore index ordering.
		
		For example, if the serialized input is a `[2, 3]` matrix representing two
		original `SparseTensor` objects:
		
		    index = [ 0]
		            [10]
		            [20]
		    values = [1, 2, 3]
		    shape = [50]
		
		and
		
		    index = [ 2]
		            [10]
		    values = [4, 5]
		    shape = [30]
		
		then the final deserialized `SparseTensor` will be:
		
		    index = [0  0]
		            [0 10]
		            [0 20]
		            [1  2]
		            [1 10]
		    values = [1, 2, 3, 4, 5]
		    shape = [2 50]
		
		Args:
		  sparse_map_op: The `Operation` that created the original handles.
		    Usually this is, e.g., `add_sparse_to_tensors_map(...).op`.
		  sparse_handles: 2-D `Tensor` of type `string` of shape `[N, 1]`.
		    The serialized and packed `SparseTensor` objects.
		  rank: (optional) Python int, the rank of the `SparseTensor` objects.
		  name: A name prefix for the returned tensors (optional)
		
		Returns:
		  A `SparseTensor` representing the deserialized `SparseTensor`s,
		  concatenated along the `SparseTensor`s' first dimension.
		
		  All of the serialized `SparseTensor`s must have had the same rank and type.
	**/
	static public function _restore_sparse(sparse_map_op:Dynamic, sparse_handles:Dynamic, ?rank:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add a minibatch `SparseTensor` to a `SparseTensorsMap`, return `N` handles.
		
		The `SparseTensor` must have rank `R` greater than 1, and the first dimension
		is treated as the minibatch dimension.  Elements of the `SparseTensor`
		must be sorted in increasing order of this first dimension.  The serialized
		`SparseTensor` objects going into each row of the output `Tensor` will have
		rank `R-1`.
		
		The minibatch size `N` is extracted from `sparse_shape[0]`.
		
		Args:
		  sp_input: The input rank `R` `SparseTensor`.
		  container: The container for the underlying `SparseTensorsMap` (optional).
		  shared_name: The shared name for the underlying `SparseTensorsMap`
		    (optional, defaults to the name of the newly created op).
		  name: A name prefix for the returned tensors (optional).
		
		Returns:
		  A string matrix (2-D `Tensor`) with `N` rows and `1` column.
		  Each row represents a unique handle to a `SparseTensor` stored by
		  the `SparseTensorMap` underlying this op.
		
		Raises:
		  TypeError: If `sp_input` is not a `SparseTensor`.
	**/
	static public function _store_sparse(sp_input:Dynamic, ?container:Dynamic, ?shared_name:Dynamic, ?name:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Creates batches of segments of sequential input.
		
		This method creates a `SequenceQueueingStateSaver` (SQSS) and adds it to
		the queuerunners. It returns a `NextQueuedSequenceBatch`.
		
		It accepts one example at a time identified by a unique `input_key`.
		`input_sequence` is a dict with values that are tensors with time as first
		dimension. This time dimension must be the same across those tensors of an
		example. It can vary across examples. Although it always has to be a multiple
		of `num_unroll`. Hence, padding may be necessary and it is turned on by
		default by `pad=True`.
		
		`input_length` is a Tensor scalar or an int recording the time dimension prior
		to padding. It should be between 0 and the time dimension. One reason we want
		to keep track of it is so that we can take it into consideration when
		computing the loss. If `pad=True` then `input_length` can be `None` and will
		be inferred.
		
		This methods segments `input_sequence` into segments of length `num_unroll`.
		It batches input sequences from `batch_size` many examples. These mini-batches
		are available through the `sequence` property of the output. Moreover, for
		each entry in the batch we can access its original `input_key` in `key` and
		its input length in `total_length`. `length` records within this segment how
		many non-padded time steps there are.
		
		Static features of an example that do not vary across time can be part of the
		`input_context`, a dict with Tensor values. This method copies the context for
		each segment and makes it available in the `context` of the output.
		
		This method can maintain and update a state for each example. It accepts some
		initial_states as a dict with Tensor values. The first mini-batch an example
		is contained has initial_states as entry of the `state`. If save_state is
		called then the next segment will have the updated entry of the `state`.
		See `NextQueuedSequenceBatch` for a complete list of properties and methods.
		
		Example usage:
		
		```python
		batch_size = 32
		num_unroll = 20
		num_enqueue_threads = 3
		lstm_size = 8
		cell = tf.contrib.rnn.BasicLSTMCell(num_units=lstm_size)
		
		key, sequences, context = my_parser(raw_data)
		initial_state_values = tf.zeros((state_size,), dtype=tf.float32)
		initial_states = {"lstm_state": initial_state_values}
		batch = tf.batch_sequences_with_states(
		    input_key=key,
		    input_sequences=sequences,
		    input_context=context,
		    input_length=tf.shape(sequences["input"])[0],
		    initial_states=initial_states,
		    num_unroll=num_unroll,
		    batch_size=batch_size,
		    num_threads=num_enqueue_threads,
		    capacity=batch_size * num_enqueue_threads * 2)
		
		inputs = batch.sequences["input"]
		context_label = batch.context["label"]
		
		inputs_by_time = tf.split(value=inputs, num_or_size_splits=num_unroll, axis=1)
		assert len(inputs_by_time) == num_unroll
		
		lstm_output, _ = tf.contrib.rnn.static_state_saving_rnn(
		  cell,
		  inputs_by_time,
		  state_saver=batch,
		  state_name="lstm_state")
		
		# Start a prefetcher in the background
		sess = tf.Session()
		
		tf.train.start_queue_runners(sess=session)
		
		while True:
		  # Step through batches, perform training or inference...
		  session.run([lstm_output])
		```
		
		Args:
		  input_key: A string scalar `Tensor`, the **unique** key for the given
		    input example.  This is used to keep track of the split minibatch elements
		    of this input.  Batched keys of the current iteration are made
		    accessible via the `key` property.  The shape of `input_key` (scalar) must
		    be fully specified.  Consider setting `make_keys_unique` to True when
		    iterating over the same input multiple times.
		
		    **Note**: if `make_keys_unique=False` then `input_key`s must be unique.
		  input_sequences: A dict mapping string names to `Tensor` values.  The values
		    must all have matching first dimension, called `value_length`. They may
		    vary from input to input. The remainder of the shape (other than the first
		    dimension) must be fully specified.
		    The `SequenceQueueingStateSaver` will split these tensors along
		    this first dimension into minibatch elements of dimension `num_unrolled`.
		    Batched and segmented sequences of the current iteration are made
		    accessible via the `sequences` property.
		
		    **Note**: if `pad=False`, then `value_length` must always be a multiple
		      of `num_unroll`.
		  input_context: A dict mapping string names to `Tensor` values.  The values
		    are treated as "global" across all time splits of the given input example,
		    and will be copied across for all minibatch elements accordingly.
		    Batched and copied context of the current iteration are made
		    accessible via the `context` property.
		
		    **Note**: All input_context values must have fully defined shapes.
		  input_length: None or an int32 scalar `Tensor`, the length of the sequence
		    prior to padding. If `input_length=None` and `pad=True` then the length
		    will be inferred and will be equal to `value_length`. If `pad=False` then
		    `input_length` cannot be `None`: `input_length` must be specified. Its
		    shape of `input_length` (scalar) must be fully specified. Its value may be
		    at most `value_length` for any given input (see above for the definition
		    of `value_length`). Batched and total lengths of the current iteration are
		    made accessible via the `length` and `total_length` properties.
		  initial_states: A dict mapping string state names to multi-dimensional
		    values (e.g. constants or tensors).  This input defines the set of
		    states that will be kept track of during computing iterations, and
		    which can be accessed via the `state` and `save_state` methods.
		
		    **Note**: All initial_state values must have fully defined shapes.
		  num_unroll: Python integer, how many time steps to unroll at a time.
		    The input sequences of length k are then split into k / num_unroll many
		    segments.
		  batch_size: int or int32 scalar `Tensor`, how large minibatches should
		    be when accessing the `state()` method and `context`, `sequences`, etc,
		    properties.
		  num_threads: The int number of threads enqueuing input examples into a
		    queue.
		  capacity: The max capacity of the queue in number of examples. Needs to be
		    at least `batch_size`. Defaults to 1000. When iterating over the same
		    input example multiple times reusing their keys the `capacity` must be
		    smaller than the number of examples.
		  allow_small_batch: If true, the queue will return smaller batches when
		    there aren't enough input examples to fill a whole batch and the end of
		    the input has been reached.
		  pad: If `True`, `input_sequences` will be padded to multiple of
		    `num_unroll`. In that case `input_length` may be `None` and is assumed to
		    be the length of first dimension of values in `input_sequences`
		    (i.e. `value_length`).
		  make_keys_unique: Whether to append a random integer to the `input_key` in
		    an effort to make it unique. The seed can be set via
		    `make_keys_unique_seed`.
		  make_keys_unique_seed: If `make_keys_unique=True` this fixes the seed with
		    which a random postfix is generated.
		  name: An op name string (optional).
		
		Returns:
		  A NextQueuedSequenceBatch with segmented and batched inputs and their
		  states.
		
		Raises:
		  TypeError: if any of the inputs is not an expected type.
		  ValueError: if any of the input values is inconsistent, e.g. if
		    not enough shape information is available from inputs to build
		    the state saver.
	**/
	static public function batch_sequences_with_states(input_key:Dynamic, input_sequences:Dynamic, input_context:Dynamic, input_length:Dynamic, initial_states:Dynamic, num_unroll:Dynamic, batch_size:Dynamic, ?num_threads:Dynamic, ?capacity:Dynamic, ?allow_small_batch:Dynamic, ?pad:Dynamic, ?make_keys_unique:Dynamic, ?make_keys_unique_seed:Dynamic, ?name:Dynamic):Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
}