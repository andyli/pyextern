/* This file is generated, do not edit! */
package keras.engine.topology;
@:pythonImport("keras.engine.topology", "Container") extern class Container {
	/**
		Wrapper around self.call(), for handling internal references.
		
		If a Keras tensor is passed:
		    - We call self._add_inbound_node().
		    - If necessary, we `build` the layer to match
		        the _keras_shape of the input(s).
		    - We update the _keras_shape of every input tensor with
		        its new shape (obtained via self.compute_output_shape).
		        This is done as part of _add_inbound_node().
		    - We update the _keras_history of the output tensor(s)
		        with the current layer.
		        This is done as part of _add_inbound_node().
		
		# Arguments
		    inputs: Can be a tensor or list/tuple of tensors.
		    **kwargs: Additional keyword arguments to be passed to `call()`.
		
		# Returns
		    Output of the layer's `call` method.
		
		# Raises
		    ValueError: in case the layer is missing shape information
		        for its `build` call.
	**/
	public function __call__(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Internal method to create an inbound node for the layer.
		
		# Arguments
		    input_tensors: list of input tensors.
		    output_tensors: list of output tensors.
		    input_masks: list of input masks (a mask can be a tensor, or None).
		    output_masks: list of output masks (a mask can be a tensor, or None).
		    input_shapes: list of input shape tuples.
		    output_shapes: list of output shape tuples.
		    arguments: dictionary of keyword arguments that were passed to the
		        `call` method of the layer at the call that created the node.
	**/
	public function _add_inbound_node(input_tensors:Dynamic, output_tensors:Dynamic, input_masks:Dynamic, output_masks:Dynamic, input_shapes:Dynamic, output_shapes:Dynamic, ?arguments:Dynamic):Dynamic;
	/**
		Retrieves an attribute (e.g. input_tensors) from a node.
		
		This is used to implement the methods:
		    - get_input_shape_at
		    - get_output_shape_at
		    - get_input_at
		    etc...
		
		# Arguments
		    node_index: Integer index of the node from which
		        to retrieve the attribute.
		    attr: Exact node attribute name.
		    attr_name: Human-readable attribute name, for error messages.
		
		# Returns
		    The layer's attribute `attr` at the node of index `node_index`.
		
		# Raises
		    RuntimeError: If the layer has no inbound nodes.
		    ValueError: If the index is does not match any node.
	**/
	public function _get_node_attribute_at_index(node_index:Dynamic, attr:Dynamic, attr_name:Dynamic):Dynamic;
	/**
		Util hared between different serialization methods.
		
		# Returns
		    Model config with Keras version information added.
	**/
	public function _updated_config():Dynamic;
	/**
		Add losses to the layer.
		
		The loss may potentially be conditional on some inputs tensors,
		for instance activity losses are conditional on the layer's inputs.
		
		# Arguments
		    losses: loss tensor or list of loss tensors
		        to add to the layer.
		    inputs: input tensor or list of inputs tensors to mark
		        the losses as conditional on these inputs.
		        If None is passed, the loss is assumed unconditional
		        (e.g. L2 weight regularization, which only depends
		        on the layer's weights variables, not on any inputs tensors).
	**/
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Add updates to the layer.
		
		The updates may potentially be conditional on some inputs tensors,
		for instance batch norm updates are conditional on the layer's inputs.
		
		# Arguments
		    updates: update op or list of update ops
		        to add to the layer.
		    inputs: input tensor or list of inputs tensors to mark
		        the updates as conditional on these inputs.
		        If None is passed, the updates are assumed unconditional.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Adds a weight variable to the layer.
		
		# Arguments
		    name: String, the name for the weight variable.
		    shape: The shape tuple of the weight.
		    dtype: The dtype of the weight.
		    initializer: An Initializer instance (callable).
		    regularizer: An optional Regularizer instance.
		    trainable: A boolean, whether the weight should
		        be trained via backprop or not (assuming
		        that the layer itself is also trainable).
		    constraint: An optional Constraint instance.
		
		# Returns
		    The created weight variable.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic):Dynamic;
	/**
		Checks compatibility between the layer and provided inputs.
		
		This checks that the tensor(s) `input`
		verify the input assumptions of the layer
		(if any). If not, exceptions are raised.
		
		# Arguments
		    inputs: input tensor or list of input tensors.
		
		# Raises
		    ValueError: in case of mismatch between
		        the provided inputs and the expectations of the layer.
	**/
	public function assert_input_compatibility(inputs:Dynamic):Dynamic;
	/**
		Creates the layer weights.
		
		Must be implemented on all layers that have weights.
		
		# Arguments
		    input_shape: Keras tensor (future input to layer)
		        or list/tuple of Keras tensors to reference
		        for weight shape computations.
	**/
	public function build(input_shape:Dynamic):Dynamic;
	public var built : Dynamic;
	/**
		Call the model on new inputs.
		
		In this case `call` just reapplies
		all ops in the graph to the new inputs
		(e.g. build a new computational graph from the provided inputs).
		
		A model is callable on non-Keras tensors.
		
		# Arguments
		    inputs: A tensor or list of tensors.
		    mask: A mask or list of masks. A mask can be
		        either a tensor or None (no mask).
		
		# Returns
		    A tensor if there is a single output, or
		    a list of tensors if there are more than one outputs.
	**/
	public function call(inputs:Dynamic, ?mask:Dynamic):Dynamic;
	/**
		Computes an output mask tensor.
		
		# Arguments
		    inputs: Tensor or list of tensors.
		    mask: Tensor or list of tensors.
		
		# Returns
		    None or a tensor (or list of tensors,
		        one per output tensor of the layer).
	**/
	public function compute_mask(inputs:Dynamic, mask:Dynamic):Dynamic;
	/**
		Computes the output shape of the layer.
		
		Assumes that the layer will be built
		to match that input shape provided.
		
		# Arguments
		    input_shape: Shape tuple (tuple of integers)
		        or list of shape tuples (one per output tensor of the layer).
		        Shape tuples can include None for free dimensions,
		        instead of an integer.
		
		# Returns
		    An input shape tuple.
	**/
	public function compute_output_shape(input_shape:Dynamic):Dynamic;
	public var constraints : Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		# Returns
		    An integer count.
		
		# Raises
		    RuntimeError: if the layer isn't yet built
		        (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	/**
		Instantiates a Model from its config (output of `get_config()`).
		
		# Arguments
		    config: Model config dictionary.
		    custom_objects: Optional dictionary mapping names
		        (strings) to custom classes or functions to be
		        considered during deserialization.
		
		# Returns
		    A model instance.
		
		# Raises
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
		by `Container` (one layer of abstraction above).
		
		# Returns
		    Python dictionary.
	**/
	public function get_config():Dynamic;
	/**
		Retrieves the input tensor(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A tensor (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A mask tensor
		    (or list of tensors if the layer has multiple inputs).
	**/
	public function get_input_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the input shape(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A shape tuple
		    (or list of shape tuples if the layer has multiple inputs).
	**/
	public function get_input_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves a layer based on either its name (unique) or index.
		
		Indices are based on order of horizontal graph traversal (bottom-up).
		
		# Arguments
		    name: String, name of layer.
		    index: Integer, index of layer.
		
		# Returns
		    A layer instance.
		
		# Raises
		    ValueError: In case of invalid layer name or index.
	**/
	public function get_layer(?name:Dynamic, ?index:Dynamic):Dynamic;
	public function get_losses_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the output tensor(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A tensor (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A mask tensor
		    (or list of tensors if the layer has multiple outputs).
	**/
	public function get_output_mask_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves the output shape(s) of a layer at a given node.
		
		# Arguments
		    node_index: Integer, index of the node
		        from which to retrieve the attribute.
		        E.g. `node_index=0` will correspond to the
		        first time the layer was called.
		
		# Returns
		    A shape tuple
		    (or list of shape tuples if the layer has multiple outputs).
	**/
	public function get_output_shape_at(node_index:Dynamic):Dynamic;
	public function get_updates_for(inputs:Dynamic):Dynamic;
	/**
		Retrieves the weights of the model.
		
		# Returns
		    A flat list of Numpy arrays.
	**/
	public function get_weights():Dynamic;
	/**
		Retrieves the input tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		# Returns
		    Input tensor or list of input tensors.
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input : Dynamic;
	/**
		Retrieves the input mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		# Returns
		    Input mask tensor (potentially None) or list of input
		    mask tensors.
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_mask : Dynamic;
	/**
		Retrieves the input shape tuple(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		# Returns
		    Input shape tuple
		    (or list of input shape tuples, one tuple per input tensor).
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_shape : Dynamic;
	/**
		Gets the model's input specs.
		
		# Returns
		    A list of `InputSpec` instances (one per input to the model)
		        or a single instance if the model has only one input.
	**/
	public var input_spec : Dynamic;
	/**
		Loads all layer weights from a HDF5 save file.
		
		If `by_name` is False (default) weights are loaded
		based on the network's topology, meaning the architecture
		should be the same as when the weights were saved.
		Note that layers that don't have weights are not taken
		into account in the topological ordering, so adding or
		removing layers is fine as long as they don't have weights.
		
		If `by_name` is True, weights are loaded into layers
		only if they share the same name. This is useful
		for fine-tuning or transfer-learning models where
		some of the layers have changed.
		
		# Arguments
		    filepath: String, path to the weights file to load.
		    by_name: Boolean, whether to load weights by name
		        or by topological order.
		
		# Raises
		    ImportError: If h5py is not available.
	**/
	public function load_weights(filepath:Dynamic, ?by_name:Dynamic):Dynamic;
	/**
		Retrieve the model's losses.
		
		Will only include losses that are either
		inconditional, or conditional on inputs to this model
		(e.g. will not include losses that depend on tensors
		that aren't inputs to this model).
		
		# Returns
		    A list of loss tensors.
	**/
	public var losses : Dynamic;
	public var non_trainable_weights : Dynamic;
	/**
		Retrieves the output tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		# Returns
		    Output tensor or list of output tensors.
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output : Dynamic;
	/**
		Retrieves the output mask tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		# Returns
		    Output mask tensor (potentially None) or list of output
		    mask tensors.
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_mask : Dynamic;
	/**
		Retrieves the output shape tuple(s) of a layer.
		
		Only applicable if the layer has one inbound node,
		or if all inbound nodes have the same output shape.
		
		# Returns
		    Output shape tuple
		    (or list of input shape tuples, one tuple per output tensor).
		
		# Raises
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_shape : Dynamic;
	public function reset_states():Dynamic;
	/**
		Computes output tensors for new inputs.
		
		# Note:
		    - Expects `inputs` to be a list (potentially with 1 element).
		    - Can be run on non-Keras tensors.
		
		# Arguments
		    inputs: List of tensors
		    masks: List of masks (tensors or None).
		
		# Returns
		    Three lists: output_tensors, output_masks, output_shapes
	**/
	public function run_internal_graph(inputs:Dynamic, ?masks:Dynamic):Dynamic;
	/**
		Save the model to a single HDF5 file.
		
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
		
		# Arguments
		    filepath: String, path to the file to save the weights to.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		    include_optimizer: If True, save optimizer's state together.
		
		# Example
		
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
		Dumps all layer weights to a HDF5 file.
		
		The weight file has:
		    - `layer_names` (attribute), a list of strings
		        (ordered names of model layers).
		    - For every layer, a `group` named `layer.name`
		        - For every such layer group, a group attribute `weight_names`,
		            a list of strings
		            (ordered names of weights tensor of the layer).
		        - For every weight in the layer, a dataset
		            storing the weight value, named after the weight tensor.
		
		# Arguments
		    filepath: String, path to the file to save the weights to.
		    overwrite: Whether to silently overwrite any existing file at the
		        target location, or provide the user with a manual prompt.
		
		# Raises
		    ImportError: If h5py is not available.
	**/
	public function save_weights(filepath:Dynamic, ?overwrite:Dynamic):Dynamic;
	/**
		Sets the weights of the model.
		
		# Arguments
		    weights: A list of Numpy arrays with shapes and types matching
		        the output of `model.get_weights()`.
	**/
	public function set_weights(weights:Dynamic):Dynamic;
	/**
		Returns the `updates` from all layers that are stateful.
		
		This is useful for separating training updates and
		state updates, e.g. when we need to update a layer's internal state
		during prediction.
		
		# Returns
		    A list of update ops.
	**/
	public var state_updates : Dynamic;
	public var stateful : Dynamic;
	/**
		Prints a string summary of the network.
		
		# Arguments
		    line_length: Total length of printed lines
		        (e.g. set this to adapt the display to different
		        terminal window sizes).
		    positions: Relative or absolute positions of log elements
		        in each line. If not provided,
		        defaults to `[.33, .55, .67, 1.]`.
		    print_fn: Print function to use.
		        It will be called on each line of the summary.
		        You can set it to a custom function
		        in order to capture the string summary.
	**/
	public function summary(?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Returns a JSON string containing the network configuration.
		
		To load a network from a JSON save file, use
		`keras.models.model_from_json(json_string, custom_objects={})`.
		
		# Arguments
		    **kwargs: Additional keyword arguments
		        to be passed to `json.dumps()`.
		
		# Returns
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
		
		# Arguments
		    **kwargs: Additional keyword arguments
		        to be passed to `yaml.dump()`.
		
		# Returns
		    A YAML string.
	**/
	public function to_yaml(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var trainable_weights : Dynamic;
	/**
		Retrieve the model's updates.
		
		Will only include updates that are either
		inconditional, or conditional on inputs to this model
		(e.g. will not include updates that depend on tensors
		that aren't inputs to this model).
		
		# Returns
		    A list of update ops.
	**/
	public var updates : Dynamic;
	public var uses_learning_phase : Dynamic;
	public var weights : Dynamic;
}