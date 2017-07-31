/* This file is generated, do not edit! */
package tensorflow.python.layers.convolutional;
@:pythonImport("tensorflow.python.layers.convolutional", "Conv2D") extern class Conv2D {
	/**
		Wraps `call`, applying pre- and post-processing steps.
		
		Arguments:
		  inputs: input tensor(s).
		  *args: additional positional arguments to be passed to `self.call`.
		  **kwargs: additional keyword arguments to be passed to `self.call`.
		    **Note**: kwarg `scope` is reserved for use by the layer.
		Returns:
		  Output tensor(s).
	**/
	public function __call__(inputs:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function ___init__(filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(filters:Dynamic, kernel_size:Dynamic, ?strides:Dynamic, ?padding:Dynamic, ?data_format:Dynamic, ?dilation_rate:Dynamic, ?activation:Dynamic, ?use_bias:Dynamic, ?kernel_initializer:Dynamic, ?bias_initializer:Dynamic, ?kernel_regularizer:Dynamic, ?bias_regularizer:Dynamic, ?activity_regularizer:Dynamic, ?trainable:Dynamic, ?name:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Creates the variables of the layer.
		    
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
	public var graph : Dynamic;
	public var losses : Dynamic;
	public var non_trainable_variables : Dynamic;
	public var non_trainable_weights : Dynamic;
	public var scope_name : Dynamic;
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