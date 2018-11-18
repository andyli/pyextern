/* This file is generated, do not edit! */
package matplotlib.backends._backend_tk;
@:pythonImport("matplotlib.backends._backend_tk", "FigureCanvasTk") extern class FigureCanvasTk {
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
	public function ___init__(figure:Dynamic, ?master:Dynamic, ?resize_callback:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(figure:Dynamic, ?master:Dynamic, ?resize_callback:Dynamic):Void;
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
	public function _get_key(event:Dynamic):Dynamic;
	/**
		Return a canvas suitable for saving figures to a specified file format.
		
		If necessary, this function will switch to a registered backend that
		supports the format.
	**/
	public function _get_output_canvas(fmt:Dynamic):Dynamic;
	public function _idle_draw_cntx():Dynamic;
	static public var _keycode_lookup : Dynamic;
	/**
		Figure out if we are inside the canvas or not and update the
		canvas enter/leave events
	**/
	public function _update_pointer_position(?guiEvent:Dynamic):Dynamic;
	/**
		Blit the canvas in bbox (default entire canvas).
	**/
	public function blit(?bbox:Dynamic):Dynamic;
	public function button_dblclick_event(event:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button press.  x,y are the canvas coords: 0,0 is lower, left.
		button and key are as defined in :class:`MouseEvent`.
		
		This method will be call all functions connected to the
		'button_press_event' with a :class:`MouseEvent` instance.
	**/
	public function button_press_event(event:Dynamic, ?dblclick:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button release.
		
		This method will call all functions connected to the
		'button_release_event' with a :class:`MouseEvent` instance.
		
		Parameters
		----------
		x : scalar
		    the canvas coordinates where 0=left
		
		y : scalar
		    the canvas coordinates where 0=bottom
		
		guiEvent
		    the native UI event that generated the mpl event
	**/
	public function button_release_event(event:Dynamic):Dynamic;
	/**
		Pass a `CloseEvent` to all functions connected to ``close_event``.
		        
	**/
	public function close_event(?guiEvent:Dynamic):Dynamic;
	/**
		Render the :class:`~matplotlib.figure.Figure`.
	**/
	public function draw(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a cursor in the event.axes if inaxes is not None.  Use
		native GUI drawing for efficiency if possible
	**/
	public function draw_cursor(event:Dynamic):Dynamic;
	/**
		Pass a `DrawEvent` to all functions connected to ``draw_event``.
	**/
	public function draw_event(renderer:Dynamic):Dynamic;
	/**
		update drawing area only if idle
	**/
	public function draw_idle():Dynamic;
	/**
		Backend derived classes should call this function when entering
		canvas
		
		Parameters
		----------
		guiEvent
		    the native UI event that generated the mpl event
		xy : (float, float)
		    the coordinate location of the pointer when the canvas is
		    entered
	**/
	public function enter_notify_event(event:Dynamic):Dynamic;
	static public var events : Dynamic;
	static public var filetypes : Dynamic;
	static public var fixed_dpi : Dynamic;
	/**
		Flush the GUI events for the figure.
		
		Interactive backends need to reimplement this method.
	**/
	public function flush_events():Dynamic;
	/**
		Return a string, which includes extension, suitable for use as
		a default filename.
	**/
	public function get_default_filename():Dynamic;
	/**
		Get the default savefig file format as specified in rcParam
		``savefig.format``. Returned string excludes period. Overridden
		in backends that only support a single file type.
	**/
	static public function get_default_filetype():Dynamic;
	/**
		Return dict of savefig file formats supported by this backend
	**/
	static public function get_supported_filetypes():Dynamic;
	/**
		Return a dict of savefig file formats supported by this backend,
		where the keys are a file type name, such as 'Joint Photographic
		Experts Group', and the values are a list of filename extensions used
		for that filetype, such as ['jpg', 'jpeg'].
	**/
	static public function get_supported_filetypes_grouped():Dynamic;
	/**
		returns the Tk widget used to implement FigureCanvasTkAgg.
		Although the initial implementation uses a Tk canvas,  this routine
		is intended to hide that fact.
	**/
	public function get_tk_widget():Dynamic;
	/**
		Return the figure width and height in points or pixels
		(depending on the backend), truncated to integers
	**/
	public function get_width_height():Dynamic;
	/**
		Get the title text of the window containing the figure.
		Return None if there is no window (e.g., a PS backend).
	**/
	public function get_window_title():Dynamic;
	/**
		Set the child axes which are currently grabbing the mouse events.
		Usually called by the widgets themselves.
		It is an error to call this if the mouse is already grabbed by
		another axes.
	**/
	public function grab_mouse(ax:Dynamic):Dynamic;
	/**
		Returns whether the renderer is in the process of saving
		to a file, rather than rendering for an on-screen buffer.
	**/
	public function is_saving():Dynamic;
	public function key_press(event:Dynamic):Dynamic;
	/**
		Pass a `KeyEvent` to all functions connected to ``key_press_event``.
		        
	**/
	public function key_press_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	public function key_release(event:Dynamic):Dynamic;
	/**
		Pass a `KeyEvent` to all functions connected to ``key_release_event``.
	**/
	public function key_release_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	static public var keyvald : Dynamic;
	/**
		Backend derived classes should call this function when leaving
		canvas
		
		Parameters
		----------
		guiEvent
		    the native UI event that generated the mpl event
	**/
	public function leave_notify_event(?guiEvent:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any
		motion-notify-event.
		
		This method will call all functions connected to the
		'motion_notify_event' with a :class:`MouseEvent` instance.
		
		Parameters
		----------
		x : scalar
		    the canvas coordinates where 0=left
		
		y : scalar
		    the canvas coordinates where 0=bottom
		
		guiEvent
		    the native UI event that generated the mpl event
	**/
	public function motion_notify_event(event:Dynamic):Dynamic;
	/**
		Connect event with string *s* to *func*.  The signature of *func* is::
		
		  def func(event)
		
		where event is a :class:`matplotlib.backend_bases.Event`.  The
		following events are recognized
		
		- 'button_press_event'
		- 'button_release_event'
		- 'draw_event'
		- 'key_press_event'
		- 'key_release_event'
		- 'motion_notify_event'
		- 'pick_event'
		- 'resize_event'
		- 'scroll_event'
		- 'figure_enter_event',
		- 'figure_leave_event',
		- 'axes_enter_event',
		- 'axes_leave_event'
		- 'close_event'
		
		For the location events (button and key press/release), if the
		mouse is over the axes, the variable ``event.inaxes`` will be
		set to the :class:`~matplotlib.axes.Axes` the event occurs is
		over, and additionally, the variables ``event.xdata`` and
		``event.ydata`` will be defined.  This is the mouse location
		in data coords.  See
		:class:`~matplotlib.backend_bases.KeyEvent` and
		:class:`~matplotlib.backend_bases.MouseEvent` for more info.
		
		Return value is a connection id that can be used with
		:meth:`~matplotlib.backend_bases.Event.mpl_disconnect`.
		
		Examples
		--------
		Usage::
		
		    def on_press(event):
		        print('you pressed', event.button, event.xdata, event.ydata)
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
	**/
	public function mpl_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect callback id cid
		
		Examples
		--------
		Usage::
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
		    #...later
		    canvas.mpl_disconnect(cid)
	**/
	public function mpl_disconnect(cid:Dynamic):Dynamic;
	/**
		Creates a new backend-specific subclass of :class:`backend_bases.Timer`.
		This is useful for getting periodic events through the backend's native
		event loop. Implemented only for backends with GUIs.
		
		Other Parameters
		----------------
		interval : scalar
		    Timer interval in milliseconds
		callbacks : list
		    Sequence of (func, args, kwargs) where ``func(*args, **kwargs)``
		    will be executed by the timer every *interval*.
	**/
	public function new_timer(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		.. deprecated:: 2.2
		    The onRemove function was deprecated in Matplotlib 2.2 and will be removed in 3.1.
		
		Mouse event processor which removes the top artist
		under the cursor.  Connect this to the 'mouse_press_event'
		using::
		
		    canvas.mpl_connect('mouse_press_event',canvas.onRemove)
	**/
	public function onRemove(ev:Dynamic):Dynamic;
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		This method will be called by artists who are picked and will
		fire off :class:`PickEvent` callbacks registered listeners
	**/
	public function pick_event(mouseevent:Dynamic, artist:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Render the figure to hardcopy. Set the figure patch face and edge
		colors.  This is useful because some of the GUIs have a gray figure
		face color background and you'll probably want to override this on
		hardcopy.
		
		Parameters
		----------
		filename
		    can also be a file object on image backends
		
		orientation : {'landscape', 'portrait'}, optional
		    only currently applies to PostScript printing.
		
		dpi : scalar, optional
		    the dots per inch to save the figure in; if None, use savefig.dpi
		
		facecolor : color spec or None, optional
		    the facecolor of the figure; if None, defaults to savefig.facecolor
		
		edgecolor : color spec or None, optional
		    the edgecolor of the figure; if None, defaults to savefig.edgecolor
		
		format : str, optional
		    when set, forcibly set the file format to save to
		
		bbox_inches : str or `~matplotlib.transforms.Bbox`, optional
		    Bbox in inches. Only the given portion of the figure is
		    saved. If 'tight', try to figure out the tight bbox of
		    the figure. If None, use savefig.bbox
		
		pad_inches : scalar, optional
		    Amount of padding around the figure when bbox_inches is
		    'tight'. If None, use savefig.pad_inches
		
		bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
	**/
	public function print_figure(filename:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?orientation:Dynamic, ?format:Dynamic, ?bbox_inches:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Release the mouse grab held by the axes, ax.
		Usually called by the widgets.
		It is ok to call this even if you ax doesn't have the mouse
		grab currently.
	**/
	public function release_mouse(ax:Dynamic):Dynamic;
	/**
		Set the canvas size in pixels.
	**/
	public function resize(event:Dynamic):Dynamic;
	/**
		Pass a `ResizeEvent` to all functions connected to ``resize_event``.
		        
	**/
	public function resize_event():Dynamic;
	/**
		Backend derived classes should call this function on any
		scroll wheel event.  x,y are the canvas coords: 0,0 is lower,
		left.  button and key are as defined in MouseEvent.
		
		This method will be call all functions connected to the
		'scroll_event' with a :class:`MouseEvent` instance.
	**/
	public function scroll_event(event:Dynamic):Dynamic;
	/**
		MouseWheel event processor
	**/
	public function scroll_event_windows(event:Dynamic):Dynamic;
	/**
		Set the title text of the window containing the figure.  Note that
		this has no effect if there is no window (e.g., a PS backend).
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		Start a blocking event loop.
		
		Such an event loop is used by interactive functions, such as `ginput`
		and `waitforbuttonpress`, to wait for events.
		
		The event loop blocks until a callback function triggers
		`stop_event_loop`, or *timeout* is reached.
		
		If *timeout* is negative, never timeout.
		
		Only interactive backends need to reimplement this method and it relies
		on `flush_events` being properly implemented.
		
		Interactive backends should implement this in a more native way.
	**/
	public function start_event_loop(?timeout:Dynamic):Dynamic;
	/**
		Stop the current blocking event loop.
		
		Interactive backends need to reimplement this to match
		`start_event_loop`
	**/
	public function stop_event_loop():Dynamic;
	static public var supports_blit : Dynamic;
	/**
		Instantiate an instance of FigureCanvasClass
		
		This is used for backend switching, e.g., to instantiate a
		FigureCanvasPS from a FigureCanvasGTK.  Note, deep copying is
		not done, so any changes to one of the instances (e.g., setting
		figure size or line props), will be reflected in the other
	**/
	public function switch_backends(FigureCanvasClass:Dynamic):Dynamic;
}