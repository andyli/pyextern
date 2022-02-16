/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "ColorConverter") extern class ColorConverter {
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
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var cache : Dynamic;
	static public var colors : Dynamic;
	/**
		Convert *c* to an RGB color, silently dropping the alpha channel.
	**/
	static public function to_rgb(c:Dynamic):Dynamic;
	/**
		Convert *c* to an RGBA color.
		
		Parameters
		----------
		c : Matplotlib color or ``np.ma.masked``
		
		alpha : float, optional
		    If *alpha* is given, force the alpha value of the returned RGBA tuple
		    to *alpha*.
		
		    If None, the alpha value from *c* is used. If *c* does not have an
		    alpha channel, then alpha defaults to 1.
		
		    *alpha* is ignored for the color value ``"none"`` (case-insensitive),
		    which always maps to ``(0, 0, 0, 0)``.
		
		Returns
		-------
		tuple
		    Tuple of floats ``(r, g, b, a)``, where each channel (red, green, blue,
		    alpha) can assume values between 0 and 1.
	**/
	static public function to_rgba(c:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Convert *c* to a (n, 4) array of RGBA colors.
		
		Parameters
		----------
		c : Matplotlib color or array of colors
		    If *c* is a masked array, an ndarray is returned with a (0, 0, 0, 0)
		    row for each masked value or row in *c*.
		
		alpha : float or sequence of floats, optional
		    If *alpha* is given, force the alpha value of the returned RGBA tuple
		    to *alpha*.
		
		    If None, the alpha value from *c* is used. If *c* does not have an
		    alpha channel, then alpha defaults to 1.
		
		    *alpha* is ignored for the color value ``"none"`` (case-insensitive),
		    which always maps to ``(0, 0, 0, 0)``.
		
		    If *alpha* is a sequence and *c* is a single color, *c* will be
		    repeated to match the length of *alpha*.
		
		Returns
		-------
		array
		    (n, 4) array of RGBA colors,  where each channel (red, green, blue,
		    alpha) can assume values between 0 and 1.
	**/
	static public function to_rgba_array(c:Dynamic, ?alpha:Dynamic):Dynamic;
}