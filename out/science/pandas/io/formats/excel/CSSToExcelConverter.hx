/* This file is generated, do not edit! */
package pandas.io.formats.excel;
@:pythonImport("pandas.io.formats.excel", "CSSToExcelConverter") extern class CSSToExcelConverter {
	static public var BOLD_MAP : Dynamic;
	static public var FAMILY_MAP : Dynamic;
	static public var ITALIC_MAP : Dynamic;
	static public var NAMED_COLORS : Dynamic;
	static public var VERTICAL_MAP : Dynamic;
	static public var __annotations__ : Dynamic;
	/**
		Convert CSS declarations to ExcelWriter style.
		
		Parameters
		----------
		declarations_str : str
		    List of CSS declarations.
		    e.g. "font-weight: bold; background: blue"
		
		Returns
		-------
		xlstyle : dict
		    A style as interpreted by ExcelWriter when found in
		    ExcelCell.style.
	**/
	public function __call__(declarations_str:Dynamic):python.Dict<Dynamic, Dynamic>;
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
	public function ___init__(?inherited:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?inherited:Dynamic):Void;
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
	public function _border_style(style:Dynamic, width:Dynamic):Dynamic;
	public function _convert_hex_to_excel(color_string:Dynamic):Dynamic;
	public function _get_decoration(props:Dynamic):Dynamic;
	public function _get_font_names(props:Dynamic):Dynamic;
	public function _get_font_size(props:Dynamic):Dynamic;
	public function _get_is_bold(props:Dynamic):Dynamic;
	public function _get_is_italic(props:Dynamic):Dynamic;
	public function _get_is_wrap_text(props:Dynamic):Dynamic;
	public function _get_shadow(props:Dynamic):Dynamic;
	public function _get_underline(decoration:Dynamic):Dynamic;
	public function _get_vertical_alignment(props:Dynamic):Dynamic;
	public function _get_width_name(width_input:Dynamic):Dynamic;
	public function _is_hex_color(color_string:Dynamic):Dynamic;
	/**
		Check if color code is shorthand.
		
		#FFF is a shorthand as opposed to full #FFFFFF.
	**/
	public function _is_shorthand_color(color_string:Dynamic):Dynamic;
	public function _pt_to_float(pt_string:Dynamic):Dynamic;
	public function _select_font_family(font_names:Dynamic):Dynamic;
	public function _width_to_float(width:Dynamic):Dynamic;
	public function build_alignment(props:Dynamic):Dynamic;
	public function build_border(props:Dynamic):Dynamic;
	public function build_fill(props:Dynamic):Dynamic;
	public function build_font(props:Dynamic):Dynamic;
	public function build_number_format(props:Dynamic):Dynamic;
	public function build_xlstyle(props:Dynamic):Dynamic;
	public function color_to_excel(val:Dynamic):Dynamic;
	static public function compute_css(declarations_str:Dynamic, ?inherited:Dynamic):Dynamic;
}