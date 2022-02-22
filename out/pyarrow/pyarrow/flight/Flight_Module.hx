/* This file is generated, do not edit! */
package pyarrow.flight;
@:pythonImport("pyarrow.flight") extern class Flight_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		connect(location, **kwargs)
		
		Connect to the Flight server
		Parameters
		----------
		location : str, tuple or Location
		    Location to connect to. Either a gRPC URI like `grpc://localhost:port`,
		    a tuple of (host, port) pair, or a Location instance.
		tls_root_certs : bytes or None
		    PEM-encoded
		cert_chain: str or None
		    If provided, enables TLS mutual authentication.
		private_key: str or None
		    If provided, enables TLS mutual authentication.
		override_hostname : str or None
		    Override the hostname checked by TLS. Insecure, use with caution.
		middleware : list or None
		    A list of ClientMiddlewareFactory instances to apply.
		write_size_limit_bytes : int or None
		    A soft limit on the size of a data payload sent to the
		    server. Enabled if positive. If enabled, writing a record
		    batch that (when serialized) exceeds this limit will raise an
		    exception; the client can retry the write with a smaller
		    batch.
		disable_server_verification : boolean or None
		    Disable verifying the server when using TLS.
		    Insecure, use with caution.
		generic_options : list or None
		    A list of generic (string, int or string) options to pass to
		    the underlying transport.
		Returns
		-------
		client : FlightClient
	**/
	static public function connect(args:haxe.extern.Rest<Dynamic>):Dynamic;
}