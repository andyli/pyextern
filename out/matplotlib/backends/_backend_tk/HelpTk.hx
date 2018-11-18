/* This file is generated, do not edit! */
package matplotlib.backends._backend_tk;
@:pythonImport("matplotlib.backends._backend_tk", "HelpTk") extern class HelpTk {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(toolmanager:Dynamic, name:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(toolmanager:Dynamic, name:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	public function _format_tool_keymap(name:Dynamic):Dynamic;
	public function _get_help_entries():Dynamic;
	public function _get_help_html():Dynamic;
	public function _get_help_text():Dynamic;
	public var canvas : Dynamic;
	static public var default_keymap : Dynamic;
	static public var description : Dynamic;
	/**
		Destroy the tool
		
		This method is called when the tool is removed by
		`matplotlib.backend_managers.ToolManager.remove_tool`
	**/
	public function destroy():Dynamic;
	public var figure : Dynamic;
	/**
		Converts a shortcut string from the notation used in rc config to the
		standard notation for displaying shortcuts, e.g. 'ctrl+a' -> 'Ctrl+A'.
	**/
	static public function format_shortcut(key_sequence:Dynamic):Dynamic;
	static public var image : Dynamic;
	/**
		Tool Id
	**/
	public var name : Dynamic;
	/**
		Assign a figure to the tool
		
		Parameters
		----------
		figure: `Figure`
	**/
	public function set_figure(figure:Dynamic):Dynamic;
	public var toolmanager : Dynamic;
	/**
		Called when this tool gets used
		
		This method is called by
		`matplotlib.backend_managers.ToolManager.trigger_tool`
		
		Parameters
		----------
		event: `Event`
		    The Canvas event that caused this tool to be called
		sender: object
		    Object that requested the tool to be triggered
		data: object
		    Extra data
	**/
	public function trigger(?args:python.VarArgs<Dynamic>):Dynamic;
}