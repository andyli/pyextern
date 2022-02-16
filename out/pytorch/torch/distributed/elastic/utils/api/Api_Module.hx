/* This file is generated, do not edit! */
package torch.distributed.elastic.utils.api;
@:pythonImport("torch.distributed.elastic.utils.api") extern class Api_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function List(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
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