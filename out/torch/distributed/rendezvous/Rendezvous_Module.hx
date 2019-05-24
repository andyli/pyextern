/* This file is generated, do not edit! */
package torch.distributed.rendezvous;
@:pythonImport("torch.distributed.rendezvous") extern class Rendezvous_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _env_rendezvous_handler(url:Dynamic):Dynamic;
	static public function _file_rendezvous_handler(url:Dynamic):Dynamic;
	static public function _rendezvous_error(msg:Dynamic):Dynamic;
	static public var _rendezvous_handlers : Dynamic;
	static public function _tcp_rendezvous_handler(url:Dynamic):Dynamic;
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
		
		Arguments:
		    scheme (str): URL scheme to identify your rendezvous handler.
		    handler (function): Handler that is invoked when the
		        `rendezvous()` function is called with a URL that uses
		        the corresponding scheme. It must be a generator function
		        that yields the triplet.
	**/
	static public function register_rendezvous_handler(scheme:Dynamic, handler:Dynamic):Dynamic;
	static public function rendezvous(url:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parse a URL into 6 components:
		<scheme>://<netloc>/<path>;<params>?<query>#<fragment>
		Return a 6-tuple: (scheme, netloc, path, params, query, fragment).
		Note that we don't break the components up in smaller bits
		(e.g. netloc is a single string) and we don't expand % escapes.
	**/
	static public function urlparse(url:Dynamic, ?scheme:Dynamic, ?allow_fragments:Dynamic):Dynamic;
}