/* This file is generated, do not edit! */
package selenium.webdriver.common.bidi.cdp;
@:pythonImport("selenium.webdriver.common.bidi.cdp") extern class Cdp_Module {
	static public var MAX_WS_MESSAGE_SIZE : Dynamic;
	static public var T : Dynamic;
	static public var __annotations__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _connection_context : Dynamic;
	static public var _session_context : Dynamic;
	/**
		@asynccontextmanager decorator.
		
		Typical usage:
		
		    @asynccontextmanager
		    async def some_async_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    async with some_async_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function asynccontextmanager(func:Dynamic):Dynamic;
	/**
		Connect to the browser specified by ``url`` and spawn a background task in the
		specified nursery.
		The ``open_cdp()`` context manager is preferred in most situations. You should only
		use this function if you need to specify a custom nursery.
		This connection is not automatically closed! You can either use the connection
		object as a context manager (``async with conn:``) or else call ``await
		conn.aclose()`` on it when you are done with it.
		If ``set_context`` is True, then the returned connection will be installed as
		the default connection for the current task. This argument is for unusual use cases,
		such as running inside of a notebook.
	**/
	static public function connect_cdp(nursery:Dynamic, url:Dynamic):Dynamic;
	/**
		Return an open WebSocket client connection to a URL.
		
		This function is used to specify a custom nursery to run connection
		background tasks in. The caller is responsible for closing the connection.
		
		If you don't need a custom nursery, you should probably use
		:func:`open_websocket_url` instead.
		
		:param nursery: A nursery to run background tasks in.
		:param str url: A WebSocket URL.
		:param ssl_context: Optional SSL context used for ``wss:`` URLs.
		:type ssl_context: ssl.SSLContext or None
		:param subprotocols: An iterable of strings representing preferred
		    subprotocols.
		:param list[tuple[bytes,bytes]] extra_headers: A list of 2-tuples containing
		    HTTP header key/value pairs to send with the connection request. Note
		    that headers used by the WebSocket protocol (e.g.
		    ``Sec-WebSocket-Accept``) will be overwritten.
		:param int message_queue_size: The maximum number of messages that will be
		    buffered in the library's internal message queue.
		:param int max_message_size: The maximum message size as measured by
		    ``len()``. If a message is received that is larger than this size,
		    then the connection is closed with code 1009 (Message Too Big).
		:rtype: WebSocketConnection
	**/
	static public function connect_websocket_url(nursery:Dynamic, url:Dynamic, ?ssl_context:Dynamic, ?subprotocols:Dynamic, ?extra_headers:Dynamic, ?message_queue_size:Dynamic, ?max_message_size:Dynamic):Dynamic;
	/**
		This context manager installs ``connection`` as the session context for the current
		Trio task. 
	**/
	static public function connection_context(connection:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Returns the same class as was passed in, with dunder methods
		added based on the fields defined in the class.
		
		Examines PEP 526 __annotations__ to determine fields.
		
		If init is true, an __init__() method is added to the class. If
		repr is true, a __repr__() method is added. If order is true, rich
		comparison dunder methods are added. If unsafe_hash is true, a
		__hash__() method function is added. If frozen is true, fields may
		not be assigned to after instance creation.
	**/
	static public function dataclass(?cls:Dynamic, ?init:Dynamic, ?repr:Dynamic, ?eq:Dynamic, ?order:Dynamic, ?unsafe_hash:Dynamic, ?frozen:Dynamic):Dynamic;
	static public var devtools : Dynamic;
	/**
		Look up the current connection. If there is no current connection, raise a
		``RuntimeError`` with a helpful message.
	**/
	static public function get_connection_context(fn_name:Dynamic):Dynamic;
	/**
		Look up the current session. If there is no current session, raise a
		``RuntimeError`` with a helpful message.
	**/
	static public function get_session_context(fn_name:Dynamic):Dynamic;
	static public function import_devtools(ver:Dynamic):Dynamic;
	static public var logger : Dynamic;
	/**
		This async context manager opens a connection to the browser specified by
		``url`` before entering the block, then closes the connection when the block
		exits.
		The context manager also sets the connection as the default connection for the
		current task, so that commands like ``await target.get_targets()`` will run on this
		connection automatically. If you want to use multiple connections concurrently, it
		is recommended to open each on in a separate task.
	**/
	static public function open_cdp(url:Dynamic):Dynamic;
	/**
		This context manager installs ``session`` as the session context for the current
		Trio task. 
	**/
	static public function session_context(session:Dynamic):Dynamic;
	/**
		Install ``connection`` in the root context so that it will become the default
		connection for all tasks. This is generally not recommended, except it may be
		necessary in certain use cases such as running inside Jupyter notebook.
	**/
	static public function set_global_connection(connection:Dynamic):Dynamic;
	/**
		Install ``session`` in the root context so that it will become the default
		session for all tasks. This is generally not recommended, except it may be
		necessary in certain use cases such as running inside Jupyter notebook.
	**/
	static public function set_global_session(session:Dynamic):Dynamic;
	static public var version : Dynamic;
}