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
	static public var absolute_import : Dynamic;
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
	static public var division : Dynamic;
	/**
		Return the name of the current backend.
	**/
	static public function get_backend():Dynamic;
	/**
		Return the registered default canvas for given file format.
		Handles deferred import of required backend.
	**/
	static public function get_registered_canvas_class(format:Dynamic):Dynamic;
	/**
		Import a module.
		
		The 'package' argument is required when performing a relative import. It
		specifies the package to use as the anchor point from which to resolve the
		relative import to an absolute import.
	**/
	static public function import_module(name:Dynamic, ?_package:Dynamic):Dynamic;
	/**
		Return true if plot mode is interactive
	**/
	static public function is_interactive():Dynamic;
	/**
		Implement the default mpl key bindings for the canvas and toolbar
		described at :ref:`key-event-handling`
		
		*event*
		  a :class:`KeyEvent` instance
		*canvas*
		  a :class:`FigureCanvasBase` instance
		*toolbar*
		  a :class:`NavigationToolbar2` instance
	**/
	static public function key_press_handler(event:Dynamic, canvas:Dynamic, ?toolbar:Dynamic):Dynamic;
	static public var print_function : Dynamic;
	static public var rcParams : Dynamic;
	/**
		Register a backend for saving to a given file format.
		
		format : str
		    File extention
		
		backend : module string or canvas class
		    Backend for handling file output
		
		description : str, optional
		    Description of the file type.  Defaults to an empty string
	**/
	static public function register_backend(format:Dynamic, backend:Dynamic, ?description:Dynamic):Dynamic;
	static public var unicode_literals : Dynamic;
	/**
		Used to display deprecation warning in a standard way.
		
		Parameters
		----------
		since : str
		    The release at which this API became deprecated.
		
		message : str, optional
		    Override the default deprecation message.  The format
		    specifier `%(func)s` may be used for the name of the function,
		    and `%(alternative)s` may be used in the deprecation message
		    to insert the name of an alternative to the deprecated
		    function.  `%(obj_type)` may be used to insert a friendly name
		    for the type of object being deprecated.
		
		name : str, optional
		    The name of the deprecated function; if not provided the name
		    is automatically determined from the passed in function,
		    though this is useful in the case of renamed functions, where
		    the new function is just assigned to the name of the
		    deprecated function.  For example::
		
		        def new_function():
		            ...
		        oldFunction = new_function
		
		alternative : str, optional
		    An alternative function that the user may use in place of the
		    deprecated function.  The deprecation warning will tell the user about
		    this alternative if provided.
		
		pending : bool, optional
		    If True, uses a PendingDeprecationWarning instead of a
		    DeprecationWarning.
		
		obj_type : str, optional
		    The object type being deprecated.
		
		Examples
		--------
		
		    Basic example::
		
		        # To warn of the deprecation of "matplotlib.name_of_module"
		        warn_deprecated('1.4.0', name='matplotlib.name_of_module',
		                        obj_type='module')
	**/
	static public function warn_deprecated(since:Dynamic, ?message:Dynamic, ?name:Dynamic, ?alternative:Dynamic, ?pending:Dynamic, ?obj_type:Dynamic):Dynamic;
}