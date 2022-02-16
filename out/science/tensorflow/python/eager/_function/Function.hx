/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "Function") extern class Function {
	/**
		Calls a graph function specialized to the inputs.
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
		Makes it possible to defun instance methods.
	**/
	public function __get__(instance:Dynamic, owner:Dynamic):Dynamic;
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
		Initializes a `Function`.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: a possibly nested sequence of `TensorSpec` objects
		    specifying the input signature of this function. If `None`, a separate
		    function is instantiated for each inferred input signature.
		  attributes: dict, extra keyword arguments that will be added as attribute
		    of the function.
		  autograph: whether to use autograph to compile
		    `python_function`. See https://www.tensorflow.org/guide/autograph for
		    more information.
		  autograph_options: Experimental knobs to control behavior
		    `when autograph=True`. See https://www.tensorflow.org/guide/autograph
		    for more information.
		  experimental_relax_shapes: When true, argument shapes may be relaxed to
		    avoid unnecessary retracing.
		  capture_by_value: Experimental. Whether to capture resource variables by
		    value or reference. If None, will inherit from a parent context or
		    default to False.
		  jit_compile: Force-compile the function with XLA, cf.
		    def_function.Function doc on jit_compile.
		  experimental_follow_type_hints: See the documentation for `tf.function`.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	@:native("__init__")
	public function ___init__(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?attributes:Dynamic, ?autograph:Dynamic, ?autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?capture_by_value:Dynamic, ?jit_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Dynamic;
	/**
		Initializes a `Function`.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: a possibly nested sequence of `TensorSpec` objects
		    specifying the input signature of this function. If `None`, a separate
		    function is instantiated for each inferred input signature.
		  attributes: dict, extra keyword arguments that will be added as attribute
		    of the function.
		  autograph: whether to use autograph to compile
		    `python_function`. See https://www.tensorflow.org/guide/autograph for
		    more information.
		  autograph_options: Experimental knobs to control behavior
		    `when autograph=True`. See https://www.tensorflow.org/guide/autograph
		    for more information.
		  experimental_relax_shapes: When true, argument shapes may be relaxed to
		    avoid unnecessary retracing.
		  capture_by_value: Experimental. Whether to capture resource variables by
		    value or reference. If None, will inherit from a parent context or
		    default to False.
		  jit_compile: Force-compile the function with XLA, cf.
		    def_function.Function doc on jit_compile.
		  experimental_follow_type_hints: See the documentation for `tf.function`.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	public function new(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?attributes:Dynamic, ?autograph:Dynamic, ?autograph_options:Dynamic, ?experimental_relax_shapes:Dynamic, ?capture_by_value:Dynamic, ?jit_compile:Dynamic, ?experimental_follow_type_hints:Dynamic):Void;
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
		Computes the cache key given inputs and execution context.
	**/
	public function _cache_key(args:Dynamic, kwargs:Dynamic, cache_key_context:Dynamic, ?include_tensor_ranks_only:Dynamic):Dynamic;
	/**
		Returns execution context.
	**/
	public function _cache_key_context():Dynamic;
	/**
		Create a `ConcreteFunction` from `args` and `kwargs`.
	**/
	public function _create_graph_function(args:Dynamic, kwargs:Dynamic, ?override_flat_arg_shapes:Dynamic):Dynamic;
	/**
		Define a function, relaxing arg shapes to avoid unnecessary retracing.
	**/
	public function _define_function_with_shape_relaxation(args:Dynamic, kwargs:Dynamic, flat_args:Dynamic, filtered_flat_args:Dynamic, cache_key_context:Dynamic):Dynamic;
	/**
		Returns a `ConcreteFunction` specialized to inputs and execution context.
		
		Unlike `get_concrete_function(...)`, the graph will be deleted when the
		returned function is deleted.  It's useful to avoid creating a reference
		cycle when you know for sure that the graph will be no longer used without
		the returned function.
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
	**/
	public function _get_concrete_function_garbage_collected(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bypasses error checking when getting a graph function.
	**/
	public function _get_concrete_function_internal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a concrete function which cleans up its graph function.
	**/
	public function _get_concrete_function_internal_garbage_collected(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Gets a function for these inputs, defining it if necessary.
		
		`args` and `kwargs` can be None if this `Function` was created with an
		`input_signature`.
		
		Caller must hold self._lock.
		
		Args:
		  args: The varargs for the Python function.
		  kwargs: The keyword args for the Python function.
		
		Returns:
		  A graph function corresponding to the input signature implied by args and
		  kwargs, as well as filtered flattened inputs (only Tensors and Variables)
		  that the object should be called with.
		
		Raises:
		  ValueError: If inputs are incompatible with the input signature.
		  TypeError: If the function inputs include non-hashable objects
		  RuntimeError: If there's an internal bug (inconsistency) in handling
		    shape relaxation retracing.
	**/
	public function _maybe_define_function(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns the flattened input signature.
	**/
	public var flat_input_signature : Dynamic;
	public var function_spec : Dynamic;
	/**
		Returns a `ConcreteFunction` specialized to inputs and execution context.
		
		Args:
		  *args: inputs to specialize on. Can be concrete values (e.g. 1)
		     or `tf.Tensor` or `tf.TensorSpec`.
		  **kwargs: keyword inputs to specialize on. Concrete values (e.g. 1)
		     or `tf.Tensor` or `tf.TensorSpec`.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the input signature.
	**/
	public var input_signature : Dynamic;
	/**
		Returns the wrapped Python function.
	**/
	public var python_function : Dynamic;
}