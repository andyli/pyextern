/* This file is generated, do not edit! */
package matplotlib.afm;
@:pythonImport("matplotlib.afm", "AFM") extern class AFM {
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
		Parse the AFM file in file object *fh*.
	**/
	@:native("__init__")
	public function ___init__(fh:Dynamic):Dynamic;
	/**
		Parse the AFM file in file object *fh*.
	**/
	public function new(fh:Dynamic):Void;
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
		The font family name, e.g., 'Times'.
	**/
	public var family_name : Dynamic;
	/**
		Return the fontangle as float.
	**/
	public function get_angle():Dynamic;
	public function get_bbox_char(c:Dynamic, ?isord:Dynamic):Dynamic;
	/**
		Return the cap height as float.
	**/
	public function get_capheight():Dynamic;
	/**
		Return the font family name, e.g., 'Times'.
	**/
	public function get_familyname():Dynamic;
	/**
		Return the font name, e.g., 'Times-Roman'.
	**/
	public function get_fontname():Dynamic;
	/**
		Return the font full name, e.g., 'Times-Roman'.
	**/
	public function get_fullname():Dynamic;
	/**
		Get the bounding box (ink) height of character *c* (space is 0).
	**/
	public function get_height_char(c:Dynamic, ?isord:Dynamic):Dynamic;
	/**
		Return the standard horizontal stem width as float, or *None* if
		not specified in AFM file.
	**/
	public function get_horizontal_stem_width():Dynamic;
	/**
		Return the kerning pair distance (possibly 0) for chars *c1* and *c2*.
	**/
	public function get_kern_dist(c1:Dynamic, c2:Dynamic):Dynamic;
	/**
		Return the kerning pair distance (possibly 0) for chars
		*name1* and *name2*.
	**/
	public function get_kern_dist_from_name(name1:Dynamic, name2:Dynamic):Dynamic;
	/**
		Get the name of the character, i.e., ';' is 'semicolon'.
	**/
	public function get_name_char(c:Dynamic, ?isord:Dynamic):Dynamic;
	/**
		Return the string bounding box.
	**/
	public function get_str_bbox(s:Dynamic):Dynamic;
	/**
		Return the string bounding box and the maximal descent.
	**/
	public function get_str_bbox_and_descent(s:Dynamic):Dynamic;
	/**
		Return the underline thickness as float.
	**/
	public function get_underline_thickness():Dynamic;
	/**
		Return the standard vertical stem width as float, or *None* if
		not specified in AFM file.
	**/
	public function get_vertical_stem_width():Dynamic;
	/**
		Return the font weight, e.g., 'Bold' or 'Roman'.
	**/
	public function get_weight():Dynamic;
	/**
		Get the width of the character from the character metric WX field.
	**/
	public function get_width_char(c:Dynamic, ?isord:Dynamic):Dynamic;
	/**
		Get the width of the character from a type1 character name.
	**/
	public function get_width_from_char_name(name:Dynamic):Dynamic;
	/**
		Return the xheight as float.
	**/
	public function get_xheight():Dynamic;
	public var postscript_name : Dynamic;
	/**
		Return the string width (including kerning) and string height
		as a (*w*, *h*) tuple.
	**/
	public function string_width_height(s:Dynamic):Dynamic;
}