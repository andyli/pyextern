/* This file is generated, do not edit! */
package torch.distributed.elastic.rendezvous.etcd_server;
@:pythonImport("torch.distributed.elastic.rendezvous.etcd_server") extern class Etcd_server_Module {
	static public function Optional(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Finds a free port and binds a temporary socket to it so that
		the port can be "reserved" until used.
		
		.. note:: the returned socket must be closed before using the port,
		          otherwise a ``address already in use`` error will happen.
		          The socket should be held and closed as close to the
		          consumer of the port as possible since otherwise, there
		          is a greater chance of race-condition where a different
		          process may see the port as being free and take it.
		
		Returns: a socket binded to the reserved free port
		
		Usage::
		
		sock = find_free_port()
		port = sock.getsockname()[1]
		sock.close()
		use_port(port)
	**/
	static public function find_free_port():Dynamic;
	static public var log : Dynamic;
	static public function stop_etcd(subprocess:Dynamic, ?data_dir:Dynamic):Dynamic;
}