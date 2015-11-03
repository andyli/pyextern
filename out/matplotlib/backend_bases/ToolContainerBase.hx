/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "ToolContainerBase") extern class ToolContainerBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(toolmanager:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(toolmanager:Dynamic):Void;
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
		Find the image based on its name
	**/
	public function _get_image_filename(image:Dynamic):Dynamic;
	/**
		Captures the 'tool_removed_event' signal and removes the tool
	**/
	public function _remove_tool_cbk(event:Dynamic):Dynamic;
	/**
		Captures the 'tool_trigger_[name]'
		
		This only gets used for toggled tools
	**/
	public function _tool_toggled_cbk(event:Dynamic):Dynamic;
	/**
		Adds a tool to this container
		
		Parameters
		----------
		tool : tool_like
		    The tool to add, see `ToolManager.get_tool`.
		group : str
		    The name of the group to add this tool to.
		position : int (optional)
		    The position within the group to place this tool.  Defaults to end.
	**/
	public function add_tool(tool:Dynamic, group:Dynamic, ?position:Dynamic):Dynamic;
	/**
		Add a toolitem to the container
		
		This method must get implemented per backend
		
		The callback associated with the button click event,
		must be **EXACTLY** `self.trigger_tool(name)`
		
		Parameters
		----------
		name : string
		    Name of the tool to add, this gets used as the tool's ID and as the
		    default label of the buttons
		group : String
		    Name of the group that this tool belongs to
		position : Int
		    Position of the tool within its group, if -1 it goes at the End
		image_file : String
		    Filename of the image for the button or `None`
		description : String
		    Description of the tool, used for the tooltips
		toggle : Bool
		    * `True` : The button is a toggle (change the pressed/unpressed
		      state between consecutive clicks)
		    * `False` : The button is a normal button (returns to unpressed
		      state after release)
	**/
	public function add_toolitem(name:Dynamic, group:Dynamic, position:Dynamic, image:Dynamic, description:Dynamic, toggle:Dynamic):Dynamic;
	/**
		Remove a toolitem from the `ToolContainer`
		
		This method must get implemented per backend
		
		Called when `ToolManager` emits a `tool_removed_event`
		
		Parameters
		----------
		name : string
		    Name of the tool to remove
	**/
	public function remove_toolitem(name:Dynamic):Dynamic;
	/**
		Toggle the toolitem without firing event
		
		Parameters
		----------
		name : String
		    Id of the tool to toggle
		toggled : bool
		    Whether to set this tool as toggled or not.
	**/
	public function toggle_toolitem(name:Dynamic, toggled:Dynamic):Dynamic;
	/**
		Trigger the tool
		
		Parameters
		----------
		name : String
		    Name(id) of the tool triggered from within the container
	**/
	public function trigger_tool(name:Dynamic):Dynamic;
}