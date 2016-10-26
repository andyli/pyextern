/* This file is generated, do not edit! */
package tensorflow.tensorboard.backend.server;
@:pythonImport("tensorflow.tensorboard.backend.server", "ThreadedHTTPServer") extern class ThreadedHTTPServer {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Constructor.  May be extended, do not override.
	**/
	@:native("__init__")
	public function ___init__(server_address:Dynamic, RequestHandlerClass:Dynamic, ?bind_and_activate:Dynamic):Dynamic;
	/**
		Constructor.  May be extended, do not override.
	**/
	public function new(server_address:Dynamic, RequestHandlerClass:Dynamic, ?bind_and_activate:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Handle one request, without blocking.
		
		I assume that selector.select() has returned that the socket is
		readable before this function was called, so there should be no risk of
		blocking in get_request().
	**/
	public function _handle_request_noblock():Dynamic;
	static public var address_family : Dynamic;
	static public var allow_reuse_address : Dynamic;
	/**
		Called to clean up an individual request.
	**/
	public function close_request(request:Dynamic):Dynamic;
	static public var daemon : Dynamic;
	static public var daemon_threads : Dynamic;
	/**
		Return socket file number.
		
		Interface required by selector.
	**/
	public function fileno():Dynamic;
	/**
		Finish one request by instantiating RequestHandlerClass.
	**/
	public function finish_request(request:Dynamic, client_address:Dynamic):Dynamic;
	/**
		Get the request and client address from the socket.
		
		May be overridden.
	**/
	public function get_request():Dynamic;
	/**
		Handle an error gracefully.  May be overridden.
		
		The default is to print a traceback and continue.
	**/
	public function handle_error(request:Dynamic, client_address:Dynamic):Dynamic;
	/**
		Handle one request, possibly blocking.
		
		Respects self.timeout.
	**/
	public function handle_request():Dynamic;
	/**
		Called if no new request arrives within self.timeout.
		
		Overridden by ForkingMixIn.
	**/
	public function handle_timeout():Dynamic;
	/**
		Start a new thread to process the request.
	**/
	public function process_request(request:Dynamic, client_address:Dynamic):Dynamic;
	/**
		Same as in BaseServer but as a thread.
		
		In addition, exception handling is done here.
	**/
	public function process_request_thread(request:Dynamic, client_address:Dynamic):Dynamic;
	static public var request_queue_size : Dynamic;
	/**
		Handle one request at a time until shutdown.
		
		Polls for shutdown every poll_interval seconds. Ignores
		self.timeout. If you need to do periodic tasks, do them in
		another thread.
	**/
	public function serve_forever(?poll_interval:Dynamic):Dynamic;
	/**
		Called by constructor to activate the server.
		
		May be overridden.
	**/
	public function server_activate():Dynamic;
	/**
		Override server_bind to store the server name.
	**/
	public function server_bind():Dynamic;
	/**
		Called to clean-up the server.
		
		May be overridden.
	**/
	public function server_close():Dynamic;
	/**
		Called by the serve_forever() loop.
		
		May be overridden by a subclass / Mixin to implement any code that
		needs to be run during the loop.
	**/
	public function service_actions():Dynamic;
	/**
		Stops the serve_forever loop.
		
		Blocks until the loop has finished. This must be called while
		serve_forever() is running in another thread, or it will
		deadlock.
	**/
	public function shutdown():Dynamic;
	/**
		Called to shutdown and close an individual request.
	**/
	public function shutdown_request(request:Dynamic):Dynamic;
	static public var socket_type : Dynamic;
	static public var timeout : Dynamic;
	/**
		Verify the request.  May be overridden.
		
		Return True if we should proceed with this request.
	**/
	public function verify_request(request:Dynamic, client_address:Dynamic):Dynamic;
}