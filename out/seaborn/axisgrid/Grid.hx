/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "Grid") extern class Grid {
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
	static public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Turn off axis labels and legend.
	**/
	public function _clean_axis(ax:Dynamic):Dynamic;
	/**
		Get a list of colors for the hue variable.
	**/
	public function _get_palette(data:Dynamic, hue:Dynamic, hue_order:Dynamic, palette:Dynamic):Dynamic;
	static public var _legend_out : Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Extract the legend data from an axes object and save it.
	**/
	public function _update_legend_data(ax:Dynamic):Dynamic;
	/**
		Draw a legend, maybe placing it outside axes and resizing the figure.
		
		Parameters
		----------
		legend_data : dict, optional
		    Dictionary mapping label names to matplotlib artist handles. The
		    default reads from ``self._legend_data``.
		title : string, optional
		    Title for the legend. The default reads from ``self._hue_var``.
		label_order : list of labels, optional
		    The order that the legend entries should appear in. The default
		    reads from ``self.hue_names`` or sorts the keys in ``legend_data``.
		kwargs : key, value pairings
		    Other keyword arguments are passed to the underlying legend methods
		    on the Figure or Axes object.
		
		Returns
		-------
		self : Grid instance
		    Returns self for easy chaining.
	**/
	public function add_legend(?legend_data:Dynamic, ?title:Dynamic, ?label_order:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save the figure.
	**/
	public function savefig(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
}