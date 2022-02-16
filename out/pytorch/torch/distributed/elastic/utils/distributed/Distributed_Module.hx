/* This file is generated, do not edit! */
package torch.distributed.elastic.utils.distributed;
@:pythonImport("torch.distributed.elastic.utils.distributed") extern class Distributed_Module {
	static public var _ADDRESS_IN_USE : Dynamic;
	static public var _CONNECT_TIMEOUT : Dynamic;
	static public var _LAST_MEMBER_CHECKIN : Dynamic;
	static public var _MEMBER_CHECKIN : Dynamic;
	static public var _SOCKET_TIMEOUT : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _check_full_rank(store:Dynamic, world_size:Dynamic):Dynamic;
	static public function create_c10d_store(is_server:Dynamic, server_addr:Dynamic, ?server_port:Dynamic, ?world_size:Dynamic, ?timeout:Dynamic, ?retries:Dynamic):Dynamic;
	static public function get_free_port():Dynamic;
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
	/**
		Returns a free port on localhost that is "reserved" by binding a temporary
		socket on it. Close the socket before passing the port to the entity
		that requires it. Usage example
		
		::
		
		sock = _get_socket_with_port()
		with closing(sock):
		    port = sock.getsockname()[1]
		    sock.close()
		    # there is still a race-condition that some other process
		    # may grab this port before func() runs
		    func(port)
	**/
	static public function get_socket_with_port():Dynamic;
	static public var log : Dynamic;
}