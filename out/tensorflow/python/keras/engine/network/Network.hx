/* This file is generated, do not edit! */
package tensorflow.python.keras.engine.network;
@:pythonImport("tensorflow.python.keras.engine.network", "Network") extern class Network {
	/**
		Wraps `call`, applying pre- and post-processing steps.
		
		Arguments:
		  inputs: input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
		
		Note:
		  - The following optional keyword arguments are reserved for specific uses:
		    * `training`: Boolean scalar tensor of Python boolean indicating
		      whether the `call` is meant for training or inference.
		    * `mask`: Boolean input mask.
		  - If the layer's `call` method takes a `mask` argument (as some Keras
		    layers do), its default value will be set to the mask generated
		    for `inputs` by the previous layer (if `input` did come from
		    a layer that generated a corresponding mask, i.e. if it came from
		    a Keras layer with masking support.
		
		Raises:
		  ValueError: if the layer's `call` method returns None (an invalid value).
	**/
	public function __call__(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `inputs` verify the input assumptions
		of the layer (if any). If not, a clear and actional exception gets raised.
		
		Arguments:
		    inputs: input tensor or list of input tensors.
		
		Raises:
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	public function _assert_input_compatibility(inputs:Dynamic):Dynamic;
	public function _base_init(?name:Dynamic):Dynamic;
	public function _call_and_compute_mask(inputs:Dynamic, ?training:Dynamic, ?mask:Dynamic):Dynamic;
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
	/**
		Decides how `self.call()` is invoked. See base_layer.CallConvention.
	**/
	public function _determine_call_convention(call_argspec:Dynamic):Dynamic;
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
	public function _init_graph_network(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	public function _init_set_name(name:Dynamic, ?zero_based:Dynamic):Dynamic;
	public function _init_subclassed_network(?name:Dynamic):Dynamic;
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
		Initialize dependency management.
		
		Not __init__, since most objects will forget to call it.
	**/
	public function _maybe_initialize_checkpointable():Dynamic;
	/**
		Restore the object's attributes from a name-based checkpoint.
	**/
	public function _name_based_attribute_restore(checkpoint:Dynamic):Dynamic;
	public function _name_scope():Dynamic;
	/**
		Override to allow `Layer` to disable dependency tracking.
		
		`CheckpointableBase` defines this method, whose semantics are "if a subclass
		does dependency tracking, this method exempts `value`." Layer uses
		`_no_dependency` to exempt some of its attribute assignments (conditional on
		attribute assignment causing tracking in the subclass).
		
		Args:
		  value: An object which will be assigned to an object attribute, whose
		    value should not be tracked.
		
		Returns:
		  A wrapped object which, when assigned to an attribute, will not be
		  tracked (`value` will be stored in the attribute).
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
	/**
		Computes output tensors for new inputs.
		
		# Note:
		    - Expects `inputs` to be a list (potentially with 1 element).
		    - Can be run on non-Keras tensors.
		
		Arguments:
		    inputs: List of tensors
		    training: Boolean learning phase.
		    mask: List of masks (tensors or None).
		
		Returns:
		    Two lists: output_tensors, output_masks
	**/
	public function _run_internal_graph(inputs:Dynamic, ?training:Dynamic, ?mask:Dynamic):Dynamic;
	public function _set_connectivity_metadata_(inputs:Dynamic, outputs:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _set_learning_phase_metadata(inputs:Dynamic, outputs:Dynamic):Dynamic;
	public function _set_mask_metadata(inputs:Dynamic, outputs:Dynamic, previous_mask:Dynamic):Dynamic;
	/**
		Restore this object, and either queue its dependencies or defer them.
	**/
	public function _single_restoration_from_checkpoint_position(checkpoint_position:Dynamic, visit_queue:Dynamic):Dynamic;
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
		Add Checkpointable dependencies on a list of Layers.
	**/
	public function _track_layers(layers:Dynamic):Dynamic;
	public var _unfiltered_losses : Dynamic;
	public var _unfiltered_updates : Dynamic;
	/**
		Util shared between different serialization methods.
		
		Returns:
		    Model config with Keras version information added.
	**/
	public function _updated_config():Dynamic;
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
		    may also be zero-argument callables which create a loss tensor. Only
		    callable losses are supported when executing eagerly.
		  inputs: If anything other than None is passed, it signals the losses
		    are conditional on some of the layer's inputs,
		    and thus they should only be run where these inputs are available.
		    This is the case for activity regularization losses, for instance.
		    If `None` is passed, the losses are assumed
		    to be unconditional, and will apply across all dataflows of the layer
		    (e.g. weight regularization losses).
		
		Raises:
		  RuntimeError: If called in Eager mode with a `Tensor` rather than a
		    callable, or if `inputs` is not None.
	**/
	public function add_loss(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function add_variable(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic):Dynamic;
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
		  partitioner: Partitioner to be passed to the `Checkpointable` API.
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
		  **kwargs: Additional keyword arguments. Accepted values are `getter` and
		    `collections`.
		
		Returns:
		  The created variable.  Usually either a `Variable` or `ResourceVariable`
		  instance.  If `partitioner` is not `None`, a `PartitionedVariable`
		  instance is returned.
		
		Raises:
		  RuntimeError: If called with partioned variable regularization and
		    eager execution is enabled.
		  ValueError: When giving unsupported dtype and no initializer or when
		    trainable has been set to True with synchronization set as `ON_READ`.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic, ?partitioner:Dynamic, ?use_resource:Dynamic, ?synchronization:Dynamic, ?aggregation:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Apply the layer on a input.
		
		This simply wraps `self.__call__`.
		
		Arguments:
		  inputs: Input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		
		Returns:
		  Output tensor(s).
	**/
	public function apply(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Builds the model based on input shapes received.
		
		This is to be used for subclassed models, which do not know at instantiation
		time what their inputs look like.
		
		Args:
		 input_shape: Single tuple, TensorShape, or list of shapes, where shapes
		     are tuples, integers, or TensorShapes.
		
		Raises:
		  ValueError:
		    1. In case of invalid user-provided data (not of type tuple,
		       list, or TensorShape).
		    2. If the model requires call arguments that are agnostic
		       to the input shapes (positional or kwarg in call signature).
		    3. If not all layers were properly built.
		    4. If float type inputs are not supported within the layers.
		
		  In each of these cases, the user should build their model by calling it
		  on real tensor data.
	**/
	public function build(input_shape:Dynamic):Dynamic;
	/**
		Calls the model on new inputs.
		
		In this case `call` just reapplies
		all ops in the graph to the new inputs
		(e.g. build a new computational graph from the provided inputs).
		
		Arguments:
		    inputs: A tensor or list of tensors.
		    training: Boolean or boolean scalar tensor, indicating whether to run
		      the `Network` in training mode or inference mode.
		    mask: A mask or list of masks. A mask can be
		        either a tensor or None (no mask).
		
		Returns:
		    A tensor if there is a single output, or
		    a list of tensors if there are more than one outputs.
	**/
	public function call(inputs:Dynamic, ?training:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Computes an output mask tensor.
		
		Arguments:
		    inputs: Tensor or list of tensors.
		    mask: Tensor or list of tensors.
		
		Returns:
		    None or a tensor (or list of tensors,
		        one per output tensor of the layer).
	**/
	public function compute_mask(inputs:Dynamic, mask:Dynamic):Dynamic;
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
		Instantiates a Model from its config (output of `get_config()`).
		
		Arguments:
		    config: Model config dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		Returns:
		    A model instance.
		
		Raises:
		    ValueError: In case of improperly formatted config dict.
	**/
	static public function from_config(config:Dynamic, ?custom_objects:Dynamic):Dynamic;
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
		Retrieves a layer based on either its name (unique) or index.
		
		If `name` and `index` are both provided, `index` will take precedence.
		Indices are based on order of horizontal graph traversal (bottom-up).
		
		Arguments:
		    name: String, name of layer.
		    index: Integer, index of layer.
		
		Returns:
		    A layer instance.
		
		Raises:
		    ValueError: In case of invalid layer name or index.
	**/
	public function get_layer(?name:Dynamic, ?index:Dynamic):Dynamic;
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
		Retrieves the weights of the model.
		
		Returns:
		    A flat list of Numpy arrays.
	**/
	public function get_weights():Dynamic;
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
		Gets the network's input specs.
		
		Returns:
		    A list of `InputSpec` instances (one per input to the model)
		        or a single instance if the model has only one input.
	**/
	public var input_spec : Dynamic;
	public var layers : Dynamic;
	/**
		Loads all layer weights, either from a TensorFlow or an HDF5 weight file.
		
		If `by_name` is False weights are loaded based on the network's
		topology. This means the architecture should be the same as when the weights
		were saved.  Note that layers that don't have weights are not taken into
		account in the topological ordering, so adding or removing layers is fine as
		long as they don't have weights.
		
		If `by_name` is True, weights are loaded into layers only if they share the
		same name. This is useful for fine-tuning or transfer-learning models where
		some of the layers have changed.
		
		Only topological loading (`by_name=False`) is supported when loading weights
		from the TensorFlow format. Note that topological loading differs slightly
		between TensorFlow and HDF5 formats for user-defined classes inheriting from
		`tf.keras.Model`: HDF5 loads based on a flattened list of weights, while the
		TensorFlow format loads based on the object-local names of attributes to
		which layers are assigned in the `Model`'s constructor.
		
		Arguments:
		    filepath: String, path to the weights file to load. For weight files in
		        TensorFlow format, this is the file prefix (the same as was passed
		        to `save_weights`).
		    by_name: Boolean, whether to load weights by name or by topological
		        order. Only topological loading is supported for weight files in
		        TensorFlow format.
		
		Returns:
		    When loading a weight file in TensorFlow format, returns the same status
		    object as `tf.train.Checkpoint.restore`. When graph building, restore
		    ops are run automatically as soon as the network is built (on first call
		    for user-defined classes inheriting from `Model`, immediately if it is
		    already built).
		
		    When loading weights in HDF5 format, returns `None`.
		
		Raises:
		    ImportError: If h5py is not available and the weight file is in HDF5
		        format.
	**/
	public function load_weights(filepath:Dynamic, ?by_name:Dynamic):Dynamic;
	/**
		Retrieves the network's losses.
		
		Will only include losses that are either
		unconditional, or conditional on inputs to this model
		(e.g. will not include losses that depend on tensors
		that aren't inputs to this model).
		
		When the network has no registered inputs, all losses are returned.
		
		Returns:
		    A list of loss tensors.
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
	public function reset_states():Dynamic;
	/**
		Saves the model to a single HDF5 file.
		
		The savefile includes:
		    - The model architecture, allowing to re-instantiate the model.
		    - The model weights.
		    - The state of the optimizer, allowing to resume training
		        exactly where you left off.
		
		This allows you to save the entirety of the state of a model
		in a single file.
		
		Saved models can be reinstantiated via `keras.models.load_model`.
		The model returned by `load_model`
		is a compiled model ready to be used (unless the saved model
		was never compiled in the first place).
		
		Arguments:
		    filepath: String, path to the file to save the weights to.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		Example:
		
		```python
		from keras.models import load_model
		
		model.save('my_model.h5')  # creates a HDF5 file 'my_model.h5'
		del model  # deletes the existing model
		
		# returns a compiled model
		# identical to the previous one
		model = load_model('my_model.h5')
		```
	**/
	public function save(filepath:Dynamic, ?overwrite:Dynamic, ?include_optimizer:Dynamic):Dynamic;
	/**
		Saves all layer weights.
		
		Either saves in HDF5 or in TensorFlow format based on the `save_format`
		argument.
		
		When saving in HDF5 format, the weight file has:
		  - `layer_names` (attribute), a list of strings
		      (ordered names of model layers).
		  - For every layer, a `group` named `layer.name`
		      - For every such layer group, a group attribute `weight_names`,
		          a list of strings
		          (ordered names of weights tensor of the layer).
		      - For every weight in the layer, a dataset
		          storing the weight value, named after the weight tensor.
		
		When saving in TensorFlow format, all objects referenced by the network are
		saved in the same format as `tf.train.Checkpoint`, including any `Layer`
		instances or `Optimizer` instances assigned to object attributes. For
		networks constructed from inputs and outputs using `tf.keras.Model(inputs,
		outputs)`, `Layer` instances used by the network are tracked/saved
		automatically. For user-defined classes which inherit from `tf.keras.Model`,
		`Layer` instances must be assigned to object attributes, typically in the
		constructor. See the documentation of `tf.train.Checkpoint` and
		`tf.keras.Model` for details.
		
		Arguments:
		    filepath: String, path to the file to save the weights to. When saving
		        in TensorFlow format, this is the prefix used for checkpoint files
		        (multiple files are generated). Note that the '.h5' suffix causes
		        weights to be saved in HDF5 format.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    save_format: Either 'tf' or 'h5'. A `filepath` ending in '.h5' or
		        '.keras' will default to HDF5 if `save_format` is `None`. Otherwise
		        `None` defaults to 'tf'.
		
		Raises:
		    ImportError: If h5py is not available when attempting to save in HDF5
		        format.
		    ValueError: For invalid/unknown format arguments.
	**/
	public function save_weights(filepath:Dynamic, ?overwrite:Dynamic, ?save_format:Dynamic):Dynamic;
	/**
		Sets the weights of the model.
		
		Arguments:
		    weights: A list of Numpy arrays with shapes and types matching
		        the output of `model.get_weights()`.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		Returns the `updates` from all layers that are stateful.
		
		This is useful for separating training updates and
		state updates, e.g. when we need to update a layer's internal state
		during prediction.
		
		Returns:
		    A list of update ops.
	**/
	public var state_updates : Dynamic;
	public var stateful : Dynamic;
	/**
		Prints a string summary of the network.
		
		Arguments:
		    line_length: Total length of printed lines
		        (e.g. set this to adapt the display to different
		        terminal window sizes).
		    positions: Relative or absolute positions of log elements
		        in each line. If not provided,
		        defaults to `[.33, .55, .67, 1.]`.
		    print_fn: Print function to use. Defaults to `print`.
		        It will be called on each line of the summary.
		        You can set it to a custom function
		        in order to capture the string summary.
		
		Raises:
		    ValueError: if `summary()` is called before the model is built.
	**/
	public function summary(?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Returns a JSON string containing the network configuration.
		
		To load a network from a JSON save file, use
		`keras.models.model_from_json(json_string, custom_objects={})`.
		
		Arguments:
		    **kwargs: Additional keyword arguments
		        to be passed to `json.dumps()`.
		
		Returns:
		    A JSON string.
	**/
	public function to_json(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a yaml string containing the network configuration.
		
		To load a network from a yaml save file, use
		`keras.models.model_from_yaml(yaml_string, custom_objects={})`.
		
		`custom_objects` should be a dictionary mapping
		the names of custom losses / layers / etc to the corresponding
		functions / classes.
		
		Arguments:
		    **kwargs: Additional keyword arguments
		        to be passed to `yaml.dump()`.
		
		Returns:
		    A YAML string.
		
		Raises:
		    ImportError: if yaml module is not found.
	**/
	public function to_yaml(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var trainable_variables : Dynamic;
	public var trainable_weights : Dynamic;
	/**
		Retrieves the network's updates.
		
		Will only include updates that are either
		unconditional, or conditional on inputs to this model
		(e.g. will not include updates that were created by layers of this model
		outside of the model).
		
		When the network has no registered inputs, all updates are returned.
		
		Effectively, `network.updates` behaves like `layer.updates`.
		
		Concrete example:
		
		```python
		  bn = keras.layers.BatchNormalization()
		  x1 = keras.layers.Input(shape=(10,))
		  _ = bn(x1)  # This creates 2 updates.
		
		  x2 = keras.layers.Input(shape=(10,))
		  y2 = bn(x2)  # This creates 2 more updates.
		
		  # The BN layer has now 4 updates.
		  self.assertEqual(len(bn.updates), 4)
		
		  # Let's create a model from x2 to y2.
		  model = keras.models.Model(x2, y2)
		
		  # The model does not list all updates from its underlying layers,
		  # but only the updates that are relevant to it. Updates created by layers
		  # outside of the model are discarded.
		  self.assertEqual(len(model.updates), 2)
		
		  # If you keep calling the model, you append to its updates, just like
		  # what happens for a layer.
		  x3 = keras.layers.Input(shape=(10,))
		  y3 = model(x3)
		  self.assertEqual(len(model.updates), 4)
		
		  # But if you call the inner BN layer independently, you don't affect
		  # the model's updates.
		  x4 = keras.layers.Input(shape=(10,))
		  _ = bn(x4)
		  self.assertEqual(len(model.updates), 4)
		```
		
		Returns:
		    A list of update ops.
	**/
	public var updates : Dynamic;
	public var uses_learning_phase : Dynamic;
	/**
		Returns the list of all layer variables/weights.
		
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
}