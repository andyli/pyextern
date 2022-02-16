/* This file is generated, do not edit! */
package tensorflow.python.platform.tf_logging;
@:pythonImport("tensorflow.python.platform.tf_logging") extern class Tf_logging_Module {
	static public var DEBUG : Dynamic;
	static public var ERROR : Dynamic;
	static public var FATAL : Dynamic;
	static public var INFO : Dynamic;
	static public function TaskLevelStatusMessage(msg:Dynamic):Dynamic;
	static public var WARN : Dynamic;
	/**
		Returns (filename, linenumber) for the stack frame.
	**/
	static public function _GetFileAndLine():Dynamic;
	/**
		Wrapper for _log_counter_per_token.
		
		Args:
		  token: The token for which to look up the count.
		
		Returns:
		  The number of times this function has been called with
		  *token* as an argument (starting at 0)
	**/
	static public function _GetNextLogCountPerToken(token:Dynamic):Dynamic;
	static public var _THREAD_ID_MASK : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Returns a code and frame object for the lowest non-logging stack frame.
	**/
	static public function _get_caller(?offset:Dynamic):Dynamic;
	/**
		Get id of current thread, suitable for logging as an unsigned quantity.
	**/
	static public function _get_thread_id():Dynamic;
	static public var _level_names : Dynamic;
	static public var _log_counter_per_token : Dynamic;
	/**
		Assemble a logline prefix using the google2 format.
	**/
	static public function _log_prefix(level:Dynamic, ?timestamp:Dynamic, ?file_and_line:Dynamic):Dynamic;
	static public var _logger : Dynamic;
	static public function _logger_find_caller(?stack_info:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public var _logger_lock : Dynamic;
	static public var _tf_api_constants : Dynamic;
	static public var _tf_api_constants_v1 : Dynamic;
	static public var absolute_import : Dynamic;
	static public function debug(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function error(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fatal(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function flush():Dynamic;
	/**
		Return TF logger instance.
	**/
	static public function get_logger():Dynamic;
	/**
		Return how much logging output will be produced.
	**/
	static public function get_verbosity():Dynamic;
	/**
		Assemble a logline prefix using the google2 format.
	**/
	static public function google2_log_prefix(level:Dynamic, ?timestamp:Dynamic, ?file_and_line:Dynamic):Dynamic;
	static public function info(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function log(level:Dynamic, msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Log 'msg % args' at level 'level' once per 'n' times.
		
		Logs the 1st call, (N+1)st call, (2N+1)st call,  etc.
		Not threadsafe.
		
		Args:
		  level: The level at which to log.
		  msg: The message to be logged.
		  n: The number of times this should be called before it is logged.
		  *args: The args to be substituted into the msg.
	**/
	static public function log_every_n(level:Dynamic, msg:Dynamic, n:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Log 'msg % args' at level 'level' only first 'n' times.
		
		Not threadsafe.
		
		Args:
		  level: The level at which to log.
		  msg: The message to be logged.
		  n: The number of times this should be called before it is logged.
		  *args: The args to be substituted into the msg.
	**/
	static public function log_first_n(level:Dynamic, msg:Dynamic, n:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Log 'msg % args' at level 'level' only if condition is fulfilled.
	**/
	static public function log_if(level:Dynamic, msg:Dynamic, condition:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public var print_function : Dynamic;
	/**
		Sets the threshold for what messages will be logged.
	**/
	static public function set_verbosity(v:Dynamic):Dynamic;
	static public function tf_export(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function vlog(level:Dynamic, msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function warn(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function warning(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}