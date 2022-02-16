/* This file is generated, do not edit! */
package matplotlib.backend_tools;
@:pythonImport("matplotlib.backend_tools", "ToolBack") extern class ToolBack {
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
		Return a placeholder object with a single `canvas` attribute.
		
		This is useful to reuse the implementations of tools already provided
		by the classic Toolbars.
	**/
	public function _make_classic_style_pseudo_toolbar():Dynamic;
	static public var _on_trigger : Dynamic;
	/**
		The canvas of the figure affected by this tool, or None.
	**/
	public var canvas : Dynamic;
	static public var default_keymap : Dynamic;
	static public var description : Dynamic;
	/**
		Destroy the tool.
		
		This method is called by `.ToolManager.remove_tool`.
	**/
	public function destroy():Dynamic;
	/**
		The Figure affected by this tool, or None.
	**/
	public var figure : Dynamic;
	static public var image : Dynamic;
	/**
		The tool id (str, must be unique among tools of a tool manager).
	**/
	public var name : Dynamic;
	public function set_figure(figure:Dynamic):Dynamic;
	/**
		The `.ToolManager` that controls this tool.
	**/
	public var toolmanager : Dynamic;
	/**
		Called when this tool gets used.
		
		This method is called by `.ToolManager.trigger_tool`.
		
		Parameters
		----------
		event : `.Event`
		    The canvas event that caused this tool to be called.
		sender : object
		    Object that requested the tool to be triggered.
		data : object
		    Extra data.
	**/
	public function trigger(sender:Dynamic, event:Dynamic, ?data:Dynamic):Dynamic;
}