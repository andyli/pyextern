/* This file is generated, do not edit! */
package selenium.webdriver.remote.command;
@:pythonImport("selenium.webdriver.remote.command", "Command") extern class Command {
	static public var ACCEPT_ALERT : Dynamic;
	static public var ADD_COOKIE : Dynamic;
	static public var CLEAR_APP_CACHE : Dynamic;
	static public var CLEAR_ELEMENT : Dynamic;
	static public var CLEAR_LOCAL_STORAGE : Dynamic;
	static public var CLEAR_SESSION_STORAGE : Dynamic;
	static public var CLICK : Dynamic;
	static public var CLICK_ELEMENT : Dynamic;
	static public var CLOSE : Dynamic;
	static public var CONTEXT_HANDLES : Dynamic;
	static public var CURRENT_CONTEXT_HANDLE : Dynamic;
	static public var DELETE_ALL_COOKIES : Dynamic;
	static public var DELETE_COOKIE : Dynamic;
	static public var DELETE_SESSION : Dynamic;
	static public var DISMISS_ALERT : Dynamic;
	static public var DOUBLE_CLICK : Dynamic;
	static public var DOUBLE_TAP : Dynamic;
	static public var ELEMENT_SCREENSHOT : Dynamic;
	static public var EXECUTE_ASYNC_SCRIPT : Dynamic;
	static public var EXECUTE_SCRIPT : Dynamic;
	static public var EXECUTE_SQL : Dynamic;
	static public var FIND_CHILD_ELEMENT : Dynamic;
	static public var FIND_CHILD_ELEMENTS : Dynamic;
	static public var FIND_ELEMENT : Dynamic;
	static public var FIND_ELEMENTS : Dynamic;
	static public var FIND_ELEMENTS_FROM_SHADOW_ROOT : Dynamic;
	static public var FIND_ELEMENT_FROM_SHADOW_ROOT : Dynamic;
	static public var FLICK : Dynamic;
	static public var FULLSCREEN_WINDOW : Dynamic;
	static public var GET : Dynamic;
	static public var GET_ACTIVE_ELEMENT : Dynamic;
	static public var GET_ALERT_TEXT : Dynamic;
	static public var GET_ALL_COOKIES : Dynamic;
	static public var GET_ALL_SESSIONS : Dynamic;
	static public var GET_APP_CACHE : Dynamic;
	static public var GET_APP_CACHE_STATUS : Dynamic;
	static public var GET_AVAILABLE_LOG_TYPES : Dynamic;
	static public var GET_COOKIE : Dynamic;
	static public var GET_CURRENT_URL : Dynamic;
	static public var GET_CURRENT_WINDOW_HANDLE : Dynamic;
	static public var GET_ELEMENT_ARIA_LABEL : Dynamic;
	static public var GET_ELEMENT_ARIA_ROLE : Dynamic;
	static public var GET_ELEMENT_ATTRIBUTE : Dynamic;
	static public var GET_ELEMENT_LOCATION : Dynamic;
	static public var GET_ELEMENT_LOCATION_ONCE_SCROLLED_INTO_VIEW : Dynamic;
	static public var GET_ELEMENT_PROPERTY : Dynamic;
	static public var GET_ELEMENT_RECT : Dynamic;
	static public var GET_ELEMENT_SIZE : Dynamic;
	static public var GET_ELEMENT_TAG_NAME : Dynamic;
	static public var GET_ELEMENT_TEXT : Dynamic;
	static public var GET_ELEMENT_VALUE : Dynamic;
	static public var GET_ELEMENT_VALUE_OF_CSS_PROPERTY : Dynamic;
	static public var GET_LOCAL_STORAGE_ITEM : Dynamic;
	static public var GET_LOCAL_STORAGE_KEYS : Dynamic;
	static public var GET_LOCAL_STORAGE_SIZE : Dynamic;
	static public var GET_LOCATION : Dynamic;
	static public var GET_LOG : Dynamic;
	static public var GET_NETWORK_CONNECTION : Dynamic;
	static public var GET_PAGE_SOURCE : Dynamic;
	static public var GET_SCREEN_ORIENTATION : Dynamic;
	static public var GET_SESSION_STORAGE_ITEM : Dynamic;
	static public var GET_SESSION_STORAGE_KEYS : Dynamic;
	static public var GET_SESSION_STORAGE_SIZE : Dynamic;
	static public var GET_SHADOW_ROOT : Dynamic;
	static public var GET_TIMEOUTS : Dynamic;
	static public var GET_TITLE : Dynamic;
	static public var GET_WINDOW_HANDLES : Dynamic;
	static public var GET_WINDOW_POSITION : Dynamic;
	static public var GET_WINDOW_RECT : Dynamic;
	static public var GET_WINDOW_SIZE : Dynamic;
	static public var GO_BACK : Dynamic;
	static public var GO_FORWARD : Dynamic;
	static public var IMPLICIT_WAIT : Dynamic;
	static public var IS_ELEMENT_DISPLAYED : Dynamic;
	static public var IS_ELEMENT_ENABLED : Dynamic;
	static public var IS_ELEMENT_SELECTED : Dynamic;
	static public var LONG_PRESS : Dynamic;
	static public var MAXIMIZE_WINDOW : Dynamic;
	static public var MINIMIZE_WINDOW : Dynamic;
	static public var MOUSE_DOWN : Dynamic;
	static public var MOUSE_UP : Dynamic;
	static public var MOVE_TO : Dynamic;
	static public var NEW_SESSION : Dynamic;
	static public var NEW_WINDOW : Dynamic;
	static public var PRINT_PAGE : Dynamic;
	static public var QUIT : Dynamic;
	static public var REFRESH : Dynamic;
	static public var REMOVE_LOCAL_STORAGE_ITEM : Dynamic;
	static public var REMOVE_SESSION_STORAGE_ITEM : Dynamic;
	static public var SCREENSHOT : Dynamic;
	static public var SEND_KEYS_TO_ACTIVE_ELEMENT : Dynamic;
	static public var SEND_KEYS_TO_ELEMENT : Dynamic;
	static public var SET_ALERT_CREDENTIALS : Dynamic;
	static public var SET_ALERT_VALUE : Dynamic;
	static public var SET_ELEMENT_SELECTED : Dynamic;
	static public var SET_LOCAL_STORAGE_ITEM : Dynamic;
	static public var SET_LOCATION : Dynamic;
	static public var SET_NETWORK_CONNECTION : Dynamic;
	static public var SET_SCREEN_ORIENTATION : Dynamic;
	static public var SET_SCRIPT_TIMEOUT : Dynamic;
	static public var SET_SESSION_STORAGE_ITEM : Dynamic;
	static public var SET_TIMEOUTS : Dynamic;
	static public var SET_WINDOW_POSITION : Dynamic;
	static public var SET_WINDOW_RECT : Dynamic;
	static public var SET_WINDOW_SIZE : Dynamic;
	static public var SINGLE_TAP : Dynamic;
	static public var STATUS : Dynamic;
	static public var SUBMIT_ELEMENT : Dynamic;
	static public var SWITCH_TO_CONTEXT : Dynamic;
	static public var SWITCH_TO_FRAME : Dynamic;
	static public var SWITCH_TO_PARENT_FRAME : Dynamic;
	static public var SWITCH_TO_WINDOW : Dynamic;
	static public var TOUCH_DOWN : Dynamic;
	static public var TOUCH_MOVE : Dynamic;
	static public var TOUCH_SCROLL : Dynamic;
	static public var TOUCH_UP : Dynamic;
	static public var UPLOAD_FILE : Dynamic;
	static public var W3C_ACCEPT_ALERT : Dynamic;
	static public var W3C_ACTIONS : Dynamic;
	static public var W3C_CLEAR_ACTIONS : Dynamic;
	static public var W3C_DISMISS_ALERT : Dynamic;
	static public var W3C_EXECUTE_SCRIPT : Dynamic;
	static public var W3C_EXECUTE_SCRIPT_ASYNC : Dynamic;
	static public var W3C_GET_ACTIVE_ELEMENT : Dynamic;
	static public var W3C_GET_ALERT_TEXT : Dynamic;
	static public var W3C_GET_CURRENT_WINDOW_HANDLE : Dynamic;
	static public var W3C_GET_WINDOW_HANDLES : Dynamic;
	static public var W3C_GET_WINDOW_POSITION : Dynamic;
	static public var W3C_GET_WINDOW_SIZE : Dynamic;
	static public var W3C_MAXIMIZE_WINDOW : Dynamic;
	static public var W3C_SET_ALERT_VALUE : Dynamic;
	static public var W3C_SET_WINDOW_POSITION : Dynamic;
	static public var W3C_SET_WINDOW_SIZE : Dynamic;
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
}