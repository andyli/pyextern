/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "PairGrid") extern class PairGrid {
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
		Initialize the plot figure and PairGrid object.
		
		Parameters
		----------
		data : DataFrame
		    Tidy (long-form) dataframe where each column is a variable and
		    each row is an observation.
		hue : string (variable name)
		    Variable in ``data`` to map plot aspects to different colors. This
		    variable will be excluded from the default x and y variables.
		hue_order : list of strings
		    Order for the levels of the hue variable in the palette
		palette : dict or seaborn color palette
		    Set of colors for mapping the ``hue`` variable. If a dict, keys
		    should be values  in the ``hue`` variable.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		vars : list of variable names
		    Variables within ``data`` to use, otherwise use every column with
		    a numeric datatype.
		{x, y}_vars : lists of variable names
		    Variables within ``data`` to use separately for the rows and
		    columns of the figure; i.e. to make a non-square plot.
		corner : bool
		    If True, don't add axes to the upper (off-diagonal) triangle of the
		    grid, making this a "corner" plot.
		height : scalar
		    Height (in inches) of each facet.
		aspect : scalar
		    Aspect * height gives the width (in inches) of each facet.
		layout_pad : scalar
		    Padding between axes; passed to ``fig.tight_layout``.
		despine : boolean
		    Remove the top and right spines from the plots.
		dropna : boolean
		    Drop missing values from the data before plotting.
		
		See Also
		--------
		pairplot : Easily drawing common uses of :class:`PairGrid`.
		FacetGrid : Subplot grid for plotting conditional relationships.
		
		Examples
		--------
		
		.. include:: ../docstrings/PairGrid.rst
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?hue:Dynamic, ?hue_order:Dynamic, ?palette:Dynamic, ?hue_kws:Dynamic, ?vars:Dynamic, ?x_vars:Dynamic, ?y_vars:Dynamic, ?corner:Dynamic, ?diag_sharey:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?layout_pad:Dynamic, ?despine:Dynamic, ?dropna:Dynamic, ?size:Dynamic):Dynamic;
	/**
		Initialize the plot figure and PairGrid object.
		
		Parameters
		----------
		data : DataFrame
		    Tidy (long-form) dataframe where each column is a variable and
		    each row is an observation.
		hue : string (variable name)
		    Variable in ``data`` to map plot aspects to different colors. This
		    variable will be excluded from the default x and y variables.
		hue_order : list of strings
		    Order for the levels of the hue variable in the palette
		palette : dict or seaborn color palette
		    Set of colors for mapping the ``hue`` variable. If a dict, keys
		    should be values  in the ``hue`` variable.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		vars : list of variable names
		    Variables within ``data`` to use, otherwise use every column with
		    a numeric datatype.
		{x, y}_vars : lists of variable names
		    Variables within ``data`` to use separately for the rows and
		    columns of the figure; i.e. to make a non-square plot.
		corner : bool
		    If True, don't add axes to the upper (off-diagonal) triangle of the
		    grid, making this a "corner" plot.
		height : scalar
		    Height (in inches) of each facet.
		aspect : scalar
		    Aspect * height gives the width (in inches) of each facet.
		layout_pad : scalar
		    Padding between axes; passed to ``fig.tight_layout``.
		despine : boolean
		    Remove the top and right spines from the plots.
		dropna : boolean
		    Drop missing values from the data before plotting.
		
		See Also
		--------
		pairplot : Easily drawing common uses of :class:`PairGrid`.
		FacetGrid : Subplot grid for plotting conditional relationships.
		
		Examples
		--------
		
		.. include:: ../docstrings/PairGrid.rst
	**/
	public function new(data:Dynamic, ?hue:Dynamic, ?hue_order:Dynamic, ?palette:Dynamic, ?hue_kws:Dynamic, ?vars:Dynamic, ?x_vars:Dynamic, ?y_vars:Dynamic, ?corner:Dynamic, ?diag_sharey:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?layout_pad:Dynamic, ?despine:Dynamic, ?dropna:Dynamic, ?size:Dynamic):Void;
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
		Add labels to the left and bottom Axes.
	**/
	public function _add_axis_labels():Dynamic;
	/**
		Find which variables in a DataFrame are numeric.
	**/
	public function _find_numeric_cols(data:Dynamic):Dynamic;
	/**
		Get a list of colors for the hue variable.
	**/
	public function _get_palette(data:Dynamic, hue:Dynamic, hue_order:Dynamic, palette:Dynamic):Dynamic;
	static public var _legend_out : Dynamic;
	/**
		Draw a bivariate plot on the indicated axes.
	**/
	public function _map_bivariate(func:Dynamic, indices:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Put marginal plot on each diagonal axes, iterating over hue.
	**/
	public function _map_diag_iter_hue(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Draw a bivariate plot on the specified axes.
	**/
	public function _plot_bivariate(x_var:Dynamic, y_var:Dynamic, ax:Dynamic, func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a bivariate plot while iterating over hue subsets.
	**/
	public function _plot_bivariate_iter_hue(x_var:Dynamic, y_var:Dynamic, ax:Dynamic, func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		DEPRECATED: prefer the `figure` property.
	**/
	public var fig : Dynamic;
	/**
		Access the :class:`matplotlib.figure.Figure` object underlying the grid.
	**/
	public var figure : Dynamic;
	/**
		The :class:`matplotlib.legend.Legend` object, if present.
	**/
	public var legend : Dynamic;
	/**
		Plot with the same function in every subplot.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes. Also needs to accept kwargs
		    called ``color`` and  ``label``.
	**/
	public function map(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a univariate function on each diagonal subplot.
		
		Parameters
		----------
		func : callable plotting function
		    Must take an x array as a positional argument and draw onto the
		    "currently active" matplotlib Axes. Also needs to accept kwargs
		    called ``color`` and  ``label``.
	**/
	public function map_diag(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the lower diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes. Also needs to accept kwargs
		    called ``color`` and  ``label``.
	**/
	public function map_lower(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the off-diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes. Also needs to accept kwargs
		    called ``color`` and  ``label``.
	**/
	public function map_offdiag(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot with a bivariate function on the upper diagonal subplots.
		
		Parameters
		----------
		func : callable plotting function
		    Must take x, y arrays as positional arguments and draw onto the
		    "currently active" matplotlib Axes. Also needs to accept kwargs
		    called ``color`` and  ``label``.
	**/
	public function map_upper(func:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Call fig.tight_layout within rect that exclude the legend.
	**/
	public function tight_layout(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}