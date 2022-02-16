/* This file is generated, do not edit! */
package torch.distributed.elastic.multiprocessing.api;
@:pythonImport("torch.distributed.elastic.multiprocessing.api") extern class Api_Module {
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
	static public var IS_MACOS : Dynamic;
	static public var IS_WINDOWS : Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _MAPPING_REGEX : Dynamic;
	static public var _VALUE_REGEX : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Get the default termination signal. SIGTERM for unix, CTRL_C_EVENT for windows.
	**/
	static public function _get_default_signal():Dynamic;
	/**
		Get the kill signal. SIGKILL for unix, CTRL_C_EVENT for windows.
	**/
	static public function _get_kill_signal():Dynamic;
	/**
		Termination handler that raises exceptions on the main process.
		
		When the process receives death signal(SIGTERM, SIGINT), this termination handler will
		be invoked. It raises the ``SignalException`` exception that should be processed by the
		user code. Python does not terminate process after the termination handler is finished,
		so the exception should not be silently ignored, otherwise the process will never
		be terminated.
	**/
	static public function _terminate_process_handler(signum:Dynamic, frame:Dynamic):Dynamic;
	static public function _validate_full_rank(d:Dynamic, nprocs:Dynamic, what:Dynamic):Dynamic;
	static public function _wrap(local_rank:Dynamic, fn:Dynamic, args:Dynamic, envs:Dynamic, stdout_redirects:Dynamic, stderr_redirects:Dynamic, ret_vals:Dynamic, queue_finished_reading_event:Dynamic):Dynamic;
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
	static public function get_std_cm(std_rd:Dynamic, redirect_fn:Dynamic):Dynamic;
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
	static public function redirect_stderr(to_file:Dynamic):Dynamic;
	static public function redirect_stdout(to_file:Dynamic):Dynamic;
	/**
		Certain APIs take redirect settings either as a single value (e.g. apply to all
		local ranks) or as an explicit user-provided mapping. This method is a convenience
		method that converts a value or mapping into a mapping.
		
		Example:
		
		::
		
		 to_map(Std.OUT, local_world_size=2) # returns: {0: Std.OUT, 1: Std.OUT}
		 to_map({1: Std.OUT}, local_world_size=2) # returns: {0: Std.NONE, 1: Std.OUT}
		 to_map({0: Std.OUT, 1: Std.OUT}, local_world_size=2) # returns: {0: Std.OUT, 1: Std.OUT}
	**/
	static public function to_map(val_or_map:Dynamic, local_world_size:Dynamic):Dynamic;
}