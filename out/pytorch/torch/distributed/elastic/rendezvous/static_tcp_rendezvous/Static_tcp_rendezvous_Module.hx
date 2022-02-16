/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.static_tcp_rendezvous;
@:pythonImport("torch.distributed.elastic.rendezvous.static_tcp_rendezvous") extern class Static_tcp_rendezvous_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Tuple type; Tuple[X, Y] is the cross-product type of X and Y.
		
		Example: Tuple[T1, T2] is a tuple of two elements corresponding
		to type variables T1 and T2.  Tuple[int, float, str] is a tuple
		of an int, a float and a string.
		
		To specify a variable-length tuple of homogeneous type, use Tuple[T, ...].
	**/
	static public function Tuple(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _default_timeout_seconds : Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function create_rdzv_handler(params:Dynamic):Dynamic;
	static public var log : Dynamic;
	/**
		Extracts the hostname and the port number from a rendezvous endpoint.
		
		Args:
		    endpoint:
		        A string in format <hostname>[:<port>].
		    default_port:
		        The port number to use if the endpoint does not include one.
		
		Returns:
		    A tuple of hostname and port number.
	**/
	static public function parse_rendezvous_endpoint(endpoint:Dynamic, default_port:Dynamic):Dynamic;
}