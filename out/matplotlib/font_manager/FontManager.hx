/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:pythonImport("matplotlib.font_manager", "FontManager") extern class FontManager {
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
	public function ___init__(?size:Dynamic, ?weight:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?size:Dynamic, ?weight:Dynamic):Void;
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
	static public var __slotnames__ : Dynamic;
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
	static public var __version__ : Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Search the font list for the font that most closely matches
		the :class:`FontProperties` *prop*.
		
		:meth:`findfont` performs a nearest neighbor search.  Each
		font is given a similarity score to the target font
		properties.  The first font with the highest score is
		returned.  If no matches below a certain threshold are found,
		the default font (usually Vera Sans) is returned.
		
		`directory`, is specified, will only return fonts from the
		given directory (or subdirectory of that directory).
		
		The result is cached, so subsequent lookups don't have to
		perform the O(n) nearest neighbor search.
		
		If `fallback_to_default` is True, will fallback to the default
		font family (usually "Bitstream Vera Sans" or "Helvetica") if
		the first lookup hard-fails.
		
		See the `W3C Cascading Style Sheet, Level 1
		<http://www.w3.org/TR/1998/REC-CSS2-19980512/>`_ documentation
		for a description of the font finding algorithm.
	**/
	public function findfont(prop:Dynamic, ?fontext:Dynamic, ?directory:Dynamic, ?fallback_to_default:Dynamic, ?rebuild_if_missing:Dynamic):Dynamic;
	/**
		Return the default font size.
	**/
	static public function get_default_size():Dynamic;
	/**
		Return the default font weight.
	**/
	public function get_default_weight():Dynamic;
	/**
		Returns a match score between the list of font families in
		*families* and the font family name *family2*.
		
		An exact match at the head of the list returns 0.0.
		
		A match further down the list will return between 0 and 1.
		
		No match will return 1.0.
	**/
	public function score_family(families:Dynamic, family2:Dynamic):Dynamic;
	/**
		Returns a match score between *size1* and *size2*.
		
		If *size2* (the size specified in the font file) is 'scalable', this
		function always returns 0.0, since any font size can be generated.
		
		Otherwise, the result is the absolute distance between *size1* and
		*size2*, normalized so that the usual range of font sizes (6pt -
		72pt) will lie between 0.0 and 1.0.
	**/
	public function score_size(size1:Dynamic, size2:Dynamic):Dynamic;
	/**
		Returns a match score between *stretch1* and *stretch2*.
		
		The result is the absolute value of the difference between the
		CSS numeric values of *stretch1* and *stretch2*, normalized
		between 0.0 and 1.0.
	**/
	public function score_stretch(stretch1:Dynamic, stretch2:Dynamic):Dynamic;
	/**
		Returns a match score between *style1* and *style2*.
		
		An exact match returns 0.0.
		
		A match between 'italic' and 'oblique' returns 0.1.
		
		No match returns 1.0.
	**/
	public function score_style(style1:Dynamic, style2:Dynamic):Dynamic;
	/**
		Returns a match score between *variant1* and *variant2*.
		
		An exact match returns 0.0, otherwise 1.0.
	**/
	public function score_variant(variant1:Dynamic, variant2:Dynamic):Dynamic;
	/**
		Returns a match score between *weight1* and *weight2*.
		
		The result is the absolute value of the difference between the
		CSS numeric values of *weight1* and *weight2*, normalized
		between 0.0 and 1.0.
	**/
	public function score_weight(weight1:Dynamic, weight2:Dynamic):Dynamic;
	/**
		Set the default font weight.  The initial value is 'normal'.
	**/
	public function set_default_weight(weight:Dynamic):Dynamic;
	/**
		Update the font dictionary with new font files.
		Currently not implemented.
	**/
	public function update_fonts(filenames:Dynamic):Dynamic;
}