/* This file is generated, do not edit! */
package tensorflow.python.autograph.utils.ag_logging;
@:pythonImport("tensorflow.python.autograph.utils.ag_logging") extern class Ag_logging_Module {
	static public var DEFAULT_VERBOSITY : Dynamic;
	static public var VERBOSITY_VAR_NAME : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _output_to_stdout(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var absolute_import : Dynamic;
	static public var division : Dynamic;
	static public var echo_log_to_stdout : Dynamic;
	static public function error(level:Dynamic, msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function get_verbosity():Dynamic;
	static public function has_verbosity(level:Dynamic):Dynamic;
	static public function log(level:Dynamic, msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets the AutoGraph verbosity level.
		
		_Debug logging in AutoGraph_
		
		More verbose logging is useful to enable when filing bug reports or doing
		more in-depth debugging.
		
		There are two means to control the logging verbosity:
		
		 * The `set_verbosity` function
		
		 * The `AUTOGRAPH_VERBOSITY` environment variable
		
		`set_verbosity` takes precedence over the environment variable.
		
		For example:
		
		```python
		import os
		import tensorflow as tf
		
		os.environ['AUTOGRAPH_VERBOSITY'] = '5'
		# Verbosity is now 5
		
		tf.autograph.set_verbosity(0)
		# Verbosity is now 0
		
		os.environ['AUTOGRAPH_VERBOSITY'] = '1'
		# No effect, because set_verbosity was already called.
		```
		
		Logs entries are output to [absl](https://abseil.io)'s
		[default output](https://abseil.io/docs/python/guides/logging),
		with `INFO` level.
		Logs can be mirrored to stdout by using the `alsologtostdout` argument.
		Mirroring is enabled by default when Python runs in interactive mode.
		
		Args:
		  level: int, the verbosity level; larger values specify increased verbosity;
		    0 means no logging. When reporting bugs, it is recommended to set this
		    value to a larger number, like 10.
		  alsologtostdout: bool, whether to also output log messages to `sys.stdout`.
	**/
	static public function set_verbosity(level:Dynamic, ?alsologtostdout:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Traces argument information at compilation time.
		
		`trace` is useful when debugging, and it always executes during the tracing
		phase, that is, when the TF graph is constructed.
		
		_Example usage_
		
		```python
		import tensorflow as tf
		
		for i in tf.range(10):
		  tf.autograph.trace(i)
		# Output: <Tensor ...>
		```
		
		Args:
		  *args: Arguments to print to `sys.stdout`.
	**/
	static public function trace(?args:python.VarArgs<Dynamic>):Dynamic;
	static public var verbosity_level : Dynamic;
	static public function warning(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}