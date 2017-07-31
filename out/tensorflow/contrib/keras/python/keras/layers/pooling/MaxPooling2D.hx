/* This file is generated, do not edit! */
package tensorflow.contrib.keras.python.keras.layers.pooling;
@:pythonImport("tensorflow.contrib.keras.python.keras.layers.pooling", "MaxPooling2D") extern class MaxPooling2D {
	/**
		Wrapper around self.call(), for handling internal references.
		
		If a Keras tensor is passed:
		    - We call self._add_inbound_node().
		    - If necessary, we `build` the layer to match
		        the shape of the input(s).
		    - We update the _keras_history of the output tensor(s)
		        with the current layer.
		        This is done as part of _add_inbound_node().
		
		Arguments:
		    inputs: Can be a tensor or list/tuple of tensors.
		    **kwargs: Additional keyword arguments to be passed to `call()`.
		
		Returns:
		    Output of the layer's `call` method.
		
		Raises:
		    ValueError: in case the layer is missing shape information
		        for its `build` call.
	**/
	public function __call__(inputs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?pool_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		
		Arguments:
		    input_tensors: list of input tensors.
		    output_tensors: list of output tensors.
		    input_masks: list of input masks (a mask can be a tensor, or None).
		    output_masks: list of output masks (a mask can be a tensor, or None).
		    arguments: dictionary of keyword arguments that were passed to the
		        `call` method of the layer at the call that created the node.
	**/
	public function _add_inbound_node(input_tensors:Dynamic, output_tensors:Dynamic, input_masks:Dynamic, output_masks:Dynamic, ?arguments:Dynamic):Dynamic;
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
	/**
		Computes the output shape of the layer given the input shape.
		
		Assumes that the layer will be built to match that input shape.
		If this method is not implemented by child classes, the default
		assumption will be that the layer does not alter the shape of the tensors
		passing through it.
		
		Args:
		  input_shape: A (possibly nested tuple of) `TensorShape`.  It need not
		    be fully defined (e.g. the batch size may be unknown).
		
		Returns:
		  A (possibly nested tuple of) `TensorShape`.
		
		Raises:
		  TypeError: if `input_shape` is not a (possibly nested tuple of)
		    `TensorShape`.
		  ValueError: if `input_shape` is incomplete or is incompatible with the
		    the layer.
	**/
	public function _compute_output_shape(input_shape:Dynamic):Dynamic;
	/**
		Retrieves an attribute (e.g. input_tensors) from a node.
		
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
		    RuntimeError: If the layer has no inbound nodes.
		    ValueError: If the index is does not match any node.
	**/
	public function _get_node_attribute_at_index(node_index:Dynamic, attr:Dynamic, attr_name:Dynamic):Dynamic;
	public function _set_scope(?scope:Dynamic):Dynamic;
	/**
		Add loss tensor(s), potentially dependent on layer inputs.
		
		Some losses (for instance, activity regularization losses) may be dependent
		on the inputs passed when calling a layer. Hence, when reusing a same layer
		on different inputs `a` and `b`, some entries in `layer.losses` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_losses_for` method allows to retrieve the losses relevant to a
		specific set of inputs.
		
		Arguments:
		  losses: Loss tensor, or list/tuple of tensors.
		  inputs: Optional input tensor(s) that the loss(es) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the losses are created. If `None` is passed, the losses are assumed
		    to be unconditional, and will apply across all dataflows of the layer
		    (e.g. weight regularization losses).
	**/
	public function add_loss(losses:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Add update op(s), potentially dependent on layer inputs.
		
		Weight updates (for instance, the updates of the moving mean and variance
		in a BatchNormalization layer) may be dependent on the inputs passed
		when calling a layer. Hence, when reusing a same layer on
		different inputs `a` and `b`, some entries in `layer.updates` may be
		dependent on `a` and some on `b`. This method automatically keeps track
		of dependencies.
		
		The `get_updates_for` method allows to retrieve the updates relevant to a
		specific set of inputs.
		
		Arguments:
		  updates: Update op, or list/tuple of update ops.
		  inputs: Optional input tensor(s) that the update(s) depend on. Must
		    match the `inputs` argument passed to the `__call__` method at the time
		    the updates are created. If `None` is passed, the updates are assumed
		    to be unconditional, and will apply across all dataflows of the layer.
	**/
	public function add_update(updates:Dynamic, ?inputs:Dynamic):Dynamic;
	/**
		Adds a new variable to the layer, or gets an existing one; returns it.
		
		Arguments:
		  name: variable name.
		  shape: variable shape.
		  dtype: The type of the variable. Defaults to `self.dtype`.
		  initializer: initializer instance (callable).
		  regularizer: regularizer instance (callable).
		  trainable: whether the variable should be part of the layer's
		    "trainable_variables" (e.g. variables, biases)
		    or "non_trainable_variables" (e.g. BatchNorm mean, stddev).
		
		Returns:
		  The created variable.
	**/
	public function add_variable(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic):Dynamic;
	/**
		Adds a weight variable to the layer.
		
		Arguments:
		    name: String, the name for the weight variable.
		    shape: The shape tuple of the weight.
		    dtype: The dtype of the weight.
		    initializer: An Initializer instance (callable).
		    regularizer: An optional Regularizer instance.
		    trainable: A boolean, whether the weight should
		        be trained via backprop or not (assuming
		        that the layer itself is also trainable).
		    constraint: An optional Constraint instance.
		
		Returns:
		    The created weight variable.
	**/
	public function add_weight(name:Dynamic, shape:Dynamic, ?dtype:Dynamic, ?initializer:Dynamic, ?regularizer:Dynamic, ?trainable:Dynamic, ?constraint:Dynamic):Dynamic;
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
		Creates the layer weights.
		
		Must be implemented on all layers that have weights.
		
		Arguments:
		    input_shape: Keras tensor (future input to layer)
		        or list/tuple of Keras tensors to reference
		        for weight shape computations.
	**/
	public function build(input_shape:Dynamic):Dynamic;
	/**
		The logic of the layer lives here.
		
		Arguments:
		  inputs: input tensor(s).
		 **kwargs: additional keyword arguments.
		
		Returns:
		  Output tensor(s).
	**/
	public function call(inputs:Dynamic):Dynamic;
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
	public var constraints : Dynamic;
	/**
		Count the total number of scalars composing the weights.
		
		Returns:
		    An integer count.
		
		Raises:
		    RuntimeError: if the layer isn't yet built
		        (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	/**
		Creates a layer from its config.
		
		This method is the reverse of `get_config`,
		capable of instantiating the same layer from the config
		dictionary. It does not handle layer connectivity
		(handled by Container), nor weights (handled by `set_weights`).
		
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
		by `Container` (one layer of abstraction above).
		
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
	**/
	public function get_input_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves losses relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__`
		    method at the time the losses were created.
		    If you pass `inputs=None`, unconditional losses are returned,
		    such as weight regularization losses.
		
		Returns:
		  List of loss tensors of the layer that depend on `inputs`.
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
	**/
	public function get_output_shape_at(node_index:Dynamic):Dynamic;
	/**
		Retrieves updates relevant to a specific set of inputs.
		
		Arguments:
		  inputs: Input tensor or list/tuple of input tensors.
		    Must match the `inputs` argument passed to the `__call__` method
		    at the time the updates were created.
		    If you pass `inputs=None`, unconditional updates are returned.
		
		Returns:
		  List of update ops of the layer that depend on `inputs`.
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
		Retrieves the input tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input tensor or list of input tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
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
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Input shape, as `TensorShape`
		    (or list of `TensorShape`, one tuple per input tensor).
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var input_shape : Dynamic;
	public var losses : Dynamic;
	public var non_trainable_variables : Dynamic;
	public var non_trainable_weights : Dynamic;
	/**
		Retrieves the output tensor(s) of a layer.
		
		Only applicable if the layer has exactly one inbound node,
		i.e. if it is connected to one incoming layer.
		
		Returns:
		    Output tensor or list of output tensors.
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
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
		
		Only applicable if the layer has one inbound node,
		or if all inbound nodes have the same output shape.
		
		Returns:
		    Output shape, as `TensorShape`
		    (or list of `TensorShape`, one tuple per output tensor).
		
		Raises:
		    AttributeError: if the layer is connected to
		    more than one incoming layers.
	**/
	public var output_shape : Dynamic;
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
	public var trainable_variables : Dynamic;
	public var trainable_weights : Dynamic;
	public var updates : Dynamic;
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