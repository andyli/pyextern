/* This file is generated, do not edit! */
package tensorflow.contrib.rnn.python.ops.rnn_cell;
@:pythonImport("tensorflow.contrib.rnn.python.ops.rnn_cell", "GridLSTMCell") extern class GridLSTMCell {
	/**
		Run this RNN cell on inputs, starting from the given state.
		
		Args:
		  inputs: `2-D` tensor with shape `[batch_size, input_size]`.
		  state: if `self.state_size` is an integer, this should be a `2-D Tensor`
		    with shape `[batch_size, self.state_size]`.  Otherwise, if
		    `self.state_size` is a tuple of integers, this should be a tuple
		    with shapes `[batch_size, s] for s in self.state_size`.
		  scope: VariableScope for the created subgraph; defaults to class name.
		
		Returns:
		  A pair containing:
		
		  - Output: A `2-D` tensor with shape `[batch_size, self.output_size]`.
		  - New state: Either a single `2-D` tensor, or a tuple of tensors matching
		    the arity and shapes of `state`.
	**/
	public function __call__(inputs:Dynamic, state:Dynamic, ?scope:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	public function __deepcopy__(memo:Dynamic):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: (optional) bool, default False. Set True to enable
		    diagonal/peephole connections.
		  share_time_frequency_weights: (optional) bool, default False. Set True to
		    enable shared cell weights between time and frequency LSTMs.
		  cell_clip: (optional) A float value, default None, if provided the cell
		    state is clipped by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices, default None.
		  num_unit_shards: (optional) int, default 1, How to split the weight
		    matrix. If > 1, the weight matrix is stored across num_unit_shards.
		  forget_bias: (optional) float, default 1.0, The initial bias of the
		    forget gates, used to reduce the scale of forgetting at the beginning
		    of the training.
		  feature_size: (optional) int, default None, The size of the input feature
		    the LSTM spans over.
		  frequency_skip: (optional) int, default None, The amount the LSTM filter
		    is shifted by in frequency.
		  num_frequency_blocks: [required] A list of frequency blocks needed to
		    cover the whole input feature splitting defined by start_freqindex_list
		    and end_freqindex_list.
		  start_freqindex_list: [optional], list of ints, default None,  The
		    starting frequency index for each frequency block.
		  end_freqindex_list: [optional], list of ints, default None. The ending
		    frequency index for each frequency block.
		  couple_input_forget_gates: (optional) bool, default False, Whether to
		    couple the input and forget gates, i.e. f_gate = 1.0 - i_gate, to reduce
		    model parameters and computation cost.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of
		    the `c_state` and `m_state`.  By default (False), they are concatenated
		    along the column axis.  This default behavior will soon be deprecated.
		  reuse: (optional) Python boolean describing whether to reuse variables
		    in an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
		Raises:
		  ValueError: if the num_frequency_blocks list is not specified
	**/
	@:native("__init__")
	public function ___init__(num_units:Dynamic, ?use_peepholes:Dynamic, ?share_time_frequency_weights:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_unit_shards:Dynamic, ?forget_bias:Dynamic, ?feature_size:Dynamic, ?frequency_skip:Dynamic, ?num_frequency_blocks:Dynamic, ?start_freqindex_list:Dynamic, ?end_freqindex_list:Dynamic, ?couple_input_forget_gates:Dynamic, ?state_is_tuple:Dynamic, ?reuse:Dynamic):Dynamic;
	/**
		Initialize the parameters for an LSTM cell.
		
		Args:
		  num_units: int, The number of units in the LSTM cell
		  use_peepholes: (optional) bool, default False. Set True to enable
		    diagonal/peephole connections.
		  share_time_frequency_weights: (optional) bool, default False. Set True to
		    enable shared cell weights between time and frequency LSTMs.
		  cell_clip: (optional) A float value, default None, if provided the cell
		    state is clipped by this value prior to the cell output activation.
		  initializer: (optional) The initializer to use for the weight and
		    projection matrices, default None.
		  num_unit_shards: (optional) int, default 1, How to split the weight
		    matrix. If > 1, the weight matrix is stored across num_unit_shards.
		  forget_bias: (optional) float, default 1.0, The initial bias of the
		    forget gates, used to reduce the scale of forgetting at the beginning
		    of the training.
		  feature_size: (optional) int, default None, The size of the input feature
		    the LSTM spans over.
		  frequency_skip: (optional) int, default None, The amount the LSTM filter
		    is shifted by in frequency.
		  num_frequency_blocks: [required] A list of frequency blocks needed to
		    cover the whole input feature splitting defined by start_freqindex_list
		    and end_freqindex_list.
		  start_freqindex_list: [optional], list of ints, default None,  The
		    starting frequency index for each frequency block.
		  end_freqindex_list: [optional], list of ints, default None. The ending
		    frequency index for each frequency block.
		  couple_input_forget_gates: (optional) bool, default False, Whether to
		    couple the input and forget gates, i.e. f_gate = 1.0 - i_gate, to reduce
		    model parameters and computation cost.
		  state_is_tuple: If True, accepted and returned states are 2-tuples of
		    the `c_state` and `m_state`.  By default (False), they are concatenated
		    along the column axis.  This default behavior will soon be deprecated.
		  reuse: (optional) Python boolean describing whether to reuse variables
		    in an existing scope.  If not `True`, and the existing scope already has
		    the given variables, an error is raised.
		Raises:
		  ValueError: if the num_frequency_blocks list is not specified
	**/
	public function new(num_units:Dynamic, ?use_peepholes:Dynamic, ?share_time_frequency_weights:Dynamic, ?cell_clip:Dynamic, ?initializer:Dynamic, ?num_unit_shards:Dynamic, ?forget_bias:Dynamic, ?feature_size:Dynamic, ?frequency_skip:Dynamic, ?num_frequency_blocks:Dynamic, ?start_freqindex_list:Dynamic, ?end_freqindex_list:Dynamic, ?couple_input_forget_gates:Dynamic, ?state_is_tuple:Dynamic, ?reuse:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Internal method to create an inbound node for the layer.
		
		Arguments:
		    input_tensors: list of input tensors.
		    output_tensors: list of output tensors.
		    arguments: dictionary of keyword arguments that were passed to the
		        `call` method of the layer at the call that created the node.
	**/
	public function _add_inbound_node(input_tensors:Dynamic, output_tensors:Dynamic, ?arguments:Dynamic):Dynamic;
	/**
		Restore-on-create for a variable be saved with this `Checkpointable`.
		
		If the user has requested that this object or another `Checkpointable` which
		depends on this object be restored from a checkpoint (deferred loading
		before variable object creation), `initializer` may be ignored and the value
		from the checkpoint used instead.
		
		Args:
		  name: A name for the variable. Must be unique within this object.
		  shape: The shape of the variable.
		  dtype: The data type of the variable.
		  initializer: The initializer to use. Ignored if there is a deferred
		    restoration left over from a call to
		    `_restore_from_checkpoint_position`.
		  getter: The getter to wrap which actually fetches the variable.
		  overwrite: If True, disables unique name and type checks.
		  **kwargs_for_getter: Passed to the getter.
		
		Returns:
		  The new variable object.
		
		Raises:
		  ValueError: If the variable name is not unique.
	**/
	public function _add_variable_with_custom_getter(name:Dynamic, ?shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?getter:Dynamic, ?overwrite:Dynamic, ?kwargs_for_getter:python.KwArgs<Dynamic>):Dynamic;
	/**
		All dependencies of this object.
		
		May be overridden to include conditional dependencies.
		
		Returns:
		  A list of `CheckpointableReference` objects indicating named
		  `Checkpointable` dependencies which should be saved along with this
		  object.
	**/
	public var _checkpoint_dependencies : Dynamic;
	/**
		Run the actual computation of one step LSTM.
		
		Args:
		  freq_inputs: list of Tensors, 2D, [batch, feature_size].
		  block: int, current frequency block index to process.
		  state: Tensor or tuple of Tensors, 2D, [batch, state_size], it depends on
		    the flag state_is_tuple.
		  batch_size: int32, batch size.
		  state_prefix: (optional) string, name prefix for states, defaults to
		    "state".
		  state_is_tuple: boolean, indicates whether the state is a tuple or Tensor.
		
		Returns:
		  A tuple, containing:
		  - A list of [batch, output_dim] Tensors, representing the output of the
		    LSTM given the inputs and state.
		  - A list of [batch, state_size] Tensors, representing the LSTM state
		    values given the inputs and previous state.
	**/
	public function _compute(freq_inputs:Dynamic, block:Dynamic, state:Dynamic, batch_size:Dynamic, ?state_prefix:Dynamic, ?state_is_tuple:Dynamic):Dynamic;
	/**
		A dictionary with deferred dependencies.
		
		Stores restorations for other Checkpointable objects on which this object
		may eventually depend. May be overridden by sub-classes (e.g. Optimizers use
		conditional dependencies based the current graph, and so need separate
		management of deferred dependencies too).
		
		Returns:
		  A dictionary mapping from local name to a list of _CheckpointPosition
		  objects.
	**/
	public var _deferred_dependencies : Dynamic;
	public function _eager_add_metric(value:Dynamic, ?aggregation:Dynamic, ?name:Dynamic):Dynamic;
	public function _gather_children_attribute(attribute:Dynamic):Dynamic;
	/**
		Returns a dictionary of values to checkpoint with this object.
		
		Keys in the returned dictionary are local to this object and in a separate
		namespace from dependencies. Values may either be `SaveableObject` factories
		or variables easily converted to `SaveableObject`s (as in `tf.train.Saver`'s
		`var_list` constructor argument).
		
		`SaveableObjects` have a name set, which Checkpointable needs to generate
		itself. So rather than returning `SaveableObjects` directly, this method
		should return a dictionary of callables which take `name` arguments and
		return `SaveableObjects` with that name.
		
		If this object may also be passed to the global-name-based `tf.train.Saver`,
		the returned callables should have a default value for their name argument
		(i.e. be callable with no arguments).
		
		Returned values must be saved only by this object; if any value may be
		shared, it should instead be a dependency. For example, variable objects
		save their own values with the key `VARIABLE_VALUE_KEY`, but objects which
		reference variables simply add a dependency.
		
		Returns:
		  The dictionary mapping attribute names to `SaveableObject` factories
		  described above. For example:
		  {VARIABLE_VALUE_KEY:
		   lambda name="global_name_for_this_object":
		   SaveableObject(name=name, ...)}
	**/
	public function _gather_saveables_for_checkpoint():Dynamic;
	public function _get_existing_metric(?name:Dynamic):Dynamic;
	/**
		Private utility to retrieves an attribute (e.g. inputs) from a node.
		
		This is used to implement the methods:
		    - get_input_shape_at
		    - get_output_shape_at
		    - get_input_at
		    etc...
		
		Arguments:
		    node_index: Integer index of the node from which
		        to retrieve the attribute.
		    attr: Exact node attribute name.
		    attr_name: Human-readable attribute name, for error messages.
		
		Returns:
		    The layer's attribute `attr` at the node of index `node_index`.
		
		Raises:
		    RuntimeError: If the layer has no inbound nodes, or if called in Eager
		    mode.
		    ValueError: If the index provided does not match any node.
	**/
	public function _get_node_attribute_at_index(node_index:Dynamic, attr:Dynamic, attr_name:Dynamic):Dynamic;
	public function _handle_activity_regularization(inputs:Dynamic, outputs:Dynamic):Dynamic;
	/**
		Pop and load any deferred checkpoint restores into `checkpointable`.
		
		This method does not add a new dependency on `checkpointable`, but it does
		check if any outstanding/deferred dependencies have been queued waiting for
		this dependency to be added (matched based on `name`). If so,
		`checkpointable` and its dependencies are restored. The restorations are
		considered fulfilled and so are deleted.
		
		`_track_checkpointable` is more appropriate for adding a
		normal/unconditional dependency, and includes handling for deferred
		restorations. This method allows objects such as `Optimizer` to use the same
		restoration logic while managing conditional dependencies themselves, by
		overriding `_checkpoint_dependencies` and `_lookup_dependency` to change the
		object's dependencies based on the context it is saved/restored in (a single
		optimizer instance can have state associated with multiple graphs).
		
		Args:
		  name: The name of the dependency within this object (`self`), used to
		    match `checkpointable` with values saved in a checkpoint.
		  checkpointable: The Checkpointable object to restore (inheriting from
		    `CheckpointableBase`).
	**/
	public function _handle_deferred_dependencies(name:Dynamic, checkpointable:Dynamic):Dynamic;
	/**
		Create lambdas which compute regularization losses.
	**/
	public function _handle_weight_regularization(name:Dynamic, variable:Dynamic, regularizer:Dynamic):Dynamic;
	public function _init_set_name(name:Dynamic):Dynamic;
	/**
		Get Layer inputs from __call__ *args and **kwargs.
		
		Args:
		  call_args: The positional arguments passed to __call__.
		  call_kwargs: The keyword argument dict passed to __call__.
		
		Returns:
		  A tuple of (inputs, non_input_kwargs). These may be the same objects as
		  were passed in (call_args and call_kwargs).
	**/
	public function _inputs_from_call_args(call_args:Dynamic, call_kwargs:Dynamic):Dynamic;
	/**
		Look up a dependency by name.
		
		May be overridden to include conditional dependencies.
		
		Args:
		  name: The local name of the dependency.
		Returns:
		  A `Checkpointable` object, or `None` if no dependency by this name was
		  found.
	**/
	public function _lookup_dependency(name:Dynamic):Dynamic;
	/**
		Make the frequency features.
		
		Args:
		  input_feat: input Tensor, 2D, [batch, num_units].
		  slice_offset: (optional) Python int, default 0, the slicing offset is only
		    used for the backward processing in the BidirectionalGridLSTMCell. It
		    specifies a different starting point instead of always 0 to enable the
		    forward and backward processing look at different frequency blocks.
		
		Returns:
		  A list of frequency features, with each element containing:
		  - A 2D, [batch, output_dim], Tensor representing the time-frequency
		    feature for that frequency index. Here output_dim is feature_size.
		Raises:
		  ValueError: if input_size cannot be inferred from static shape inference.
	**/
	public function _make_tf_features(input_feat:Dynamic, ?slice_offset:Dynamic):Dynamic;
	public function _make_unique_name(?name_uid_map:Dynamic, ?avoid_names:Dynamic, ?namespace:Dynamic, ?zero_based:Dynamic):Dynamic;
	public function _maybe_build(inputs:Dynamic):Dynamic;
	/**
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_checkpointable():Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	/**
		Determines op naming for the Layer.
	**/
	public function _name_scope():Dynamic;
	/**
		If automatic dependency tracking is enabled, ignores `value`.
	**/
	public function _no_dependency(value:Dynamic):Dynamic;
	/**
		Return a dependency's value for restore-on-create.
		
		Note the restoration is not deleted; if for some reason preload is called
		and then not assigned to the variable (for example because a custom getter
		overrides the initializer), the assignment will still happen once the
		variable is tracked (determined based on checkpoint.restore_uid).
		
		Args:
		  name: The object-local name of the dependency holding the variable's
		    value.
		  shape: The shape of the variable being loaded into.
		Returns:
		  An callable for use as a variable's initializer/initial_value, or None if
		  one should not be set (either because there was no variable with this name
		  in the checkpoint or because it needs more complex deserialization). Any
		  non-trivial deserialization will happen when the variable object is
		  tracked.
	**/
	public function _preload_simple_restoration(name:Dynamic, shape:Dynamic):Dynamic;
	/**
		Restore this object and its dependencies (may be deferred).
	**/
	public function _restore_from_checkpoint_position(checkpoint_position:Dynamic):Dynamic;
	public function _rnn_get_variable(getter:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _set_connectivity_metadata_(inputs:Dynamic, outputs:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _set_mask_metadata(inputs:Dynamic, outputs:Dynamic, previous_mask:Dynamic):Dynamic;
	public function _set_scope(?scope:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
	/**
		Whether the layer can be called to create a static graph.
		
		Because of nesting, there are two components to being "graph-friendly":
		  1) all inner layers are graph-friendly
		  2) the way they are composed is graph-friendly.
		We denote the latter as "_call_is_graph_friendly", and define
		"_static_graph_friendly" as being the combination of
		"_call_is_graph_friendly" and "all inner layers are _static_graph_friendly".
		For atomic layers (no inner layers), this is just "_call_is_graph_friendly".
		
		Returns:
		  Boolean.
	**/
	public var _static_graph_friendly : Dynamic;
	public function _symbolic_add_metric(value:Dynamic, ?aggregation:Dynamic, ?name:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Declare a dependency on another `Checkpointable` object.
		
		Indicates that checkpoints for this object should include variables from
		`checkpointable`.
		
		Variables in a checkpoint are mapped to `Checkpointable`s based on the names
		provided when the checkpoint was written. To avoid breaking existing
		checkpoints when modifying a class, neither variable names nor dependency
		names (the names passed to `_track_checkpointable`) may change.
		
		Args:
		  checkpointable: A `Checkpointable` which this object depends on.
		  name: A local name for `checkpointable`, used for loading checkpoints into
		    the correct objects.
		  overwrite: Boolean, whether silently replacing dependencies is OK. Used
		    for __setattr__, where throwing an error on attribute reassignment would
		    be inappropriate.
		
		Returns:
		  `checkpointable`, for convenience when declaring a dependency and
		  assigning to a member variable in one statement.
		
		Raises:
		  TypeError: If `checkpointable` does not inherit from `Checkpointable`.
		  ValueError: If another object is already tracked by this name.
	**/
	public function _track_checkpointable(checkpointable:Dynamic, name:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Optional regularizer function for the output of this layer.
	**/
	public var activity_regularizer : Dynamic;
	/**
		Add loss tensor(s), potentially dependent on layer inputs.
		
		Some losses (for instance, activity regularization losses) may be dependent
		on the inputs passed when calling a layer. Hence, when reusing the same
		layer on different inputs `a` and `b`, some entries in `layer.losses` may
		be dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_losses_for` method allows to retrieve the losses relevant to a
		specific set of inputs.
		
		Note that `add_loss` is not supported when executing eagerly. Instead,
		variable regularizers may be added through `add_variable`. Activity
		regularization is not supported directly (but such losses may be returned
		from `Layer.call()`).
		
		Arguments:
		  losses: Loss tensor, or list/tuple of tensors. Rather than tensors, losses
		    may also be zero-argument callables which create a loss tensor.
		  inputs: Ignored when executing eagerly. If anything other than None is
		    passed, it signals the losses are conditional on some of the layer's
		    inputs, and thus they should only be run where these inputs are
		    available. This is the case for activity regularization losses, for
		    instance. If `None` is passed, the losses are assumed
		    to be unconditional, and will apply across all dataflows of the layer
		    (e.g. weight regularization losses).
	**/
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Adds metric tensor to the layer.
		
		Args:
		  value: Metric tensor.
		  aggregation: Sample-wise metric reduction function. If `aggregation=None`,
		    it indicates that the metric tensor provided has been aggregated
		    already. eg, `model.add_metric(BinaryAccuracy(name='acc')(y_true,
		    y_pred))`. If aggregation='mean', the given metric tensor will be
		    sample-wise reduced using `mean` function. eg, `model.add_metric(
		    tf.reduce_mean(outputs), name='output_mean', aggregation='mean')`.
		  name: String metric name.
		
		Raises:
		  ValueError: If `aggregation` is anything other than None or `mean`.
	**/
	public function add_metric(value:Dynamic, ?aggregation:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Add update op(s), potentially dependent on layer inputs.
		
		Weight updates (for instance, the updates of the moving mean and variance
		in a BatchNormalization layer) may be dependent on the inputs passed
		when calling a layer. Hence, when reusing the same layer on
		different inputs `a` and `b`, some entries in `layer.updates` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_updates_for` method allows to retrieve the updates relevant to a
		specific set of inputs.
		
		This call is ignored when eager execution is enabled (in that case, variable
		updates are run on the fly and thus do not need to be tracked for later
		execution).
		
		Arguments:
		  updates: Update op, or list/tuple of update ops.
		  inputs: If anything other than None is passed, it signals the updates
		    are conditional on some of the layer's inputs,
		    and thus they should only be run where these inputs are available.
		    This is the case for BatchNormalization updates, for instance.
		    If None, the updates will be taken into account unconditionally,
		    and you are responsible for making sure that any dependency they might
		    have is available at runtime.
		    A step counter might fall into this category.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Alias for `add_weight`.
	**/
	public function add_variable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adds a new variable to the layer, or gets an existing one; returns it.
		
		Arguments:
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype` or `float32`.
		  initializer: initializer instance (callable).
		  regularizer: regularizer instance (callable).
		  trainable: whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		    Note, if the current variable scope is marked as non-trainable
		    then this parameter is ignored and any added variables are also
		    marked as non-trainable. `trainable` defaults to `True` unless
		    `synchronization` is set to `ON_READ`.
		  constraint: constraint instance (callable).
		  use_resource: Whether to use `ResourceVariable`.
		  synchronization: Indicates when a distributed a variable will be
		    aggregated. Accepted values are constants defined in the class
		    `tf.VariableSynchronization`. By default the synchronization is set to
		    `AUTO` and the current `DistributionStrategy` chooses
		    when to synchronize. If `synchronization` is set to `ON_READ`,
		    `trainable` must not be set to `True`.
		  aggregation: Indicates how a distributed variable will be aggregated.
		    Accepted values are constants defined in the class
		    `tf.VariableAggregation`.
		  partitioner: (optional) partitioner instance (callable).  If
		    provided, when the requested variable is created it will be split
		    into multiple partitions according to `partitioner`.  In this case,
		    an instance of `PartitionedVariable` is returned.  Available
		    partitioners include `tf.fixed_size_partitioner` and
		    `tf.variable_axis_size_partitioner`.  For more details, see the
		    documentation of `tf.get_variable` and the  "Variable Partitioners
		    and Sharding" section of the API guide.
		
		Returns:
		  The created variable.  Usually either a `Variable` or `ResourceVariable`
		  instance.  If `partitioner` is not `None`, a `PartitionedVariable`
		  instance is returned.
		
		Raises:
		  RuntimeError: If called with partioned variable regularization and
		    eager execution is enabled.
		  ValueError: When trainable has been set to True with synchronization
		    set as `ON_READ`.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?partitioner:Dynamic):Dynamic;
	/**
		Apply the layer on a input.
		
		This is an alias of `self.__call__`.
		
		Arguments:
		  inputs: Input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
	**/
	public function apply(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Creates the variables of the layer (optional, for subclass implementers).
		
		This is a method that implementers of subclasses of `Layer` or `Model`
		can override if they need a state-creation step in-between
		layer instantiation and layer call.
		
		This is typically used to create the weights of `Layer` subclasses.
		
		Arguments:
		  input_shape: Instance of `TensorShape`, or list of instances of
		    `TensorShape` if the layer expects a list of inputs
		    (one instance per input).
	**/
	public function build(_:Dynamic):Dynamic;
	/**
		Run one step of LSTM.
		
		Args:
		  inputs: input Tensor, 2D, [batch, feature_size].
		  state: Tensor or tuple of Tensors, 2D, [batch, state_size], depends on the
		    flag self._state_is_tuple.
		
		Returns:
		  A tuple containing:
		  - A 2D, [batch, output_dim], Tensor representing the output of the LSTM
		    after reading "inputs" when previous state was "state".
		    Here output_dim is num_units.
		  - A 2D, [batch, state_size], Tensor representing the new state of LSTM
		    after reading "inputs" when previous state was "state".
		Raises:
		  ValueError: if an input_size was specified and the provided inputs have
		    a different dimension.
	**/
	public function call(inputs:Dynamic, state:Dynamic):Dynamic;
	/**
		Computes an output mask tensor.
		
		Arguments:
		    inputs: Tensor or list of tensors.
		    mask: Tensor or list of tensors.
		
		Returns:
		    None or a tensor (or list of tensors,
		        one per output tensor of the layer).
	**/
	public function compute_mask(inputs:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Computes the output shape of the layer.
		
		Assumes that the layer will be built
		to match that input shape provided.
		
		Arguments:
		    input_shape: Shape tuple (tuple of integers)
		        or list of shape tuples (one per output tensor of the layer).
		        Shape tuples can include None for free dimensions,
		        instead of an integer.
		
		Returns:
		    An input shape tuple.
	**/
	public function compute_output_shape(input_shape:Dynamic):Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		Returns:
		    An integer count.
		
		Raises:
		    ValueError: if the layer isn't yet built
		      (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	public var dtype : Dynamic;
	/**
		Creates a layer from its config.
		
		This method is the reverse of `get_config`,
		capable of instantiating the same layer from the config
		dictionary. It does not handle layer connectivity
		(handled by Network), nor weights (handled by `set_weights`).
		
		Arguments:
		    config: A Python dictionary, typically the
		        output of get_config.
		
		Returns:
		    A layer instance.
	**/
	static public function from_config(config:Dynamic):Dynamic;
	/**
		Returns the config of the layer.
		
		A layer config is a Python dictionary (serializable)
		containing the configuration of a layer.
		The same layer can be reinstantiated later
		(without its trained weights) from this configuration.
		
		The config of a layer does not include connectivity
		information, nor the layer class name. These are handled
		by `Network` (one layer of abstraction above).
		
		Returns:
		    Python dictionary.
	**/
	public function get_config():Dynamic;
	public function get_initial_state(?inputs:Dynamic, ?batch_size:Dynamic, ?dtype:Dynamic):Dynamic;
	/**
		Retrieves the input tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple inputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_input_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input shape(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple inputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_input_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves losses relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		
		Returns:
		  List of loss tensors of the layer that depend on `inputs`.
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_losses_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the output tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A tensor (or list of tensors if the layer has multiple outputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_output_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A mask tensor
		    (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output shape(s) of a layer at a given node.
		
		Arguments:
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		Returns:
		    A shape tuple
		    (or list of shape tuples if the layer has multiple outputs).
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_output_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves updates relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		
		Returns:
		  List of update ops of the layer that depend on `inputs`.
		
		Raises:
		  RuntimeError: If called in Eager mode.
	**/
	public function get_updates_for(inputs:Dynamic):Dynamic;
	/**
		Returns the current weights of the layer.
		
		Returns:
		    Weights values as a list of numpy arrays.
	**/
	public function get_weights():Dynamic;
	public var graph : Dynamic;
	/**
		Deprecated, do NOT use! Only for compatibility with external Keras.
	**/
	public var inbound_nodes : Dynamic;
	/**
		Retrieves the input tensor(s) of a layer.
		
		Only applicable if the layer has exactly one input,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input tensor or list of input tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
		
		Raises:
		  RuntimeError: If called in Eager mode.
		  AttributeError: If no inbound nodes are found.
	**/
	public var input : Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input mask tensor (potentially None) or list of input
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_mask : Dynamic;
	/**
		Retrieves the input shape(s) of a layer.
		
		Only applicable if the layer has exactly one input,
		i.e. if it is connected to one incoming layer, or if all inputs
		have the same shape.
		
		Returns:
		    Input shape, as an integer shape tuple
		    (or list of shape tuples, one tuple per input tensor).
		
		Raises:
		    AttributeError: if the layer has no defined input_shape.
		    RuntimeError: if called in Eager mode.
	**/
	public var input_shape : Dynamic;
	/**
		Losses which are associated with this `Layer`.
		
		Variable regularization tensors are created when this property is accessed,
		so it is eager safe: accessing `losses` under a `tf.GradientTape` will
		propagate gradients back to the corresponding variables.
		
		Returns:
		  A list of tensors.
	**/
	public var losses : Dynamic;
	public var name : Dynamic;
	public var non_trainable_variables : Dynamic;
	public var non_trainable_weights : Dynamic;
	/**
		Deprecated, do NOT use! Only for compatibility with external Keras.
	**/
	public var outbound_nodes : Dynamic;
	/**
		Retrieves the output tensor(s) of a layer.
		
		Only applicable if the layer has exactly one output,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		  Output tensor or list of output tensors.
		
		Raises:
		  AttributeError: if the layer is connected to more than one incoming
		    layers.
		  RuntimeError: if called in Eager mode.
	**/
	public var output : Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Output mask tensor (potentially None) or list of output
		    mask tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_mask : Dynamic;
	/**
		Retrieves the output shape(s) of a layer.
		
		Only applicable if the layer has one output,
		or if all outputs have the same shape.
		
		Returns:
		    Output shape, as an integer shape tuple
		    (or list of shape tuples, one tuple per output tensor).
		
		Raises:
		    AttributeError: if the layer has no defined output shape.
		    RuntimeError: if called in Eager mode.
	**/
	public var output_shape : Dynamic;
	/**
		Integer or TensorShape: size of outputs produced by this cell.
	**/
	public var output_size : Dynamic;
	public var scope_name : Dynamic;
	/**
		Sets the weights of the layer, from Numpy arrays.
		
		Arguments:
		    weights: a list of Numpy arrays. The number
		        of arrays and their shape must match
		        number of the dimensions of the weights
		        of the layer (i.e. it should match the
		        output of `get_weights`).
		
		Raises:
		    ValueError: If the provided weights list does not match the
		        layer's specifications.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		size(s) of state(s) used by this cell.
		
		It can be represented by an Integer, a TensorShape or a tuple of Integers
		or TensorShapes.
	**/
	public var state_size : Dynamic;
	public var state_tuple_type : Dynamic;
	public var trainable_variables : Dynamic;
	public var trainable_weights : Dynamic;
	public var updates : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Alias of `self.weights`.
		
		Returns:
		  A list of variables.
	**/
	public var variables : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
		Returns:
		  A list of variables.
	**/
	public var weights : Dynamic;
	/**
		Return zero-filled state tensor(s).
		
		Args:
		  batch_size: int, float, or unit Tensor representing the batch size.
		  dtype: the data type to use for the state.
		
		Returns:
		  If `state_size` is an int or TensorShape, then the return value is a
		  `N-D` tensor of shape `[batch_size, state_size]` filled with zeros.
		
		  If `state_size` is a nested list or tuple, then the return value is
		  a nested list or tuple (of the same structure) of `2-D` tensors with
		  the shapes `[batch_size, s]` for each s in `state_size`.
	**/
	public function zero_state(batch_size:Dynamic, dtype:Dynamic):Dynamic;
}