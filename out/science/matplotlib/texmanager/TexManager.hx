/* This file is generated, do not edit! */
package matplotlib.texmanager;
@:pythonImport("matplotlib.texmanager", "TexManager") extern class TexManager {
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
	static public function __new__(cls:Dynamic):Dynamic;
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
	static public var _font_families : Dynamic;
	static public var _font_family : Dynamic;
	static public var _font_info : Dynamic;
	static public var _font_types : Dynamic;
	public function _get_preamble():Dynamic;
	static public var _grey_arrayd : Dynamic;
	public function _run_checked_subprocess(command:Dynamic, tex:Dynamic, ?cwd:Dynamic):Dynamic;
	public var font_families : Dynamic;
	public var font_family : Dynamic;
	public var font_info : Dynamic;
	/**
		Return a filename based on a hash of the string, fontsize, and dpi.
	**/
	public function get_basefile(tex:Dynamic, fontsize:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		Return a string containing user additions to the tex preamble.
	**/
	public function get_custom_preamble():Dynamic;
	public function get_font_config():Dynamic;
	/**
		Return a string containing font configuration for the tex preamble.
	**/
	public function get_font_preamble():Dynamic;
	/**
		Return the alpha channel.
	**/
	public function get_grey(tex:Dynamic, ?fontsize:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		Return latex's rendering of the tex string as an rgba array.
		
		Examples
		--------
		>>> texmanager = TexManager()
		>>> s = r"\TeX\ is $\displaystyle\sum_n\frac{-e^{i\pi}}{2^n}$!"
		>>> Z = texmanager.get_rgba(s, fontsize=12, dpi=80, rgb=(1, 0, 0))
	**/
	public function get_rgba(tex:Dynamic, ?fontsize:Dynamic, ?dpi:Dynamic, ?rgb:Dynamic):Dynamic;
	/**
		Return width, height and descent of the text.
	**/
	public function get_text_width_height_descent(tex:Dynamic, fontsize:Dynamic, ?renderer:Dynamic):Dynamic;
	public var grey_arrayd : Dynamic;
	/**
		Generate a dvi file containing latex's layout of tex string.
		
		Return the file name.
	**/
	public function make_dvi(tex:Dynamic, fontsize:Dynamic):Dynamic;
	/**
		Generate a png file containing latex's rendering of tex string.
		
		Return the file name.
	**/
	public function make_png(tex:Dynamic, fontsize:Dynamic, dpi:Dynamic):Dynamic;
	/**
		Generate a tex file to render the tex string at a specific font size.
		
		Return the file name.
	**/
	public function make_tex(tex:Dynamic, fontsize:Dynamic):Dynamic;
	static public var texcache : Dynamic;
}