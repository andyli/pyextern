/* This file is generated, do not edit! */
package matplotlib.backend_managers;
@:pythonImport("matplotlib.backend_managers", "ToolManager") extern class ToolManager {
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
	public function ___init__(?figure:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?figure:Dynamic):Void;
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
	public function _get_cls_to_instantiate(callback_class:Dynamic):Dynamic;
	/**
		Toggle tools, need to untoggle prior to using other Toggle tool.
		Called from trigger_tool.
		
		Parameters
		----------
		tool : `.ToolBase`
		sender : object
		    Object that wishes to trigger the tool.
		canvasevent : Event
		    Original Canvas event or None.
		data : object
		    Extra data to pass to the tool when triggering.
	**/
	public function _handle_toggle(tool:Dynamic, sender:Dynamic, canvasevent:Dynamic, data:Dynamic):Dynamic;
	public function _key_press(event:Dynamic):Dynamic;
	public function _remove_keys(name:Dynamic):Dynamic;
	public function _tool_added_event(tool:Dynamic):Dynamic;
	/**
		Actually trigger a tool.
	**/
	public function _trigger_tool(name:Dynamic, ?sender:Dynamic, ?canvasevent:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Currently toggled tools.
	**/
	public var active_toggle : Dynamic;
	/**
		Add *tool* to `ToolManager`.
		
		If successful, adds a new event ``tool_trigger_{name}`` where
		``{name}`` is the *name* of the tool; the event is fired every time the
		tool is triggered.
		
		Parameters
		----------
		name : str
		    Name of the tool, treated as the ID, has to be unique.
		tool : class_like, i.e. str or type
		    Reference to find the class of the Tool to added.
		
		Notes
		-----
		args and kwargs get passed directly to the tools constructor.
		
		See Also
		--------
		matplotlib.backend_tools.ToolBase : The base class for tools.
	**/
	public function add_tool(name:Dynamic, tool:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Canvas managed by FigureManager.
	**/
	public var canvas : Dynamic;
	/**
		Figure that holds the canvas.
	**/
	public var figure : Dynamic;
	/**
		Return the tool object with the given name.
		
		For convenience, this passes tool objects through.
		
		Parameters
		----------
		name : str or `.ToolBase`
		    Name of the tool, or the tool itself.
		warn : bool, default: True
		    Whether a warning should be emitted it no tool with the given name
		    exists.
		
		Returns
		-------
		`.ToolBase` or None
		    The tool or None if no tool with the given name exists.
	**/
	public function get_tool(name:Dynamic, ?warn:Dynamic):Dynamic;
	/**
		Return the keymap associated with the specified tool.
		
		Parameters
		----------
		name : str
		    Name of the Tool.
		
		Returns
		-------
		list of str
		    List of keys associated with the tool.
	**/
	public function get_tool_keymap(name:Dynamic):Dynamic;
	/**
		Emit a `ToolManagerMessageEvent`.
	**/
	public function message_event(message:Dynamic, ?sender:Dynamic):Dynamic;
	/**
		Remove tool named *name*.
		
		Parameters
		----------
		name : str
		    Name of the tool.
	**/
	public function remove_tool(name:Dynamic):Dynamic;
	/**
		Bind the given figure to the tools.
		
		Parameters
		----------
		figure : `.Figure`
		update_tools : bool, default: True
		    Force tools to update figure.
	**/
	public function set_figure(figure:Dynamic, ?update_tools:Dynamic):Dynamic;
	/**
		Connect event with string *s* to *func*.
		
		Parameters
		----------
		s : str
		    The name of the event. The following events are recognized:
		
		    - 'tool_message_event'
		    - 'tool_removed_event'
		    - 'tool_added_event'
		
		    For every tool added a new event is created
		
		    - 'tool_trigger_TOOLNAME', where TOOLNAME is the id of the tool.
		
		func : callable
		    Callback function for the toolmanager event with signature::
		
		        def func(event: ToolEvent) -> Any
		
		Returns
		-------
		cid
		    The callback id for the connection. This can be used in
		    `.toolmanager_disconnect`.
	**/
	public function toolmanager_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect callback id *cid*.
		
		Example usage::
		
		    cid = toolmanager.toolmanager_connect('tool_trigger_zoom', onpress)
		    #...later
		    toolmanager.toolmanager_disconnect(cid)
	**/
	public function toolmanager_disconnect(cid:Dynamic):Dynamic;
	/**
		A dict mapping tool name -> controlled tool.
	**/
	public var tools : Dynamic;
	/**
		Trigger a tool and emit the ``tool_trigger_{name}`` event.
		
		Parameters
		----------
		name : str
		    Name of the tool.
		sender : object
		    Object that wishes to trigger the tool.
		canvasevent : Event
		    Original Canvas event or None.
		data : object
		    Extra data to pass to the tool when triggering.
	**/
	public function trigger_tool(name:Dynamic, ?sender:Dynamic, ?canvasevent:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Set the keymap to associate with the specified tool.
		
		Parameters
		----------
		name : str
		    Name of the Tool.
		key : str or list of str
		    Keys to associate with the tool.
	**/
	public function update_keymap(name:Dynamic, key:Dynamic):Dynamic;
}