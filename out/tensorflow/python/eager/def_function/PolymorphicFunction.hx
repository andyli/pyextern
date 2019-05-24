/* This file is generated, do not edit! */
package tensorflow.python.eager.def_function;
@:pythonImport("tensorflow.python.eager.def_function", "PolymorphicFunction") extern class PolymorphicFunction {
	/**
		Calls the graph function.
	**/
	public function __call__(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Initializes a polymorphic function.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: a possibly nested sequence of `TensorSpec` objects
		    specifying the input signature of this function. If `None`, a separate
		    function is instantiated for each inferred input signature.
		  autograph: whether `python_function` should be converted to graph mode.
		    See https://www.tensorflow.org/guide/autograph for more information.
		  experimental_autograph_options: optional tuple of
		    tensorflow.autograph.Feature values. Allows enabling additional
		    conversion options when autograph is set to True.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	@:native("__init__")
	public function ___init__(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?experimental_autograph_options:Dynamic):Dynamic;
	/**
		Initializes a polymorphic function.
		
		Args:
		  python_function: the function to be wrapped.
		  name: the name given to it.
		  input_signature: a possibly nested sequence of `TensorSpec` objects
		    specifying the input signature of this function. If `None`, a separate
		    function is instantiated for each inferred input signature.
		  autograph: whether `python_function` should be converted to graph mode.
		    See https://www.tensorflow.org/guide/autograph for more information.
		  experimental_autograph_options: optional tuple of
		    tensorflow.autograph.Feature values. Allows enabling additional
		    conversion options when autograph is set to True.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	public function new(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?autograph:Dynamic, ?experimental_autograph_options:Dynamic):Void;
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
		All input signatures used to call this PolymorphicFunction.
	**/
	public var _cached_input_signatures : Dynamic;
	/**
		Creates a defun wrapped inside a variable creator scope.
	**/
	public function _defun_with_scope(scope:Dynamic):Dynamic;
	/**
		Initializes, on the first call.
	**/
	public function _initialize(args:Dynamic, kwds:Dynamic, ?add_initializers_to:Dynamic):Dynamic;
	/**
		Returns a `Function` object specialized to inputs and execution context.
		
		If this `PolymorphicFunction` was created with an `input_signature`, `args`
		and `kwargs` may be omitted. With an input signature there is only one
		concrete function associated with this `PolymorphicFunction`.
		
		If there is no fixed `input_signature` associated with this
		`PolymorphicFunction`, positional and keyword arguments to
		`get_concrete_function` follow the same rules as input signature
		specification, with `tf.TensorSpec` objects describing `tf.Tensor`s which
		will be passed to the concrete function.
		
		Each `tf.Tensor` argument to the concrete function must have a unique name,
		either because it is the only one associated with a named argument of the
		Python function or because an explicit `name=` was passed to its
		`tf.TensorSpec` object. These names become the argument names for the
		concrete function.
		
		Arguments to the concrete function may always be specified as keyword
		arguments, naming the Tensor input. Positional arguments may be used instead
		when each preceding argument to the Python function is a Tensor.
		
		```python
		@tf.function
		def f(x):
		  return x
		
		f_concrete = f.get_concrete_function(tf.TensorSpec([], tf.float64))
		f_concrete(tf.constant(1.))
		f_concrete(x=tf.constant(1.))
		```
		
		Nested structures containing Tensors may be specified when retrieving
		concrete functions. Structures with multiple Tensors are expanded into
		multiple arguments of the concrete function. Since multiple concrete
		function arguments are associated with one argument to the original
		function, these Tensors must be named explicitly. Tensors in nested
		structures may not be passed using positional arguments when calling the
		concrete function.
		
		```python
		f_concrete2 = f.get_concrete_function(
		    (tf.TensorSpec(None, tf.float64, name="first"),
		     tf.TensorSpec([], tf.float32, name="second")))
		# Keyword arguments are required when identifying Tensors in nested
		# structures.
		f_concrete2(first=tf.constant([1.]), second=tf.constant(0.))
		```
		
		Functions with fixed input signatures have only one concrete function
		associated with them, which can be retrieved without specifying any
		arguments. As before Tensors must have unique names, either inferred from
		the argument names in the original Python function or specified
		explicitly.
		
		```python
		@tf.function(input_signature=(tf.TensorSpec(None, tf.float32)))
		def f_sig(y):
		  return y
		
		f_sig_concrete = f.get_concrete_function()
		f_sig_concrete(tf.constant(1.))
		f_sig_concrete(y=tf.constant(1.))
		```
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
		
		Returns:
		  A TensorFlow function which takes exactly one `tf.Tensor` per argument.
		
		Raises:
		  ValueError: if this object has not yet been called on concrete values.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns a `Function` object which initializes this function's variables.
		
		Requires that this function hasn't been accessed yet through either calling
		it or calling get_concrete_function. Fails if we cannot build an initializer
		function which does not depend on the concrete values of the inputs to this
		function.
		
		Args:
		  *args: arguments to the underlying python callable.
		  **kwargs: keyword arguments to the python callable.
		
		Returns:
		  A `Function` object which initializes the variables of this function.
		
		Raises:
		  RuntimeError: if called after the variables have been initialized.
	**/
	public function get_initialization_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var input_signature : Dynamic;
	/**
		The python function wrapped in this tf.function.
	**/
	public var python_function : Dynamic;
}