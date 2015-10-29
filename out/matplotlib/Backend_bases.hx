/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.backend_bases") extern class Backend_bases {
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
}