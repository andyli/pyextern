/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid", "FacetGrid") extern class FacetGrid {
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
		Initialize the matplotlib figure and FacetGrid object.
		
		This class maps a dataset onto multiple axes arrayed in a grid of rows
		and columns that correspond to *levels* of variables in the dataset.
		The plots it produces are often called "lattice", "trellis", or
		"small-multiple" graphics.
		
		It can also represent levels of a third variable with the ``hue``
		parameter, which plots different subsets of data in different colors.
		This uses color to resolve elements on a third dimension, but only
		draws subsets on top of each other and will not tailor the ``hue``
		parameter for the specific visualization the way that axes-level
		functions that accept ``hue`` will.
		
		The basic workflow is to initialize the :class:`FacetGrid` object with
		the dataset and the variables that are used to structure the grid. Then
		one or more plotting functions can be applied to each subset by calling
		:meth:`FacetGrid.map` or :meth:`FacetGrid.map_dataframe`. Finally, the
		plot can be tweaked with other methods to do things like change the
		axis labels, use different ticks, or add a legend. See the detailed
		code examples below for more information.
		
		.. warning::
		
		    When using seaborn functions that infer semantic mappings from a
		    dataset, care must be taken to synchronize those mappings across
		    facets (e.g., by defing the ``hue`` mapping with a palette dict or
		    setting the data type of the variables to ``category``). In most cases,
		    it will be better to use a figure-level function (e.g. :func:`relplot`
		    or :func:`catplot`) than to use :class:`FacetGrid` directly.
		
		See the :ref:`tutorial <grid_tutorial>` for more information.
		
		Parameters
		----------
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		row, col, hue : strings
		    Variables that define subsets of the data, which will be drawn on
		    separate facets in the grid. See the ``{var}_order`` parameters to
		    control the order of levels of this variable.
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		share{x,y} : bool, 'col', or 'row' optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		{row,col,hue}_order : lists
		    Order for the levels of the faceting variables. By default, this
		    will be the order that the levels appear in ``data`` or, if the
		    variables are pandas categoricals, the category order.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		legend_out : bool
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		despine : boolean
		    Remove the top and right spines from the plots.
		margin_titles : bool
		    If ``True``, the titles for the row variable are drawn to the right of
		    the last column. This option is experimental and may not work in all
		    cases.    
		{x, y}lim: tuples
		    Limits for each of the axes on each facet (only relevant when
		    share{x, y} is True).
		subplot_kws : dict
		    Dictionary of keyword arguments passed to matplotlib subplot(s)
		    methods.
		gridspec_kws : dict
		    Dictionary of keyword arguments passed to
		    :class:`matplotlib.gridspec.GridSpec`
		    (via :meth:`matplotlib.figure.Figure.subplots`).
		    Ignored if ``col_wrap`` is not ``None``.
		
		See Also
		--------
		PairGrid : Subplot grid for plotting pairwise relationships
		relplot : Combine a relational plot and a :class:`FacetGrid`
		displot : Combine a distribution plot and a :class:`FacetGrid`
		catplot : Combine a categorical plot and a :class:`FacetGrid`
		lmplot : Combine a regression plot and a :class:`FacetGrid`
		
		Examples
		--------
		
		.. note::
		
		    These examples use seaborn functions to demonstrate some of the
		    advanced features of the class, but in most cases you will want
		    to use figue-level functions (e.g. :func:`displot`, :func:`relplot`)
		    to make the plots shown here.
		
		.. include:: ../docstrings/FacetGrid.rst
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?hue:Dynamic, ?col_wrap:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?palette:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?hue_order:Dynamic, ?hue_kws:Dynamic, ?dropna:Dynamic, ?legend_out:Dynamic, ?despine:Dynamic, ?margin_titles:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?subplot_kws:Dynamic, ?gridspec_kws:Dynamic, ?size:Dynamic):Dynamic;
	/**
		Initialize the matplotlib figure and FacetGrid object.
		
		This class maps a dataset onto multiple axes arrayed in a grid of rows
		and columns that correspond to *levels* of variables in the dataset.
		The plots it produces are often called "lattice", "trellis", or
		"small-multiple" graphics.
		
		It can also represent levels of a third variable with the ``hue``
		parameter, which plots different subsets of data in different colors.
		This uses color to resolve elements on a third dimension, but only
		draws subsets on top of each other and will not tailor the ``hue``
		parameter for the specific visualization the way that axes-level
		functions that accept ``hue`` will.
		
		The basic workflow is to initialize the :class:`FacetGrid` object with
		the dataset and the variables that are used to structure the grid. Then
		one or more plotting functions can be applied to each subset by calling
		:meth:`FacetGrid.map` or :meth:`FacetGrid.map_dataframe`. Finally, the
		plot can be tweaked with other methods to do things like change the
		axis labels, use different ticks, or add a legend. See the detailed
		code examples below for more information.
		
		.. warning::
		
		    When using seaborn functions that infer semantic mappings from a
		    dataset, care must be taken to synchronize those mappings across
		    facets (e.g., by defing the ``hue`` mapping with a palette dict or
		    setting the data type of the variables to ``category``). In most cases,
		    it will be better to use a figure-level function (e.g. :func:`relplot`
		    or :func:`catplot`) than to use :class:`FacetGrid` directly.
		
		See the :ref:`tutorial <grid_tutorial>` for more information.
		
		Parameters
		----------
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		row, col, hue : strings
		    Variables that define subsets of the data, which will be drawn on
		    separate facets in the grid. See the ``{var}_order`` parameters to
		    control the order of levels of this variable.
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		share{x,y} : bool, 'col', or 'row' optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		{row,col,hue}_order : lists
		    Order for the levels of the faceting variables. By default, this
		    will be the order that the levels appear in ``data`` or, if the
		    variables are pandas categoricals, the category order.
		hue_kws : dictionary of param -> list of values mapping
		    Other keyword arguments to insert into the plotting call to let
		    other plot attributes vary across levels of the hue variable (e.g.
		    the markers in a scatterplot).
		legend_out : bool
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		despine : boolean
		    Remove the top and right spines from the plots.
		margin_titles : bool
		    If ``True``, the titles for the row variable are drawn to the right of
		    the last column. This option is experimental and may not work in all
		    cases.    
		{x, y}lim: tuples
		    Limits for each of the axes on each facet (only relevant when
		    share{x, y} is True).
		subplot_kws : dict
		    Dictionary of keyword arguments passed to matplotlib subplot(s)
		    methods.
		gridspec_kws : dict
		    Dictionary of keyword arguments passed to
		    :class:`matplotlib.gridspec.GridSpec`
		    (via :meth:`matplotlib.figure.Figure.subplots`).
		    Ignored if ``col_wrap`` is not ``None``.
		
		See Also
		--------
		PairGrid : Subplot grid for plotting pairwise relationships
		relplot : Combine a relational plot and a :class:`FacetGrid`
		displot : Combine a distribution plot and a :class:`FacetGrid`
		catplot : Combine a categorical plot and a :class:`FacetGrid`
		lmplot : Combine a regression plot and a :class:`FacetGrid`
		
		Examples
		--------
		
		.. note::
		
		    These examples use seaborn functions to demonstrate some of the
		    advanced features of the class, but in most cases you will want
		    to use figue-level functions (e.g. :func:`displot`, :func:`relplot`)
		    to make the plots shown here.
		
		.. include:: ../docstrings/FacetGrid.rst
	**/
	public function new(data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?hue:Dynamic, ?col_wrap:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?palette:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?hue_order:Dynamic, ?hue_kws:Dynamic, ?dropna:Dynamic, ?legend_out:Dynamic, ?despine:Dynamic, ?margin_titles:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?subplot_kws:Dynamic, ?gridspec_kws:Dynamic, ?size:Dynamic):Void;
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
		Return a flat array of the bottom row of axes.
	**/
	public var _bottom_axes : Dynamic;
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
	public var _inner_axes : Dynamic;
	/**
		Return a flat array of the left column of axes.
	**/
	public var _left_axes : Dynamic;
	static public var _legend_out : Dynamic;
	static public var _margin_titles : Dynamic;
	/**
		Return a flat array of axes that aren't on the bottom row.
	**/
	public var _not_bottom_axes : Dynamic;
	/**
		Return a flat array of axes that aren't on the left column.
	**/
	public var _not_left_axes : Dynamic;
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
		The :class:`matplotlib.axes.Axes` when no faceting variables are assigned.
	**/
	public var ax : Dynamic;
	/**
		An array of the :class:`matplotlib.axes.Axes` objects in the grid.
	**/
	public var axes : Dynamic;
	/**
		A mapping of facet names to corresponding :class:`matplotlib.axes.Axes`.
		
		If only one of ``row`` or ``col`` is assigned, each key is a string
		representing a level of that variable. If both facet dimensions are
		assigned, each key is a ``({row_level}, {col_level})`` tuple.
	**/
	public var axes_dict : Dynamic;
	/**
		Remove axis spines from the facets.
	**/
	public function despine(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make the axis identified by these indices active and return it.
	**/
	public function facet_axis(row_i:Dynamic, col_j:Dynamic, ?modify_state:Dynamic):Dynamic;
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
	public function map(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Like ``.map`` but passes args as strings and inserts data in kwargs.
		
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
	public function map_dataframe(func:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a reference line(s) to each facet.
		
		Parameters
		----------
		x, y : numeric
		    Value(s) to draw the line(s) at.
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Specifies the color of the reference line(s). Pass ``color=None`` to
		    use ``hue`` mapping.
		linestyle : str
		    Specifies the style of the reference line(s).
		line_kws : key, value mappings
		    Other keyword arguments are passed to :meth:`matplotlib.axes.Axes.axvline`
		    when ``x`` is not None and :meth:`matplotlib.axes.Axes.axhline` when ``y``
		    is not None.
		
		Returns
		-------
		:class:`FacetGrid` instance
		    Returns ``self`` for easy method chaining.
	**/
	public function refline(?x:Dynamic, ?y:Dynamic, ?color:Dynamic, ?linestyle:Dynamic, ?line_kws:python.KwArgs<Dynamic>):Dynamic;
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
		Set axis labels on the left column and bottom row of the grid.
	**/
	public function set_axis_labels(?x_var:Dynamic, ?y_var:Dynamic, ?clear_inner:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	public function set_titles(?template:Dynamic, ?row_template:Dynamic, ?col_template:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Label the x axis on the bottom row of the grid.
	**/
	public function set_xlabels(?label:Dynamic, ?clear_inner:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set x axis tick labels of the grid.
	**/
	public function set_xticklabels(?labels:Dynamic, ?step:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Label the y axis on the left column of the grid.
	**/
	public function set_ylabels(?label:Dynamic, ?clear_inner:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set y axis tick labels on the left column of the grid.
	**/
	public function set_yticklabels(?labels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Call fig.tight_layout within rect that exclude the legend.
	**/
	public function tight_layout(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}