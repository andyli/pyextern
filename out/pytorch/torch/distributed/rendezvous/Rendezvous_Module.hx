/* This file is generated, do not edit! */
package torch.distributed.rendezvous;
@:pythonImport("torch.distributed.rendezvous") extern class Rendezvous_Module {
	static public function Dict(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Smartly creates a c10d Store object on ``rank`` based on whether
		we need to re-use agent store. The TCPStore server is assumed to be hosted
		on ``hostname:port``.
		
		If ``torchelastic_use_agent_store()`` is ``True``, then it is assumed that
		the agent leader (node rank 0) hosts the TCPStore server (for which the
		endpoint is specified by the given ``hostname:port``). Hence
		ALL ranks will create and return a TCPStore client (e.g. ``start_daemon=False``).
		
		If ``torchelastic_use_agent_store()`` is ``False``, then rank 0 will host
		the TCPStore (with multi-tenancy) and it is assumed that rank 0's hostname
		and port are correctly passed via ``hostname`` and ``port``. All
		non-zero ranks will create and return a TCPStore client.
	**/
	static public function _create_c10d_store(hostname:Dynamic, port:Dynamic, rank:Dynamic, world_size:Dynamic, timeout:Dynamic):Dynamic;
	static public function _env_rendezvous_handler(url:Dynamic, ?timeout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _file_rendezvous_handler(url:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _rendezvous_error(msg:Dynamic):Dynamic;
	static public var _rendezvous_handlers : Dynamic;
	static public function _tcp_rendezvous_handler(url:Dynamic, ?timeout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _torchelastic_use_agent_store():Dynamic;
	static public var default_pg_timeout : Dynamic;
	/**
		Registers a new rendezvous handler.
		
		Before we can run collective algorithms, participating processes
		need to find each other and exchange information to be able to
		communicate. We call this process rendezvous.
		
		The outcome of the rendezvous process is a triplet containing a
		shared key/value store, the rank of the process, and the total
		number of participating processes.
		
		If none of the bundled rendezvous methods apply to your execution
		environment you can opt to register your own rendezvous handler.
		Pick a unique name and use the URL scheme to identify it when
		calling the `rendezvous()` function.
		
		Args:
		    scheme (str): URL scheme to identify your rendezvous handler.
		    handler (function): Handler that is invoked when the
		        `rendezvous()` function is called with a URL that uses
		        the corresponding scheme. It must be a generator function
		        that yields the triplet.
	**/
	static public function register_rendezvous_handler(scheme:Dynamic, handler:Dynamic):Dynamic;
	static public function rendezvous(url:Dynamic, ?rank:Dynamic, ?world_size:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parse a URL into 6 components:
		<scheme>://<netloc>/<path>;<params>?<query>#<fragment>
		Return a 6-tuple: (scheme, netloc, path, params, query, fragment).
		Note that we don't break the components up in smaller bits
		(e.g. netloc is a single string) and we don't expand % escapes.
	**/
	static public function urlparse(url:Dynamic, ?scheme:Dynamic, ?allow_fragments:Dynamic):Dynamic;
	/**
		Put a parsed URL back together again.  This may result in a
		slightly different, but equivalent URL, if the URL that was parsed
		originally had redundant delimiters, e.g. a ? with an empty query
		(the draft states that these are equivalent).
	**/
	static public function urlunparse(components:Dynamic):Dynamic;
}