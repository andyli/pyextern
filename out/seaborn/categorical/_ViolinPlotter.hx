/* This file is generated, do not edit! */
package seaborn.categorical;
@:pythonImport("seaborn.categorical", "_ViolinPlotter") extern class _ViolinPlotter {
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
	public function ___init__(x:Dynamic, y:Dynamic, hue:Dynamic, data:Dynamic, order:Dynamic, hue_order:Dynamic, bw:Dynamic, cut:Dynamic, scale:Dynamic, scale_hue:Dynamic, gridsize:Dynamic, width:Dynamic, inner:Dynamic, split:Dynamic, orient:Dynamic, linewidth:Dynamic, color:Dynamic, palette:Dynamic, saturation:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(x:Dynamic, y:Dynamic, hue:Dynamic, data:Dynamic, order:Dynamic, hue_order:Dynamic, bw:Dynamic, cut:Dynamic, scale:Dynamic, scale_hue:Dynamic, gridsize:Dynamic, width:Dynamic, inner:Dynamic, split:Dynamic, orient:Dynamic, linewidth:Dynamic, color:Dynamic, palette:Dynamic, saturation:Dynamic):Void;
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
		Group a long-form variable by another with correct order.
	**/
	public function _group_longform(vals:Dynamic, grouper:Dynamic, order:Dynamic):Dynamic;
	/**
		Add a dummy patch object so we can get legend data.
	**/
	public function add_legend_data(ax:Dynamic, color:Dynamic, label:Dynamic):Dynamic;
	/**
		Add descriptive labels to an Axes object.
	**/
	public function annotate_axes(ax:Dynamic):Dynamic;
	/**
		Draw boxplot information at center of the density.
	**/
	public function draw_box_lines(ax:Dynamic, data:Dynamic, support:Dynamic, density:Dynamic, center:Dynamic):Dynamic;
	/**
		Draw individual observations as points at middle of the violin.
	**/
	public function draw_points(ax:Dynamic, data:Dynamic, center:Dynamic):Dynamic;
	/**
		Draw the quartiles as lines at width of density.
	**/
	public function draw_quartiles(ax:Dynamic, data:Dynamic, support:Dynamic, density:Dynamic, center:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Draw a line to mark a single observation.
	**/
	public function draw_single_observation(ax:Dynamic, at_group:Dynamic, at_quant:Dynamic, density:Dynamic):Dynamic;
	/**
		Draw individual observations as sticks at width of density.
	**/
	public function draw_stick_lines(ax:Dynamic, data:Dynamic, support:Dynamic, density:Dynamic, center:Dynamic, ?split:Dynamic):Dynamic;
	/**
		Draw a line orthogonal to the value axis at width of density.
	**/
	public function draw_to_density(ax:Dynamic, center:Dynamic, val:Dynamic, support:Dynamic, density:Dynamic, split:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw the violins onto `ax`.
	**/
	public function draw_violins(ax:Dynamic):Dynamic;
	public var dwidth : Dynamic;
	/**
		Get a list of colors for the main component of the plots.
	**/
	public function establish_colors(color:Dynamic, palette:Dynamic, saturation:Dynamic):Dynamic;
	/**
		Convert input specification into a common representation.
	**/
	public function establish_variables(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?orient:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?units:Dynamic):Dynamic;
	/**
		Find the support and density for all of the data.
	**/
	public function estimate_densities(bw:Dynamic, cut:Dynamic, scale:Dynamic, scale_hue:Dynamic, gridsize:Dynamic):Dynamic;
	/**
		Estimate a KDE for a vector of data with flexible bandwidth.
	**/
	public function fit_kde(x:Dynamic, bw:Dynamic):Dynamic;
	/**
		A list of center positions for plots when hue nesting is used.
	**/
	public var hue_offsets : Dynamic;
	/**
		Determine how the plot should be oriented based on the data.
	**/
	public function infer_orient(x:Dynamic, y:Dynamic, ?orient:Dynamic):Dynamic;
	/**
		Define a grid of support for the violin.
	**/
	public function kde_support(x:Dynamic, bw:Dynamic, cut:Dynamic, gridsize:Dynamic):Dynamic;
	/**
		A float with the width of plot elements when hue nesting is used.
	**/
	public var nested_width : Dynamic;
	/**
		Make the violin plot.
	**/
	public function plot(ax:Dynamic):Dynamic;
	/**
		Scale the relative area under the KDE curve.
		
		This essentially preserves the "standard" KDE scaling, but the
		resulting maximum density will be 1 so that the curve can be
		properly multiplied by the violin width.
	**/
	public function scale_area(density:Dynamic, max_density:Dynamic, scale_hue:Dynamic):Dynamic;
	/**
		Scale each density curve by the number of observations.
	**/
	public function scale_count(density:Dynamic, counts:Dynamic, scale_hue:Dynamic):Dynamic;
	/**
		Scale each density curve to the same height.
	**/
	public function scale_width(density:Dynamic):Dynamic;
	static public var width : Dynamic;
}