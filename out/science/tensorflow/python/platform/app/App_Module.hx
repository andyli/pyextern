/* This file is generated, do not edit! */
package tensorflow.python.platform.app;
@:pythonImport("tensorflow.python.platform.app") extern class App_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Parse args, returning any unknown flags (ABSL defaults to crashing).
	**/
	static public function _parse_flags_tolerate_undef(argv:Dynamic):Dynamic;
	/**
		Begins executing the program.
		
		Args:
		  main: The main function to execute. It takes an single argument "argv",
		      which is a list of command line arguments with parsed flags removed.
		      The return value is passed to `sys.exit`, and so for example
		      a return value of 0 or None results in a successful termination, whereas
		      a return value of 1 results in abnormal termination.
		      For more details, see https://docs.python.org/3/library/sys#sys.exit
		  argv: A non-empty list of the command line arguments including program name,
		      sys.argv is used if None.
		  flags_parser: Callable[[List[Text]], Any], the function used to parse flags.
		      The return value of this function is passed to `main` untouched.
		      It must guarantee FLAGS is parsed after this function is called.
		      Should be passed as a keyword-only arg which will become mandatory in a
		      future release.
		- Parses command line flags with the flag module.
		- If there are any errors, prints usage().
		- Calls main() with the remaining arguments.
		- If main() raises a UsageError, prints usage and the error message.
	**/
	static public function _run(main:Dynamic, ?argv:Dynamic, ?flags_parser:Dynamic):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var print_function : Dynamic;
	/**
		Runs the program with an optional 'main' function and 'argv' list.
	**/
	static public function run(?main:Dynamic, ?argv:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}