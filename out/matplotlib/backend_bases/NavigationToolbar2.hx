/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "NavigationToolbar2") extern class NavigationToolbar2 {
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
	public function ___init__(canvas:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(canvas:Dynamic):Void;
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
		This is where you actually build the GUI widgets (called by
		__init__).  The icons ``home.xpm``, ``back.xpm``, ``forward.xpm``,
		``hand.xpm``, ``zoom_to_rect.xpm`` and ``filesave.xpm`` are standard
		across backends (there are ppm versions in CVS also).
		
		You just need to set the callbacks
		
		home         : self.home
		back         : self.back
		forward      : self.forward
		hand         : self.pan
		zoom_to_rect : self.zoom
		filesave     : self.save_figure
		
		You only need to define the last one - the others are in the base
		class implementation.
	**/
	public function _init_toolbar():Dynamic;
	public function _set_cursor(event:Dynamic):Dynamic;
	public function _switch_off_zoom_mode(event:Dynamic):Dynamic;
	public function _switch_on_zoom_mode(event:Dynamic):Dynamic;
	/**
		Update the viewlim and position from the view and
		position stack for each axes
	**/
	public function _update_view():Dynamic;
	/**
		move back up the view lim stack
	**/
	public function back(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		the drag callback in pan/zoom mode
	**/
	public function drag_pan(event:Dynamic):Dynamic;
	/**
		the drag callback in zoom mode
	**/
	public function drag_zoom(event:Dynamic):Dynamic;
	/**
		Redraw the canvases, update the locators
	**/
	public function draw():Dynamic;
	/**
		Draw a rectangle rubberband to indicate zoom limits
	**/
	public function draw_rubberband(event:Dynamic, x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	public function dynamic_update():Dynamic;
	/**
		Move forward in the view lim stack
	**/
	public function forward(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Restore the original view
	**/
	public function home(?args:python.VarArgs<Dynamic>):Dynamic;
	public function mouse_move(event:Dynamic):Dynamic;
	/**
		Activate the pan/zoom tool. pan with left button, zoom with right
	**/
	public function pan(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Called whenver a mouse button is pressed.
	**/
	public function press(event:Dynamic):Dynamic;
	/**
		the press mouse button in pan/zoom mode callback
	**/
	public function press_pan(event:Dynamic):Dynamic;
	/**
		the press mouse button in zoom to rect mode callback
	**/
	public function press_zoom(event:Dynamic):Dynamic;
	/**
		push the current view limits and position onto the stack
	**/
	public function push_current():Dynamic;
	/**
		this will be called whenever mouse button is released
	**/
	public function release(event:Dynamic):Dynamic;
	/**
		the release mouse button callback in pan/zoom mode
	**/
	public function release_pan(event:Dynamic):Dynamic;
	/**
		the release mouse button callback in zoom to rect mode
	**/
	public function release_zoom(event:Dynamic):Dynamic;
	/**
		Remove the rubberband
	**/
	public function remove_rubberband():Dynamic;
	/**
		Save the current figure
	**/
	public function save_figure(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set the current cursor to one of the :class:`Cursors`
		enums values
	**/
	public function set_cursor(cursor:Dynamic):Dynamic;
	/**
		Enable or disable back/forward button
	**/
	public function set_history_buttons():Dynamic;
	/**
		Display a message on toolbar or in status bar
	**/
	public function set_message(s:Dynamic):Dynamic;
	static public var toolitems : Dynamic;
	/**
		Reset the axes stack
	**/
	public function update():Dynamic;
	/**
		Activate zoom to rect mode
	**/
	public function zoom(?args:python.VarArgs<Dynamic>):Dynamic;
}