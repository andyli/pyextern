/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "FacetGrid") extern class FacetGrid {
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
		Initialize the matplotlib figure and FacetGrid object.
		
		The :class:`FacetGrid` is an object that links a Pandas DataFrame to
		a matplotlib figure with a particular structure.
		
		In particular, :class:`FacetGrid` is used to draw plots with multiple
		Axes where each Axes shows the same relationship conditioned on
		different levels of some variable. It's possible to condition on up to
		three variables by assigning variables to the rows and columns of the
		grid and using different colors for the plot elements.
		
		The general approach to plotting here is called "small multiples",
		where the same kind of plot is repeated multiple times, and the
		specific use of small multiples to display the same relationship
		conditioned on one ore more other variables is often called a "trellis
		plot".
		
		The basic workflow is to initialize the :class:`FacetGrid` object with
		the dataset and the variables that are used to structure the grid. Then
		one or more plotting functions can be applied to each subset by calling
		:meth:`FacetGrid.map` or :meth:`FacetGrid.map_dataframe`. Finally, the
		plot can be tweaked with other methods to do things like change the
		axis labels, use different ticks, or add a legend. See the detailed
		code examples below for more information.
		
		Parameters
		----------
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		row, col, hue : strings
		    Variables that define subsets of the data, which will be drawn on
		    separate facets in the grid. See the ``*_order`` parameters to
		    control the order of levels of this variable.
		col_wrap : int, optional
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		share_{x,y} : bool, optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		size : scalar, optional
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar, optional
		    Aspect ratio of each facet, so that ``aspect * size`` gives the width
		    of each facet in inches.    
		palette : seaborn color palette or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		{row,col,hue}_order : lists, optional
		    Order for the levels of the faceting variables. By default, this
		    will be the order that the levels appear in ``data`` or, if the
		    variables are pandas categoricals, the category order.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		legend_out : bool, optional
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		despine : boolean, optional
		    Remove the top and right spines from the plots.
		margin_titles : bool, optional
		    If ``True``, the titles for the row variable are drawn to the right of
		    the last column. This option is experimental and may not work in all
		    cases.    
		{x, y}lim: tuples, optional
		    Limits for each of the axes on each facet (only relevant when
		    share{x, y} is True.
		subplot_kws : dict, optional
		    Dictionary of keyword arguments passed to matplotlib subplot(s)
		    methods.
		gridspec_kws : dict, optional
		    Dictionary of keyword arguments passed to matplotlib's ``gridspec``
		    module (via ``plt.subplots``). Requires matplotlib >= 1.4 and is
		    ignored if ``col_wrap`` is not ``None``.
		
		See Also
		--------
		PairGrid : Subplot grid for plotting pairwise relationships.
		lmplot : Combine a regression plot and a :class:`FacetGrid`.
		factorplot : Combine a categorical plot and a :class:`FacetGrid`.
		
		Examples
		--------
		
		Initialize a 2x2 grid of facets using the tips dataset:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(style="ticks", color_codes=True)
		    >>> tips = sns.load_dataset("tips")
		    >>> g = sns.FacetGrid(tips, col="time", row="smoker")
		
		Draw a univariate plot on each facet:
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> g = sns.FacetGrid(tips, col="time",  row="smoker")
		    >>> g = g.map(plt.hist, "total_bill")
		
		(Note that it's not necessary to re-catch the returned variable; it's
		the same object, but doing so in the examples makes dealing with the
		doctests somewhat less annoying).
		
		Pass additional keyword arguments to the mapped function:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np
		    >>> bins = np.arange(0, 65, 5)
		    >>> g = sns.FacetGrid(tips, col="time",  row="smoker")
		    >>> g = g.map(plt.hist, "total_bill", bins=bins, color="r")
		
		Plot a bivariate function on each facet:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="time",  row="smoker")
		    >>> g = g.map(plt.scatter, "total_bill", "tip", edgecolor="w")
		
		Assign one of the variables to the color of the plot elements:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="time",  hue="smoker")
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", edgecolor="w")
		    ...       .add_legend())
		
		Change the size and aspect ratio of each facet:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="day", size=4, aspect=.5)
		    >>> g = g.map(sns.boxplot, "time", "total_bill")
		
		Specify the order for plot elements:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="smoker", col_order=["Yes", "No"])
		    >>> g = g.map(plt.hist, "total_bill", bins=bins, color="m")
		
		Use a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> kws = dict(s=50, linewidth=.5, edgecolor="w")
		    >>> g = sns.FacetGrid(tips, col="sex", hue="time", palette="Set1",
		    ...                   hue_order=["Dinner", "Lunch"])
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", **kws)
		    ...      .add_legend())
		
		Use a dictionary mapping hue levels to colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> pal = dict(Lunch="seagreen", Dinner="gray")
		    >>> g = sns.FacetGrid(tips, col="sex", hue="time", palette=pal,
		    ...                   hue_order=["Dinner", "Lunch"])
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", **kws)
		    ...      .add_legend())
		
		Additionally use a different marker for the hue levels:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="sex", hue="time", palette=pal,
		    ...                   hue_order=["Dinner", "Lunch"],
		    ...                   hue_kws=dict(marker=["^", "v"]))
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", **kws)
		    ...      .add_legend())
		
		"Wrap" a column variable with many levels into the rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> attend = sns.load_dataset("attention")
		    >>> g = sns.FacetGrid(attend, col="subject", col_wrap=5,
		    ...                   size=1.5, ylim=(0, 10))
		    >>> g = g.map(sns.pointplot, "solutions", "score", scale=.7)
		
		Define a custom bivariate function to map onto the grid:
		
		.. plot::
		    :context: close-figs
		
		    >>> from scipy import stats
		    >>> def qqplot(x, y, **kwargs):
		    ...     _, xr = stats.probplot(x, fit=False)
		    ...     _, yr = stats.probplot(y, fit=False)
		    ...     plt.scatter(xr, yr, **kwargs)
		    >>> g = sns.FacetGrid(tips, col="smoker", hue="sex")
		    >>> g = (g.map(qqplot, "total_bill", "tip", **kws)
		    ...       .add_legend())
		
		Define a custom function that uses a ``DataFrame`` object and accepts
		column names as positional variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> import pandas as pd
		    >>> df = pd.DataFrame(
		    ...     data=np.random.randn(90, 4),
		    ...     columns=pd.Series(list("ABCD"), name="walk"),
		    ...     index=pd.date_range("Jan 1", "March 31", name="date"))
		    >>> df = df.cumsum(axis=0).stack().reset_index(name="val")
		    >>> def dateplot(x, y, **kwargs):
		    ...     ax = plt.gca()
		    ...     data = kwargs.pop("data")
		    ...     data.plot(x=x, y=y, ax=ax, grid=False, **kwargs)
		    >>> g = sns.FacetGrid(df, col="walk", col_wrap=2, size=3.5)
		    >>> g = g.map_dataframe(dateplot, "date", "val")
		
		Use different axes labels after plotting:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="smoker", row="sex")
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", color="g", **kws)
		    ...       .set_axis_labels("Total bill (US Dollars)", "Tip"))
		
		Set other attributes that are shared across the facetes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="smoker", row="sex")
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", color="r", **kws)
		    ...       .set(xlim=(0, 60), ylim=(0, 12),
		    ...            xticks=[10, 30, 50], yticks=[2, 6, 10]))
		
		Use a different template for the facet titles:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips.sort("size"), col="size", col_wrap=3)
		    >>> g = (g.map(plt.hist, "tip", bins=np.arange(0, 13), color="c")
		    ...       .set_titles("{col_name} diners"))
		
		Tighten the facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="smoker", row="sex",
		    ...                   margin_titles=True)
		    >>> g = (g.map(plt.scatter, "total_bill", "tip", color="m", **kws)
		    ...       .set(xlim=(0, 60), ylim=(0, 12),
		    ...            xticks=[10, 30, 50], yticks=[2, 6, 10])
		    ...       .fig.subplots_adjust(wspace=.05, hspace=.05))
	**/
	public function __init__(data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?hue:Dynamic, ?col_wrap:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?size:Dynamic, ?aspect:Dynamic, ?palette:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?hue_order:Dynamic, ?hue_kws:Dynamic, ?dropna:Dynamic, ?legend_out:Dynamic, ?despine:Dynamic, ?margin_titles:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?subplot_kws:Dynamic, ?gridspec_kws:Dynamic):Dynamic;
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
		Return a flat array of the bottom row of axes.
	**/
	static public var _bottom_axes : Dynamic;
	/**
		Turn off axis labels and legend.
	**/
	public function _clean_axis(ax:Dynamic):Dynamic;
	public function _facet_color(hue_index:Dynamic, kw_color:Dynamic):Dynamic;
	public function _facet_plot(func:Dynamic, ax:Dynamic, plot_args:Dynamic, plot_kwargs:Dynamic):Dynamic;
	/**
		Finalize the annotations and layout.
	**/
	public function _finalize_grid(axlabels:Dynamic):Dynamic;
	/**
		Get a list of colors for the hue variable.
	**/
	public function _get_palette(data:Dynamic, hue:Dynamic, hue_order:Dynamic, palette:Dynamic):Dynamic;
	/**
		Return a flat array of the inner axes.
	**/
	static public var _inner_axes : Dynamic;
	/**
		Return a flat array of the left column of axes.
	**/
	static public var _left_axes : Dynamic;
	static public var _legend_out : Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Return a flat array of axes that aren't on the bottom row.
	**/
	static public var _not_bottom_axes : Dynamic;
	/**
		Return a flat array of axes that aren't on the left column.
	**/
	static public var _not_left_axes : Dynamic;
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
		Easy access to single axes.
	**/
	static public var ax : Dynamic;
	/**
		Remove axis spines from the facets.
	**/
	public function despine(kwargs:Dynamic):Dynamic;
	/**
		Make the axis identified by these indices active and return it.
	**/
	public function facet_axis(row_i:Dynamic, col_j:Dynamic):Dynamic;
	/**
		Generator for name indices and data subsets for each facet.
		
		Yields
		------
		(i, j, k), data_ijk : tuple of ints, DataFrame
		    The ints provide an index into the {row, col, hue}_names attribute,
		    and the dataframe contains a subset of the full data corresponding
		    to each facet. The generator yields subsets that correspond with
		    the self.axes.flat iterator, or self.axes[i, j] when `col_wrap`
		    is None.
	**/
	public function facet_data():Dynamic;
	/**
		Apply a plotting function to each facet's subset of the data.
		
		Parameters
		----------
		func : callable
		    A plotting function that takes data and keyword arguments. It
		    must plot to the currently active matplotlib Axes and take a
		    `color` keyword argument. If faceting on the `hue` dimension,
		    it must also take a `label` keyword argument.
		args : strings
		    Column names in self.data that identify variables with data to
		    plot. The data for each variable is passed to `func` in the
		    order the variables are specified in the call.
		kwargs : keyword arguments
		    All keyword arguments are passed to the plotting function.
		
		Returns
		-------
		self : object
		    Returns self.
	**/
	public function map(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Like `map` but passes args as strings and inserts data in kwargs.
		
		This method is suitable for plotting with functions that accept a
		long-form DataFrame as a `data` keyword argument and access the
		data in that DataFrame using string variable names.
		
		Parameters
		----------
		func : callable
		    A plotting function that takes data and keyword arguments. Unlike
		    the `map` method, a function used here must "understand" Pandas
		    objects. It also must plot to the currently active matplotlib Axes
		    and take a `color` keyword argument. If faceting on the `hue`
		    dimension, it must also take a `label` keyword argument.
		args : strings
		    Column names in self.data that identify variables with data to
		    plot. The data for each variable is passed to `func` in the
		    order the variables are specified in the call.
		kwargs : keyword arguments
		    All keyword arguments are passed to the plotting function.
		
		Returns
		-------
		self : object
		    Returns self.
	**/
	public function map_dataframe(func:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Save the figure.
	**/
	public function savefig(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set attributes on each subplot Axes.
	**/
	public function set(kwargs:Dynamic):Dynamic;
	/**
		Set axis labels on the left column and bottom row of the grid.
	**/
	public function set_axis_labels(?x_var:Dynamic, ?y_var:Dynamic):Dynamic;
	/**
		Draw titles either above each facet or on the grid margins.
		
		Parameters
		----------
		template : string
		    Template for all titles with the formatting keys {col_var} and
		    {col_name} (if using a `col` faceting variable) and/or {row_var}
		    and {row_name} (if using a `row` faceting variable).
		row_template:
		    Template for the row variable when titles are drawn on the grid
		    margins. Must have {row_var} and {row_name} formatting keys.
		col_template:
		    Template for the row variable when titles are drawn on the grid
		    margins. Must have {col_var} and {col_name} formatting keys.
		
		Returns
		-------
		self: object
		    Returns self.
	**/
	public function set_titles(?template:Dynamic, ?row_template:Dynamic, ?col_template:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Label the x axis on the bottom row of the grid.
	**/
	public function set_xlabels(?label:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set x axis tick labels on the bottom row of the grid.
	**/
	public function set_xticklabels(?labels:Dynamic, ?step:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Label the y axis on the left column of the grid.
	**/
	public function set_ylabels(?label:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set y axis tick labels on the left column of the grid.
	**/
	public function set_yticklabels(?labels:Dynamic, kwargs:Dynamic):Dynamic;
}