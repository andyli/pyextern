/* This file is generated, do not edit! */
package matplotlib.backends.backend_agg;
@:pythonImport("matplotlib.backends.backend_agg", "FigureCanvasAgg") extern class FigureCanvasAgg {
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
	public function ___init__(figure:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Return a canvas that is suitable for saving figures to a specified
		file format. If necessary, this function will switch to a registered
		backend that supports the format.
	**/
	public function _get_output_canvas(format:Dynamic):Dynamic;
	/**
		blit the canvas in bbox (default entire canvas)
	**/
	public function blit(?bbox:Dynamic):Dynamic;
	public function buffer_rgba():Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button press.  x,y are the canvas coords: 0,0 is lower, left.
		button and key are as defined in :class:`MouseEvent`.
		
		This method will be call all functions connected to the
		'button_press_event' with a :class:`MouseEvent` instance.
	**/
	public function button_press_event(x:Dynamic, y:Dynamic, button:Dynamic, ?dblclick:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any mouse
		button release.
		
		*x*
		    the canvas coordinates where 0=left
		
		*y*
		    the canvas coordinates where 0=bottom
		
		*guiEvent*
		    the native UI event that generated the mpl event
		
		
		This method will be call all functions connected to the
		'button_release_event' with a :class:`MouseEvent` instance.
	**/
	public function button_release_event(x:Dynamic, y:Dynamic, button:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		This method will be called by all functions connected to the
		'close_event' with a :class:`CloseEvent`
	**/
	public function close_event(?guiEvent:Dynamic):Dynamic;
	public function copy_from_bbox(bbox:Dynamic):Dynamic;
	/**
		Draw the figure using the renderer
	**/
	public function draw():Dynamic;
	/**
		Draw a cursor in the event.axes if inaxes is not None.  Use
		native GUI drawing for efficiency if possible
	**/
	public function draw_cursor(event:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'draw_event' with a :class:`DrawEvent`
	**/
	public function draw_event(renderer:Dynamic):Dynamic;
	/**
		:meth:`draw` only if idle; defaults to draw but backends can overrride
	**/
	public function draw_idle(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function when entering
		canvas
		
		*guiEvent*
		    the native UI event that generated the mpl event
		*xy*
		    the coordinate location of the pointer when the canvas is
		    entered
	**/
	public function enter_notify_event(?guiEvent:Dynamic, ?xy:Dynamic):Dynamic;
	static public var events : Dynamic;
	static public var filetypes : Dynamic;
	static public var fixed_dpi : Dynamic;
	/**
		Flush the GUI events for the figure. Implemented only for
		backends with GUIs.
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
	public function get_renderer(?cleared:Dynamic):Dynamic;
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
		Called when GUI is idle.
	**/
	public function idle_event(?guiEvent:Dynamic):Dynamic;
	/**
		Returns `True` when the renderer is in the process of saving
		to a file, rather than rendering for an on-screen buffer.
	**/
	public function is_saving():Dynamic;
	/**
		This method will be call all functions connected to the
		'key_press_event' with a :class:`KeyEvent`
	**/
	public function key_press_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'key_release_event' with a :class:`KeyEvent`
	**/
	public function key_release_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function when leaving
		canvas
		
		*guiEvent*
		    the native UI event that generated the mpl event
	**/
	public function leave_notify_event(?guiEvent:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any
		motion-notify-event.
		
		*x*
		    the canvas coordinates where 0=left
		
		*y*
		    the canvas coordinates where 0=bottom
		
		*guiEvent*
		    the native UI event that generated the mpl event
		
		
		This method will be call all functions connected to the
		'motion_notify_event' with a :class:`MouseEvent` instance.
	**/
	public function motion_notify_event(x:Dynamic, y:Dynamic, ?guiEvent:Dynamic):Dynamic;
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
		
		Example usage::
		
		    def on_press(event):
		        print('you pressed', event.button, event.xdata, event.ydata)
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
	**/
	public function mpl_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect callback id cid
		
		Example usage::
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
		    #...later
		    canvas.mpl_disconnect(cid)
	**/
	public function mpl_disconnect(cid:Dynamic):Dynamic;
	/**
		Creates a new backend-specific subclass of
		:class:`backend_bases.Timer`. This is useful for getting periodic
		events through the backend's native event loop. Implemented only for
		backends with GUIs.
		
		optional arguments:
		
		*interval*
		  Timer interval in milliseconds
		*callbacks*
		  Sequence of (func, args, kwargs) where func(*args, **kwargs) will
		  be executed by the timer every *interval*.
	**/
	public function new_timer(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Mouse event processor which highlights the artists
		under the cursor.  Connect this to the 'motion_notify_event'
		using::
		
		    canvas.mpl_connect('motion_notify_event',canvas.onHilite)
	**/
	public function onHilite(ev:Dynamic):Dynamic;
	/**
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
	public function pick_event(mouseevent:Dynamic, artist:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Render the figure to hardcopy. Set the figure patch face and edge
		colors.  This is useful because some of the GUIs have a gray figure
		face color background and you'll probably want to override this on
		hardcopy.
		
		Arguments are:
		
		*filename*
		    can also be a file object on image backends
		
		*orientation*
		    only currently applies to PostScript printing.
		
		*dpi*
		    the dots per inch to save the figure in; if None, use savefig.dpi
		
		*facecolor*
		    the facecolor of the figure
		
		*edgecolor*
		    the edgecolor of the figure
		
		*orientation*
		    landscape' | 'portrait' (not supported on all backends)
		
		*format*
		    when set, forcibly set the file format to save to
		
		*bbox_inches*
		    Bbox in inches. Only the given portion of the figure is
		    saved. If 'tight', try to figure out the tight bbox of
		    the figure. If None, use savefig.bbox
		
		*pad_inches*
		    Amount of padding around the figure when bbox_inches is
		    'tight'. If None, use savefig.pad_inches
		
		*bbox_extra_artists*
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
	**/
	public function print_figure(filename:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?orientation:Dynamic, ?format:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Supported kwargs:
		
		*quality*: The image quality, on a scale from 1 (worst) to
		    95 (best). The default is 95, if not given in the
		    matplotlibrc file in the savefig.jpeg_quality parameter.
		    Values above 95 should be avoided; 100 completely
		    disables the JPEG quantization stage.
		
		*optimize*: If present, indicates that the encoder should
		    make an extra pass over the image in order to select
		    optimal encoder settings.
		
		*progressive*: If present, indicates that this image
		    should be stored as a progressive JPEG file.
	**/
	public function print_jpeg(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Supported kwargs:
		
		*quality*: The image quality, on a scale from 1 (worst) to
		    95 (best). The default is 95, if not given in the
		    matplotlibrc file in the savefig.jpeg_quality parameter.
		    Values above 95 should be avoided; 100 completely
		    disables the JPEG quantization stage.
		
		*optimize*: If present, indicates that the encoder should
		    make an extra pass over the image in order to select
		    optimal encoder settings.
		
		*progressive*: If present, indicates that this image
		    should be stored as a progressive JPEG file.
	**/
	public function print_jpg(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_png(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_raw(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_rgba(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_tif(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_tiff(filename_or_obj:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	public function print_to_buffer():Dynamic;
	/**
		Release the mouse grab held by the axes, ax.
		Usually called by the widgets.
		It is ok to call this even if you ax doesn't have the mouse
		grab currently.
	**/
	public function release_mouse(ax:Dynamic):Dynamic;
	/**
		set the canvas size in pixels
	**/
	public function resize(w:Dynamic, h:Dynamic):Dynamic;
	/**
		This method will be call all functions connected to the
		'resize_event' with a :class:`ResizeEvent`
	**/
	public function resize_event():Dynamic;
	public function restore_region(region:Dynamic, ?bbox:Dynamic, ?xy:Dynamic):Dynamic;
	/**
		Backend derived classes should call this function on any
		scroll wheel event.  x,y are the canvas coords: 0,0 is lower,
		left.  button and key are as defined in MouseEvent.
		
		This method will be call all functions connected to the
		'scroll_event' with a :class:`MouseEvent` instance.
	**/
	public function scroll_event(x:Dynamic, y:Dynamic, step:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Set the title text of the window containing the figure.  Note that
		this has no effect if there is no window (e.g., a PS backend).
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		Start an event loop.  This is used to start a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.  This should not be
		confused with the main GUI event loop, which is always running
		and has nothing to do with this.
		
		This is implemented only for backends with GUIs.
	**/
	public function start_event_loop(timeout:Dynamic):Dynamic;
	/**
		Start an event loop.  This is used to start a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.  This should not be
		confused with the main GUI event loop, which is always running
		and has nothing to do with this.
		
		This function provides default event loop functionality based
		on time.sleep that is meant to be used until event loop
		functions for each of the GUI backends can be written.  As
		such, it throws a deprecated warning.
		
		Call signature::
		
		    start_event_loop_default(self,timeout=0)
		
		This call blocks until a callback function triggers
		stop_event_loop() or *timeout* is reached.  If *timeout* is
		<=0, never timeout.
	**/
	public function start_event_loop_default(?timeout:Dynamic):Dynamic;
	/**
		Stop an event loop.  This is used to stop a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.
		
		This is implemented only for backends with GUIs.
	**/
	public function stop_event_loop():Dynamic;
	/**
		Stop an event loop.  This is used to stop a blocking event
		loop so that interactive functions, such as ginput and
		waitforbuttonpress, can wait for events.
		
		Call signature::
		
		  stop_event_loop_default(self)
	**/
	public function stop_event_loop_default():Dynamic;
	static public var supports_blit : Dynamic;
	/**
		Instantiate an instance of FigureCanvasClass
		
		This is used for backend switching, e.g., to instantiate a
		FigureCanvasPS from a FigureCanvasGTK.  Note, deep copying is
		not done, so any changes to one of the instances (e.g., setting
		figure size or line props), will be reflected in the other
	**/
	public function switch_backends(FigureCanvasClass:Dynamic):Dynamic;
	public function tostring_argb():Dynamic;
	public function tostring_rgb():Dynamic;
}