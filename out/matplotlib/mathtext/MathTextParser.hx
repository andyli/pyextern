/* This file is generated, do not edit! */
package matplotlib.mathtext;
@:pythonImport("matplotlib.mathtext", "MathTextParser") extern class MathTextParser {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Create a MathTextParser for the given backend *output*.
	**/
	@:native("__init__")
	public function ___init__(output:Dynamic):Dynamic;
	/**
		Create a MathTextParser for the given backend *output*.
	**/
	public function new(output:Dynamic):Void;
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
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _backend_mapping : Dynamic;
	static public var _font_type_mapping : Dynamic;
	static public var _parser : Dynamic;
	/**
		Parameters
		----------
		texstr : str
		    A valid mathtext string, e.g., r'IQ: $\sigma_i=15$'.
		dpi : float
		    The dots-per-inch setting used to render the text.
		
		Returns
		-------
		depth : int
		    Offset of the baseline from the bottom of the image, in pixels.
	**/
	public function get_depth(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Int;
	/**
		Parse the given math expression *s* at the given *dpi*.  If
		*prop* is provided, it is a
		:class:`~matplotlib.font_manager.FontProperties` object
		specifying the "default" font to use in the math expression,
		used for all non-math text.
		
		The results are cached, so multiple calls to :meth:`parse`
		with the same expression should be fast.
	**/
	public function parse(s:Dynamic, ?dpi:Dynamic, ?prop:Dynamic):Dynamic;
	/**
		Parameters
		----------
		texstr : str
		    A valid mathtext string, e.g., r'IQ: $\sigma_i=15$'.
		dpi : float
		    The dots-per-inch setting used to render the text.
		fontsize : int
		    The font size in points
		
		Returns
		-------
		array : 2D uint8 alpha
		    Mask array of rasterized tex.
		depth : int
		    Offset of the baseline from the bottom of the image, in pixels.
	**/
	public function to_mask(texstr:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Dynamic;
	/**
		Render a tex expression to a PNG file.
		
		Parameters
		----------
		filename
		    A writable filename or fileobject.
		texstr : str
		    A valid mathtext string, e.g., r'IQ: $\sigma_i=15$'.
		color : color
		    The text color.
		dpi : float
		    The dots-per-inch setting used to render the text.
		fontsize : int
		    The font size in points.
		
		Returns
		-------
		depth : int
		    Offset of the baseline from the bottom of the image, in pixels.
	**/
	public function to_png(filename:Dynamic, texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Int;
	/**
		Parameters
		----------
		texstr : str
		    A valid mathtext string, e.g., r'IQ: $\sigma_i=15$'.
		color : color
		    The text color.
		dpi : float
		    The dots-per-inch setting used to render the text.
		fontsize : int
		    The font size in points.
		
		Returns
		-------
		array : (M, N, 4) array
		    RGBA color values of rasterized tex, colorized with *color*.
		depth : int
		    Offset of the baseline from the bottom of the image, in pixels.
	**/
	public function to_rgba(texstr:Dynamic, ?color:Dynamic, ?dpi:Dynamic, ?fontsize:Dynamic):Dynamic;
}