/* This file is generated, do not edit! */
package matplotlib.backends;
@:pythonImport("matplotlib.backends.backend_nbagg") extern class Backend_nbagg {
	static public var _FONT_AWESOME_CLASSES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Encode a byte string using Base64.
		
		s is the byte string to encode.  Optional altchars must be a byte
		string of length 2 which specifies an alternative alphabet for the
		'+' and '/' characters.  This allows an application to
		e.g. generate url or filesystem safe Base64 strings.
		
		The encoded byte string is returned.
	**/
	static public function b64encode(s:Dynamic, ?altchars:Dynamic):Dynamic;
	/**
		Return a string showing the figure and connection status for
		the backend. This is intended as a diagnostic tool, and not for general
		use.
	**/
	static public function connection_info():Dynamic;
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
		Display a Python object in all frontends.
		
		By default all representations will be computed and sent to the frontends.
		Frontends can decide which representation is used and how.
		
		Parameters
		----------
		objs : tuple of objects
		    The Python objects to display.
		raw : bool, optional
		    Are the objects to be displayed already mimetype-keyed dicts of raw display data,
		    or Python objects that need to be formatted before display? [default: False]
		include : list or tuple, optional
		    A list of format type strings (MIME types) to include in the
		    format data dict. If this is set *only* the format types included
		    in this list will be computed.
		exclude : list or tuple, optional
		    A list of format type strings (MIME types) to exclude in the format
		    data dict. If this is set all format types will be computed,
		    except for those included in this argument.
		metadata : dict, optional
		    A dictionary of metadata to associate with the output.
		    mime-type keys in this dictionary will be associated with the individual
		    representation formats, if they exist.
	**/
	static public function display(objs:Dynamic, kwargs:Dynamic):Dynamic;
	static public function draw_if_interactive():Dynamic;
	/**
		Create a new figure manager instance
	**/
	static public function new_figure_manager(num:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public function show(?block:Dynamic):Dynamic;
	/**
		Generate a random UUID.
	**/
	static public function uuid():Dynamic;
}