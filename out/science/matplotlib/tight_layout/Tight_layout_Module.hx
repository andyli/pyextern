/* This file is generated, do not edit! */
package matplotlib.tight_layout;
@:pythonImport("matplotlib.tight_layout") extern class Tight_layout_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return a dict of subplot parameters to adjust spacing between subplots
		or ``None`` if resulting axes would have zero height or width.
		
		Note that this function ignores geometry information of subplot itself, but
		uses what is given by the *shape* and *subplot_list* parameters.  Also, the
		results could be incorrect if some subplots have ``adjustable=datalim``.
		
		Parameters
		----------
		shape : tuple[int, int]
		    Number of rows and columns of the grid.
		span_pairs : list[tuple[slice, slice]]
		    List of rowspans and colspans occupied by each subplot.
		subplot_list : list of subplots
		    List of subplots that will be used to calculate optimal subplot_params.
		pad : float
		    Padding between the figure edge and the edges of subplots, as a
		    fraction of the font size.
		h_pad, w_pad : float
		    Padding (height/width) between edges of adjacent subplots, as a
		    fraction of the font size.  Defaults to *pad*.
		rect : tuple[float, float, float, float]
		    [left, bottom, right, top] in normalized (0, 1) figure coordinates.
	**/
	static public function _auto_adjust_subplotpars(fig:Dynamic, renderer:Dynamic, shape:Dynamic, span_pairs:Dynamic, subplot_list:Dynamic, ?ax_bbox_list:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		[*Deprecated*] Return a dict of subplot parameters to adjust spacing between subplots
		or ``None`` if resulting axes would have zero height or width.
		
		Note that this function ignores geometry information of subplot
		itself, but uses what is given by the *nrows_ncols* and *num1num2_list*
		parameters.  Also, the results could be incorrect if some subplots have
		``adjustable=datalim``.
		
		Parameters
		----------
		nrows_ncols : tuple[int, int]
		    Number of rows and number of columns of the grid.
		num1num2_list : list[tuple[int, int]]
		    List of numbers specifying the area occupied by the subplot
		subplot_list : list of subplots
		    List of subplots that will be used to calculate optimal subplot_params.
		pad : float
		    Padding between the figure edge and the edges of subplots, as a
		    fraction of the font size.
		h_pad, w_pad : float
		    Padding (height/width) between edges of adjacent subplots, as a
		    fraction of the font size.  Defaults to *pad*.
		rect : tuple[float, float, float, float]
		    [left, bottom, right, top] in normalized (0, 1) figure coordinates.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	static public function auto_adjust_subplotpars(fig:Dynamic, renderer:Dynamic, nrows_ncols:Dynamic, num1num2_list:Dynamic, subplot_list:Dynamic, ?ax_bbox_list:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	static public function get_renderer(fig:Dynamic):Dynamic;
	/**
		Return a list of subplotspec from the given list of axes.
		
		For an instance of axes that does not support subplotspec, None is inserted
		in the list.
		
		If grid_spec is given, None is inserted for those not from the given
		grid_spec.
	**/
	static public function get_subplotspec_list(axes_list:Dynamic, ?grid_spec:Dynamic):Dynamic;
	/**
		Return subplot parameters for tight-layouted-figure with specified padding.
		
		Parameters
		----------
		fig : Figure
		axes_list : list of Axes
		subplotspec_list : list of `.SubplotSpec`
		    The subplotspecs of each axes.
		renderer : renderer
		pad : float
		    Padding between the figure edge and the edges of subplots, as a
		    fraction of the font size.
		h_pad, w_pad : float
		    Padding (height/width) between edges of adjacent subplots.  Defaults to
		    *pad*.
		rect : tuple[float, float, float, float], optional
		    (left, bottom, right, top) rectangle in normalized figure coordinates
		    that the whole subplots area (including labels) will fit into.
		    Defaults to using the entire figure.
		
		Returns
		-------
		subplotspec or None
		    subplotspec kwargs to be passed to `.Figure.subplots_adjust` or
		    None if tight_layout could not be accomplished.
	**/
	static public function get_tight_layout_figure(fig:Dynamic, axes_list:Dynamic, subplotspec_list:Dynamic, renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	static public var rcParams : Dynamic;
}