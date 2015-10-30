/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "LightSource") extern class LightSource {
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
		Specify the azimuth (measured clockwise from south) and altitude
		(measured up from the plane of the surface) of the light source
		in degrees.
		
		The color of the resulting image will be darkened
		by moving the (s,v) values (in hsv colorspace) toward
		(hsv_min_sat, hsv_min_val) in the shaded regions, or
		lightened by sliding (s,v) toward
		(hsv_max_sat hsv_max_val) in regions that are illuminated.
		The default extremes are chose so that completely shaded points
		are nearly black (s = 1, v = 0) and completely illuminated points
		are nearly white (s = 0, v = 1).
	**/
	@:native("__init__")
	public function ___init__(?azdeg:Dynamic, ?altdeg:Dynamic, ?hsv_min_val:Dynamic, ?hsv_max_val:Dynamic, ?hsv_min_sat:Dynamic, ?hsv_max_sat:Dynamic):Dynamic;
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
	public var __weakref__ : Dynamic;
	/**
		Take the input data array, convert to HSV values in the
		given colormap, then adjust those color values
		to give the impression of a shaded relief map with a
		specified light source.
		RGBA values are returned, which can then be used to
		plot the shaded image with imshow.
	**/
	public function shade(data:Dynamic, cmap:Dynamic, ?norm:Dynamic):Dynamic;
	/**
		Take the input RGB array (ny*nx*3) adjust their color values
		to given the impression of a shaded relief map with a
		specified light source using the elevation (ny*nx).
		A new RGB array ((ny*nx*3)) is returned.
	**/
	public function shade_rgb(rgb:Dynamic, elevation:Dynamic, ?fraction:Dynamic):Dynamic;
}