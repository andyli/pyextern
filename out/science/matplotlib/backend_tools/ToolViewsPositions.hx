/* This file is generated, do not edit! */
package matplotlib.backend_tools;
@:pythonImport("matplotlib.backend_tools", "ToolViewsPositions") extern class ToolViewsPositions {
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
	/**
		Return the original and modified positions for the specified axes.
		
		Parameters
		----------
		ax : matplotlib.axes.Axes
		    The `.Axes` to get the positions for.
		
		Returns
		-------
		original_position, modified_position
		    A tuple of the original and modified positions.
	**/
	public function _axes_pos(ax:Dynamic):Dynamic;
	/**
		Return a placeholder object with a single `canvas` attribute.
		
		This is useful to reuse the implementations of tools already provided
		by the classic Toolbars.
	**/
	public function _make_classic_style_pseudo_toolbar():Dynamic;
	/**
		Add the current figure to the stack of views and positions.
	**/
	public function add_figure(figure:Dynamic):Dynamic;
	/**
		Back one step in the stack of views and positions.
	**/
	public function back():Dynamic;
	/**
		The canvas of the figure affected by this tool, or None.
	**/
	public var canvas : Dynamic;
	/**
		Reset the axes stack.
	**/
	public function clear(figure:Dynamic):Dynamic;
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
	/**
		Forward one step in the stack of views and positions.
	**/
	public function forward():Dynamic;
	/**
		Recall the first view and position from the stack.
	**/
	public function home():Dynamic;
	static public var image : Dynamic;
	/**
		The tool id (str, must be unique among tools of a tool manager).
	**/
	public var name : Dynamic;
	/**
		Push the current view limits and position onto their respective stacks.
	**/
	public function push_current(?figure:Dynamic):Dynamic;
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
	/**
		Make sure that ``self.home_views`` has an entry for all axes present
		in the figure.
	**/
	public function update_home_views(?figure:Dynamic):Dynamic;
	/**
		Update the view limits and position for each axes from the current
		stack position. If any axes are present in the figure that aren't in
		the current stack position, use the home view limits for those axes and
		don't update *any* positions.
	**/
	public function update_view():Dynamic;
}