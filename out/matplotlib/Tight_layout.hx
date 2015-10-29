/* This file is generated, do not edit! */
package matplotlib;
@:pythonImport("matplotlib.tight_layout") extern class Tight_layout {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_bottom(tight_bbox:Dynamic, axes_bbox:Dynamic):Dynamic;
	static public function _get_left(tight_bbox:Dynamic, axes_bbox:Dynamic):Dynamic;
	static public function _get_right(tight_bbox:Dynamic, axes_bbox:Dynamic):Dynamic;
	static public function _get_top(tight_bbox:Dynamic, axes_bbox:Dynamic):Dynamic;
	/**
		Return a dictionary of subplot parameters so that spacing between
		subplots are adjusted. Note that this function ignore geometry
		information of subplot itself, but uses what is given by
		*nrows_ncols* and *num1num2_list* parameteres. Also, the results could be
		incorrect if some subplots have ``adjustable=datalim``.
		
		Parameters:
		
		nrows_ncols
		  number of rows and number of columns of the grid.
		
		num1num2_list
		  list of numbers specifying the area occupied by the subplot
		
		subplot_list
		  list of subplots that will be used to calcuate optimal subplot_params.
		
		pad : float
		  padding between the figure edge and the edges of subplots, as a fraction
		  of the font-size.
		h_pad, w_pad : float
		  padding (height/width) between edges of adjacent subplots.
		    Defaults to `pad_inches`.
		
		rect
		  [left, bottom, right, top] in normalized (0, 1) figure coordinates.
	**/
	static public function auto_adjust_subplotpars(fig:Dynamic, renderer:Dynamic, nrows_ncols:Dynamic, num1num2_list:Dynamic, subplot_list:Dynamic, ?ax_bbox_list:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	static public function get_renderer(fig:Dynamic):Dynamic;
	/**
		Return a list of subplotspec from the given list of axes.  For an
		instance of axes that does not support subplotspec, None is
		inserted in the list.
		
		If grid_spec is given, None is inserted for those not from
		the given grid_spec.
	**/
	static public function get_subplotspec_list(axes_list:Dynamic, ?grid_spec:Dynamic):Dynamic;
	/**
		Return subplot parameters for tight-layouted-figure with specified
		padding.
		
		Parameters:
		
		  *fig* : figure instance
		
		  *axes_list* : a list of axes
		
		  *subplotspec_list* : a list of subplotspec associated with each
		    axes in axes_list
		
		  *renderer* : renderer instance
		
		  *pad* : float
		    padding between the figure edge and the edges of subplots,
		    as a fraction of the font-size.
		
		  *h_pad*, *w_pad* : float
		    padding (height/width) between edges of adjacent subplots.
		    Defaults to `pad_inches`.
		
		  *rect* : if rect is given, it is interpreted as a rectangle
		    (left, bottom, right, top) in the normalized figure
		    coordinate that the whole subplots area (including
		    labels) will fit into. Default is (0, 0, 1, 1).
	**/
	static public function get_tight_layout_figure(fig:Dynamic, axes_list:Dynamic, subplotspec_list:Dynamic, renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}