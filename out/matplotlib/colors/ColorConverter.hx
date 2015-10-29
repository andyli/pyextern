/* This file is generated, do not edit! */
package matplotlib.colors;
@:pythonImport("matplotlib.colors", "ColorConverter") extern class ColorConverter {
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
	@:native("__init__")
	public function ___init__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public var cache : Dynamic;
	static public var colors : Dynamic;
	/**
		Returns an *RGB* tuple of three floats from 0-1.
		
		*arg* can be an *RGB* or *RGBA* sequence or a string in any of
		several forms:
		
		    1) a letter from the set 'rgbcmykw'
		    2) a hex color string, like '#00FFFF'
		    3) a standard name, like 'aqua'
		    4) a string representation of a float, like '0.4',
		       indicating gray on a 0-1 scale
		
		if *arg* is *RGBA*, the *A* will simply be discarded.
	**/
	public function to_rgb(arg:Dynamic):Dynamic;
	/**
		Returns an *RGBA* tuple of four floats from 0-1.
		
		For acceptable values of *arg*, see :meth:`to_rgb`.
		In addition, if *arg* is "none" (case-insensitive),
		then (0,0,0,0) will be returned.
		If *arg* is an *RGBA* sequence and *alpha* is not *None*,
		*alpha* will replace the original *A*.
	**/
	public function to_rgba(arg:Dynamic, ?alpha:Dynamic):Dynamic;
	/**
		Returns a numpy array of *RGBA* tuples.
		
		Accepts a single mpl color spec or a sequence of specs.
		
		Special case to handle "no color": if *c* is "none" (case-insensitive),
		then an empty array will be returned.  Same for an empty list.
	**/
	public function to_rgba_array(c:Dynamic, ?alpha:Dynamic):Dynamic;
}