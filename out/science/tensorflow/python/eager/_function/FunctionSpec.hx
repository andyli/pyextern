/* This file is generated, do not edit! */
package tensorflow.python.eager._function;
@:pythonImport("tensorflow.python.eager.function", "FunctionSpec") extern class FunctionSpec {
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
		Constructs a FunctionSpec describing a python function.
		
		Args:
		  fullargspec: `tf_inspect.FullArgSpec` object describing the function.
		  is_method: True if the function is a method.
		  input_signature: a signature of the function (None, if variable)
		  is_pure: if True all input arguments (including variables and constants)
		    will be converted to tensors and no variable changes allowed.
		  experimental_follow_type_hints: see `tf.function`.
		  name: Name of the function
		  jit_compile: see `tf.function`.
	**/
	@:native("__init__")
	public function ___init__(fullargspec:Dynamic, is_method:Dynamic, input_signature:Dynamic, ?is_pure:Dynamic, ?experimental_follow_type_hints:Dynamic, ?name:Dynamic, ?jit_compile:Dynamic):Dynamic;
	/**
		Constructs a FunctionSpec describing a python function.
		
		Args:
		  fullargspec: `tf_inspect.FullArgSpec` object describing the function.
		  is_method: True if the function is a method.
		  input_signature: a signature of the function (None, if variable)
		  is_pure: if True all input arguments (including variables and constants)
		    will be converted to tensors and no variable changes allowed.
		  experimental_follow_type_hints: see `tf.function`.
		  name: Name of the function
		  jit_compile: see `tf.function`.
	**/
	public function new(fullargspec:Dynamic, is_method:Dynamic, input_signature:Dynamic, ?is_pure:Dynamic, ?experimental_follow_type_hints:Dynamic, ?name:Dynamic, ?jit_compile:Dynamic):Void;
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
		Attempts to autobox arguments annotated as tf.Tensor.
	**/
	public function _convert_annotated_args_to_tensors(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _convert_variables_to_tensors(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _to_tensor_or_tensor_spec(x:Dynamic):Dynamic;
	/**
		Raises an error if inputs contain illegal values.
	**/
	public function _validate_inputs(flat_inputs:Dynamic):Dynamic;
	public var arg_names : Dynamic;
	public var args_to_indices : Dynamic;
	/**
		Canonicalizes `args` and `kwargs`.
		
		Canonicalize the inputs to the Python function using a `FunctionSpec`
		instance. In particular, we parse the varargs and kwargs that the
		original function was called with into a tuple corresponding to the
		Python function's positional (named) arguments and a dictionary
		corresponding to its kwargs.  Missing default arguments are added.
		
		If this `FunctionSpec` has an input signature, then it is used to convert
		arguments to tensors; otherwise, any inputs containing numpy arrays are
		converted to tensors.
		
		Additionally, any inputs containing numpy arrays are converted to Tensors.
		
		Args:
		  *args: The varargs this object was called with.
		  **kwargs: The keyword args this function was called with.
		
		Returns:
		  A canonicalized ordering of the inputs, as well as full and filtered
		  (Tensors and Variables only) versions of their concatenated flattened
		  representations, represented by a tuple in the form (args, kwargs,
		  flat_args, filtered_flat_args). Here: `args` is a full list of bound
		  arguments, and `kwargs` contains only true keyword arguments, as opposed
		  to named arguments called in a keyword-like fashion.
		
		Raises:
		  ValueError: If a keyword in `kwargs` cannot be matched with a positional
		    argument when an input signature is specified, or when the inputs
		    do not conform to the input signature.
	**/
	public function canonicalize_function_inputs(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var flat_input_signature : Dynamic;
	/**
		Create a FunctionSpec instance given a python function and signature.
		
		Args:
		  python_function: a function to inspect
		  input_signature: a signature of the function (None, if variable)
		  is_pure: if True all input arguments (including variables and constants)
		  will be converted to tensors and no variable changes allowed.
		  experimental_follow_type_hints: see `tf.function`
		  jit_compile: see `tf.function`
		
		Returns:
		  instance of FunctionSpec
	**/
	static public function from_function_and_signature(python_function:Dynamic, input_signature:Dynamic, ?is_pure:Dynamic, ?experimental_follow_type_hints:Dynamic, ?jit_compile:Dynamic):Dynamic;
	public var fullargspec : Dynamic;
	public var input_signature : Dynamic;
	public var is_method : Dynamic;
	public var is_pure : Dynamic;
	public var jit_compile : Dynamic;
	public var kwargs_to_include : Dynamic;
	/**
		Returns a string summarizing this function's signature.
		
		Args:
		  default_values: If true, then include default values in the signature.
		
		Returns:
		  A `string`.
	**/
	public function signature_summary(?default_values:Dynamic):Dynamic;
	public var vararg_name : Dynamic;
	public var varkw_name : Dynamic;
}