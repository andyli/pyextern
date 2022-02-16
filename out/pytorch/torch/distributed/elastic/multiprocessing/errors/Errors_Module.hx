/* This file is generated, do not edit! */
package torch.distributed.elastic.multiprocessing.errors;
@:pythonImport("torch.distributed.elastic.multiprocessing.errors") extern class Errors_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function JSON(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var T : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _EMPTY_ERROR_DATA : Dynamic;
	static public var _FAILURE_FORMAT_TEMPLATE : Dynamic;
	static public var _MSG_FORMAT_TEMPLATE : Dynamic;
	static public var _NOT_AVAILABLE : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	/**
		Return an object to identify dataclass fields.
		
		default is the default value of the field.  default_factory is a
		0-argument function called to initialize a field's value.  If init
		is True, the field will be a parameter to the class's __init__()
		function.  If repr is True, the field will be included in the
		object's repr().  If hash is True, the field will be included in
		the object's hash().  If compare is True, the field will be used
		in comparison functions.  metadata, if specified, must be a
		mapping which is stored but not otherwise examined by dataclass.
		
		It is an error to specify both default and default_factory.
	**/
	static public function field(?_default:Dynamic, ?default_factory:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?hash:Dynamic, ?compare:Dynamic, ?metadata:Dynamic):Dynamic;
	static public function get_error_handler():Dynamic;
	/**
		Util function to set up a simple logger that writes
		into stderr. The loglevel is fetched from the LOGLEVEL
		env. variable or WARNING as default. The function will use the
		module name of the caller if no name is provided.
		
		Args:
		    name: Name of the logger. If no name provided, the name will
		          be derived from the call stack.
	**/
	static public function get_logger(?name:Dynamic):Dynamic;
	static public var log : Dynamic;
	/**
		Syntactic sugar to record errors/exceptions that happened in the decorated
		function using the provided ``error_handler``.
		
		Using this decorator is equivalent to:
		
		::
		
		 error_handler = get_error_handler()
		 error_handler.initialize()
		 try:
		    foobar()
		 except ChildFailedError as e:
		    _, failure = e.get_first_failure()
		    error_handler.dump_error_file(failure.error_file, failure.exitcode)
		    raise
		 except Exception as e:
		    error_handler.record(e)
		    raise
		
		.. important:: use this decorator once per process at the top level method,
		               typically this is the main method.
		
		Example
		
		::
		
		 @record
		 def main():
		     pass
		
		 if __name__=="__main__":
		    main()
	**/
	static public function record(fn:Dynamic, ?error_handler:Dynamic):Dynamic;
	/**
		Decorator factory to apply update_wrapper() to a wrapper function
		
		Returns a decorator that invokes update_wrapper() with the decorated
		function as the wrapper argument and the arguments to wraps() as the
		remaining arguments. Default arguments are as for update_wrapper().
		This is a convenience function to simplify applying partial() to
		update_wrapper().
	**/
	static public function wraps(wrapped:Dynamic, ?assigned:Dynamic, ?updated:Dynamic):Dynamic;
}