/* This file is generated, do not edit! */
package seaborn.matrix;
@:pythonImport("seaborn.matrix", "ClusterGrid") extern class ClusterGrid {
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
		Grid object for organizing clustered heatmap input on to axes
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?pivot_kws:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic, ?dendrogram_ratio:Dynamic, ?colors_ratio:Dynamic, ?cbar_pos:Dynamic):Dynamic;
	/**
		Grid object for organizing clustered heatmap input on to axes
	**/
	public function new(data:Dynamic, ?pivot_kws:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic, ?dendrogram_ratio:Dynamic, ?colors_ratio:Dynamic, ?cbar_pos:Dynamic):Void;
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
		Get a list of colors for the hue variable.
	**/
	public function _get_palette(data:Dynamic, hue:Dynamic, hue_order:Dynamic, palette:Dynamic):Dynamic;
	static public var _legend_out : Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Preprocess {row/col}_colors to extract labels and convert colors.
	**/
	public function _preprocess_colors(data:Dynamic, colors:Dynamic, axis:Dynamic):Dynamic;
	/**
		Extract the legend data from an axes object and save it.
	**/
	public function _update_legend_data(ax:Dynamic):Dynamic;
	/**
		Draw a legend, maybe placing it outside axes and resizing the figure.
		
		Parameters
		----------
		legend_data : dict
		    Dictionary mapping label names (or two-element tuples where the
		    second element is a label name) to matplotlib artist handles. The
		    default reads from ``self._legend_data``.
		title : string
		    Title for the legend. The default reads from ``self._hue_var``.
		label_order : list of labels
		    The order that the legend entries should appear in. The default
		    reads from ``self.hue_names``.
		adjust_subtitles : bool
		    If True, modify entries with invisible artists to left-align
		    the labels and set the font size to that of a title.
		kwargs : key, value pairings
		    Other keyword arguments are passed to the underlying legend methods
		    on the Figure or Axes object.
		
		Returns
		-------
		self : Grid instance
		    Returns self for easy chaining.
	**/
	public function add_legend(?legend_data:Dynamic, ?title:Dynamic, ?label_order:Dynamic, ?adjust_subtitles:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    A numpy array of integer values, where each indexes into the cmap
		cmap : matplotlib.colors.ListedColormap
	**/
	static public function color_list_to_matrix_and_cmap(colors:Dynamic, ind:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Get the proportions of the figure taken up by each axes.
	**/
	public function dim_ratios(colors:Dynamic, dendrogram_ratio:Dynamic, colors_ratio:Dynamic):Dynamic;
	/**
		DEPRECATED: prefer the `figure` property.
	**/
	public var fig : Dynamic;
	/**
		Access the :class:`matplotlib.figure.Figure` object underlying the grid.
	**/
	public var figure : Dynamic;
	/**
		Extract variables from data or use directly.
	**/
	public function format_data(data:Dynamic, pivot_kws:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic):Dynamic;
	/**
		The :class:`matplotlib.legend.Legend` object, if present.
	**/
	public var legend : Dynamic;
	public function plot(metric:Dynamic, method:Dynamic, colorbar_kws:Dynamic, row_cluster:Dynamic, col_cluster:Dynamic, row_linkage:Dynamic, col_linkage:Dynamic, tree_kws:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plots color labels between the dendrogram and the heatmap
		
		Parameters
		----------
		heatmap_kws : dict
		    Keyword arguments heatmap
	**/
	public function plot_colors(xind:Dynamic, yind:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	public function plot_dendrograms(row_cluster:Dynamic, col_cluster:Dynamic, metric:Dynamic, method:Dynamic, row_linkage:Dynamic, col_linkage:Dynamic, tree_kws:Dynamic):Dynamic;
	public function plot_matrix(colorbar_kws:Dynamic, xind:Dynamic, yind:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Save an image of the plot.
		
		This wraps :meth:`matplotlib.figure.Figure.savefig`, using bbox_inches="tight"
		by default. Parameters are passed through to the matplotlib function.
	**/
	public function savefig(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Divide the data by the difference between the max and min
		
		Parameters
		----------
		data2d : pandas.DataFrame
		    Data to normalize
		axis : int
		    Which axis to normalize across. If 0, normalize across rows, if 1,
		    normalize across columns.
		
		Returns
		-------
		standardized : pandas.DataFrame
		    Noramlized data with a mean of 0 and variance of 1 across the
		    specified axis.
	**/
	static public function standard_scale(data2d:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Call fig.tight_layout within rect that exclude the legend.
	**/
	public function tight_layout(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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