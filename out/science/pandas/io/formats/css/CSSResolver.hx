/* This file is generated, do not edit! */
package pandas.io.formats.css;
@:pythonImport("pandas.io.formats.css", "CSSResolver") extern class CSSResolver {
	static public var BORDER_WIDTH_RATIOS : Dynamic;
	static public var FONT_SIZE_RATIOS : Dynamic;
	static public var MARGIN_RATIOS : Dynamic;
	static public var SIDES : Dynamic;
	static public var SIDE_SHORTHANDS : Dynamic;
	static public var UNIT_RATIOS : Dynamic;
	/**
		The given declarations to atomic properties.
		
		Parameters
		----------
		declarations_str : str
		    A list of CSS declarations
		inherited : dict, optional
		    Atomic properties indicating the inherited style context in which
		    declarations_str is to be resolved. ``inherited`` should already
		    be resolved, i.e. valid output of this method.
		
		Returns
		-------
		dict
		    Atomic CSS 2.2 properties.
		
		Examples
		--------
		>>> resolve = CSSResolver()
		>>> inherited = {'font-family': 'serif', 'font-weight': 'bold'}
		>>> out = resolve('''
		...               border-color: BLUE RED;
		...               font-size: 1em;
		...               font-size: 2em;
		...               font-weight: normal;
		...               font-weight: inherit;
		...               ''', inherited)
		>>> sorted(out.items())  # doctest: +NORMALIZE_WHITESPACE
		[('border-bottom-color', 'blue'),
		 ('border-left-color', 'red'),
		 ('border-right-color', 'red'),
		 ('border-top-color', 'blue'),
		 ('font-family', 'serif'),
		 ('font-size', '24pt'),
		 ('font-weight', 'bold')]
	**/
	public function __call__(declarations_str:Dynamic, ?inherited:Dynamic):Dynamic;
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
	public function _get_float_font_size_from_pt(font_size_string:Dynamic):Dynamic;
	public function _get_font_size(props:Dynamic):Dynamic;
	public function _update_font_size(props:Dynamic, inherited:Dynamic):Dynamic;
	public function _update_initial(props:Dynamic, inherited:Dynamic):Dynamic;
	public function _update_other_units(props:Dynamic):Dynamic;
	public function atomize(declarations:Dynamic):Dynamic;
	public function expand_border_color(prop:Dynamic, value:Dynamic):Dynamic;
	public function expand_border_style(prop:Dynamic, value:Dynamic):Dynamic;
	public function expand_border_width(prop:Dynamic, value:Dynamic):Dynamic;
	public function expand_margin(prop:Dynamic, value:Dynamic):Dynamic;
	public function expand_padding(prop:Dynamic, value:Dynamic):Dynamic;
	/**
		Generates (prop, value) pairs from declarations.
		
		In a future version may generate parsed tokens from tinycss/tinycss2
		
		Parameters
		----------
		declarations_str : str
	**/
	public function parse(declarations_str:Dynamic):Dynamic;
	public function size_to_pt(in_val:Dynamic, ?em_pt:Dynamic, ?conversions:Dynamic):Dynamic;
}