/* This file is generated, do not edit! */
package keras.engine.sequential;
@:pythonImport("keras.engine.sequential", "Sequential") extern class Sequential {
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
	public function __getstate__():Dynamic;
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
	public function ___init__(?layers:Dynamic, ?name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?layers:Dynamic, ?name:Dynamic):Void;
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
	public function __setstate__(state:Dynamic):Dynamic;
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
		
		# Arguments
		    input_tensors: list of input tensors.
		    output_tensors: list of output tensors.
		    input_masks: list of input masks (a mask can be a tensor, or None).
		    output_masks: list of output masks
		        (a mask can be a tensor, or None).
		    input_shapes: list of input shape tuples.
		    output_shapes: list of output shape tuples.
		    arguments: dictionary of keyword arguments that were passed to the
		        `call` method of the layer at the call that created the node.
	**/
	public function _add_inbound_node(input_tensors:Dynamic, output_tensors:Dynamic, input_masks:Dynamic, output_masks:Dynamic, input_shapes:Dynamic, output_shapes:Dynamic, ?arguments:Dynamic):Dynamic;
	public function _base_init(?name:Dynamic):Dynamic;
	/**
		Check trainable weights count consistency.
		
		This will raise a warning if `trainable_weights` and
		`_collected_trainable_weights` are inconsistent (i.e. have different
		number of parameters).
		Inconsistency will typically arise when one modifies `model.trainable`
		without calling `model.compile` again.
	**/
	public function _check_trainable_weights_consistency():Dynamic;
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
	public function _init_graph_network(inputs:Dynamic, outputs:Dynamic, ?name:Dynamic):Dynamic;
	public function _init_subclassed_network(?name:Dynamic):Dynamic;
	public function _make_predict_function():Dynamic;
	public function _make_test_function():Dynamic;
	public function _make_train_function():Dynamic;
	/**
		Converts a layer and its index to a unique (immutable type) name.
		
		This function is used internally with `self._network_nodes`.
		
		# Arguments
		    layer: The layer.
		    node_index: The layer's position (e.g. via enumerate) in a list of
		        nodes.
		
		# Returns
		    The unique name.
	**/
	static public function _node_key(layer:Dynamic, node_index:Dynamic):Dynamic;
	/**
		Set model's input and output specs based on the input data received.
		
		This is to be used for Model subclasses, which do not know at instantiation
		time what their inputs look like.
		
		# Arguments
		  inputs: Single array, or list of arrays. The arrays could be placeholders,
		    Numpy arrays, or data tensors.
		    - if placeholders: the model is built on top of these placeholders,
		      and we expect Numpy data to be fed for them when calling `fit`/etc.
		    - if Numpy data: we create placeholders matching the shape of the Numpy
		      arrays. We expect Numpy data to be fed for these placeholders
		      when calling `fit`/etc.
		    - if data tensors: the model is built on top of these tensors.
		      We do not expect any Numpy data to be provided when calling `fit`/etc.
		  outputs: Optional output tensors (if already computed by running
		    the model).
		  training: Boolean or None. Only relevant in symbolic mode. Specifies
		    whether to build the model's graph in inference mode (False), training
		    mode (True), or using the Keras learning phase (None).
	**/
	public function _set_inputs(inputs:Dynamic, ?outputs:Dynamic, ?training:Dynamic):Dynamic;
	public function _standardize_user_data(x:Dynamic, ?y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic, ?check_array_lengths:Dynamic, ?batch_size:Dynamic):Dynamic;
	/**
		Util hared between different serialization methods.
		
		# Returns
		    Model config with Keras version information added.
	**/
	public function _updated_config():Dynamic;
	public function _uses_dynamic_learning_phase():Dynamic;
	/**
		Adds a layer instance on top of the layer stack.
		
		# Arguments
		    layer: layer instance.
		
		# Raises
		    TypeError: If `layer` is not a layer instance.
		    ValueError: In case the `layer` argument does not
		        know its input shape.
		    ValueError: In case the `layer` argument has
		        multiple output tensors, or is already connected
		        somewhere else (forbidden in `Sequential` models).
	**/
	public function add(layer:Dynamic):Dynamic;
	/**
		Adds losses to the layer.
		
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
		Adds updates to the layer.
		
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
	public function build(?input_shape:Dynamic):Dynamic;
	public var built : Dynamic;
	/**
		Calls the model on new inputs.
		
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
		Configures the model for training.
		
		# Arguments
		    optimizer: String (name of optimizer) or optimizer instance.
		        See [optimizers](/optimizers).
		    loss: String (name of objective function) or objective function.
		        See [losses](/losses).
		        If the model has multiple outputs, you can use a different loss
		        on each output by passing a dictionary or a list of losses.
		        The loss value that will be minimized by the model
		        will then be the sum of all individual losses.
		    metrics: List of metrics to be evaluated by the model
		        during training and testing.
		        Typically you will use `metrics=['accuracy']`.
		        To specify different metrics for different outputs of a
		        multi-output model, you could also pass a dictionary,
		        such as `metrics={'output_a': 'accuracy'}`.
		    loss_weights: Optional list or dictionary specifying scalar
		        coefficients (Python floats) to weight the loss contributions
		        of different model outputs.
		        The loss value that will be minimized by the model
		        will then be the *weighted sum* of all individual losses,
		        weighted by the `loss_weights` coefficients.
		        If a list, it is expected to have a 1:1 mapping
		        to the model's outputs. If a tensor, it is expected to map
		        output names (strings) to scalar coefficients.
		    sample_weight_mode: If you need to do timestep-wise
		        sample weighting (2D weights), set this to `"temporal"`.
		        `None` defaults to sample-wise weights (1D).
		        If the model has multiple outputs, you can use a different
		        `sample_weight_mode` on each output by passing a
		        dictionary or a list of modes.
		    weighted_metrics: List of metrics to be evaluated and weighted
		        by sample_weight or class_weight during training and testing.
		    target_tensors: By default, Keras will create placeholders for the
		        model's target, which will be fed with the target data during
		        training. If instead you would like to use your own
		        target tensors (in turn, Keras will not expect external
		        Numpy data for these targets at training time), you
		        can specify them via the `target_tensors` argument. It can be
		        a single tensor (for a single-output model), a list of tensors,
		        or a dict mapping output names to target tensors.
		    **kwargs: When using the Theano/CNTK backends, these arguments
		        are passed into `K.function`.
		        When using the TensorFlow backend,
		        these arguments are passed into `tf.Session.run`.
		
		# Raises
		    ValueError: In case of invalid arguments for
		        `optimizer`, `loss`, `metrics` or `sample_weight_mode`.
	**/
	public function compile(optimizer:Dynamic, ?loss:Dynamic, ?metrics:Dynamic, ?loss_weights:Dynamic, ?sample_weight_mode:Dynamic, ?weighted_metrics:Dynamic, ?target_tensors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Counts the total number of scalars composing the weights.
		
		# Returns
		    An integer count.
		
		# Raises
		    RuntimeError: if the layer isn't yet built
		        (in which case its weights aren't yet defined).
	**/
	public function count_params():Dynamic;
	/**
		Returns the loss value & metrics values for the model in test mode.
		
		Computation is done in batches.
		
		# Arguments
		    x: Numpy array of test data (if the model has a single input),
		        or list of Numpy arrays (if the model has multiple inputs).
		        If input layers in the model are named, you can also pass a
		        dictionary mapping input names to Numpy arrays.
		        `x` can be `None` (default) if feeding from
		        framework-native tensors (e.g. TensorFlow data tensors).
		    y: Numpy array of target (label) data
		        (if the model has a single output),
		        or list of Numpy arrays (if the model has multiple outputs).
		        If output layers in the model are named, you can also pass a
		        dictionary mapping output names to Numpy arrays.
		        `y` can be `None` (default) if feeding from
		        framework-native tensors (e.g. TensorFlow data tensors).
		    batch_size: Integer or `None`.
		        Number of samples per evaluation step.
		        If unspecified, `batch_size` will default to 32.
		    verbose: 0 or 1. Verbosity mode.
		        0 = silent, 1 = progress bar.
		    sample_weight: Optional Numpy array of weights for
		        the test samples, used for weighting the loss function.
		        You can either pass a flat (1D)
		        Numpy array with the same length as the input samples
		        (1:1 mapping between weights and samples),
		        or in the case of temporal data,
		        you can pass a 2D array with shape
		        `(samples, sequence_length)`,
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        `sample_weight_mode="temporal"` in `compile()`.
		    steps: Integer or `None`.
		        Total number of steps (batches of samples)
		        before declaring the evaluation round finished.
		        Ignored with the default value of `None`.
		
		# Returns
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function evaluate(?x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?sample_weight:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Evaluates the model on a data generator.
		
		The generator should return the same kind of data
		as accepted by `test_on_batch`.
		
		# Arguments
		    generator: Generator yielding tuples (inputs, targets)
		        or (inputs, targets, sample_weights)
		        or an instance of Sequence (keras.utils.Sequence)
		        object in order to avoid duplicate data
		        when using multiprocessing.
		    steps: Total number of steps (batches of samples)
		        to yield from `generator` before stopping.
		        Optional for `Sequence`: if unspecified, will use
		        the `len(generator)` as a number of steps.
		    max_queue_size: maximum size for the generator queue
		    workers: Integer. Maximum number of processes to spin up
		        when using process based threading.
		        If unspecified, `workers` will default to 1. If 0, will
		        execute the generator on the main thread.
		    use_multiprocessing: if True, use process based threading.
		        Note that because
		        this implementation relies on multiprocessing,
		        you should not pass
		        non picklable arguments to the generator
		        as they can't be passed
		        easily to children processes.
		    verbose: verbosity mode, 0 or 1.
		
		# Returns
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
		
		# Raises
		    ValueError: In case the generator yields
		        data in an invalid format.
	**/
	public function evaluate_generator(generator:Dynamic, ?steps:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Trains the model for a given number of epochs (iterations on a dataset).
		
		# Arguments
		    x: Numpy array of training data (if the model has a single input),
		        or list of Numpy arrays (if the model has multiple inputs).
		        If input layers in the model are named, you can also pass a
		        dictionary mapping input names to Numpy arrays.
		        `x` can be `None` (default) if feeding from
		        framework-native tensors (e.g. TensorFlow data tensors).
		    y: Numpy array of target (label) data
		        (if the model has a single output),
		        or list of Numpy arrays (if the model has multiple outputs).
		        If output layers in the model are named, you can also pass a
		        dictionary mapping output names to Numpy arrays.
		        `y` can be `None` (default) if feeding from
		        framework-native tensors (e.g. TensorFlow data tensors).
		    batch_size: Integer or `None`.
		        Number of samples per gradient update.
		        If unspecified, `batch_size` will default to 32.
		    epochs: Integer. Number of epochs to train the model.
		        An epoch is an iteration over the entire `x` and `y`
		        data provided.
		        Note that in conjunction with `initial_epoch`,
		        `epochs` is to be understood as "final epoch".
		        The model is not trained for a number of iterations
		        given by `epochs`, but merely until the epoch
		        of index `epochs` is reached.
		    verbose: Integer. 0, 1, or 2. Verbosity mode.
		        0 = silent, 1 = progress bar, 2 = one line per epoch.
		    callbacks: List of `keras.callbacks.Callback` instances.
		        List of callbacks to apply during training.
		        See [callbacks](/callbacks).
		    validation_split: Float between 0 and 1.
		        Fraction of the training data to be used as validation data.
		        The model will set apart this fraction of the training data,
		        will not train on it, and will evaluate
		        the loss and any model metrics
		        on this data at the end of each epoch.
		        The validation data is selected from the last samples
		        in the `x` and `y` data provided, before shuffling.
		    validation_data: tuple `(x_val, y_val)` or tuple
		        `(x_val, y_val, val_sample_weights)` on which to evaluate
		        the loss and any model metrics at the end of each epoch.
		        The model will not be trained on this data.
		        `validation_data` will override `validation_split`.
		    shuffle: Boolean (whether to shuffle the training data
		        before each epoch) or str (for 'batch').
		        'batch' is a special option for dealing with the
		        limitations of HDF5 data; it shuffles in batch-sized chunks.
		        Has no effect when `steps_per_epoch` is not `None`.
		    class_weight: Optional dictionary mapping class indices (integers)
		        to a weight (float) value, used for weighting the loss function
		        (during training only).
		        This can be useful to tell the model to
		        "pay more attention" to samples from
		        an under-represented class.
		    sample_weight: Optional Numpy array of weights for
		        the training samples, used for weighting the loss function
		        (during training only). You can either pass a flat (1D)
		        Numpy array with the same length as the input samples
		        (1:1 mapping between weights and samples),
		        or in the case of temporal data,
		        you can pass a 2D array with shape
		        `(samples, sequence_length)`,
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        `sample_weight_mode="temporal"` in `compile()`.
		    initial_epoch: Integer.
		        Epoch at which to start training
		        (useful for resuming a previous training run).
		    steps_per_epoch: Integer or `None`.
		        Total number of steps (batches of samples)
		        before declaring one epoch finished and starting the
		        next epoch. When training with input tensors such as
		        TensorFlow data tensors, the default `None` is equal to
		        the number of samples in your dataset divided by
		        the batch size, or 1 if that cannot be determined.
		    validation_steps: Only relevant if `steps_per_epoch`
		        is specified. Total number of steps (batches of samples)
		        to validate before stopping.
		
		# Returns
		    A `History` object. Its `History.history` attribute is
		    a record of training loss values and metrics values
		    at successive epochs, as well as validation loss values
		    and validation metrics values (if applicable).
		
		# Raises
		    RuntimeError: If the model was never compiled.
		    ValueError: In case of mismatch between the provided input data
		        and what the model expects.
	**/
	public function fit(?x:Dynamic, ?y:Dynamic, ?batch_size:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_split:Dynamic, ?validation_data:Dynamic, ?shuffle:Dynamic, ?class_weight:Dynamic, ?sample_weight:Dynamic, ?initial_epoch:Dynamic, ?steps_per_epoch:Dynamic, ?validation_steps:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Trains the model on data generated batch-by-batch by a Python generator
		(or an instance of `Sequence`).
		
		The generator is run in parallel to the model, for efficiency.
		For instance, this allows you to do real-time data augmentation
		on images on CPU in parallel to training your model on GPU.
		
		The use of `keras.utils.Sequence` guarantees the ordering
		and guarantees the single use of every input per epoch when
		using `use_multiprocessing=True`.
		
		# Arguments
		    generator: A generator or an instance of `Sequence`
		        (`keras.utils.Sequence`) object in order to avoid
		        duplicate data when using multiprocessing.
		        The output of the generator must be either
		        - a tuple `(inputs, targets)`
		        - a tuple `(inputs, targets, sample_weights)`.
		        This tuple (a single output of the generator) makes a single
		        batch. Therefore, all arrays in this tuple must have the same
		        length (equal to the size of this batch). Different batches may
		        have different sizes. For example, the last batch of the epoch
		        is commonly smaller than the others, if the size of the dataset
		        is not divisible by the batch size.
		        The generator is expected to loop over its data
		        indefinitely. An epoch finishes when `steps_per_epoch`
		        batches have been seen by the model.
		    steps_per_epoch: Integer.
		        Total number of steps (batches of samples)
		        to yield from `generator` before declaring one epoch
		        finished and starting the next epoch. It should typically
		        be equal to the number of samples of your dataset
		        divided by the batch size.
		        Optional for `Sequence`: if unspecified, will use
		        the `len(generator)` as a number of steps.
		    epochs: Integer. Number of epochs to train the model.
		        An epoch is an iteration over the entire data provided,
		        as defined by `steps_per_epoch`.
		        Note that in conjunction with `initial_epoch`,
		        `epochs` is to be understood as "final epoch".
		        The model is not trained for a number of iterations
		        given by `epochs`, but merely until the epoch
		        of index `epochs` is reached.
		    verbose: Integer. 0, 1, or 2. Verbosity mode.
		        0 = silent, 1 = progress bar, 2 = one line per epoch.
		    callbacks: List of `keras.callbacks.Callback` instances.
		        List of callbacks to apply during training.
		        See [callbacks](/callbacks).
		    validation_data: This can be either
		        - a generator or a `Sequence` object for the validation data
		        - tuple `(x_val, y_val)`
		        - tuple `(x_val, y_val, val_sample_weights)`
		        on which to evaluate
		        the loss and any model metrics at the end of each epoch.
		        The model will not be trained on this data.
		    validation_steps: Only relevant if `validation_data`
		        is a generator. Total number of steps (batches of samples)
		        to yield from `validation_data` generator before stopping
		        at the end of every epoch. It should typically
		        be equal to the number of samples of your
		        validation dataset divided by the batch size.
		        Optional for `Sequence`: if unspecified, will use
		        the `len(validation_data)` as a number of steps.
		    class_weight: Optional dictionary mapping class indices (integers)
		        to a weight (float) value, used for weighting the loss function
		        (during training only). This can be useful to tell the model to
		        "pay more attention" to samples
		        from an under-represented class.
		    max_queue_size: Integer. Maximum size for the generator queue.
		        If unspecified, `max_queue_size` will default to 10.
		    workers: Integer. Maximum number of processes to spin up
		        when using process-based threading.
		        If unspecified, `workers` will default to 1. If 0, will
		        execute the generator on the main thread.
		    use_multiprocessing: Boolean.
		        If `True`, use process-based threading.
		        If unspecified, `use_multiprocessing` will default to `False`.
		        Note that because this implementation
		        relies on multiprocessing,
		        you should not pass non-picklable arguments to the generator
		        as they can't be passed easily to children processes.
		    shuffle: Boolean. Whether to shuffle the order of the batches at
		        the beginning of each epoch. Only used with instances
		        of `Sequence` (`keras.utils.Sequence`).
		        Has no effect when `steps_per_epoch` is not `None`.
		    initial_epoch: Integer.
		        Epoch at which to start training
		        (useful for resuming a previous training run).
		
		# Returns
		    A `History` object. Its `History.history` attribute is
		    a record of training loss values and metrics values
		    at successive epochs, as well as validation loss values
		    and validation metrics values (if applicable).
		
		# Raises
		    ValueError: In case the generator yields data in an invalid format.
		
		# Example
		
		```python
		def generate_arrays_from_file(path):
		    while True:
		        with open(path) as f:
		            for line in f:
		                # create numpy arrays of input data
		                # and labels, from each line in the file
		                x1, x2, y = process_line(line)
		                yield ({'input_1': x1, 'input_2': x2}, {'output': y})
		
		model.fit_generator(generate_arrays_from_file('/my_file.txt'),
		                    steps_per_epoch=10000, epochs=10)
		```
	**/
	public function fit_generator(generator:Dynamic, ?steps_per_epoch:Dynamic, ?epochs:Dynamic, ?verbose:Dynamic, ?callbacks:Dynamic, ?validation_data:Dynamic, ?validation_steps:Dynamic, ?class_weight:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?shuffle:Dynamic, ?initial_epoch:Dynamic):Dynamic;
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
		by `Network` (one layer of abstraction above).
		
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
		
		If `name` and `index` are both provided, `index` will take precedence.
		
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
	public var layers : Dynamic;
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
		    skip_mismatch: Boolean, whether to skip loading of layers
		        where there is a mismatch in the number of weights,
		        or a mismatch in the shape of the weight
		        (only valid when `by_name`=True).
		    reshape: Reshape weights to fit the layer when the correct number
		        of weight arrays is present but their shape does not match.
		
		
		# Raises
		    ImportError: If h5py is not available.
	**/
	public function load_weights(filepath:Dynamic, ?by_name:Dynamic, ?skip_mismatch:Dynamic, ?reshape:Dynamic):Dynamic;
	/**
		Retrieves the model's losses.
		
		Will only include losses that are either
		unconditional, or conditional on inputs to this model
		(e.g. will not include losses that depend on tensors
		that aren't inputs to this model).
		
		# Returns
		    A list of loss tensors.
	**/
	public var losses : Dynamic;
	public var model : Dynamic;
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
	/**
		Removes the last layer in the model.
		
		# Raises
		    TypeError: if there are no layers in the model.
	**/
	public function pop():Dynamic;
	/**
		Generates output predictions for the input samples.
		
		Computation is done in batches.
		
		# Arguments
		    x: The input data, as a Numpy array
		        (or list of Numpy arrays if the model has multiple inputs).
		    batch_size: Integer. If unspecified, it will default to 32.
		    verbose: Verbosity mode, 0 or 1.
		    steps: Total number of steps (batches of samples)
		        before declaring the prediction round finished.
		        Ignored with the default value of `None`.
		
		# Returns
		    Numpy array(s) of predictions.
		
		# Raises
		    ValueError: In case of mismatch between the provided
		        input data and the model's expectations,
		        or in case a stateful model receives a number of samples
		        that is not a multiple of the batch size.
	**/
	public function predict(x:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic, ?steps:Dynamic):Dynamic;
	/**
		Generate class predictions for the input samples.
		
		The input samples are processed batch by batch.
		
		# Arguments
		    x: input data, as a Numpy array or list of Numpy arrays
		        (if the model has multiple inputs).
		    batch_size: integer.
		    verbose: verbosity mode, 0 or 1.
		
		# Returns:
		    A numpy array of class predictions.
	**/
	public function predict_classes(x:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Generates predictions for the input samples from a data generator.
		
		The generator should return the same kind of data as accepted by
		`predict_on_batch`.
		
		# Arguments
		    generator: Generator yielding batches of input samples
		        or an instance of Sequence (keras.utils.Sequence)
		        object in order to avoid duplicate data
		        when using multiprocessing.
		    steps: Total number of steps (batches of samples)
		        to yield from `generator` before stopping.
		        Optional for `Sequence`: if unspecified, will use
		        the `len(generator)` as a number of steps.
		    max_queue_size: Maximum size for the generator queue.
		    workers: Integer. Maximum number of processes to spin up
		        when using process based threading.
		        If unspecified, `workers` will default to 1. If 0, will
		        execute the generator on the main thread.
		    use_multiprocessing: If `True`, use process based threading.
		        Note that because
		        this implementation relies on multiprocessing,
		        you should not pass
		        non picklable arguments to the generator
		        as they can't be passed
		        easily to children processes.
		    verbose: verbosity mode, 0 or 1.
		
		# Returns
		    Numpy array(s) of predictions.
		
		# Raises
		    ValueError: In case the generator yields
		        data in an invalid format.
	**/
	public function predict_generator(generator:Dynamic, ?steps:Dynamic, ?max_queue_size:Dynamic, ?workers:Dynamic, ?use_multiprocessing:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Returns predictions for a single batch of samples.
		
		# Arguments
		    x: Input samples, as a Numpy array.
		
		# Returns
		    Numpy array(s) of predictions.
	**/
	public function predict_on_batch(x:Dynamic):Dynamic;
	/**
		Generates class probability predictions for the input samples.
		
		The input samples are processed batch by batch.
		
		# Arguments
		    x: input data, as a Numpy array or list of Numpy arrays
		        (if the model has multiple inputs).
		    batch_size: integer.
		    verbose: verbosity mode, 0 or 1.
		
		# Returns
		    A Numpy array of probability predictions.
	**/
	public function predict_proba(x:Dynamic, ?batch_size:Dynamic, ?verbose:Dynamic):Dynamic;
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
		        It defaults to `print` (prints to stdout).
	**/
	public function summary(?line_length:Dynamic, ?positions:Dynamic, ?print_fn:Dynamic):Dynamic;
	/**
		Test the model on a single batch of samples.
		
		# Arguments
		    x: Numpy array of test data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    sample_weight: Optional array of the same length as x, containing
		        weights to apply to the model's loss for each sample.
		        In the case of temporal data, you can pass a 2D array
		        with shape (samples, sequence_length),
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        sample_weight_mode="temporal" in compile().
		
		# Returns
		    Scalar test loss (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function test_on_batch(x:Dynamic, y:Dynamic, ?sample_weight:Dynamic):Dynamic;
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
	/**
		Runs a single gradient update on a single batch of data.
		
		# Arguments
		    x: Numpy array of training data,
		        or list of Numpy arrays if the model has multiple inputs.
		        If all inputs in the model are named,
		        you can also pass a dictionary
		        mapping input names to Numpy arrays.
		    y: Numpy array of target data,
		        or list of Numpy arrays if the model has multiple outputs.
		        If all outputs in the model are named,
		        you can also pass a dictionary
		        mapping output names to Numpy arrays.
		    sample_weight: Optional array of the same length as x, containing
		        weights to apply to the model's loss for each sample.
		        In the case of temporal data, you can pass a 2D array
		        with shape (samples, sequence_length),
		        to apply a different weight to every timestep of every sample.
		        In this case you should make sure to specify
		        sample_weight_mode="temporal" in compile().
		    class_weight: Optional dictionary mapping
		        class indices (integers) to
		        a weight (float) to apply to the model's loss for the samples
		        from this class during training.
		        This can be useful to tell the model to "pay more attention" to
		        samples from an under-represented class.
		
		# Returns
		    Scalar training loss
		    (if the model has a single output and no metrics)
		    or list of scalars (if the model has multiple outputs
		    and/or metrics). The attribute `model.metrics_names` will give you
		    the display labels for the scalar outputs.
	**/
	public function train_on_batch(x:Dynamic, y:Dynamic, ?sample_weight:Dynamic, ?class_weight:Dynamic):Dynamic;
	public var trainable_weights : Dynamic;
	/**
		Retrieves the model's updates.
		
		Will only include updates that are either
		unconditional, or conditional on inputs to this model
		(e.g. will not include updates that depend on tensors
		that aren't inputs to this model).
		
		# Returns
		    A list of update ops.
	**/
	public var updates : Dynamic;
	public var uses_learning_phase : Dynamic;
	public var weights : Dynamic;
}