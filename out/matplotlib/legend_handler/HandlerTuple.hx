/* This file is generated, do not edit! */
package matplotlib.legend_handler;
@:pythonImport("matplotlib.legend_handler", "HandlerTuple") extern class HandlerTuple {
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
	public function __init__(kwargs:Dynamic):Dynamic;
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
	public function _default_update_prop(legend_handle:Dynamic, orig_handle:Dynamic):Dynamic;
	public function _update_prop(legend_handle:Dynamic, orig_handle:Dynamic):Dynamic;
	public function adjust_drawing_area(legend:Dynamic, orig_handle:Dynamic, xdescent:Dynamic, ydescent:Dynamic, width:Dynamic, height:Dynamic, fontsize:Dynamic):Dynamic;
	public function create_artists(legend:Dynamic, orig_handle:Dynamic, xdescent:Dynamic, ydescent:Dynamic, width:Dynamic, height:Dynamic, fontsize:Dynamic, trans:Dynamic):Dynamic;
	/**
		Return the artist that this HandlerBase generates for the given
		original artist/handle.
		
		Parameters
		----------
		legend : :class:`matplotlib.legend.Legend` instance
		    The legend for which these legend artists are being created.
		orig_handle : :class:`matplotlib.artist.Artist` or similar
		    The object for which these legend artists are being created.
		fontsize : float or int
		    The fontsize in pixels. The artists being created should
		    be scaled according to the given fontsize.
		handlebox : :class:`matplotlib.offsetbox.OffsetBox` instance
		    The box which has been created to hold this legend entry's
		    artists. Artists created in the `legend_artist` method must
		    be added to this handlebox inside this method.
	**/
	public function legend_artist(legend:Dynamic, orig_handle:Dynamic, fontsize:Dynamic, handlebox:Dynamic):Dynamic;
	public function update_prop(legend_handle:Dynamic, orig_handle:Dynamic, legend:Dynamic):Dynamic;
}