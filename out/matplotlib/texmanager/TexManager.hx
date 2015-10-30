/* This file is generated, do not edit! */
package matplotlib.texmanager;
@:pythonImport("matplotlib.texmanager", "TexManager") extern class TexManager {
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
	public function ___init__():Dynamic;
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
	static public var _dvipng_hack_alpha : Dynamic;
	/**
		On windows, changing directories can be complicated by the presence of
		multiple drives. get_shell_cmd deals with this issue.
	**/
	public function _get_shell_cmd(args:Dynamic):Dynamic;
	static public var _rc_cache : Dynamic;
	static public var _rc_cache_keys : Dynamic;
	static public var _re_vbox : Dynamic;
	static public var cachedir : Dynamic;
	static public var cursive : Dynamic;
	static public var font_families : Dynamic;
	static public var font_family : Dynamic;
	static public var font_info : Dynamic;
	/**
		returns a filename based on a hash of the string, fontsize, and dpi
	**/
	public function get_basefile(tex:Dynamic, fontsize:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		returns a string containing user additions to the tex preamble
	**/
	public function get_custom_preamble():Dynamic;
	/**
		Reinitializes self if relevant rcParams on have changed.
	**/
	public function get_font_config():Dynamic;
	/**
		returns a string containing font configuration for the tex preamble
	**/
	public function get_font_preamble():Dynamic;
	/**
		returns the alpha channel
	**/
	public function get_grey(tex:Dynamic, ?fontsize:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		returns a list containing the postscript bounding box for latex's
		rendering of the tex string
	**/
	public function get_ps_bbox(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		Returns latex's rendering of the tex string as an rgba array
	**/
	public function get_rgba(tex:Dynamic, ?fontsize:Dynamic, ?dpi:Dynamic, ?rgb:Dynamic):Dynamic;
	/**
		return width, heigth and descent of the text.
	**/
	public function get_text_width_height_descent(tex:Dynamic, fontsize:Dynamic, ?renderer:Dynamic):Dynamic;
	static public var grey_arrayd : Dynamic;
	/**
		generates a dvi file containing latex's layout of tex string
		
		returns the file name
	**/
	public function make_dvi(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		generates a dvi file containing latex's layout of tex
		string. It calls make_tex_preview() method and store the size
		information (width, height, descent) in a separte file.
		
		returns the file name
	**/
	public function make_dvi_preview(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		generates a png file containing latex's rendering of tex string
		
		returns the filename
	**/
	public function make_png(tex:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		generates a postscript file containing latex's rendering of tex string
		
		returns the file name
	**/
	public function make_ps(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		Generate a tex file to render the tex string at a specific font size
		
		returns the file name
	**/
	public function make_tex(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		Generate a tex file to render the tex string at a specific
		font size.  It uses the preview.sty to determin the dimension
		(width, height, descent) of the output.
		
		returns the file name
	**/
	public function make_tex_preview(tex:Dynamic, fontsize:Dynamic):Dynamic;
	static public var monospace : Dynamic;
	static public var oldcache : Dynamic;
	static public var oldpath : Dynamic;
	static public var postscriptd : Dynamic;
	static public var pscnt : Dynamic;
	static public var rgba_arrayd : Dynamic;
	static public var sans_serif : Dynamic;
	static public var serif : Dynamic;
	static public var texcache : Dynamic;
}