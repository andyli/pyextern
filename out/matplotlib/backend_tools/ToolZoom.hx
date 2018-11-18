/* This file is generated, do not edit! */
package matplotlib.backend_tools;
@:pythonImport("matplotlib.backend_tools", "ToolZoom") extern class ToolZoom {
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
	public function ___init__(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>):Void;
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
	public function _cancel_action():Dynamic;
	/**
		the drag callback in zoom mode
	**/
	public function _mouse_move(event:Dynamic):Dynamic;
	/**
		the _press mouse button in zoom to rect mode callback
	**/
	public function _press(event:Dynamic):Dynamic;
	/**
		the release mouse button callback in zoom to rect mode
	**/
	public function _release(event:Dynamic):Dynamic;
	public function _switch_off_zoom_mode(event:Dynamic):Dynamic;
	public function _switch_on_zoom_mode(event:Dynamic):Dynamic;
	public var canvas : Dynamic;
	static public var cursor : Dynamic;
	static public var default_keymap : Dynamic;
	static public var default_toggled : Dynamic;
	static public var description : Dynamic;
	/**
		Destroy the tool
		
		This method is called when the tool is removed by
		`matplotlib.backend_managers.ToolManager.remove_tool`
	**/
	public function destroy():Dynamic;
	/**
		Release the canvas and disconnect press/release events
	**/
	public function disable(event:Dynamic):Dynamic;
	/**
		Connect press/release events and lock the canvas
	**/
	public function enable(event:Dynamic):Dynamic;
	public var figure : Dynamic;
	static public var image : Dynamic;
	/**
		Tool Id
	**/
	public var name : Dynamic;
	static public var radio_group : Dynamic;
	public function scroll_zoom(event:Dynamic):Dynamic;
	/**
		Assign a figure to the tool
		
		Parameters
		----------
		figure: `Figure`
	**/
	public function set_figure(figure:Dynamic):Dynamic;
	/**
		State of the toggled tool
	**/
	public var toggled : Dynamic;
	public var toolmanager : Dynamic;
	/**
		Calls `enable` or `disable` based on `toggled` value
	**/
	public function trigger(sender:Dynamic, event:Dynamic, ?data:Dynamic):Dynamic;
}