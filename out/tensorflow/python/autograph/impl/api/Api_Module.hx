/* This file is generated, do not edit! */
package tensorflow.python.autograph.impl.api;
@:pythonImport("tensorflow.python.autograph.impl.api") extern class Api_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var absolute_import : Dynamic;
	/**
		Decorator that compiles a function to use TensorFlow ops.
		
		The decorator is dynamic - it recompiles the target whenever the decorated
		function is called. This means the parameter values are known at conversion.
		It also means that repeated calls with different types of parameters will be
		correctly processed.
		
		Args:
		  recursive: bool, whether to recursively convert any functions or classes
		      that the converted function may use.
		  verbose: bool, whether to output the compiled code in the logs.
		
		Returns:
		  Callable, a decorator that converts the given function into an equivalent
		  function that uses TensorFlow ops.
	**/
	static public function convert(?recursive:Dynamic, ?verbose:Dynamic):Dynamic;
	/**
		Compiles a function call inline. For internal use only.
	**/
	static public function converted_call(f:Dynamic, options:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	/**
		Decorator that suppresses the conversion of a function.
		
		See also: docs/pyfunc_dtypes.md
		
		Args:
		  run_as: RunMode, specifies how to use the function in TensorFlow.
		  return_dtypes: Optional[Iterable[
		      Union[tf.DType, utils.py_func.MatchDType]]], the return data types of
		      the converted function, if run_as is RunMode.PY_FUNC. Ignored otherwise.
		      May be set to None if the function has no return values.
		
		Returns:
		  Callable, a decorator that wraps the original function.
	**/
	static public function do_not_convert(?run_as:Dynamic, ?return_dtypes:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	/**
		Returns the equivalent code that uses TensorFlow ops.
		
		Also see: `to_graph`, `convert`
		
		Args:
		  e: Union[Callable, Type], the Python entity to convert.
		  recursive: bool, whether to recursively convert any functions that the
		      converted function may call.
		  arg_values: Optional[Dict[Text, Any]], value hints for symbols including
		      function arguments.
		  arg_types: Optional[Dict[Text, Type]], type hints for symbols including
		      function arguments.
		  partial_types: Set[Type], reserved for internal use.
		  indentation: Text, when to use for each level of indentation.
		
		Returns:
		  Text, the converted code.
	**/
	static public function to_code(e:Dynamic, ?recursive:Dynamic, ?arg_values:Dynamic, ?arg_types:Dynamic, ?partial_types:Dynamic, ?indentation:Dynamic):Dynamic;
	/**
		Converts a Python entity into equivalent code that uses TensorFlow ops.
		
		Supported Python entities include:
		  * functions
		  * classes
		
		Classes are converted by converting all their methods into a new class.
		
		Args:
		  e: Union[Callable, Type], the Python entity to convert.
		  recursive: bool, whether to recursively convert any functions that the
		      converted function may call.
		  verbose: bool, whether to output the compiled code in the logs.
		  arg_values: Optional[Dict[Text, Any]], value hints for symbols including
		      function arguments.
		  arg_types: Optional[Dict[Text, Type]], type hints for symbols including
		      function arguments.
		  partial_types: Set[Type], reserved for internal use.
		  strip_decorators: Tuple[Callable], same as
		      ConversionOptions.strip_decorators.
		
		Returns:
		  Union[Callable, Type], the converted entity, which is the same kind as e
		  (that is, a function is e is a function, a class if e is a class, etc.) but
		  its code has been converted to use TF ops.
		
		Raises:
		  ValueError: If the entity could not be converted.
	**/
	static public function to_graph(e:Dynamic, ?recursive:Dynamic, ?verbose:Dynamic, ?arg_values:Dynamic, ?arg_types:Dynamic, ?partial_types:Dynamic, ?strip_decorators:Dynamic):Dynamic;
}