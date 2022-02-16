/* This file is generated, do not edit! */
package torch.distributed.elastic.utils;
@:pythonImport("torch.distributed.elastic.utils") extern class Utils_Module {
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
		Tries to retrieve environment variable. Raises ``ValueError``
		if no environment variable found.
		
		Args:
		    env_name (str): Name of the env variable
	**/
	static public function get_env_variable_or_raise(env_name:Dynamic):Dynamic;
	static public function get_socket_with_port():Dynamic;
}