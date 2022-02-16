/* This file is generated, do not edit! */
package matplotlib.backend_bases;
@:pythonImport("matplotlib.backend_bases") extern class Backend_bases_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Decorator for the final print_* methods that accept keyword arguments.
		
		If any unused keyword arguments are left, this decorator will warn about
		them, and as part of the warning, will attempt to specify the function that
		the user actually called, instead of the backend-specific method. If unable
		to determine which function the user called, it will specify `.savefig`.
		
		For compatibility across backends, this does not warn about keyword
		arguments added by `FigureCanvasBase.print_figure` for use in a subset of
		backends, because the user would not have added them directly.
	**/
	static public function _check_savefig_extra_args(?func:Dynamic, ?extra_kwargs:Dynamic):Dynamic;
	static public var _default_backends : Dynamic;
	static public var _default_filetypes : Dynamic;
	/**
		Get the renderer that would be used to save a `.Figure`, and cache it on
		the figure.
		
		If you need a renderer without any active draw methods use
		renderer._draw_disabled to temporary patch them out at your call site.
	**/
	static public function _get_renderer(figure:Dynamic, ?print_method:Dynamic):Dynamic;
	/**
		Return whether we are in a terminal IPython, but non interactive.
		
		When in _terminal_ IPython, ip.parent will have and `interact` attribute,
		if this attribute is False we do not setup eventloop integration as the
		user will _not_ interact with IPython. In all other case (ZMQKernel, or is
		interactive), we do.
	**/
	static public function _is_non_interactive_terminal_ipython(ip:Dynamic):Dynamic;
	static public var _log : Dynamic;
	static public function _no_output_draw(figure:Dynamic):Dynamic;
	/**
		Import and return ``pyplot``, correctly setting the backend if one is
		already forced.
	**/
	static public function _safe_pyplot_import():Dynamic;
	/**
		Temporarily set some attributes; restore original state at context exit.
	**/
	static public function _setattr_cm(obj:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		The default Matplotlib button actions for extra mouse buttons.
		
		Parameters are as for `key_press_handler`, except that *event* is a
		`MouseEvent`.
	**/
	static public function button_press_handler(event:Dynamic, ?canvas:Dynamic, ?toolbar:Dynamic):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Return the name of the current backend.
		
		See Also
		--------
		matplotlib.use
	**/
	static public function get_backend():Dynamic;
	/**
		Return the registered default canvas for given file format.
		Handles deferred import of required backend.
	**/
	static public function get_registered_canvas_class(format:Dynamic):Dynamic;
	/**
		Return whether to redraw after every plotting command.
		
		.. note::
		
		    This function is only intended for use in backends. End users should
		    use `.pyplot.isinteractive` instead.
	**/
	static public function is_interactive():Dynamic;
	/**
		Implement the default Matplotlib key bindings for the canvas and toolbar
		described at :ref:`key-event-handling`.
		
		Parameters
		----------
		event : `KeyEvent`
		    A key press/release event.
		canvas : `FigureCanvasBase`, default: ``event.canvas``
		    The backend-specific canvas instance.  This parameter is kept for
		    back-compatibility, but, if set, should always be equal to
		    ``event.canvas``.
		toolbar : `NavigationToolbar2`, default: ``event.canvas.toolbar``
		    The navigation cursor toolbar.  This parameter is kept for
		    back-compatibility, but, if set, should always be equal to
		    ``event.canvas.toolbar``.
	**/
	static public function key_press_handler(event:Dynamic, ?canvas:Dynamic, ?toolbar:Dynamic):Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?rename:Dynamic, ?defaults:Dynamic, ?module:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	/**
		Register a backend for saving to a given file format.
		
		Parameters
		----------
		format : str
		    File extension
		backend : module string or canvas class
		    Backend for handling file output
		description : str, default: ""
		    Description of the file type.
	**/
	static public function register_backend(format:Dynamic, backend:Dynamic, ?description:Dynamic):Dynamic;
}