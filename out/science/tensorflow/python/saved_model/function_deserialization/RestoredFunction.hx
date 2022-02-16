/* This file is generated, do not edit! */
package tensorflow.python.saved_model.function_deserialization;
@:pythonImport("tensorflow.python.saved_model.function_deserialization", "RestoredFunction") extern class RestoredFunction {
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Custom pickling, to omit unpickleable objects.
	**/
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
		Initializes a `Function`.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: See the documentation for `tf.function`.
		  autograph: See the documentation for `tf.function`.
		  jit_compile: See the documentation for `tf.function`.
		  experimental_implements: See the documentation for `tf.function`.
		  experimental_autograph_options: See the documentation for `tf.function`.
		  experimental_relax_shapes: See the documentation for `tf.function`.
		  experimental_follow_type_hints: See the documentation for `tf.function`.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	@:native("__init__")
	public function ___init__(python_function:Dynamic, name:Dynamic, function_spec:Dynamic, concrete_functions:Dynamic):Dynamic;
	/**
		Initializes a `Function`.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: See the documentation for `tf.function`.
		  autograph: See the documentation for `tf.function`.
		  jit_compile: See the documentation for `tf.function`.
		  experimental_implements: See the documentation for `tf.function`.
		  experimental_autograph_options: See the documentation for `tf.function`.
		  experimental_relax_shapes: See the documentation for `tf.function`.
		  experimental_follow_type_hints: See the documentation for `tf.function`.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	public function new(python_function:Dynamic, name:Dynamic, function_spec:Dynamic, concrete_functions:Dynamic):Void;
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
		Restore from pickled state.
	**/
	public function __setstate__(state:Dynamic):Dynamic;
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
		Calls the graph function.
	**/
	public function _call(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Clone the function with different python function.
	**/
	public function _clone(python_function:Dynamic):Dynamic;
	/**
		Creates the attribute value corresponding to IMPLEMENTS_ATTRIBUTE_NAME.
	**/
	public function _create_implements_attribute():Dynamic;
	/**
		Allows the captured Python function to be decorated in place.
		
		This method is only safe to call when the Function has not been called by a
		user. It makes sense to use this method to push a decorator into the
		function rather than wrapping the function in the decorator.
		
		We use this in tf.Module to allow user annotated `tf.functions` to remain as
		`Function` objects but still automatically enter the Module name_scope
		when they are evaluated like all other methods.
		
		Args:
		  decorator: A callable accepting a single argument which is the function
		    to decorate and returning a callable result.
		
		Raises:
		  ValueError: If the function has been called a ValueError is raised.
	**/
	public function _decorate(decorator:Dynamic):Dynamic;
	/**
		Returns a defun generated from the input function.
	**/
	public function _defun(fn:Dynamic):Dynamic;
	/**
		Creates a defun wrapped inside a variable creator scope.
	**/
	public function _defun_with_scope(scope:Dynamic):Dynamic;
	/**
		Returns a `ConcreteFunction` specialized to inputs and execution context.
		
		Unlike `get_concrete_function(...)`, the graph will be deleted when the
		returned function is deleted.  It's useful to avoid creating a reference
		cycle when you know for sure that the graph will be no longer used without
		the returned function.
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
		
		Returns:
		  A TensorFlow function which takes exactly one `tf.Tensor` per argument.
		
		Raises:
		  ValueError: if this object has not yet been called on concrete values.
	**/
	public function _get_concrete_function_garbage_collected(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns key instance to track call stats and retracings.
		
		The key instance a best-effort to preserve global consistency.
	**/
	public function _get_key_for_call_stats():Dynamic;
	public function _get_tracing_count():Dynamic;
	/**
		Initializes, on the first call.
		
		Creates two `Function`s, one that will allow creation of variables
		and one that won't.
		
		Additionally runs a trace for the `Function` that allows creation
		of variables.
		
		Args:
		  args: Arguments to the underlying python callable.
		  kwds: Keyword arguments to the python callable.
		  add_initializers_to: Where to collect variable initializers, if not None.
	**/
	public function _initialize(args:Dynamic, kwds:Dynamic, ?add_initializers_to:Dynamic):Dynamic;
	/**
		Make and call a `ConcreteFunction` which initializes variables.
	**/
	public function _initialize_uninitialized_variables(initializers:Dynamic):Dynamic;
	/**
		Returns all concrete functions.
	**/
	public function _list_all_concrete_functions():Dynamic;
	/**
		Returns all concrete functions for serialization.
		
		Returns:
		  A list of instances of `ConcreteFunction`.
	**/
	public function _list_all_concrete_functions_for_serialization():Dynamic;
	public var _run_functions_eagerly : Dynamic;
	static public var _tf_api_names : Dynamic;
	static public var _tf_api_names_v1 : Dynamic;
	/**
		Returns compiler IR for the compiled function.
		
		This API is intended *only* for debugging as there are no guarantees on
		backwards compatibility of returned IR or the allowed values of `stage`.
		
		Args:
		  *args: Arguments used for compilation; same arguments as used for calling
		    the function. Need to be eager tensors.
		  **kwargs: Keyword arguments used for compilation.
		
		Returns:
		  Function callable with the following kwargs:
		    - `stage` at which the compiler IR should be serialized. Allowed values
		      are:
		       - `hlo`: HLO output after conversion from TF
		        (https://www.tensorflow.org/xla/operation_semantics).
		       - `hlo_serialized`: Like stage=`hlo`, but the output is a serialized
		         HLO module proto (a bytes object).
		       - `optimized_hlo`: HLO after compiler optimizations.
		       - `optimized_hlo_serialized`: Like stage=`optimized_hlo`, but the
		         output is a serialized HLO module proto (a bytes object).
		       - `optimized_hlo_dot`: optimized HLO in DOT format suitable for
		         Graphviz.
		    - `device_name` can be either None, in which case the preferred device
		      is used for compilation, or a device name. It can be a full device
		      name, or a partial one, e.g., `/device:CPU:0`.
		
		  For example, for
		
		  ```python
		  @tf.function(jit_compile=True)
		  def f(x):
		    return x + 1
		
		  f.experimental_get_compiler_ir(tf.random.normal([10, 10])(stage='hlo')
		  ```
		
		  the output is:
		
		  ```
		  HloModule a_inference_f_13__.9
		
		  ENTRY %a_inference_f_13__.9 (arg0.1: f32[10,10]) -> f32[10,10] {
		    %arg0.1 = f32[10,10]{1,0} parameter(0), parameter_replication={false}
		    %reshape.2 = f32[10,10]{1,0} reshape(f32[10,10]{1,0} %arg0.1)
		    %constant.3 = f32[] constant(1)
		    %broadcast.4 = f32[10,10]{1,0} broadcast(f32[] %constant.3)
		    %add.5 = f32[10,10]{1,0} add(f32[10,10]{1,0} %reshape.2,
		                                 f32[10,10]{1,0} %broadcast.4)
		    %reshape.6 = f32[10,10]{1,0} reshape(f32[10,10]{1,0} %add.5)
		    %tuple.7 = (f32[10,10]{1,0}) tuple(f32[10,10]{1,0} %reshape.6)
		    ROOT %get-tuple-element.8 = f32[10,10]{1,0}
		      get-tuple-element((f32[10,10]{1,0}) %tuple.7), index=0
		  }
		  ```
		
		Raises:
		  ValueError: If an invalid `stage` is selected or if applied to a function
		    which is not compiled (`jit_compile=True` is not set).
		  TypeError: When called with input in graph mode.
	**/
	public function experimental_get_compiler_ir(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the number of times the function has been traced.
		
		For more information on when a function is traced and when it is
		traced multiple times see https://www.tensorflow.org/guide/function.
		Example:
		
		>>> @tf.function
		... def double(a):
		...   return a + a
		>>> double(tf.constant(1))
		>>> double(tf.constant(2))
		>>> double.experimental_get_tracing_count()
		1
		>>> double(tf.constant("a"))
		>>> double.experimental_get_tracing_count()
		2
		
		
		The first time experimental_get_tracing_count is called
		it returns 1, as the function is traced the first
		time it is called, and the second time the same graph is used
		since we're calling it with a parameter of the same type.
		
		The second time experimental_get_tracing_count is called
		it returns 2, as we called double with a
		different argument type, and so it was traced again.
	**/
	public function experimental_get_tracing_count():Dynamic;
	public var function_spec : Dynamic;
	/**
		Returns a `ConcreteFunction` specialized to input types.
		
		The arguments specified by `args` and `kwargs` follow normal function call
		rules. The returned `ConcreteFunction` has the same set of positional and
		keyword arguments as `self`, but their types are refined to the types
		specified by `args` and `kwargs`.
		
		>>> @tf.function
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function(tf.constant(1.0))
		>>> f_concrete = f.get_concrete_function(x=tf.constant(1.0))
		
		Unlike normal calls, `get_concrete_function` allow type specifiers instead
		of TensorFlow objects, so for example `tf.Tensor`s may be replaced with
		`tf.TensorSpec`s.
		
		>>> @tf.function
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function(tf.TensorSpec([], tf.float64))
		
		If the function definition allows only one specialization, `args` and
		`kwargs` may be omitted altogether.
		
		>>> @tf.function(input_signature=[tf.TensorSpec(None, tf.float32)])
		... def f(x):
		...   return x
		>>> f_concrete = f.get_concrete_function()
		
		The returned `ConcreteFunction` can be called normally:
		
		>>> f_concrete(tf.constant(1.0))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		>>> f_concrete(x=tf.constant(1.0))
		<tf.Tensor: shape=(), dtype=float32, numpy=1.0>
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
		
		Returns:
		  A `ConcreteFunction`.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a `ConcreteFunction` which initializes this function's variables.
		
		Requires that this function hasn't been accessed yet through either calling
		it or calling get_concrete_function. Fails if we cannot build an initializer
		function which does not depend on the concrete values of the inputs to this
		function.
		
		Note that running this function will overwrite any values currently assigned
		to variables, for example restores from a checkpoint.
		
		Args:
		  *args: arguments to the underlying python callable.
		  **kwargs: keyword arguments to the python callable.
		
		Returns:
		  A `ConcreteFunction` object which initializes the variables of this
		  function.
		
		Raises:
		  RuntimeError: if called after the variables have been initialized.
	**/
	public function get_initialization_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var input_signature : Dynamic;
	public function pretty_printed_concrete_signatures(?verbose:Dynamic):Dynamic;
	/**
		The python function wrapped in this tf.function.
	**/
	public var python_function : Dynamic;
}