/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.utils;
@:pythonImport("torch.distributed.elastic.rendezvous.utils") extern class Utils_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callable type; Callable[[int], str] is a function of (int) -> str.
		
		The subscription syntax must always be used with exactly two
		values: the argument list and the return type.  The argument list
		must be a list of types or ellipsis; the return type must be a single type.
		
		There is no syntax to indicate optional or keyword arguments,
		such function types are rarely used as callback types.
	**/
	static public function Callable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Suspends the current thread for ``seconds``.
		
		Args:
		    seconds:
		        Either the delay, in seconds, or a tuple of a lower and an upper
		        bound within which a random delay will be picked.
	**/
	static public function _delay(seconds:Dynamic):Dynamic;
	/**
		Indicates whether ``host`` matches the hostname of this machine.
		
		This function compares ``host`` to the hostname as well as to the IP
		addresses of this machine. Note that it may return a false negative if this
		machine has CNAME records beyond its FQDN or IP addresses assigned to
		secondary NICs.
	**/
	static public function _matches_machine_hostname(host:Dynamic):Dynamic;
	/**
		Extracts key-value pairs from a rendezvous configuration string.
		
		Args:
		    config_str:
		        A string in format <key1>=<value1>,...,<keyN>=<valueN>.
	**/
	static public function _parse_rendezvous_config(config_str:Dynamic):Dynamic;
	/**
		Tries to extract the port number from ``port_str``.
	**/
	static public function _try_parse_port(port_str:Dynamic):Dynamic;
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