/* This file is generated, do not edit! */
package torch.distributed.elastic.utils.logging;
@:pythonImport("torch.distributed.elastic.utils.logging") extern class Logging_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Derives the name of the caller module from the stack frames.
		
		Args:
		    depth: The position of the frame in the stack.
	**/
	static public function _derive_module_name(?depth:Dynamic):Dynamic;
	static public function _setup_logger(?name:Dynamic):Dynamic;
	/**
		Return default log level for pytorch.
	**/
	static public function get_log_level():Dynamic;
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
}