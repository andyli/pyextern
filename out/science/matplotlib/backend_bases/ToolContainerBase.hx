/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "ToolContainerBase") extern class ToolContainerBase {
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
	public function ___init__(toolmanager:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(toolmanager:Dynamic):Void;
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
		Find the image based on its name.
	**/
	public function _get_image_filename(image:Dynamic):Dynamic;
	static public var _icon_extension : Dynamic;
	/**
		Capture the 'tool_trigger_[name]'
		
		This only gets used for toggled tools.
	**/
	public function _tool_toggled_cbk(event:Dynamic):Dynamic;
	/**
		Add a tool to this container.
		
		Parameters
		----------
		tool : tool_like
		    The tool to add, see `.ToolManager.get_tool`.
		group : str
		    The name of the group to add this tool to.
		position : int, default: -1
		    The position within the group to place this tool.
	**/
	public function add_tool(tool:Dynamic, group:Dynamic, ?position:Dynamic):Dynamic;
	/**
		Add a toolitem to the container.
		
		This method must be implemented per backend.
		
		The callback associated with the button click event,
		must be *exactly* ``self.trigger_tool(name)``.
		
		Parameters
		----------
		name : str
		    Name of the tool to add, this gets used as the tool's ID and as the
		    default label of the buttons.
		group : str
		    Name of the group that this tool belongs to.
		position : int
		    Position of the tool within its group, if -1 it goes at the end.
		image : str
		    Filename of the image for the button or `None`.
		description : str
		    Description of the tool, used for the tooltips.
		toggle : bool
		    * `True` : The button is a toggle (change the pressed/unpressed
		      state between consecutive clicks).
		    * `False` : The button is a normal button (returns to unpressed
		      state after release).
	**/
	public function add_toolitem(name:Dynamic, group:Dynamic, position:Dynamic, image:Dynamic, description:Dynamic, toggle:Dynamic):Dynamic;
	/**
		Remove a toolitem from the `ToolContainer`.
		
		This method must get implemented per backend.
		
		Called when `.ToolManager` emits a `tool_removed_event`.
		
		Parameters
		----------
		name : str
		    Name of the tool to remove.
	**/
	public function remove_toolitem(name:Dynamic):Dynamic;
	/**
		Display a message on the toolbar.
		
		Parameters
		----------
		s : str
		    Message text.
	**/
	public function set_message(s:Dynamic):Dynamic;
	/**
		Toggle the toolitem without firing event.
		
		Parameters
		----------
		name : str
		    Id of the tool to toggle.
		toggled : bool
		    Whether to set this tool as toggled or not.
	**/
	public function toggle_toolitem(name:Dynamic, toggled:Dynamic):Dynamic;
	/**
		Trigger the tool.
		
		Parameters
		----------
		name : str
		    Name (id) of the tool triggered from within the container.
	**/
	public function trigger_tool(name:Dynamic):Dynamic;
}