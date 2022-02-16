/* This file is generated, do not edit! */
package matplotlib.backends.backend_webagg;
@:pythonImport("matplotlib.backends.backend_webagg", "WebAggApplication") extern class WebAggApplication {
	/**
		Base class for HTTP request handlers.
		
		Subclasses must define at least one of the methods defined in the
		"Entry points" section below.
		
		Applications should not construct `RequestHandler` objects
		directly and subclasses should not override ``__init__`` (override
		`~RequestHandler.initialize` instead).
	**/
	static public function AllFiguresPage(application:Dynamic, request:Dynamic, ?url_prefix:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base class for HTTP request handlers.
		
		Subclasses must define at least one of the methods defined in the
		"Entry points" section below.
		
		Applications should not construct `RequestHandler` objects
		directly and subclasses should not override ``__init__`` (override
		`~RequestHandler.initialize` instead).
	**/
	static public function Download(application:Dynamic, request:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base class for HTTP request handlers.
		
		Subclasses must define at least one of the methods defined in the
		"Entry points" section below.
		
		Applications should not construct `RequestHandler` objects
		directly and subclasses should not override ``__init__`` (override
		`~RequestHandler.initialize` instead).
	**/
	static public function FavIcon(application:Dynamic, request:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base class for HTTP request handlers.
		
		Subclasses must define at least one of the methods defined in the
		"Entry points" section below.
		
		Applications should not construct `RequestHandler` objects
		directly and subclasses should not override ``__init__`` (override
		`~RequestHandler.initialize` instead).
	**/
	static public function MplJs(application:Dynamic, request:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base class for HTTP request handlers.
		
		Subclasses must define at least one of the methods defined in the
		"Entry points" section below.
		
		Applications should not construct `RequestHandler` objects
		directly and subclasses should not override ``__init__`` (override
		`~RequestHandler.initialize` instead).
	**/
	static public function SingleFigurePage(application:Dynamic, request:Dynamic, ?url_prefix:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Subclass this class to create a basic WebSocket handler.
		
		Override `on_message` to handle incoming messages, and use
		`write_message` to send messages to the client. You can also
		override `open` and `on_close` to handle opened and closed
		connections.
		
		Custom upgrade response headers can be sent by overriding
		`~tornado.web.RequestHandler.set_default_headers` or
		`~tornado.web.RequestHandler.prepare`.
		
		See http://dev.w3.org/html5/websockets/ for details on the
		JavaScript interface.  The protocol is specified at
		http://tools.ietf.org/html/rfc6455.
		
		Here is an example WebSocket handler that echos back all received messages
		back to the client:
		
		.. testcode::
		
		  class EchoWebSocket(tornado.websocket.WebSocketHandler):
		      def open(self):
		          print("WebSocket opened")
		
		      def on_message(self, message):
		          self.write_message(u"You said: " + message)
		
		      def on_close(self):
		          print("WebSocket closed")
		
		.. testoutput::
		   :hide:
		
		WebSockets are not standard HTTP connections. The "handshake" is
		HTTP, but after the handshake, the protocol is
		message-based. Consequently, most of the Tornado HTTP facilities
		are not available in handlers of this type. The only communication
		methods available to you are `write_message()`, `ping()`, and
		`close()`. Likewise, your request handler class should implement
		`open()` method rather than ``get()`` or ``post()``.
		
		If you map the handler above to ``/websocket`` in your application, you can
		invoke it in JavaScript with::
		
		  var ws = new WebSocket("ws://localhost:8888/websocket");
		  ws.onopen = function() {
		     ws.send("Hello, world");
		  };
		  ws.onmessage = function (evt) {
		     alert(evt.data);
		  };
		
		This script pops up an alert box that says "You said: Hello, world".
		
		Web browsers allow any site to open a websocket connection to any other,
		instead of using the same-origin policy that governs other network
		access from JavaScript.  This can be surprising and is a potential
		security hole, so since Tornado 4.0 `WebSocketHandler` requires
		applications that wish to receive cross-origin websockets to opt in
		by overriding the `~WebSocketHandler.check_origin` method (see that
		method's docs for details).  Failure to do so is the most likely
		cause of 403 errors when making a websocket connection.
		
		When using a secure websocket connection (``wss://``) with a self-signed
		certificate, the connection from a browser may fail because it wants
		to show the "accept this certificate" dialog but has nowhere to show it.
		You must first visit a regular HTML page using the same certificate
		to accept it before the websocket connection will succeed.
		
		If the application setting ``websocket_ping_interval`` has a non-zero
		value, a ping will be sent periodically, and the connection will be
		closed if a response is not received before the ``websocket_ping_timeout``.
		
		Messages larger than the ``websocket_max_message_size`` application setting
		(default 10MiB) will not be accepted.
		
		.. versionchanged:: 4.5
		   Added ``websocket_ping_interval``, ``websocket_ping_timeout``, and
		   ``websocket_max_message_size``.
	**/
	static public function WebSocket(application:Dynamic, request:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call self as a function.
	**/
	public function __call__(request:Dynamic):Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?url_prefix:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?url_prefix:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
	/**
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _load_ui_methods(methods:Dynamic):Dynamic;
	public function _load_ui_modules(modules:Dynamic):Dynamic;
	/**
		Appends the given handlers to our handler list.
		
		Host patterns are processed sequentially in the order they were
		added. All matching patterns will be considered.
	**/
	public function add_handlers(host_pattern:Dynamic, host_handlers:Dynamic):Dynamic;
	public function add_transform(transform_class:Dynamic):Dynamic;
	/**
		Must be implemented to return an appropriate instance of `~.httputil.HTTPMessageDelegate`
		that can serve the request.
		Routing implementations may pass additional kwargs to extend the routing logic.
		
		:arg httputil.HTTPServerRequest request: current HTTP request.
		:arg kwargs: additional keyword arguments passed by routing implementation.
		:returns: an instance of `~.httputil.HTTPMessageDelegate` that will be used to
		    process the request.
	**/
	public function find_handler(request:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Returns `~.httputil.HTTPMessageDelegate` that can serve a request
		for application and `RequestHandler` subclass.
		
		:arg httputil.HTTPServerRequest request: current HTTP request.
		:arg RequestHandler target_class: a `RequestHandler` class.
		:arg dict target_kwargs: keyword arguments for ``target_class`` constructor.
		:arg list path_args: positional arguments for ``target_class`` HTTP method that
		    will be executed while handling a request (``get``, ``post`` or any other).
		:arg dict path_kwargs: keyword arguments for ``target_class`` HTTP method.
	**/
	public function get_handler_delegate(request:Dynamic, target_class:Dynamic, ?target_kwargs:Dynamic, ?path_args:Dynamic, ?path_kwargs:Dynamic):Dynamic;
	static public function initialize(?url_prefix:Dynamic, ?port:Dynamic, ?address:Dynamic):Dynamic;
	static public var initialized : Dynamic;
	/**
		Starts an HTTP server for this application on the given port.
		
		This is a convenience alias for creating an `.HTTPServer`
		object and calling its listen method.  Keyword arguments not
		supported by `HTTPServer.listen <.TCPServer.listen>` are passed to the
		`.HTTPServer` constructor.  For advanced uses
		(e.g. multi-process mode), do not use this method; create an
		`.HTTPServer` and call its
		`.TCPServer.bind`/`.TCPServer.start` methods directly.
		
		Note that after calling this method you still need to call
		``IOLoop.current().start()`` to start the server.
		
		Returns the `.HTTPServer` object.
		
		.. versionchanged:: 4.3
		   Now returns the `.HTTPServer` object.
	**/
	public function listen(port:Dynamic, ?address:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Writes a completed HTTP request to the logs.
		
		By default writes to the python root logger.  To change
		this behavior either subclass Application and override this method,
		or pass a function in the application settings dictionary as
		``log_function``.
	**/
	public function log_request(handler:Dynamic):Dynamic;
	/**
		This method is called when a connection has been closed.
		
		:arg server_conn: is a server connection that has previously been
		    passed to ``start_request``.
	**/
	public function on_close(server_conn:Dynamic):Dynamic;
	/**
		Returns a URL path for handler named ``name``
		
		The handler must be added to the application as a named `URLSpec`.
		
		Args will be substituted for capturing groups in the `URLSpec` regex.
		They will be converted to strings if necessary, encoded as utf8,
		and url-escaped.
	**/
	public function reverse_url(name:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	static public function start():Dynamic;
	/**
		This method is called by the server when a new request has started.
		
		:arg server_conn: is an opaque object representing the long-lived
		    (e.g. tcp-level) connection.
		:arg request_conn: is a `.HTTPConnection` object for a single
		    request/response exchange.
		
		This method should return a `.HTTPMessageDelegate`.
	**/
	public function start_request(server_conn:Dynamic, request_conn:Dynamic):Dynamic;
	static public var started : Dynamic;
}