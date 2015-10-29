/* This file is generated, do not edit! */
package seaborn.matrix;
@:pythonImport("seaborn.matrix", "ClusterGrid") extern class ClusterGrid {
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
		Grid object for organizing clustered heatmap input on to axes
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?pivot_kws:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
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
	public function add_legend(?legend_data:Dynamic, ?title:Dynamic, ?label_order:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Turns a list of colors into a numpy matrix and matplotlib colormap
		
		These arguments can now be plotted using heatmap(matrix, cmap)
		and the provided colors will be plotted.
		
		Parameters
		----------
		colors : list of matplotlib colors
		    Colors to label the rows or columns of a dataframe.
		ind : list of ints
		    Ordering of the rows or columns, to reorder the original colors
		    by the clustered dendrogram order
		axis : int
		    Which axis this is labeling
		
		Returns
		-------
		matrix : numpy.array
		    A numpy array of integer values, where each corresponds to a color
		    from the originally provided list of colors
		cmap : matplotlib.colors.ListedColormap
	**/
	static public function color_list_to_matrix_and_cmap(colors:Dynamic, ind:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Get the proportions of the figure taken up by each axes
		        
	**/
	public function dim_ratios(side_colors:Dynamic, axis:Dynamic, figsize:Dynamic, ?side_colors_ratio:Dynamic):Dynamic;
	/**
		Extract variables from data or use directly.
	**/
	public function format_data(data:Dynamic, pivot_kws:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic):Dynamic;
	public function plot(metric:Dynamic, method:Dynamic, colorbar_kws:Dynamic, row_cluster:Dynamic, col_cluster:Dynamic, row_linkage:Dynamic, col_linkage:Dynamic, kws:Dynamic):Dynamic;
	/**
		Plots color labels between the dendrogram and the heatmap
		
		Parameters
		----------
		heatmap_kws : dict
		    Keyword arguments heatmap
	**/
	public function plot_colors(xind:Dynamic, yind:Dynamic, kws:Dynamic):Dynamic;
	public function plot_dendrograms(row_cluster:Dynamic, col_cluster:Dynamic, metric:Dynamic, method:Dynamic, row_linkage:Dynamic, col_linkage:Dynamic):Dynamic;
	public function plot_matrix(colorbar_kws:Dynamic, xind:Dynamic, yind:Dynamic, kws:Dynamic):Dynamic;
	/**
		Save the figure.
	**/
	public function savefig(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(kwargs:Dynamic):Dynamic;
	/**
		Divide the data by the difference between the max and min
		
		Parameters
		----------
		data2d : pandas.DataFrame
		    Data to normalize
		axis : int
		    Which axis to normalize across. If 0, normalize across rows, if 1,
		    normalize across columns.
		vmin : int
		    If 0, then subtract the minimum of the data before dividing by
		    the range.
		
		Returns
		-------
		standardized : pandas.DataFrame
		    Noramlized data with a mean of 0 and variance of 1 across the
		    specified axis.
		
		>>> import numpy as np
		>>> d = np.arange(5, 8, 0.5)
		>>> ClusterGrid.standard_scale(d)
		array([ 0. ,  0.2,  0.4,  0.6,  0.8,  1. ])
	**/
	static public function standard_scale(data2d:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Standarize the mean and variance of the data axis
		
		Parameters
		----------
		data2d : pandas.DataFrame
		    Data to normalize
		axis : int
		    Which axis to normalize across. If 0, normalize across rows, if 1,
		    normalize across columns.
		
		Returns
		-------
		normalized : pandas.DataFrame
		    Noramlized data with a mean of 0 and variance of 1 across the
		    specified axis.
	**/
	static public function z_score(data2d:Dynamic, ?axis:Dynamic):Dynamic;
}