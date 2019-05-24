/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "PolymorphicFunction") extern class PolymorphicFunction {
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
		  attributes: dict, extra keyword arguments that will be added as attribute
		    of the function.
		  autograph: whether to use autograph to compile
		    `python_function`. See https://www.tensorflow.org/guide/autograph for
		    more information.
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	@:native("__init__")
	public function ___init__(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?attributes:Dynamic, ?autograph:Dynamic):Dynamic;
	/**
		Initializes a polymorphic function.
		
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
		
		Raises:
		  ValueError: if `input_signature` is not None and the `python_function`'s
		    argspec has keyword arguments.
	**/
	public function new(python_function:Dynamic, name:Dynamic, ?input_signature:Dynamic, ?attributes:Dynamic, ?autograph:Dynamic):Void;
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
		Computes the cache key given inputs and execution context.
	**/
	public function _cache_key(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Canonicalizes `args` and `kwargs`.
		
		Canonicalize the inputs to the Python function using its fullargspec. In
		particular, we parse the varags and kwargs that this
		`PolymorphicFunction` was called with into a tuple corresponding to the
		Python function's positional (named) arguments and a dictionary
		corresponding to its kwargs.
		
		Args:
		  *args: The varargs this object was called with.
		  **kwargs: The keyword args this function was called with.
		
		Returns:
		  A canonicalized ordering of the inputs.
		
		Raises:
		  ValueError: If a keyword in `kwargs` cannot be matched with a positional
		    argument when an input signature is specified, or when the inputs
		    do not conform to the input signature.
	**/
	public function _canonicalize_function_inputs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bypasses error checking when getting a graph function.
	**/
	public function _get_concrete_function_internal(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Gets a function for these inputs, defining it if necessary.
		
		`args` and `kwargs` can be None if this `PolymorphicFunction` was created
		with an `input_signature`.
		
		Args:
		  args: The varargs for the Python function.
		  kwargs: The keyword args for the Python function.
		
		Returns:
		  A graph function corresponding to the input signature implied by args and
		  kwargs, as well as the inputs that the object should be called with.
		
		Raises:
		  ValueError: If inputs are incompatible with the input signature.
		  TypeError: If the function inputs include non-hashable objects
	**/
	public function _maybe_define_function(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Returns a `Function` object specialized to inputs and execution context.
		
		Args:
		  *args: inputs to specialize on.
		  **kwargs: inputs to specialize on.
	**/
	public function get_concrete_function(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns the wrapped Python function.
	**/
	public var python_function : Dynamic;
}