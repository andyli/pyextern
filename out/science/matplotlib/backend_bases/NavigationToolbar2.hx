/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases", "NavigationToolbar2") extern class NavigationToolbar2 {
	/**
		_PanInfo(button, axes, cid)
	**/
	static public function _PanInfo(button:Dynamic, axes:Dynamic, cid:Dynamic):Dynamic;
	/**
		_ZoomInfo(direction, start_xy, axes, cid, cbar)
	**/
	static public function _ZoomInfo(direction:Dynamic, start_xy:Dynamic, axes:Dynamic, cid:Dynamic, cbar:Dynamic):Dynamic;
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
	public function ___init__(canvas:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(canvas:Dynamic):Void;
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
	static public function _mouse_event_to_message(event:Dynamic):Dynamic;
	/**
		Update the cursor after a mouse move event or a tool (de)activation.
	**/
	public function _update_cursor(event:Dynamic):Dynamic;
	/**
		Update the viewlim and position from the view and position stack for
		each axes.
	**/
	public function _update_view():Dynamic;
	/**
		Set the cursor to a wait cursor when drawing the canvas.
		
		In order to avoid constantly changing the cursor when the canvas
		changes frequently, do nothing if this context was triggered during the
		last second.  (Optimally we'd prefer only setting the wait cursor if
		the *current* draw takes too long, but the current draw blocks the GUI
		thread).
	**/
	public function _wait_cursor_for_draw_cm():Dynamic;
	public function _zoom_pan_handler(event:Dynamic):Dynamic;
	/**
		Move back up the view lim stack.
		
		For convenience of being directly connected as a GUI callback, which
		often get passed additional parameters, this method accepts arbitrary
		parameters, but does not use them.
	**/
	public function back(?args:python.VarArgs<Dynamic>):Dynamic;
	public function configure_subplots(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Callback for dragging in pan/zoom mode.
	**/
	public function drag_pan(event:Dynamic):Dynamic;
	/**
		Callback for dragging in zoom mode.
	**/
	public function drag_zoom(event:Dynamic):Dynamic;
	/**
		Draw a rectangle rubberband to indicate zoom limits.
		
		Note that it is not guaranteed that ``x0 <= x1`` and ``y0 <= y1``.
	**/
	public function draw_rubberband(event:Dynamic, x0:Dynamic, y0:Dynamic, x1:Dynamic, y1:Dynamic):Dynamic;
	/**
		Move forward in the view lim stack.
		
		For convenience of being directly connected as a GUI callback, which
		often get passed additional parameters, this method accepts arbitrary
		parameters, but does not use them.
	**/
	public function forward(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Restore the original view.
		
		For convenience of being directly connected as a GUI callback, which
		often get passed additional parameters, this method accepts arbitrary
		parameters, but does not use them.
	**/
	public function home(?args:python.VarArgs<Dynamic>):Dynamic;
	public function mouse_move(event:Dynamic):Dynamic;
	/**
		Toggle the pan/zoom tool.
		
		Pan with left button, zoom with right.
	**/
	public function pan(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Callback for mouse button press in pan/zoom mode.
	**/
	public function press_pan(event:Dynamic):Dynamic;
	/**
		Callback for mouse button press in zoom to rect mode.
	**/
	public function press_zoom(event:Dynamic):Dynamic;
	/**
		Push the current view limits and position onto the stack.
	**/
	public function push_current():Dynamic;
	/**
		Callback for mouse button release in pan/zoom mode.
	**/
	public function release_pan(event:Dynamic):Dynamic;
	/**
		Callback for mouse button release in zoom to rect mode.
	**/
	public function release_zoom(event:Dynamic):Dynamic;
	/**
		Remove the rubberband.
	**/
	public function remove_rubberband():Dynamic;
	/**
		Save the current figure.
	**/
	public function save_figure(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] Set the current cursor to one of the :class:`Cursors` enums values.
		
		If required by the backend, this method should trigger an update in
		the backend event loop after the cursor is set, as this method may be
		called e.g. before a long-running task during which the GUI is not
		updated.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	public function set_cursor(cursor:Dynamic):Dynamic;
	/**
		Enable or disable the back/forward button.
	**/
	public function set_history_buttons():Dynamic;
	/**
		Display a message on toolbar or in status bar.
	**/
	public function set_message(s:Dynamic):Dynamic;
	static public var toolitems : Dynamic;
	/**
		Reset the axes stack.
	**/
	public function update():Dynamic;
	/**
		Toggle zoom to rect mode.
	**/
	public function zoom(?args:python.VarArgs<Dynamic>):Dynamic;
}