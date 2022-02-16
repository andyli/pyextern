/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.c10d_rendezvous_backend;
@:pythonImport("torch.distributed.elastic.rendezvous.c10d_rendezvous_backend") extern class C10d_rendezvous_backend_Module {
	static public function Any(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function Token(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function _create_file_store(params:Dynamic):Dynamic;
	static public function _create_tcp_store(params:Dynamic):Dynamic;
	/**
		Indicates whether ``host`` matches the hostname of this machine.
		
		This function compares ``host`` to the hostname as well as to the IP
		addresses of this machine. Note that it may return a false negative if this
		machine has CNAME records beyond its FQDN or IP addresses assigned to
		secondary NICs.
	**/
	static public function _matches_machine_hostname(host:Dynamic):Dynamic;
	/**
		Decode the Base64 encoded bytes-like object or ASCII string s.
		
		Optional altchars must be a bytes-like object or ASCII string of length 2
		which specifies the alternative alphabet used instead of the '+' and '/'
		characters.
		
		The result is returned as a bytes object.  A binascii.Error is raised if
		s is incorrectly padded.
		
		If validate is False (the default), characters that are neither in the
		normal base-64 alphabet nor the alternative alphabet are discarded prior
		to the padding check.  If validate is True, these non-alphabet characters
		in the input result in a binascii.Error.
	**/
	static public function b64decode(s:Dynamic, ?altchars:Dynamic, ?validate:Dynamic):Dynamic;
	/**
		Encode the bytes-like object s using Base64 and return a bytes object.
		
		Optional altchars should be a byte string of length 2 which specifies an
		alternative alphabet for the '+' and '/' characters.  This allows an
		application to e.g. generate url or filesystem safe Base64 strings.
	**/
	static public function b64encode(s:Dynamic, ?altchars:Dynamic):Dynamic;
	/**
		Cast a value to a type.
		
		This returns the value unchanged.  To the type checker this
		signals that the return value has the designated type, but at
		runtime we intentionally don't check anything (we want this
		to be as fast as possible).
	**/
	@:native("cast")
	static public function _cast(typ:Dynamic, val:Dynamic):Dynamic;
	static public function construct_and_record_rdzv_event(run_id:Dynamic, message:Dynamic, node_state:Dynamic, ?name:Dynamic, ?hostname:Dynamic, ?pid:Dynamic, ?master_endpoint:Dynamic, ?local_id:Dynamic, ?rank:Dynamic):Dynamic;
	/**
		Creates a new :py:class:`C10dRendezvousBackend` from the specified
		parameters.
		
		+--------------+-----------------------------------------------------------+
		| Parameter    | Description                                               |
		+==============+===========================================================+
		| store_type   | The type of the C10d store. The currently supported types |
		|              | are "tcp" and "file" which correspond to                  |
		|              | :py:class:`torch.distributed.TCPStore` and                |
		|              | :py:class:`torch.distributed.FileStore`, respectively.    |
		|              | Defaults to "tcp".                                        |
		+--------------+-----------------------------------------------------------+
		| read_timeout | The read timeout, in seconds, for store operations.       |
		|              | Defaults to 60 seconds.                                   |
		|              |                                                           |
		|              | Note this only applies to                                 |
		|              | :py:class:`torch.distributed.TCPStore`. It is not relevant|
		|              | to :py:class:`torch.distributed.FileStore` which does not |
		|              | take in timeout as a parameter.                           |
		+--------------+-----------------------------------------------------------+
		| is_host      | A boolean value indicating whether this backend instance  |
		|              | will host the C10d store. If not specified it will be     |
		|              | inferred heuristically by matching the hostname or the IP |
		|              | address of this machine against the specified rendezvous  |
		|              | endpoint. Defaults to ``None``.                           |
		|              |                                                           |
		|              | Note that this configuration option only applies to       |
		|              | :py:class:`torch.distributed.TCPStore`. In normal         |
		|              | circumstances you can safely skip it; the only time when  |
		|              | it is needed is if its value cannot be correctly          |
		|              | determined (e.g. the rendezvous endpoint has a CNAME as   |
		|              | the hostname or does not match the FQDN of the machine).  |
		+--------------+-----------------------------------------------------------+
	**/
	static public function create_backend(params:Dynamic):Dynamic;
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