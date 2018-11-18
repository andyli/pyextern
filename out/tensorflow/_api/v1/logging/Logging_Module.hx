/* This file is generated, do not edit! */
package tensorflow._api.v1.logging;
@:pythonImport("tensorflow._api.v1.logging") extern class Logging_Module {
	static public var DEBUG : Dynamic;
	static public var ERROR : Dynamic;
	static public var FATAL : Dynamic;
	static public var INFO : Dynamic;
	static public function TaskLevelStatusMessage(msg:Dynamic):Dynamic;
	static public var WARN : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function debug(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function error(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function fatal(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function flush():Dynamic;
	/**
		Return how much logging output will be produced.
	**/
	static public function get_verbosity():Dynamic;
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
	/**
		Sets the threshold for what messages will be logged.
	**/
	static public function set_verbosity(v:Dynamic):Dynamic;
	static public function vlog(level:Dynamic, msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function warn(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function warning(msg:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}