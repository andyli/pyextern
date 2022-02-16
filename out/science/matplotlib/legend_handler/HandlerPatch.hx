/* This file is generated, do not edit! */
package matplotlib.legend_handler;
@:pythonImport("matplotlib.legend_handler", "HandlerPatch") extern class HandlerPatch {
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
		Parameters
		----------
		patch_func : callable, optional
		    The function that creates the legend key artist.
		    *patch_func* should have the signature::
		
		        def patch_func(legend=legend, orig_handle=orig_handle,
		                       xdescent=xdescent, ydescent=ydescent,
		                       width=width, height=height, fontsize=fontsize)
		
		    Subsequently the created artist will have its ``update_prop``
		    method called and the appropriate transform will be applied.
		
		**kwargs
		    Keyword arguments forwarded to `.HandlerBase`.
	**/
	@:native("__init__")
	public function ___init__(?patch_func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		patch_func : callable, optional
		    The function that creates the legend key artist.
		    *patch_func* should have the signature::
		
		        def patch_func(legend=legend, orig_handle=orig_handle,
		                       xdescent=xdescent, ydescent=ydescent,
		                       width=width, height=height, fontsize=fontsize)
		
		    Subsequently the created artist will have its ``update_prop``
		    method called and the appropriate transform will be applied.
		
		**kwargs
		    Keyword arguments forwarded to `.HandlerBase`.
	**/
	public function new(?patch_func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	public function _create_patch(legend:Dynamic, orig_handle:Dynamic, xdescent:Dynamic, ydescent:Dynamic, width:Dynamic, height:Dynamic, fontsize:Dynamic):Dynamic;
	public function _default_update_prop(legend_handle:Dynamic, orig_handle:Dynamic):Dynamic;
	public function _update_prop(legend_handle:Dynamic, orig_handle:Dynamic):Dynamic;
	public function adjust_drawing_area(legend:Dynamic, orig_handle:Dynamic, xdescent:Dynamic, ydescent:Dynamic, width:Dynamic, height:Dynamic, fontsize:Dynamic):Dynamic;
	public function create_artists(legend:Dynamic, orig_handle:Dynamic, xdescent:Dynamic, ydescent:Dynamic, width:Dynamic, height:Dynamic, fontsize:Dynamic, trans:Dynamic):Dynamic;
	/**
		Return the artist that this HandlerBase generates for the given
		original artist/handle.
		
		Parameters
		----------
		legend : `~matplotlib.legend.Legend`
		    The legend for which these legend artists are being created.
		orig_handle : :class:`matplotlib.artist.Artist` or similar
		    The object for which these legend artists are being created.
		fontsize : int
		    The fontsize in pixels. The artists being created should
		    be scaled according to the given fontsize.
		handlebox : `matplotlib.offsetbox.OffsetBox`
		    The box which has been created to hold this legend entry's
		    artists. Artists created in the `legend_artist` method must
		    be added to this handlebox inside this method.
	**/
	public function legend_artist(legend:Dynamic, orig_handle:Dynamic, fontsize:Dynamic, handlebox:Dynamic):Dynamic;
	public function update_prop(legend_handle:Dynamic, orig_handle:Dynamic, legend:Dynamic):Dynamic;
}