/* This file is generated, do not edit! */
package matplotlib.font_manager;
@:pythonImport("matplotlib.font_manager", "FontProperties") extern class FontProperties {
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
	public function __eq__(other:Dynamic):Dynamic;
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
	public function ___init__(?family:Dynamic, ?style:Dynamic, ?variant:Dynamic, ?weight:Dynamic, ?stretch:Dynamic, ?size:Dynamic, ?fname:Dynamic, ?_init:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?family:Dynamic, ?style:Dynamic, ?variant:Dynamic, ?weight:Dynamic, ?stretch:Dynamic, ?size:Dynamic, ?fname:Dynamic, ?_init:Dynamic):Void;
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
	public function _parse_fontconfig_pattern(pattern:Dynamic):Dynamic;
	/**
		Return a deep copy of self
	**/
	public function copy():Dynamic;
	/**
		Return a list of font names that comprise the font family.
	**/
	public function get_family():Dynamic;
	/**
		Return the filename of the associated font.
	**/
	public function get_file():Dynamic;
	/**
		Get a fontconfig pattern suitable for looking up the font as
		specified with fontconfig's ``fc-match`` utility.
		
		See the documentation on `fontconfig patterns
		<https://www.freedesktop.org/software/fontconfig/fontconfig-user.html>`_.
		
		This support does not require fontconfig to be installed or
		support for it to be enabled.  We are merely borrowing its
		pattern syntax for use here.
	**/
	public function get_fontconfig_pattern():Dynamic;
	/**
		Return the name of the font that best matches the font properties.
	**/
	public function get_name():Dynamic;
	/**
		Return the font size.
	**/
	public function get_size():Dynamic;
	public function get_size_in_points():Dynamic;
	/**
		Return the font style.  Values are: 'normal', 'italic' or 'oblique'.
	**/
	public function get_slant():Dynamic;
	/**
		Return the font stretch or width.  Options are: 'ultra-condensed',
		'extra-condensed', 'condensed', 'semi-condensed', 'normal',
		'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'.
	**/
	public function get_stretch():Dynamic;
	/**
		Return the font style.  Values are: 'normal', 'italic' or 'oblique'.
	**/
	public function get_style():Dynamic;
	/**
		Return the font variant.  Values are: 'normal' or 'small-caps'.
	**/
	public function get_variant():Dynamic;
	/**
		Set the font weight.  Options are: A numeric value in the
		range 0-1000 or one of 'light', 'normal', 'regular', 'book',
		'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold',
		'heavy', 'extra bold', 'black'
	**/
	public function get_weight():Dynamic;
	/**
		Change the font family.  May be either an alias (generic name
		is CSS parlance), such as: 'serif', 'sans-serif', 'cursive',
		'fantasy', or 'monospace', a real font name or a list of real
		font names.  Real font names are not supported when
		`text.usetex` is `True`.
	**/
	public function set_family(family:Dynamic):Dynamic;
	/**
		Set the filename of the fontfile to use.  In this case, all
		other properties will be ignored.
	**/
	public function set_file(file:Dynamic):Dynamic;
	/**
		Set the properties by parsing a fontconfig *pattern*.
		
		See the documentation on `fontconfig patterns
		<https://www.freedesktop.org/software/fontconfig/fontconfig-user.html>`_.
		
		This support does not require fontconfig to be installed or
		support for it to be enabled.  We are merely borrowing its
		pattern syntax for use here.
	**/
	public function set_fontconfig_pattern(pattern:Dynamic):Dynamic;
	/**
		Change the font family.  May be either an alias (generic name
		is CSS parlance), such as: 'serif', 'sans-serif', 'cursive',
		'fantasy', or 'monospace', a real font name or a list of real
		font names.  Real font names are not supported when
		`text.usetex` is `True`.
	**/
	public function set_name(family:Dynamic):Dynamic;
	/**
		Set the font size.  Either an relative value of 'xx-small',
		'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'
		or an absolute font size, e.g., 12.
	**/
	public function set_size(size:Dynamic):Dynamic;
	/**
		Set the font style.  Values are: 'normal', 'italic' or 'oblique'.
	**/
	public function set_slant(style:Dynamic):Dynamic;
	/**
		Set the font stretch or width.  Options are: 'ultra-condensed',
		'extra-condensed', 'condensed', 'semi-condensed', 'normal',
		'semi-expanded', 'expanded', 'extra-expanded' or
		'ultra-expanded', or a numeric value in the range 0-1000.
	**/
	public function set_stretch(stretch:Dynamic):Dynamic;
	/**
		Set the font style.  Values are: 'normal', 'italic' or 'oblique'.
	**/
	public function set_style(style:Dynamic):Dynamic;
	/**
		Set the font variant.  Values are: 'normal' or 'small-caps'.
	**/
	public function set_variant(variant:Dynamic):Dynamic;
	/**
		Set the font weight.  May be either a numeric value in the
		range 0-1000 or one of 'ultralight', 'light', 'normal',
		'regular', 'book', 'medium', 'roman', 'semibold', 'demibold',
		'demi', 'bold', 'heavy', 'extra bold', 'black'
	**/
	public function set_weight(weight:Dynamic):Dynamic;
}