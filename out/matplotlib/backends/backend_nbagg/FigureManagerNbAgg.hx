/* This file is generated, do not edit! */
package matplotlib.backends.backend_nbagg;
@:pythonImport("matplotlib.backends.backend_nbagg", "FigureManagerNbAgg") extern class FigureManagerNbAgg {
	/**
		Base class for the navigation cursor, version 2
		
		backends must implement a canvas that handles connections for
		'button_press_event' and 'button_release_event'.  See
		:meth:`FigureCanvasBase.mpl_connect` for more information
		
		
		They must also define
		
		  :meth:`save_figure`
		     save the current figure
		
		  :meth:`set_cursor`
		     if you want the pointer icon to change
		
		  :meth:`_init_toolbar`
		     create your toolbar widget
		
		  :meth:`draw_rubberband` (optional)
		     draw the zoom to rect "rubberband" rectangle
		
		  :meth:`press`  (optional)
		     whenever a mouse button is pressed, you'll be notified with
		     the event
		
		  :meth:`release` (optional)
		     whenever a mouse button is released, you'll be notified with
		     the event
		
		  :meth:`dynamic_update` (optional)
		     dynamically update the window while navigating
		
		  :meth:`set_message` (optional)
		     display message
		
		  :meth:`set_history_buttons` (optional)
		     you can change the history back / forward buttons to
		     indicate disabled / enabled state.
		
		That's it, we'll do the rest!
	**/
	static public function ToolbarCls(canvas:Dynamic):Dynamic;
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
	public function ___init__(canvas:Dynamic, num:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	public function _create_comm():Dynamic;
	public function _get_toolbar(canvas:Dynamic):Dynamic;
	public function _send_event(event_type:Dynamic, kwargs:Dynamic):Dynamic;
	public function add_web_socket(web_socket:Dynamic):Dynamic;
	/**
		Clear up any closed Comms.
	**/
	public function clearup_closed():Dynamic;
	public var connected : Dynamic;
	public function destroy():Dynamic;
	public function display_js():Dynamic;
	public function full_screen_toggle():Dynamic;
	static public function get_javascript(?stream:Dynamic):Dynamic;
	static public function get_static_file_path():Dynamic;
	/**
		Get the title text of the window containing the figure.
		Return None for non-GUI backends (e.g., a PS backend).
	**/
	public function get_window_title():Dynamic;
	public function handle_json(content:Dynamic):Dynamic;
	/**
		Implement the default mpl key bindings defined at
		:ref:`key-event-handling`
	**/
	public function key_press(event:Dynamic):Dynamic;
	public function refresh_all():Dynamic;
	public function remove_web_socket(web_socket:Dynamic):Dynamic;
	/**
		A special method to re-show the figure in the notebook.
	**/
	public function reshow():Dynamic;
	/**
		"For gui backends, resize the window (in pixels).
	**/
	public function resize(w:Dynamic, h:Dynamic):Dynamic;
	/**
		Set the title text of the window containing the figure.  Note that
		this has no effect for non-GUI backends (e.g., a PS backend).
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		For GUI backends, show the figure window and redraw.
		For non-GUI backends, raise an exception to be caught
		by :meth:`~matplotlib.figure.Figure.show`, for an
		optional warning.
	**/
	public function show():Dynamic;
	/**
		Display message in a popup -- GUI only
	**/
	public function show_popup(msg:Dynamic):Dynamic;
}