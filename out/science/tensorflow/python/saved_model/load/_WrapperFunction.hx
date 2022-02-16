/* This file is generated, do not edit! */
package tensorflow.python.saved_model.load;
@:pythonImport("tensorflow.python.saved_model.load", "_WrapperFunction") extern class _WrapperFunction {
	/**
		Executes the wrapped function.
		
		ConcreteFunctions have two signatures:
		
		* The signature of the original function wrapped by this ConcreteFunction.
		* A flat signature, where each argument accepts a single Tensor.
		
		The original function signature is generally preferred, but the flat input
		signature is supported for backward compatibility.
		
		### Original Function Signature
		
		When calling a ConcreteFunction with the signature of the original function,
		each argument must match the type or value that was used when the
		ConcreteFunction's graph was traced.  In particular:
		
		* Tensor arguments (including CompositeTensors, such as RaggedTensor) must
		  have matching `TypeSpec`s.
		* Non-Tensor arguments (such as booleans or ints) must have equal values.
		* Nested arguments (such as lists, tuples, or dictionaries) must have the
		  same nesting structure; and each nested value must have a matching type
		  or value.
		
		The default value for any arguments that were traced with non-Tensor values
		is the value that was used in the trace.  Arguments that were traced with
		tensor arguments do not have a default value (even if the original function
		had a default value for that argument).
		
		### Flat Signature
		
		When calling a ConcreteFunction with the flat signature, the arguments
		correspond to the flattened component tensors of the arguments that were
		used to construct the ConcreteFunction.  Parameter names are assigned based
		on `TensorSpec.name` (when specified) or the original argument names (with
		suffixes automatically added for nested arguments or composite tensors with
		multiple components).
		
		Args:
		  *args: Positional arguments to the concrete function.
		  **kwargs: Keyword arguments to the concrete function.
		
		Returns:
		  The result of applying the TF function on the given Tensors.
		
		Raises:
		  AssertionError: If this `ConcreteFunction` was not created through
		    `get_concrete_function`.
		  TypeError: If the arguments do not match the function's signature.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Initialize a `ConcreteFunction`.
		
		Args:
		  func_graph: An instance of FuncGraph: the function body to wrap.
		  attrs: (optional) dict mapping names of attributes to their AttrValue
		    values. Attributes in `attrs` will be included in this function's
		    definition.
		 shared_func_graph: If False, the ConcreteFunction takes ownership of
		   `func_graph` and will break reference cycles when it is deleted. This
		   makes the FuncGraph inoperable.
		 function_spec: FunctionSpec for the original function.  If not specified,
		   then this ConcreteFunction may only be called using the flat signature.
		
		Raises:
		  ValueError: If number of input_placeholders is not equal to the number
		    of function inputs.
	**/
	@:native("__init__")
	public function ___init__(concrete_function:Dynamic):Dynamic;
	/**
		Initialize a `ConcreteFunction`.
		
		Args:
		  func_graph: An instance of FuncGraph: the function body to wrap.
		  attrs: (optional) dict mapping names of attributes to their AttrValue
		    values. Attributes in `attrs` will be included in this function's
		    definition.
		 shared_func_graph: If False, the ConcreteFunction takes ownership of
		   `func_graph` and will break reference cycles when it is deleted. This
		   makes the FuncGraph inoperable.
		 function_spec: FunctionSpec for the original function.  If not specified,
		   then this ConcreteFunction may only be called using the flat signature.
		
		Raises:
		  ValueError: If number of input_placeholders is not equal to the number
		    of function inputs.
	**/
	public function new(concrete_function:Dynamic):Void;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Returns a `NameAttrList` representing this function.
	**/
	public var _as_name_attr_list : Dynamic;
	/**
		Maps the fdef output list to actual output structure.
		
		Args:
		  result: Output lists defined by FunctionDef.
		Returns:
		  The actual call output.
	**/
	public function _build_call_outputs(result:Dynamic):Dynamic;
	/**
		Executes the wrapped function.
		
		Args:
		  args: a list of Tensors or Variables. Arguments from the Python function
		    should be filtered before calling this method: objects aside from
		    Tensors, CompositeTensors, and Variables are ignored. Any
		    CompositeTensors should be expanded before calling this method.
		  captured_inputs: the captured inputs that are also part of the input args
		    to the actual execution. By default, it should be self._captured_inputs.
		  cancellation_manager: (Optional.) A `CancellationManager` that can be
		    used to cancel function invocation.
		
		Returns:
		  The result of applying the TF function to `args`.
		
		Raises:
		  ValueError: If `args` contains anything other than Tensors or Variables.
	**/
	public function _call_flat(args:Dynamic, captured_inputs:Dynamic, ?cancellation_manager:Dynamic):Dynamic;
	/**
		See `__call__` for details.
	**/
	public function _call_impl(args:Dynamic, kwargs:Dynamic, ?cancellation_manager:Dynamic):Dynamic;
	/**
		Executes the wrapped function with the flat signature.
		
		Args:
		  args: Positional arguments to the concrete function.
		  kwargs: Keyword arguments to the concrete function.
		  cancellation_manager: A `CancellationManager` that can be used to cancel
		    function invocation.
		
		Returns:
		  The result of applying the function on the Tensors/Variables contained in
		  `args` and `kwargs`.
		Raises:
		  TypeError: if `args` and `kwargs` do not match the flat signature of this
		    `ConcreteFunction`.
	**/
	public function _call_with_flat_signature(args:Dynamic, kwargs:Dynamic, cancellation_manager:Dynamic):Dynamic;
	/**
		Executes the wrapped function with the structured signature.
		
		Args:
		  args: Positional arguments to the concrete function.
		  kwargs: Keyword arguments to the concrete function.
		  cancellation_manager: A `CancellationManager` that can be used to cancel
		    function invocation.
		
		Returns:
		  The result of applying the function on the Tensors/Variables contained in
		  `args` and `kwargs`.
		Raises:
		  TypeError: if `args` and `kwargs` do not match the structured signature
		    of this `ConcreteFunction`.
	**/
	public function _call_with_structured_signature(args:Dynamic, kwargs:Dynamic, cancellation_manager:Dynamic):Dynamic;
	/**
		Returns a callable that invokes a cancellable version of this function.
		
		Args:
		  cancellation_manager: A `CancellationManager` object that can be used to
		    cancel function invocation.
		
		Returns:
		  A callable with the same signature as this concrete function.
	**/
	public function _experimental_with_cancellation_manager(cancellation_manager:Dynamic):Dynamic;
	/**
		Returns a string summarizing this function's flat signature.
	**/
	public function _flat_signature_summary():Dynamic;
	/**
		Returns gradient function. It will be lazily created at first call.
	**/
	public function _get_gradient_function():Dynamic;
	/**
		Updates `self._function_spec` to include varargs and bound variables.
		
		Adds new positional arguments for any varargs (i.e., for args that are
		in `structured_input_signature`, but not in the original fullargspec.args).
		
		Replaces `defaults` and `kwonlydefaults` with the `_BOUND_VALUE`, for
		all args and kwargs in `structured_input_signature`.
		
		Sets `varkw` and `varargs` to None.
	**/
	public function _initialize_function_spec():Dynamic;
	/**
		Selects forward and backward functions based on the calling context.
		
		The forward function computes the "real" function outputs, `self._outputs`,
		and any extra values needed by the corresponding backward function.
		
		Args:
		  args: A flat list of Tensors with all of the inputs to the forward
		    function (including user-specified and captured inputs).
		  possible_gradient_type: One of gradients_util.POSSIBLE_GRADIENT_TYPES_*.
		  executing_eagerly: Boolean, the value of context.executing_eagerly().
		
		Returns:
		  An object with a `forward` method returning a tuple of (forward_function :
		  _EagerDefinedFunction, augmented_arguments : List), and a corresponding
		  `record` method which takes outputs from the forward function and records
		  the operation. forward_function should be called with augmented_arguments.
	**/
	public function _select_forward_and_backward_functions(args:Dynamic, possible_gradient_type:Dynamic, executing_eagerly:Dynamic):Dynamic;
	/**
		Enables the structured signature by supplying a function_spec.
	**/
	public function _set_function_spec(function_spec:Dynamic):Dynamic;
	/**
		Raise TypeError if `arg`'s type doesn't match `spec`.
	**/
	public function _structured_signature_check_arg_type(arg:Dynamic, spec:Dynamic, name:Dynamic):Dynamic;
	/**
		Raises a TypeError if any args have the wrong type.
	**/
	public function _structured_signature_check_arg_types(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Raises a TypeError if any args are missing.
	**/
	public function _structured_signature_check_missing_args(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Raises a TypeError if there are any extra args.
	**/
	public function _structured_signature_check_unexpected_args(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns a string summarizing this function's structured signature.
		
		Args:
		  default_values: If true, then include default values in the signature.
		
		Returns:
		  A `string`.
	**/
	public function _structured_signature_summary(?default_values:Dynamic):Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Add forward/backward functions to graph `g` or the current context.
	**/
	public function add_gradient_functions_to_graph(?g:Dynamic):Dynamic;
	/**
		Registers the function, adds it to the graph g or default graph.
		
		Args:
		  g: If specified, registers the function with this graph. Defaults to the
		    current context (either the default graph or the eager context).
	**/
	public function add_to_graph(?g:Dynamic):Dynamic;
	/**
		Returns external Tensors captured by this function.
		
		self.__call__(*args) passes `args + self.captured_inputs` to the function.
	**/
	public var captured_inputs : Dynamic;
	/**
		Returns a `FunctionDef` object representing this function.
	**/
	public var function_def : Dynamic;
	/**
		Returns the graph from which this function was constructed.
	**/
	public var graph : Dynamic;
	/**
		Returns tensors in `self.graph` corresponding to arguments.
	**/
	public var inputs : Dynamic;
	/**
		`ConcreteFunction` name.
	**/
	public var name : Dynamic;
	public var output_dtypes : Dynamic;
	/**
		The function's output shapes.
	**/
	public var output_shapes : Dynamic;
	/**
		Returns tensors in `self.graph` corresponding to returned tensors.
	**/
	public var outputs : Dynamic;
	/**
		Returns a string summarizing the signature of this concrete function.
	**/
	public function pretty_printed_signature(?verbose:Dynamic):Dynamic;
	/**
		Replaces existing capture `tensor` with a deferred capture `closure`.
		
		This API replaces the capture `tensor` from the concrete function's captured
		inputs list, and places the deferred capture `closure` in
		its spot so the order of captured inputs is preserved. This is important
		because the old `tensor` and the new `closure` will have the same internal
		placeholder, which can be passed through the `placeholder` argument, or
		skipped, in which case we find the placeholder from internal inputs by
		indexing `tensor` in the external captured inputs list. Thus, it is
		important that the new deferred capture has output spec (specified by the
		`spec` argument) compatible with the internal placeholder (`placeholder`)
		and the original capture (`tensor`).
		
		For example,
		
		```python
		bool_captured_tensor = tf.constant(True)
		float_captured_tensor = tf.constant([3.], dtype=tf.float32)
		value = tf.constant([2.], dtype=tf.float32)
		
		@tf.function
		def fn():
		  deferred_tensor = ops.get_default_graph().capture_call_time_value(
		      lambda: value,
		      tf.TensorSpec(shape=(1,), dtype=tf.float32))
		  if bool_captured_tensor:
		    return deferred_tensor
		  else:
		    return deferred_tensor + float_captured_tensor
		
		concrete_fn = fn.get_concrete_function()
		print(concrete_fn())  # tf.Tensor([2.], shape=(1,), dtype=float32)
		
		new_bool_captured_tensor = constant_op.constant(False)
		def bool_closure():
		  return new_bool_captured_tensor
		
		concrete_fn.replace_capture_with_deferred_capture(
		    bool_captured_tensor,
		    bool_closure,
		    spec=tensor_spec.TensorSpec(shape=(), dtype=dtypes.bool))
		
		print(concrete_fn())  # tf.Tensor([5.], shape=(1,), dtype=float32)
		```
		
		Args:
		  tensor: Tensor already captured. This `tensor` should be listed in
		    concrete_function.captured_inputs except when it's empty such as when
		    the concrete function is restored from SavedModel.
		  closure: function which takes no arguments, to be evaluated at function
		    call time, returning a nest of tensors compatible with `spec`.
		  spec: nest of TypeSpec for the value to capture.
		  placeholder: optional. The internal placeholder corresponding to the
		    captured `tensor` and the new `closure`.
		  default_value: optional value to use in environments that cannot safely
		    evaluate closure.
	**/
	public function replace_capture_with_deferred_capture(tensor:Dynamic, closure:Dynamic, spec:Dynamic, ?placeholder:Dynamic, ?default_value:Dynamic):Dynamic;
	/**
		Updates the function capture values.
		
		The new values must have tensor types and shapes consistent with the
		original captures of the concrete function, but it is allowed to change a
		value captured with a deferred one and vice-versa.
		
		Args:
		  captures: A list of tensors or closures. Tensors are value captures, and
		    closures are call-time (deferred captures).
	**/
	public function set_external_captures(captures:Dynamic):Dynamic;
	/**
		Returns structured signature for this concrete function.
		
		Returns:
		  A tuple `(args, kwargs)`, where:
		
		    * `args` is a tuple that specifies the expected type or value each for
		      positional argument.
		    * `kwargs` is a dictionary that specifies the expected type or value
		      for each keyword-only argument.
		
		  The type or value for each argument is specified using one of the
		  following:
		
		    * A `tf.TypeSpec`, indicating that a Tensor or other TensorFlow-native
		      value is expected.
		    * A Python value, such as an integer, indicating that an equal value
		      is expected.
		    * A nested structure of `tf.TypeSpec`s and Python values, indicating
		      that a corresponding nested structure is expected.
	**/
	public var structured_input_signature : Dynamic;
	/**
		Returns outputs in `self.graph` as returned by the original function.
	**/
	public var structured_outputs : Dynamic;
	/**
		Sequence of trainable variables for this function.
	**/
	public var trainable_variables : Dynamic;
	/**
		Sequence of variables for this function.
	**/
	public var variables : Dynamic;
}