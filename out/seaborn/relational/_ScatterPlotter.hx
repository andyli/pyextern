/* This file is generated, do not edit! */
package seaborn.relational;
@:pythonImport("seaborn.relational", "_ScatterPlotter") extern class _ScatterPlotter {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?dashes:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?x_bins:Dynamic, ?y_bins:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?alpha:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?legend:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?dashes:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?x_bins:Dynamic, ?y_bins:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?alpha:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?legend:Dynamic):Void;
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
	/**
		Test if a series is completely missing.
	**/
	public function _empty_data(data:Dynamic):Dynamic;
	static public var _legend_attributes : Dynamic;
	static public var _legend_func : Dynamic;
	/**
		Determine if data should considered numeric or categorical.
	**/
	public function _semantic_type(data:Dynamic):Dynamic;
	/**
		Add labeled artists to represent the different plot semantics.
	**/
	public function add_legend_data(ax:Dynamic):Dynamic;
	/**
		Determine colors when the hue variable is qualitative.
	**/
	public function categorical_to_palette(data:Dynamic, order:Dynamic, palette:Dynamic):Dynamic;
	/**
		Return the color corresponding to the hue level.
	**/
	public function color_lookup(key:Dynamic):Dynamic;
	static public var default_dashes : Dynamic;
	static public var default_markers : Dynamic;
	/**
		Parse the inputs to define data for plotting.
	**/
	public function establish_variables(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?units:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Set x and y labels with visibility that matches the ticklabels.
	**/
	public function label_axes(ax:Dynamic):Dynamic;
	/**
		Determine colors when the hue variable is quantitative.
	**/
	public function numeric_to_palette(data:Dynamic, order:Dynamic, palette:Dynamic, norm:Dynamic):Dynamic;
	/**
		Determine what colors to use given data characteristics.
	**/
	public function parse_hue(data:Dynamic, palette:Dynamic, order:Dynamic, norm:Dynamic):Dynamic;
	/**
		Determine the linewidths given data characteristics.
	**/
	public function parse_size(data:Dynamic, sizes:Dynamic, order:Dynamic, norm:Dynamic):Dynamic;
	/**
		Determine the markers and line dashes.
	**/
	public function parse_style(data:Dynamic, markers:Dynamic, dashes:Dynamic, order:Dynamic):Dynamic;
	public function plot(ax:Dynamic, kws:Dynamic):Dynamic;
	/**
		Return the size corresponding to the size level.
	**/
	public function size_lookup(key:Dynamic):Dynamic;
	/**
		Convert a style argument to a dict of matplotlib attributes.
	**/
	public function style_to_attributes(levels:Dynamic, style:Dynamic, defaults:Dynamic, name:Dynamic):Dynamic;
	/**
		Return (x, y) data for each subset defined by semantics.
	**/
	public function subset_data():Dynamic;
}