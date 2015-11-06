/* This file is generated, do not edit! */
package docutils.utils;
@:pythonImport("docutils.utils", "Reporter") extern class Reporter {
	static public var DEBUG_LEVEL : Dynamic;
	static public var ERROR_LEVEL : Dynamic;
	static public var INFO_LEVEL : Dynamic;
	static public var SEVERE_LEVEL : Dynamic;
	static public var WARNING_LEVEL : Dynamic;
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
		:Parameters:
		    - `source`: The path to or description of the source data.
		    - `report_level`: The level at or above which warning output will
		      be sent to `stream`.
		    - `halt_level`: The level at or above which `SystemMessage`
		      exceptions will be raised, halting execution.
		    - `debug`: Show debug (level=0) system messages?
		    - `stream`: Where warning output is sent.  Can be file-like (has a
		      ``.write`` method), a string (file name, opened for writing),
		      '' (empty string) or `False` (for discarding all stream messages)
		      or `None` (implies `sys.stderr`; default).
		    - `encoding`: The output encoding.
		    - `error_handler`: The error handler for stderr output encoding.
	**/
	@:native("__init__")
	public function ___init__(source:Dynamic, report_level:Dynamic, halt_level:Dynamic, ?stream:Dynamic, ?debug:Dynamic, ?encoding:Dynamic, ?error_handler:Dynamic):Dynamic;
	/**
		:Parameters:
		    - `source`: The path to or description of the source data.
		    - `report_level`: The level at or above which warning output will
		      be sent to `stream`.
		    - `halt_level`: The level at or above which `SystemMessage`
		      exceptions will be raised, halting execution.
		    - `debug`: Show debug (level=0) system messages?
		    - `stream`: Where warning output is sent.  Can be file-like (has a
		      ``.write`` method), a string (file name, opened for writing),
		      '' (empty string) or `False` (for discarding all stream messages)
		      or `None` (implies `sys.stderr`; default).
		    - `encoding`: The output encoding.
		    - `error_handler`: The error handler for stderr output encoding.
	**/
	public function new(source:Dynamic, report_level:Dynamic, halt_level:Dynamic, ?stream:Dynamic, ?debug:Dynamic, ?encoding:Dynamic, ?error_handler:Dynamic):Void;
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
		The `observer` parameter is a function or bound method which takes one
		argument, a `nodes.system_message` instance.
	**/
	public function attach_observer(observer:Dynamic):Dynamic;
	/**
		Level-0, "DEBUG": an internal reporting issue. Typically, there is no
		effect on the processing. Level-0 system messages are handled
		separately from the others.
	**/
	public function debug(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function detach_observer(observer:Dynamic):Dynamic;
	/**
		Level-3, "ERROR": an error that should be addressed. If ignored, the
		output will contain errors.
	**/
	public function error(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Level-1, "INFO": a minor issue that can be ignored. Typically there is
		no effect on processing, and level-1 system messages are not reported.
	**/
	public function info(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var levels : Dynamic;
	public function notify_observers(message:Dynamic):Dynamic;
	public function set_conditions(category:Dynamic, report_level:Dynamic, halt_level:Dynamic, ?stream:Dynamic, ?debug:Dynamic):Dynamic;
	/**
		Level-4, "SEVERE": a severe error that must be addressed. If ignored,
		the output will contain severe errors. Typically level-4 system
		messages are turned into exceptions which halt processing.
	**/
	public function severe(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a system_message object.
		
		Raise an exception or generate a warning if appropriate.
	**/
	public function system_message(level:Dynamic, message:Dynamic, ?children:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Level-2, "WARNING": an issue that should be addressed. If ignored,
		there may be unpredictable problems with the output.
	**/
	public function warning(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}