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
	static public var _default_backends : Dynamic;
	static public var _default_filetypes : Dynamic;
	static public var _has_pil : Dynamic;
	static public var _log : Dynamic;
	/**
		The default Matplotlib button actions for extra mouse buttons.
	**/
	static public function button_press_handler(event:Dynamic, canvas:Dynamic, ?toolbar:Dynamic):Dynamic;
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
	static public var cursors : Dynamic;
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
		Return true if plot mode is interactive
	**/
	static public function is_interactive():Dynamic;
	/**
		Implement the default mpl key bindings for the canvas and toolbar
		described at :ref:`key-event-handling`
		
		Parameters
		----------
		event : :class:`KeyEvent`
		    a key press/release event
		canvas : :class:`FigureCanvasBase`
		    the backend-specific canvas instance
		toolbar : :class:`NavigationToolbar2`
		    the navigation cursor toolbar
	**/
	static public function key_press_handler(event:Dynamic, canvas:Dynamic, ?toolbar:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	/**
		Register a backend for saving to a given file format.
		
		Parameters
		----------
		format : str
		    File extension
		
		backend : module string or canvas class
		    Backend for handling file output
		
		description : str, optional
		    Description of the file type.  Defaults to an empty string
	**/
	static public function register_backend(format:Dynamic, backend:Dynamic, ?description:Dynamic):Dynamic;
}