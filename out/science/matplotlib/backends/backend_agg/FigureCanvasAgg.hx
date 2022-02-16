/* This file is generated, do not edit! */
package matplotlib.backends.backend_agg;
@:pythonImport("matplotlib.backends.backend_agg", "FigureCanvasAgg") extern class FigureCanvasAgg {
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
	static public function _fix_ipython_backend2gui():Dynamic;
	/**
		Set the canvas in preparation for saving the figure.
		
		Parameters
		----------
		backend : str or None
		    If not None, switch the figure canvas to the ``FigureCanvas`` class
		    of the given backend.
		fmt : str
		    If *backend* is None, then determine a suitable canvas class for
		    saving to format *fmt* -- either the current canvas class, if it
		    supports *fmt*, or whatever `get_registered_canvas_class` returns;
		    switch the figure canvas to that canvas class.
	**/
	public function _get_output_canvas(backend:Dynamic, fmt:Dynamic):Dynamic;
	public function _idle_draw_cntx():Dynamic;
	/**
		Set the ratio of physical to logical pixels used for the canvas.
		
		Subclasses that support High DPI screens can set this property to
		indicate that said ratio is different. The canvas itself will be
		created at the physical size, while the client side will use the
		logical size. Thus the DPI of the Figure will change to be scaled by
		this ratio. Implementations that support High DPI screens should use
		physical pixels for events so that transforms back to Axes space are
		correct.
		
		By default, this is 1, meaning physical and logical pixels are the same
		size.
		
		Parameters
		----------
		ratio : float
		    The ratio of logical to physical pixels used for the canvas.
		
		Returns
		-------
		bool
		    Whether the ratio has changed. Backends may interpret this as a
		    signal to resize the window, repaint the canvas, or change any
		    other relevant properties.
	**/
	public function _set_device_pixel_ratio(ratio:Dynamic):Dynamic;
	/**
		A base class for providing timer events, useful for things animations.
		Backends need to implement a few specific methods in order to use their
		own timing mechanisms so that the timer events are integrated into their
		event loops.
		
		Subclasses must override the following methods:
		
		- ``_timer_start``: Backend-specific code for starting the timer.
		- ``_timer_stop``: Backend-specific code for stopping the timer.
		
		Subclasses may additionally override the following methods:
		
		- ``_timer_set_single_shot``: Code for setting the timer to single shot
		  operating mode, if supported by the timer object.  If not, the `Timer`
		  class itself will store the flag and the ``_on_timer`` method should be
		  overridden to support such behavior.
		
		- ``_timer_set_interval``: Code for setting the interval on the timer, if
		  there is a method for doing so on the timer object.
		
		- ``_on_timer``: The internal function that any timer object should call,
		  which will handle the task of running all callbacks that have been set.
	**/
	static public function _timer_cls(?interval:Dynamic, ?callbacks:Dynamic):Dynamic;
	/**
		Blit the canvas in bbox (default entire canvas).
	**/
	public function blit(?bbox:Dynamic):Dynamic;
	/**
		Get the image as a `memoryview` to the renderer's buffer.
		
		`draw` must be called at least once before this function will work and
		to update the renderer for any subsequent changes to the Figure.
	**/
	public function buffer_rgba():Dynamic;
	public var button_pick_id : Dynamic;
	/**
		Callback processing for mouse button press events.
		
		Backend derived classes should call this function on any mouse
		button press.  (*x*, *y*) are the canvas coords ((0, 0) is lower left).
		button and key are as defined in `MouseEvent`.
		
		This method will call all functions connected to the
		'button_press_event' with a `MouseEvent` instance.
	**/
	public function button_press_event(x:Dynamic, y:Dynamic, button:Dynamic, ?dblclick:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Callback processing for mouse button release events.
		
		Backend derived classes should call this function on any mouse
		button release.
		
		This method will call all functions connected to the
		'button_release_event' with a `MouseEvent` instance.
		
		Parameters
		----------
		x : float
		    The canvas coordinates where 0=left.
		y : float
		    The canvas coordinates where 0=bottom.
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function button_release_event(x:Dynamic, y:Dynamic, button:Dynamic, ?guiEvent:Dynamic):Dynamic;
	public var callbacks : Dynamic;
	/**
		Pass a `CloseEvent` to all functions connected to ``close_event``.
	**/
	public function close_event(?guiEvent:Dynamic):Dynamic;
	public function copy_from_bbox(bbox:Dynamic):Dynamic;
	/**
		The ratio of physical to logical pixels used for the canvas on screen.
		
		By default, this is 1, meaning physical and logical pixels are the same
		size. Subclasses that support High DPI screens may set this property to
		indicate that said ratio is different. All Matplotlib interaction,
		unless working directly with the canvas, remains in logical pixels.
	**/
	public var device_pixel_ratio : Dynamic;
	/**
		Render the `.Figure`.
		
		It is important that this method actually walk the artist tree
		even if not output is produced because this will trigger
		deferred work (like computing limits auto-limits and tick
		values) that users may want access to before saving to disk.
	**/
	public function draw():Dynamic;
	/**
		Pass a `DrawEvent` to all functions connected to ``draw_event``.
	**/
	public function draw_event(renderer:Dynamic):Dynamic;
	/**
		Request a widget redraw once control returns to the GUI event loop.
		
		Even if multiple calls to `draw_idle` occur before control returns
		to the GUI event loop, the figure will only be rendered once.
		
		Notes
		-----
		Backends may choose to override the method and implement their own
		strategy to prevent multiple renderings.
	**/
	public function draw_idle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callback processing for the mouse cursor entering the canvas.
		
		Backend derived classes should call this function when entering
		canvas.
		
		Parameters
		----------
		guiEvent
		    The native UI event that generated the Matplotlib event.
		xy : (float, float)
		    The coordinate location of the pointer when the canvas is entered.
	**/
	public function enter_notify_event(?guiEvent:Dynamic, ?xy:Dynamic):Dynamic;
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
		Return the default savefig file format as specified in
		:rc:`savefig.format`.
		
		The returned string does not include a period. This method is
		overridden in backends that only support a single file type.
	**/
	static public function get_default_filetype():Dynamic;
	public function get_renderer(?cleared:Dynamic):Dynamic;
	/**
		Return dict of savefig file formats supported by this backend.
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
		Return the figure width and height in integral points or pixels.
		
		When the figure is used on High DPI screens (and the backend supports
		it), the truncation to integers occurs after scaling by the device
		pixel ratio.
		
		Parameters
		----------
		physical : bool, default: False
		    Whether to return true physical pixels or logical pixels. Physical
		    pixels may be used by backends that support HiDPI, but still
		    configure the canvas using its actual size.
		
		Returns
		-------
		width, height : int
		    The size of the figure, in points or pixels, depending on the
		    backend.
	**/
	public function get_width_height(?physical:Dynamic):Int;
	/**
		[*Deprecated*] Return the title text of the window containing the figure, or None
		if there is no window (e.g., a PS backend).
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function get_window_title():Dynamic;
	/**
		Set the child `~.axes.Axes` which is grabbing the mouse events.
		
		Usually called by the widgets themselves. It is an error to call this
		if the mouse is already grabbed by another axes.
	**/
	public function grab_mouse(ax:Dynamic):Dynamic;
	/**
		Return the topmost visible `~.axes.Axes` containing the point *xy*.
		
		Parameters
		----------
		xy : (float, float)
		    (x, y) pixel positions from left/bottom of the canvas.
		
		Returns
		-------
		`~matplotlib.axes.Axes` or None
		    The topmost visible axes containing the point, or None if no axes.
	**/
	public function inaxes(xy:Dynamic):Dynamic;
	/**
		Return whether the renderer is in the process of saving
		to a file, rather than rendering for an on-screen buffer.
	**/
	public function is_saving():Dynamic;
	/**
		Pass a `KeyEvent` to all functions connected to ``key_press_event``.
	**/
	public function key_press_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Pass a `KeyEvent` to all functions connected to ``key_release_event``.
	**/
	public function key_release_event(key:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Callback processing for the mouse cursor leaving the canvas.
		
		Backend derived classes should call this function when leaving
		canvas.
		
		Parameters
		----------
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function leave_notify_event(?guiEvent:Dynamic):Dynamic;
	/**
		Callback processing for mouse movement events.
		
		Backend derived classes should call this function on any
		motion-notify-event.
		
		This method will call all functions connected to the
		'motion_notify_event' with a `MouseEvent` instance.
		
		Parameters
		----------
		x : float
		    The canvas coordinates where 0=left.
		y : float
		    The canvas coordinates where 0=bottom.
		guiEvent
		    The native UI event that generated the Matplotlib event.
	**/
	public function motion_notify_event(x:Dynamic, y:Dynamic, ?guiEvent:Dynamic):Dynamic;
	/**
		Bind function *func* to event *s*.
		
		Parameters
		----------
		s : str
		    One of the following events ids:
		
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
		    - 'close_event'.
		
		func : callable
		    The callback function to be executed, which must have the
		    signature::
		
		        def func(event: Event) -> Any
		
		    For the location events (button and key press/release), if the
		    mouse is over the axes, the ``inaxes`` attribute of the event will
		    be set to the `~matplotlib.axes.Axes` the event occurs is over, and
		    additionally, the variables ``xdata`` and ``ydata`` attributes will
		    be set to the mouse location in data coordinates.  See `.KeyEvent`
		    and `.MouseEvent` for more info.
		
		Returns
		-------
		cid
		    A connection id that can be used with
		    `.FigureCanvasBase.mpl_disconnect`.
		
		Examples
		--------
		::
		
		    def on_press(event):
		        print('you pressed', event.button, event.xdata, event.ydata)
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
	**/
	public function mpl_connect(s:Dynamic, func:Dynamic):Dynamic;
	/**
		Disconnect the callback with id *cid*.
		
		Examples
		--------
		::
		
		    cid = canvas.mpl_connect('button_press_event', on_press)
		    # ... later
		    canvas.mpl_disconnect(cid)
	**/
	public function mpl_disconnect(cid:Dynamic):Dynamic;
	/**
		Create a new backend-specific subclass of `.Timer`.
		
		This is useful for getting periodic events through the backend's native
		event loop.  Implemented only for backends with GUIs.
		
		Parameters
		----------
		interval : int
		    Timer interval in milliseconds.
		
		callbacks : list[tuple[callable, tuple, dict]]
		    Sequence of (func, args, kwargs) where ``func(*args, **kwargs)``
		    will be executed by the timer every *interval*.
		
		    Callbacks which return ``False`` or ``0`` will be removed from the
		    timer.
		
		Examples
		--------
		>>> timer = fig.canvas.new_timer(callbacks=[(f1, (1,), {'a': 3})])
	**/
	public function new_timer(?interval:Dynamic, ?callbacks:Dynamic):Dynamic;
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Callback processing for pick events.
		
		This method will be called by artists who are picked and will
		fire off `PickEvent` callbacks registered listeners.
		
		Note that artists are not pickable by default (see
		`.Artist.set_picker`).
	**/
	public function pick_event(mouseevent:Dynamic, artist:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Render the figure to hardcopy. Set the figure patch face and edge
		colors.  This is useful because some of the GUIs have a gray figure
		face color background and you'll probably want to override this on
		hardcopy.
		
		Parameters
		----------
		filename : str or path-like or file-like
		    The file where the figure is saved.
		
		dpi : float, default: :rc:`savefig.dpi`
		    The dots per inch to save the figure in.
		
		facecolor : color or 'auto', default: :rc:`savefig.facecolor`
		    The facecolor of the figure.  If 'auto', use the current figure
		    facecolor.
		
		edgecolor : color or 'auto', default: :rc:`savefig.edgecolor`
		    The edgecolor of the figure.  If 'auto', use the current figure
		    edgecolor.
		
		orientation : {'landscape', 'portrait'}, default: 'portrait'
		    Only currently applies to PostScript printing.
		
		format : str, optional
		    Force a specific file format. If not given, the format is inferred
		    from the *filename* extension, and if that fails from
		    :rc:`savefig.format`.
		
		bbox_inches : 'tight' or `.Bbox`, default: :rc:`savefig.bbox`
		    Bounding box in inches: only the given portion of the figure is
		    saved.  If 'tight', try to figure out the tight bbox of the figure.
		
		pad_inches : float, default: :rc:`savefig.pad_inches`
		    Amount of padding around the figure when *bbox_inches* is 'tight'.
		
		bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
		
		backend : str, optional
		    Use a non-default backend to render the file, e.g. to render a
		    png file with the "cairo" backend rather than the default "agg",
		    or a pdf file with the "pgf" backend rather than the default
		    "pdf".  Note that the default backend is normally sufficient.  See
		    :ref:`the-builtin-backends` for a list of valid backends for each
		    file format.  Custom backends can be referenced as "module://...".
	**/
	public function print_figure(filename:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?orientation:Dynamic, ?format:Dynamic, ?bbox_inches:Dynamic, ?pad_inches:Dynamic, ?bbox_extra_artists:Dynamic, ?backend:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write the figure to a JPEG file.
		
		Parameters
		----------
		filename_or_obj : str or path-like or file-like
		    The file to write to.
		
		Other Parameters
		----------------
		pil_kwargs : dict, optional
		    Additional keyword arguments that are passed to
		    `PIL.Image.Image.save` when saving the figure.
	**/
	public function print_jpeg(filename_or_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?pil_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write the figure to a JPEG file.
		
		Parameters
		----------
		filename_or_obj : str or path-like or file-like
		    The file to write to.
		
		Other Parameters
		----------------
		pil_kwargs : dict, optional
		    Additional keyword arguments that are passed to
		    `PIL.Image.Image.save` when saving the figure.
	**/
	public function print_jpg(filename_or_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?pil_kwargs:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Write the figure to a PNG file.
		
		Parameters
		----------
		filename_or_obj : str or path-like or file-like
		    The file to write to.
		
		metadata : dict, optional
		    Metadata in the PNG file as key-value pairs of bytes or latin-1
		    encodable strings.
		    According to the PNG specification, keys must be shorter than 79
		    chars.
		
		    The `PNG specification`_ defines some common keywords that may be
		    used as appropriate:
		
		    - Title: Short (one line) title or caption for image.
		    - Author: Name of image's creator.
		    - Description: Description of image (possibly long).
		    - Copyright: Copyright notice.
		    - Creation Time: Time of original image creation
		      (usually RFC 1123 format).
		    - Software: Software used to create the image.
		    - Disclaimer: Legal disclaimer.
		    - Warning: Warning of nature of content.
		    - Source: Device used to create the image.
		    - Comment: Miscellaneous comment;
		      conversion from other image format.
		
		    Other keywords may be invented for other purposes.
		
		    If 'Software' is not given, an autogenerated value for Matplotlib
		    will be used.  This can be removed by setting it to *None*.
		
		    For more details see the `PNG specification`_.
		
		    .. _PNG specification:                 https://www.w3.org/TR/2003/REC-PNG-20031110/#11keywords
		
		pil_kwargs : dict, optional
		    Keyword arguments passed to `PIL.Image.Image.save`.
		
		    If the 'pnginfo' key is present, it completely overrides
		    *metadata*, including the default 'Software' key.
	**/
	public function print_png(filename_or_obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?metadata:Dynamic, ?pil_kwargs:Dynamic):Dynamic;
	public function print_raw(filename_or_obj:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function print_rgba(filename_or_obj:Dynamic, ?args:python.VarArgs<Dynamic>):Dynamic;
	public function print_tif(filename_or_obj:Dynamic, ?pil_kwargs:Dynamic):Dynamic;
	public function print_tiff(filename_or_obj:Dynamic, ?pil_kwargs:Dynamic):Dynamic;
	public function print_to_buffer():Dynamic;
	/**
		Release the mouse grab held by the `~.axes.Axes` *ax*.
		
		Usually called by the widgets. It is ok to call this even if *ax*
		doesn't have the mouse grab currently.
	**/
	public function release_mouse(ax:Dynamic):Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		UNUSED: Set the canvas size in pixels.
		
		Certain backends may implement a similar method internally, but this is
		not a requirement of, nor is it used by, Matplotlib itself.
	**/
	public function resize(w:Dynamic, h:Dynamic):Dynamic;
	/**
		Pass a `ResizeEvent` to all functions connected to ``resize_event``.
	**/
	public function resize_event():Dynamic;
	public function restore_region(region:Dynamic, ?bbox:Dynamic, ?xy:Dynamic):Dynamic;
	/**
		Callback processing for scroll events.
		
		Backend derived classes should call this function on any
		scroll wheel event.  (*x*, *y*) are the canvas coords ((0, 0) is lower
		left).  button and key are as defined in `MouseEvent`.
		
		This method will call all functions connected to the 'scroll_event'
		with a `MouseEvent` instance.
	**/
	public function scroll_event(x:Dynamic, y:Dynamic, step:Dynamic, ?guiEvent:Dynamic):Dynamic;
	public var scroll_pick_id : Dynamic;
	/**
		Set the current cursor.
		
		This may have no effect if the backend does not display anything.
		
		If required by the backend, this method should trigger an update in
		the backend event loop after the cursor is set, as this method may be
		called e.g. before a long-running task during which the GUI is not
		updated.
		
		Parameters
		----------
		cursor : `.Cursors`
		    The cursor to display over the canvas. Note: some backends may
		    change the cursor for the entire window.
	**/
	public function set_cursor(cursor:Dynamic):Dynamic;
	/**
		[*Deprecated*] Set the title text of the window containing the figure.  Note that
		this has no effect if there is no window (e.g., a PS backend).
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function set_window_title(title:Dynamic):Dynamic;
	/**
		Start a blocking event loop.
		
		Such an event loop is used by interactive functions, such as
		`~.Figure.ginput` and `~.Figure.waitforbuttonpress`, to wait for
		events.
		
		The event loop blocks until a callback function triggers
		`stop_event_loop`, or *timeout* is reached.
		
		If *timeout* is 0 or negative, never timeout.
		
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
	/**
		Get the image as ARGB `bytes`.
		
		`draw` must be called at least once before this function will work and
		to update the renderer for any subsequent changes to the Figure.
	**/
	public function tostring_argb():Dynamic;
	/**
		Get the image as RGB `bytes`.
		
		`draw` must be called at least once before this function will work and
		to update the renderer for any subsequent changes to the Figure.
	**/
	public function tostring_rgb():Dynamic;
}