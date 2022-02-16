/* This file is generated, do not edit! */
package seaborn.axisgrid;
@:pythonImport("seaborn.axisgrid") extern class Axisgrid_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Raise if value for param is not in options.
	**/
	static public function _check_argument(param:Dynamic, options:Dynamic, value:Dynamic):Dynamic;
	static public var _core_docs : Dynamic;
	/**
		Decorator for methods that issues warnings for positional arguments.
		
		Using the keyword-only argument syntax in pep 3102, arguments after the
		* will issue a warning when passed as a positional argument.
		
		Parameters
		----------
		f : function
		    function to check arguments on
	**/
	static public function _deprecate_positional_args(f:Dynamic):Dynamic;
	/**
		Force draw of a matplotlib figure, accounting for back-compat.
	**/
	static public function _draw_figure(fig:Dynamic):Dynamic;
	static public var _facet_docs : Dynamic;
	static public var _param_docs : Dynamic;
	/**
		Make invisible-handle "subtitles" entries look more like titles.
	**/
	static public function adjust_legend_subtitles(legend:Dynamic):Dynamic;
	/**
		Make a palette that blends between a list of colors.
		
		Parameters
		----------
		colors : sequence of colors in various formats interpreted by ``input``
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    Number of colors in the palette.
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
	**/
	static public function blend_palette(colors:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return a list of unique data values.
		
		Determine an ordered list of levels in ``values``.
		
		Parameters
		----------
		vector : list, array, Categorical, or Series
		    Vector of "categorical" values
		order : list-like, optional
		    Desired order of category levels to override the order determined
		    from the ``values`` object.
		
		Returns
		-------
		order : list
		    Ordered list of category levels not including null values.
	**/
	static public function categorical_order(vector:Dynamic, ?order:Dynamic):Array<Dynamic>;
	/**
		Return a list of colors or continuous colormap defining a palette.
		
		Possible ``palette`` values include:
		    - Name of a seaborn palette (deep, muted, bright, pastel, dark, colorblind)
		    - Name of matplotlib colormap
		    - 'husl' or 'hls'
		    - 'ch:<cubehelix arguments>'
		    - 'light:<color>', 'dark:<color>', 'blend:<color>,<color>',
		    - A sequence of colors in any format matplotlib accepts
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
		See the :ref:`tutorial <palette_tutorial>` for more information.
		
		Parameters
		----------
		palette : None, string, or sequence, optional
		    Name of palette or None to return current palette. If a sequence, input
		    colors are used but possibly cycled and desaturated.
		n_colors : int, optional
		    Number of colors in the palette. If ``None``, the default will depend
		    on how ``palette`` is specified. Named palettes default to 6 colors,
		    but grabbing the current palette or passing in a list of colors will
		    not change the number of colors unless this is specified. Asking for
		    more colors than exist in the palette will cause it to cycle. Ignored
		    when ``as_cmap`` is True.
		desat : float, optional
		    Proportion to desaturate each color by.
		as_cmap : bool
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		set_palette : Set the default color cycle for all plots.
		set_color_codes : Reassign color codes like ``"b"``, ``"g"``, etc. to
		                  colors from one of the seaborn palettes.
		
		Examples
		--------
		
		.. include:: ../docstrings/color_palette.rst
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.
		
		Entirely blank lines are normalized to a newline character.
	**/
	static public function dedent(text:Dynamic):Dynamic;
	/**
		Draw a plot of two variables with bivariate and univariate graphs.
		
		This function provides a convenient interface to the :class:`JointGrid`
		class, with several canned plot kinds. This is intended to be a fairly
		lightweight wrapper; if you need more flexibility, you should use
		:class:`JointGrid` directly.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		kind : { "scatter" | "kde" | "hist" | "hex" | "reg" | "resid" }
		    Kind of plot to draw. See the examples for references to the underlying functions.
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Single color specification for when hue mapping is not used. Otherwise, the
		    plot will try to hook into the matplotlib property cycle.
		height : numeric
		    Size of the figure (it will be square).
		ratio : numeric
		    Ratio of joint axes height to marginal axes height.
		space : numeric
		    Space between the joint and marginal axes
		dropna : bool
		    If True, remove observations that are missing from ``x`` and ``y``.
		{x, y}lim : pairs of numbers
		    Axis limits to set before plotting.
		marginal_ticks : bool
		    If False, suppress ticks on the count/density axis of the marginal plots.
		{joint, marginal}_kws : dicts
		    Additional keyword arguments for the plot components.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		    Semantic variable that is mapped to determine the color of plot elements.
		palette : string, list, dict, or :class:`matplotlib.colors.Colormap`
		    Method for choosing the colors to use when mapping the ``hue`` semantic.
		    String values are passed to :func:`color_palette`. List or dict values
		    imply categorical mapping, while a colormap object implies numeric mapping.
		hue_order : vector of strings
		    Specify the order of processing and plotting for categorical levels of the
		    ``hue`` semantic.
		hue_norm : tuple or :class:`matplotlib.colors.Normalize`
		    Either a pair of values that set the normalization range in data units
		    or an object that will map from data units into a [0, 1] interval. Usage
		    implies numeric mapping.
		kwargs
		    Additional keyword arguments are passed to the function used to
		    draw the plot on the joint Axes, superseding items in the
		    ``joint_kws`` dictionary.
		
		Returns
		-------
		:class:`JointGrid`
		    An object managing multiple subplots that correspond to joint and marginal axes
		    for plotting a bivariate relationship or distribution.
		
		See Also
		--------
		JointGrid : Set up a figure with joint and marginal views on bivariate data.
		PairGrid : Set up a figure with joint and marginal views on multiple variables.
		jointplot : Draw multiple bivariate plots with univariate marginal distributions.
		
		Examples
		--------
		
		.. include:: ../docstrings/jointplot.rst
	**/
	static public function jointplot(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?kind:Dynamic, ?color:Dynamic, ?height:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?marginal_ticks:Dynamic, ?joint_kws:Dynamic, ?marginal_kws:Dynamic, ?hue:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot pairwise relationships in a dataset.
		
		By default, this function will create a grid of Axes such that each numeric
		variable in ``data`` will by shared across the y-axes across a single row and
		the x-axes across a single column. The diagonal plots are treated
		differently: a univariate distribution plot is drawn to show the marginal
		distribution of the data in each column.
		
		It is also possible to show a subset of variables or plot different
		variables on the rows and columns.
		
		This is a high-level interface for :class:`PairGrid` that is intended to
		make it easy to draw a few common styles. You should use :class:`PairGrid`
		directly if you need more flexibility.
		
		Parameters
		----------
		data : `pandas.DataFrame`
		    Tidy (long-form) dataframe where each column is a variable and
		    each row is an observation.
		hue : name of variable in ``data``
		    Variable in ``data`` to map plot aspects to different colors.
		hue_order : list of strings
		    Order for the levels of the hue variable in the palette
		palette : dict or seaborn color palette
		    Set of colors for mapping the ``hue`` variable. If a dict, keys
		    should be values  in the ``hue`` variable.
		vars : list of variable names
		    Variables within ``data`` to use, otherwise use every column with
		    a numeric datatype.
		{x, y}_vars : lists of variable names
		    Variables within ``data`` to use separately for the rows and
		    columns of the figure; i.e. to make a non-square plot.
		kind : {'scatter', 'kde', 'hist', 'reg'}
		    Kind of plot to make.
		diag_kind : {'auto', 'hist', 'kde', None}
		    Kind of plot for the diagonal subplots. If 'auto', choose based on
		    whether or not ``hue`` is used.
		markers : single matplotlib marker code or list
		    Either the marker to use for all scatterplot points or a list of markers
		    with a length the same as the number of levels in the hue variable so that
		    differently colored points will also have different scatterplot
		    markers.
		height : scalar
		    Height (in inches) of each facet.
		aspect : scalar
		    Aspect * height gives the width (in inches) of each facet.
		corner : bool
		    If True, don't add axes to the upper (off-diagonal) triangle of the
		    grid, making this a "corner" plot.
		dropna : boolean
		    Drop missing values from the data before plotting.
		{plot, diag, grid}_kws : dicts
		    Dictionaries of keyword arguments. ``plot_kws`` are passed to the
		    bivariate plotting function, ``diag_kws`` are passed to the univariate
		    plotting function, and ``grid_kws`` are passed to the :class:`PairGrid`
		    constructor.
		
		Returns
		-------
		grid : :class:`PairGrid`
		    Returns the underlying :class:`PairGrid` instance for further tweaking.
		
		See Also
		--------
		PairGrid : Subplot grid for more flexible plotting of pairwise relationships.
		JointGrid : Grid for plotting joint and marginal distributions of two variables.
		
		Examples
		--------
		
		.. include:: ../docstrings/pairplot.rst
	**/
	static public function pairplot(data:Dynamic, ?hue:Dynamic, ?hue_order:Dynamic, ?palette:Dynamic, ?vars:Dynamic, ?x_vars:Dynamic, ?y_vars:Dynamic, ?kind:Dynamic, ?diag_kind:Dynamic, ?markers:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?corner:Dynamic, ?dropna:Dynamic, ?plot_kws:Dynamic, ?diag_kws:Dynamic, ?grid_kws:Dynamic, ?size:Dynamic):Dynamic;
	/**
		Get a signature object for the passed callable.
	**/
	static public function signature(obj:Dynamic, ?follow_wrapped:Dynamic):Dynamic;
	/**
		Determine whether a vector contains numeric, categorical, or datetime data.
		
		This function differs from the pandas typing API in two ways:
		
		- Python sequences or object-typed PyData objects are considered numeric if
		  all of their entries are numeric.
		- String or mixed-type data are considered categorical even if not
		  explicitly represented as a :class:`pandas.api.types.CategoricalDtype`.
		
		Parameters
		----------
		vector : :func:`pandas.Series`, :func:`numpy.ndarray`, or Python sequence
		    Input data to test.
		boolean_type : 'numeric' or 'categorical'
		    Type to use for vectors containing only 0s and 1s (and NAs).
		
		Returns
		-------
		var_type : 'numeric', 'categorical', or 'datetime'
		    Name identifying the type of data in the vector.
	**/
	static public function variable_type(vector:Dynamic, ?boolean_type:Dynamic):Dynamic;
}