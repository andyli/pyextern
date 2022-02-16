/* This file is generated, do not edit! */
package seaborn.relational;
@:pythonImport("seaborn.relational") extern class Relational_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var _facet_docs : Dynamic;
	static public var _param_docs : Dynamic;
	static public var _relational_docs : Dynamic;
	static public var _relational_narrative : Dynamic;
	/**
		Make invisible-handle "subtitles" entries look more like titles.
	**/
	static public function adjust_legend_subtitles(legend:Dynamic):Dynamic;
	/**
		Resample one or more arrays with replacement and store aggregate values.
		
		Positional arguments are a sequence of arrays to bootstrap along the first
		axis and pass to a summary function.
		
		Keyword arguments:
		    n_boot : int, default 10000
		        Number of iterations
		    axis : int, default None
		        Will pass axis to ``func`` as a keyword argument.
		    units : array, default None
		        Array of sampling unit IDs. When used the bootstrap resamples units
		        and then observations within units instead of individual
		        datapoints.
		    func : string or callable, default np.mean
		        Function to call on the args that are passed in. If string, tries
		        to use as named method on numpy array.
		    seed : Generator | SeedSequence | RandomState | int | None
		        Seed for the random number generator; useful if you want
		        reproducible resamples.
		
		Returns
		-------
		boot_dist: array
		    array of bootstrapped statistic values
	**/
	static public function bootstrap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a percentile range from an array of values.
	**/
	static public function ci_func(a:Dynamic, ?which:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Convert intervals to error arguments relative to plot heights.
		
		Parameters
		----------
		cis : 2 x n sequence
		    sequence of confidence interval limits
		heights : n sequence
		    sequence of plot heights
		
		Returns
		-------
		errsize : 2 x n array
		    sequence of error size relative to height values in correct
		    format as argument for plt.bar
	**/
	static public function ci_to_errsize(cis:Dynamic, heights:Dynamic):Dynamic;
	/**
		Draw a line plot with possibility of several semantic groupings.
		
		The relationship between ``x`` and ``y`` can be shown for different subsets
		of the data using the ``hue``, ``size``, and ``style`` parameters. These
		parameters control what visual semantics are used to identify the different
		subsets. It is possible to show up to three dimensions independently by
		using all three semantic types, but this style of plot can be hard to
		interpret and is often ineffective. Using redundant semantics (i.e. both
		``hue`` and ``style`` for the same variable) can be helpful for making
		graphics more accessible.
		
		See the :ref:`tutorial <relational_tutorial>` for more information.
		
		The default treatment of the ``hue`` (and to a lesser extent, ``size``)
		semantic, if present, depends on whether the variable is inferred to
		represent "numeric" or "categorical" data. In particular, numeric variables
		are represented with a sequential colormap by default, and the legend
		entries show regular "ticks" with values that may or may not exist in the
		data. This behavior can be controlled through various parameters, as
		described and illustrated below.
		
		By default, the plot aggregates over multiple ``y`` values at each value of
		``x`` and shows an estimate of the central tendency and a confidence
		interval for that estimate.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Grouping variable that will produce lines with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : vector or key in ``data``
		    Grouping variable that will produce lines with different widths.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : vector or key in ``data``
		    Grouping variable that will produce lines with different dashes
		    and/or markers. Can have a numeric dtype but will always be treated
		    as categorical.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
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
		sizes : list, dict, or tuple
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.
		size_order : list
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.
		size_norm : tuple or Normalize object
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.
		dashes : boolean, list, or dictionary
		    Object determining how to draw the lines for different levels of the
		    ``style`` variable. Setting to ``True`` will use default dash codes, or
		    you can pass a list of dash codes or a dictionary mapping levels of the
		    ``style`` variable to dash codes. Setting to ``False`` will use solid
		    lines for all subsets. Dashes are specified as in matplotlib: a tuple
		    of ``(segment, gap)`` lengths, or an empty string to draw a solid line.
		markers : boolean, list, or dictionary
		    Object determining how to draw the markers for different levels of the
		    ``style`` variable. Setting to ``True`` will use default markers, or
		    you can pass a list of markers or a dictionary mapping levels of the
		    ``style`` variable to markers. Setting to ``False`` will draw
		    marker-less lines.  Markers are specified as in matplotlib.
		style_order : list
		    Specified order for appearance of the ``style`` variable levels
		    otherwise they are determined from the data. Not relevant when the
		    ``style`` variable is numeric.
		units : vector or key in ``data``
		    Grouping variable identifying sampling units. When used, a separate
		    line will be drawn for each unit with appropriate semantics, but no
		    legend entry will be added. Useful for showing distribution of
		    experimental replicates when exact identities are not needed.
		estimator : name of pandas method or callable or None
		    Method for aggregating across multiple observations of the ``y``
		    variable at the same ``x`` level. If ``None``, all observations will
		    be drawn.
		ci : int or "sd" or None
		    Size of the confidence interval to draw when aggregating with an
		    estimator. "sd" means to draw the standard deviation of the data.
		    Setting to ``None`` will skip bootstrapping.
		n_boot : int
		    Number of bootstraps to use for computing the confidence interval.
		seed : int, numpy.random.Generator, or numpy.random.RandomState
		    Seed or random number generator for reproducible bootstrapping.
		sort : boolean
		    If True, the data will be sorted by the x and y variables, otherwise
		    lines will connect points in the order they appear in the dataset.
		err_style : "band" or "bars"
		    Whether to draw the confidence intervals with translucent error bands
		    or discrete error bars.
		err_kws : dict of keyword arguments
		    Additional paramters to control the aesthetics of the error bars. The
		    kwargs are passed either to :meth:`matplotlib.axes.Axes.fill_between`
		    or :meth:`matplotlib.axes.Axes.errorbar`, depending on ``err_style``.
		legend : "auto", "brief", "full", or False
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If "auto",
		    choose between brief or full representation based on number of levels.
		    If ``False``, no legend data is added and no legend is drawn.
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		kwargs : key, value mappings
		    Other keyword arguments are passed down to
		    :meth:`matplotlib.axes.Axes.plot`.
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		See Also
		--------
		scatterplot : Plot data using points.
		pointplot : Plot point estimates and CIs using markers and lines.
		
		Examples
		--------
		
		.. include:: ../docstrings/lineplot.rst
	**/
	static public function lineplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?dashes:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?seed:Dynamic, ?sort:Dynamic, ?err_style:Dynamic, ?err_kws:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return levels and formatted levels for brief numeric legends.
	**/
	static public function locator_to_legend_entries(locator:Dynamic, limits:Dynamic, dtype:Dynamic):Dynamic;
	/**
		Figure-level interface for drawing relational plots onto a FacetGrid.
		
		This function provides access to several different axes-level functions
		that show the relationship between two variables with semantic mappings
		of subsets. The ``kind`` parameter selects the underlying axes-level
		function to use:
		
		- :func:`scatterplot` (with ``kind="scatter"``; the default)
		- :func:`lineplot` (with ``kind="line"``)
		
		Extra keyword arguments are passed to the underlying function, so you
		should refer to the documentation for each to see kind-specific options.
		
		The relationship between ``x`` and ``y`` can be shown for different subsets
		of the data using the ``hue``, ``size``, and ``style`` parameters. These
		parameters control what visual semantics are used to identify the different
		subsets. It is possible to show up to three dimensions independently by
		using all three semantic types, but this style of plot can be hard to
		interpret and is often ineffective. Using redundant semantics (i.e. both
		``hue`` and ``style`` for the same variable) can be helpful for making
		graphics more accessible.
		
		See the :ref:`tutorial <relational_tutorial>` for more information.
		
		The default treatment of the ``hue`` (and to a lesser extent, ``size``)
		semantic, if present, depends on whether the variable is inferred to
		represent "numeric" or "categorical" data. In particular, numeric variables
		are represented with a sequential colormap by default, and the legend
		entries show regular "ticks" with values that may or may not exist in the
		data. This behavior can be controlled through various parameters, as
		described and illustrated below.
		
		After plotting, the :class:`FacetGrid` with the plot is returned and can
		be used directly to tweak supporting plot details or add other layers.
		
		Note that, unlike when using the underlying plotting functions directly,
		data must be passed in a long-form DataFrame with variables specified by
		passing strings to ``x``, ``y``, and other parameters.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Grouping variable that will produce elements with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : vector or key in ``data``
		    Grouping variable that will produce elements with different sizes.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : vector or key in ``data``
		    Grouping variable that will produce elements with different styles.
		    Can have a numeric dtype but will always be treated as categorical.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		row, col : vectors or keys in ``data``
		    Variables that define subsets to plot on different facets.    
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		row_order, col_order : lists of strings
		    Order to organize the rows and/or columns of the grid in, otherwise the
		    orders are inferred from the data objects.
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
		sizes : list, dict, or tuple
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.
		size_order : list
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.
		size_norm : tuple or Normalize object
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.
		style_order : list
		    Specified order for appearance of the ``style`` variable levels
		    otherwise they are determined from the data. Not relevant when the
		    ``style`` variable is numeric.
		dashes : boolean, list, or dictionary
		    Object determining how to draw the lines for different levels of the
		    ``style`` variable. Setting to ``True`` will use default dash codes, or
		    you can pass a list of dash codes or a dictionary mapping levels of the
		    ``style`` variable to dash codes. Setting to ``False`` will use solid
		    lines for all subsets. Dashes are specified as in matplotlib: a tuple
		    of ``(segment, gap)`` lengths, or an empty string to draw a solid line.
		markers : boolean, list, or dictionary
		    Object determining how to draw the markers for different levels of the
		    ``style`` variable. Setting to ``True`` will use default markers, or
		    you can pass a list of markers or a dictionary mapping levels of the
		    ``style`` variable to markers. Setting to ``False`` will draw
		    marker-less lines.  Markers are specified as in matplotlib.
		legend : "auto", "brief", "full", or False
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If "auto",
		    choose between brief or full representation based on number of levels.
		    If ``False``, no legend data is added and no legend is drawn.
		kind : string
		    Kind of plot to draw, corresponding to a seaborn relational plot.
		    Options are {``scatter`` and ``line``}.
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		facet_kws : dict
		    Dictionary of other keyword arguments to pass to :class:`FacetGrid`.
		units : vector or key in ``data``
		    Grouping variable identifying sampling units. When used, a separate
		    line will be drawn for each unit with appropriate semantics, but no
		    legend entry will be added. Useful for showing distribution of
		    experimental replicates when exact identities are not needed.
		kwargs : key, value pairings
		    Other keyword arguments are passed through to the underlying plotting
		    function.
		
		Returns
		-------
		:class:`FacetGrid`
		    An object managing one or more subplots that correspond to conditional data
		    subsets with convenient methods for batch-setting of axes attributes.
		
		Examples
		--------
		
		.. include:: ../docstrings/relplot.rst
	**/
	static public function relplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?col_wrap:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?markers:Dynamic, ?dashes:Dynamic, ?style_order:Dynamic, ?legend:Dynamic, ?kind:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?facet_kws:Dynamic, ?units:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a scatter plot with possibility of several semantic groupings.
		
		The relationship between ``x`` and ``y`` can be shown for different subsets
		of the data using the ``hue``, ``size``, and ``style`` parameters. These
		parameters control what visual semantics are used to identify the different
		subsets. It is possible to show up to three dimensions independently by
		using all three semantic types, but this style of plot can be hard to
		interpret and is often ineffective. Using redundant semantics (i.e. both
		``hue`` and ``style`` for the same variable) can be helpful for making
		graphics more accessible.
		
		See the :ref:`tutorial <relational_tutorial>` for more information.
		
		The default treatment of the ``hue`` (and to a lesser extent, ``size``)
		semantic, if present, depends on whether the variable is inferred to
		represent "numeric" or "categorical" data. In particular, numeric variables
		are represented with a sequential colormap by default, and the legend
		entries show regular "ticks" with values that may or may not exist in the
		data. This behavior can be controlled through various parameters, as
		described and illustrated below.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Grouping variable that will produce points with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : vector or key in ``data``
		    Grouping variable that will produce points with different sizes.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : vector or key in ``data``
		    Grouping variable that will produce points with different markers.
		    Can have a numeric dtype but will always be treated as categorical.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
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
		sizes : list, dict, or tuple
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.
		size_order : list
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.
		size_norm : tuple or Normalize object
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.
		markers : boolean, list, or dictionary
		    Object determining how to draw the markers for different levels of the
		    ``style`` variable. Setting to ``True`` will use default markers, or
		    you can pass a list of markers or a dictionary mapping levels of the
		    ``style`` variable to markers. Setting to ``False`` will draw
		    marker-less lines.  Markers are specified as in matplotlib.
		style_order : list
		    Specified order for appearance of the ``style`` variable levels
		    otherwise they are determined from the data. Not relevant when the
		    ``style`` variable is numeric.
		{x,y}_bins : lists or arrays or functions
		    *Currently non-functional.*
		units : vector or key in ``data``
		    Grouping variable identifying sampling units. When used, a separate
		    line will be drawn for each unit with appropriate semantics, but no
		    legend entry will be added. Useful for showing distribution of
		    experimental replicates when exact identities are not needed.
		    *Currently non-functional.*
		estimator : name of pandas method or callable or None
		    Method for aggregating across multiple observations of the ``y``
		    variable at the same ``x`` level. If ``None``, all observations will
		    be drawn.
		    *Currently non-functional.*
		ci : int or "sd" or None
		    Size of the confidence interval to draw when aggregating with an
		    estimator. "sd" means to draw the standard deviation of the data.
		    Setting to ``None`` will skip bootstrapping.
		    *Currently non-functional.*
		n_boot : int
		    Number of bootstraps to use for computing the confidence interval.
		    *Currently non-functional.*
		alpha : float
		    Proportional opacity of the points.
		{x,y}_jitter : booleans or floats
		    *Currently non-functional.*
		legend : "auto", "brief", "full", or False
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If "auto",
		    choose between brief or full representation based on number of levels.
		    If ``False``, no legend data is added and no legend is drawn.
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		kwargs : key, value mappings
		    Other keyword arguments are passed down to
		    :meth:`matplotlib.axes.Axes.scatter`.
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		See Also
		--------
		lineplot : Plot data using lines.
		stripplot : Plot a categorical scatter with jitter.
		swarmplot : Plot a categorical scatter with non-overlapping points.
		
		Examples
		--------
		
		.. include:: ../docstrings/scatterplot.rst
	**/
	static public function scatterplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?style:Dynamic, ?size:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?x_bins:Dynamic, ?y_bins:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?alpha:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}