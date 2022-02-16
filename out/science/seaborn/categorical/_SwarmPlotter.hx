/* This file is generated, do not edit! */
package seaborn.categorical;
@:pythonImport("seaborn.categorical", "_SwarmPlotter") extern class _SwarmPlotter {
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
		Initialize the plotter.
	**/
	@:native("__init__")
	public function ___init__(x:Dynamic, y:Dynamic, hue:Dynamic, data:Dynamic, order:Dynamic, hue_order:Dynamic, dodge:Dynamic, orient:Dynamic, color:Dynamic, palette:Dynamic):Dynamic;
	/**
		Initialize the plotter.
	**/
	public function new(x:Dynamic, y:Dynamic, hue:Dynamic, data:Dynamic, order:Dynamic, hue_order:Dynamic, dodge:Dynamic, orient:Dynamic, color:Dynamic, palette:Dynamic):Void;
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
		Group a long-form variable by another with correct order.
	**/
	public function _group_longform(vals:Dynamic, grouper:Dynamic, order:Dynamic):Dynamic;
	/**
		Stop points from extending beyond their territory.
	**/
	public function add_gutters(points:Dynamic, center:Dynamic, width:Dynamic):Dynamic;
	/**
		Add empty scatterplot artists with labels for the legend.
	**/
	public function add_legend_data(ax:Dynamic):Dynamic;
	/**
		Add descriptive labels to an Axes object.
	**/
	public function annotate_axes(ax:Dynamic):Dynamic;
	/**
		Adjust x position of points to avoid overlaps.
	**/
	public function beeswarm(orig_xy:Dynamic, d:Dynamic):Dynamic;
	/**
		Return a list of all swarm points that could overlap with target.
		
		Assumes that swarm is a sorted list of all points below xy_i.
	**/
	public function could_overlap(xy_i:Dynamic, swarm:Dynamic, d:Dynamic):Dynamic;
	static public var default_palette : Dynamic;
	/**
		Plot the data.
	**/
	public function draw_swarmplot(ax:Dynamic, kws:Dynamic):Dynamic;
	/**
		Get a list of colors for the main component of the plots.
	**/
	public function establish_colors(color:Dynamic, palette:Dynamic, saturation:Dynamic):Dynamic;
	/**
		Convert input specification into a common representation.
	**/
	public function establish_variables(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?orient:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?units:Dynamic):Dynamic;
	/**
		Remove candidates from the list if they overlap with the swarm.
	**/
	public function first_non_overlapping_candidate(candidates:Dynamic, neighbors:Dynamic, d:Dynamic):Dynamic;
	/**
		A list of center positions for plots when hue nesting is used.
	**/
	public var hue_offsets : Dynamic;
	/**
		A float with the width of plot elements when hue nesting is used.
	**/
	public var nested_width : Dynamic;
	/**
		Make the full plot.
	**/
	public function plot(ax:Dynamic, kws:Dynamic):Dynamic;
	/**
		Return an index into the palette for each scatter point.
	**/
	public var point_colors : Dynamic;
	/**
		Return a list of (x, y) coordinates that might be valid.
	**/
	public function position_candidates(xy_i:Dynamic, neighbors:Dynamic, d:Dynamic):Dynamic;
	static public var require_numeric : Dynamic;
	/**
		Find new positions on the categorical axis for each point.
	**/
	public function swarm_points(ax:Dynamic, points:Dynamic, center:Dynamic, width:Dynamic, s:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	static public var width : Dynamic;
}