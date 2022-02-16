/* This file is generated, do not edit! */
package selenium.webdriver.common.bidi.cdp;
@:pythonImport("selenium.webdriver.common.bidi.cdp", "CdpSession") extern class CdpSession {
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
		Constructor.
		:param trio_websocket.WebSocketConnection ws:
		:param devtools.target.SessionID session_id:
		:param devtools.target.TargetID target_id:
	**/
	@:native("__init__")
	public function ___init__(ws:Dynamic, session_id:Dynamic, target_id:Dynamic):Dynamic;
	/**
		Constructor.
		:param trio_websocket.WebSocketConnection ws:
		:param devtools.target.SessionID session_id:
		:param devtools.target.TargetID target_id:
	**/
	public function new(ws:Dynamic, session_id:Dynamic, target_id:Dynamic):Void;
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
	/**
		Handle a response to a command. This will set an event flag that will
		return control to the task that called the command.
		:param dict data: response as a JSON dictionary
	**/
	public function _handle_cmd_response(data:Dynamic):Dynamic;
	/**
		Handle incoming WebSocket data.
		:param dict data: a JSON dictionary
	**/
	public function _handle_data(data:Dynamic):Dynamic;
	/**
		Handle an event.
		:param dict data: event as a JSON dictionary
	**/
	public function _handle_event(data:Dynamic):Dynamic;
	/**
		A context manager that executes ``dom.enable()`` when it enters and then
		calls ``dom.disable()``.
		This keeps track of concurrent callers and only disables DOM events when
		all callers have exited.
	**/
	public function dom_enable():Dynamic;
	/**
		Execute a command on the server and wait for the result.
		:param cmd: any CDP command
		:returns: a CDP result
	**/
	public function execute(cmd:Dynamic):Dynamic;
	/**
		Return an async iterator that iterates over events matching the
		indicated types. 
	**/
	public function listen(?event_types:python.VarArgs<Dynamic>, ?buffer_size:Dynamic):Dynamic;
	/**
		A context manager that executes ``page.enable()`` when it enters and
		then calls ``page.disable()`` when it exits.
		This keeps track of concurrent callers and only disables page events
		when all callers have exited.
	**/
	public function page_enable():Dynamic;
	/**
		Wait for an event of the given type and return it.
		This is an async context manager, so you should open it inside an async
		with block. The block will not exit until the indicated event is
		received.
	**/
	public function wait_for(event_type:Dynamic, ?buffer_size:Dynamic):Dynamic;
}