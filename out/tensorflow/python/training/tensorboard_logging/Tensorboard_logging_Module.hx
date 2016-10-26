/* This file is generated, do not edit! */
package tensorflow.python.training.tensorboard_logging;
@:pythonImport("tensorflow.python.training.tensorboard_logging") extern class Tensorboard_logging_Module {
	static public var DEBUG : Dynamic;
	static public var ERROR : Dynamic;
	static public var FATAL : Dynamic;
	static public var INFO : Dynamic;
	static public var WARN : Dynamic;
	static public var _LEVEL_PROTO_MAP : Dynamic;
	static public var _PLATFORM_LOGGING_LEVEL_MAP : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_verbosity(verbosity:Dynamic):Dynamic;
	/**
		Makes all subsequent log invocations error.
		
		This is only used for testing. If you want to disable TensorBoard logging,
		call `set_summary_writer(None)` instead.
	**/
	static public function _clear_summary_writer():Dynamic;
	static public var _sentinel_summary_writer : Dynamic;
	static public var _summary_writer : Dynamic;
	static public var _verbosity : Dynamic;
	static public var absolute_import : Dynamic;
	static public function debug(message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function error(message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function fatal(message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function get_verbosity():Dynamic;
	static public function info(message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Conditionally logs `message % args` at the level `level`.
		
		Note that tensorboard_logging verbosity and logging verbosity are separate;
		the message will always be passed through to the logging module regardless of
		whether it passes the tensorboard_logging verbosity check.
		
		Args:
		  level: The verbosity level to use. Must be one of
		    tensorboard_logging.{DEBUG, INFO, WARN, ERROR, FATAL}.
		  message: The message template to use.
		  *args: Arguments to interpolate to the message template, if any.
		
		Raises:
		  ValueError: If `level` is not a valid logging level.
		  RuntimeError: If the `SummaryWriter` to use has not been set.
	**/
	static public function log(level:Dynamic, message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets the summary writer that events will be logged to.
		
		Calling any logging methods inside this module without calling this method
		will fail. If you don't want to log, call `set_summary_writer(None)`.
		
		Args:
		  summary_writer: Either a SummaryWriter or None. None will cause messages not
		  to be logged to any SummaryWriter, but they will still be passed to the
		  platform logging module.
	**/
	static public function set_summary_writer(summary_writer:Dynamic):Dynamic;
	static public function set_verbosity(verbosity:Dynamic):Dynamic;
	static public function warn(message:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
}