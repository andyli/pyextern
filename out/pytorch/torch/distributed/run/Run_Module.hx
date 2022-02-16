/* This file is generated, do not edit! */
package torch.distributed.run;
@:pythonImport("torch.distributed.run") extern class Run_Module {
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var REMAINDER : Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Union(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Extracts key-value pairs from a rendezvous configuration string.
		
		Args:
		    config_str:
		        A string in format <key1>=<value1>,...,<keyN>=<valueN>.
	**/
	static public function _parse_rendezvous_config(config_str:Dynamic):Dynamic;
	static public function config_from_args(args:Dynamic):Dynamic;
	static public function determine_local_world_size(nproc_per_node:Dynamic):Dynamic;
	/**
		Helper function parsing the command line options.
	**/
	static public function get_args_parser():Dynamic;
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
	static public function get_rdzv_endpoint(args:Dynamic):Dynamic;
	/**
		Retrieves ``use_env`` from the args.
		``use_env`` is a legacy argument, if ``use_env`` is False, the
		``--node_rank`` argument will be transferred to all worker processes.
		``use_env`` is only used by the ``torch.distributed.launch`` and will
		be deprecated in future releases.
	**/
	static public function get_use_env(args:Dynamic):Dynamic;
	static public var log : Dynamic;
	static public function main(?args:Dynamic):Dynamic;
	static public function parse_args(args:Dynamic):Dynamic;
	static public function parse_min_max_nnodes(nnodes:Dynamic):Dynamic;
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
	static public function run(args:Dynamic):Dynamic;
	/**
		Runs the provided `training_script` from within this interpreter.
		Usage: `script_as_function("/abs/path/to/script.py", "--arg1", "val1")`
	**/
	static public function run_script_path(training_script:Dynamic, ?training_script_args:python.VarArgs<Dynamic>):Dynamic;
}