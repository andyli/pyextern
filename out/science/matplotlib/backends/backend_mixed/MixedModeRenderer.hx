/* This file is generated, do not edit! */
package matplotlib.backends.backend_mixed;
@:pythonImport("matplotlib.backends.backend_mixed", "MixedModeRenderer") extern class MixedModeRenderer {
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
	public function __getattr__(attr:Dynamic):Dynamic;
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
		Parameters
		----------
		figure : `matplotlib.figure.Figure`
		    The figure instance.
		width : scalar
		    The width of the canvas in logical units
		height : scalar
		    The height of the canvas in logical units
		dpi : float
		    The dpi of the canvas
		vector_renderer : `matplotlib.backend_bases.RendererBase`
		    An instance of a subclass of
		    `~matplotlib.backend_bases.RendererBase` that will be used for the
		    vector drawing.
		raster_renderer_class : `matplotlib.backend_bases.RendererBase`
		    The renderer class to use for the raster drawing.  If not provided,
		    this will use the Agg backend (which is currently the only viable
		    option anyway.)
	**/
	@:native("__init__")
	public function ___init__(figure:Dynamic, width:Dynamic, height:Dynamic, dpi:Dynamic, vector_renderer:Dynamic, ?raster_renderer_class:Dynamic, ?bbox_inches_restore:Dynamic):Dynamic;
	/**
		Parameters
		----------
		figure : `matplotlib.figure.Figure`
		    The figure instance.
		width : scalar
		    The width of the canvas in logical units
		height : scalar
		    The height of the canvas in logical units
		dpi : float
		    The dpi of the canvas
		vector_renderer : `matplotlib.backend_bases.RendererBase`
		    An instance of a subclass of
		    `~matplotlib.backend_bases.RendererBase` that will be used for the
		    vector drawing.
		raster_renderer_class : `matplotlib.backend_bases.RendererBase`
		    The renderer class to use for the raster drawing.  If not provided,
		    this will use the Agg backend (which is currently the only viable
		    option anyway.)
	**/
	public function new(figure:Dynamic, width:Dynamic, height:Dynamic, dpi:Dynamic, vector_renderer:Dynamic, ?raster_renderer_class:Dynamic, ?bbox_inches_restore:Dynamic):Void;
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
	/**
		Enter "raster" mode.  All subsequent drawing commands (until
		`stop_rasterizing` is called) will be drawn with the raster backend.
	**/
	public function start_rasterizing():Dynamic;
	/**
		Exit "raster" mode.  All of the drawing that was done since
		the last `start_rasterizing` call will be copied to the
		vector backend by calling draw_image.
	**/
	public function stop_rasterizing():Dynamic;
}