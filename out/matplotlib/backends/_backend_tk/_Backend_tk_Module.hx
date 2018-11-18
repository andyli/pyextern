/* This file is generated, do not edit! */
package matplotlib.backends._backend_tk;
@:pythonImport("matplotlib.backends._backend_tk") extern class _Backend_tk_Module {
	static public var FigureCanvas : Dynamic;
	static public var PIXELS_PER_INCH : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _log : Dynamic;
	static public function _restore_foreground_window_at_end():Dynamic;
	static public var backend_version : Dynamic;
	/**
		Blit *aggimage* to *photoimage*.
		
		*offsets* is a tuple describing how to fill the ``offset`` field of the
		``Tk_PhotoImageBlock`` struct: it should be (0, 1, 2, 3) for RGBA8888 data,
		(2, 1, 0, 3) for little-endian ARBG32 (i.e. GBRA8888) data and (1, 2, 3, 0)
		for big-endian ARGB32 (i.e. ARGB8888) data.
		
		If *bbox* is passed, it defines the region that gets blitted.
	**/
	static public function blit(photoimage:Dynamic, aggimage:Dynamic, offsets:Dynamic, ?bbox:Dynamic):Dynamic;
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
	static public var cursord : Dynamic;
	static public var cursors : Dynamic;
	static public function draw_if_interactive():Dynamic;
	static public function error_msg_tkpaint(msg:Dynamic, ?parent:Dynamic):Dynamic;
	/**
		Create a new figure manager instance.
		        
	**/
	static public function new_figure_manager(num:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a new figure manager instance for the given figure.
	**/
	static public function new_figure_manager_given_figure(num:Dynamic, figure:Dynamic):Dynamic;
	/**
		msg is a return arg from a raise.  Join with new lines
	**/
	static public function raise_msg_to_str(msg:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
	static public var required_interactive_framework : Dynamic;
	/**
		Show all figures.
		
		`show` blocks by calling `mainloop` if *block* is ``True``, or if it
		is ``None`` and we are neither in IPython's ``%pylab`` mode, nor in
		`interactive` mode.
	**/
	static public function show(?block:Dynamic):Dynamic;
}