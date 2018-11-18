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
	static public var _facet_docs : Dynamic;
	/**
		Turn stringified cubehelix params into args/kwargs.
	**/
	static public function _parse_cubehelix_args(argstr:Dynamic):Dynamic;
	static public var _relational_docs : Dynamic;
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
		    smooth : bool, default False
		        If True, performs a smoothed bootstrap (draws samples from a kernel
		        destiny estimate); only works for one-dimensional inputs and cannot
		        be used `units` is present.
		    func : string or callable, default np.mean
		        Function to call on the args that are passed in. If string, tries
		        to use as named method on numpy array.
		    random_seed : int | None, default None
		        Seed for the random number generator; useful if you want
		        reproducible resamples.
		
		Returns
		-------
		boot_dist: array
		    array of bootstrapped statistic values
	**/
	static public function bootstrap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a list of unique data values.
		
		Determine an ordered list of levels in ``values``.
		
		Parameters
		----------
		values : list, array, Categorical, or Series
		    Vector of "categorical" values
		order : list-like, optional
		    Desired order of category levels to override the order determined
		    from the ``values`` object.
		
		Returns
		-------
		order : list
		    Ordered list of category levels not including null values.
	**/
	static public function categorical_order(values:Dynamic, ?order:Dynamic):Array<Dynamic>;
	/**
		Convert intervals to error arguments relative to plot heights.
		
		Parameters
		----------
		cis: 2 x n sequence
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
		Return a list of colors defining a color palette.
		
		Available seaborn palette names:
		    deep, muted, bright, pastel, dark, colorblind
		
		Other options:
		    name of matplotlib cmap, 'ch:<cubehelix arguments>', 'hls', 'husl',
		    or a list of colors in any format matplotlib accepts
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		Matplotlib palettes can be specified as reversed palettes by appending
		"_r" to the name or as "dark" palettes by appending "_d" to the name.
		(These options are mutually exclusive, but the resulting list of colors
		can also be reversed).
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
		See the :ref:`tutorial <palette_tutorial>` for more information.
		
		Parameters
		----------
		palette: None, string, or sequence, optional
		    Name of palette or None to return current palette. If a sequence, input
		    colors are used but possibly cycled and desaturated.
		n_colors : int, optional
		    Number of colors in the palette. If ``None``, the default will depend
		    on how ``palette`` is specified. Named palettes default to 6 colors,
		    but grabbing the current palette or passing in a list of colors will
		    not change the number of colors unless this is specified. Asking for
		    more colors than exist in the palette will cause it to cycle.
		desat : float, optional
		    Proportion to desaturate each color by.
		
		Returns
		-------
		palette : list of RGB tuples.
		    Color palette. Behaves like a list, but can be used as a context
		    manager and possesses an ``as_hex`` method to convert to hex color
		    codes.
		
		See Also
		--------
		set_palette : Set the default color cycle for all plots.
		set_color_codes : Reassign color codes like ``"b"``, ``"g"``, etc. to
		                  colors from one of the seaborn palettes.
		
		Examples
		--------
		
		Calling with no arguments returns all colors from the current default
		color cycle:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.color_palette())
		
		Show one of the other "seaborn palettes", which have the same basic order
		of hues as the default matplotlib color cycle but more attractive colors.
		Calling with the name of a palette will return 6 colors by default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("muted"))
		
		Use discrete values from one of the built-in matplotlib colormaps:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("RdBu", n_colors=7))
		
		Make a customized cubehelix color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("ch:2.5,-.2,dark=.3"))
		
		Use a categorical matplotlib palette and add some desaturation:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Set1", n_colors=8, desat=.5))
		
		Make a "dark" matplotlib sequential palette variant. (This can be good
		when coloring multiple lines or points that correspond to an ordered
		variable, where you don't want the lightest lines to be invisible):
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Blues_d"))
		
		Use as a context manager:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, matplotlib.pyplot as plt
		    >>> with sns.color_palette("husl", 8):
		    ...    _ = plt.plot(np.c_[np.zeros(8), np.arange(8)].T)
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic):Dynamic;
	/**
		Make a sequential palette from the cubehelix system.
		
		This produces a colormap with linearly-decreasing (or increasing)
		brightness. That means that information will be preserved if printed to
		black and white or viewed by someone who is colorblind.  "cubehelix" is
		also available as a matplotlib-based palette, but this function gives the
		user more control over the look of the palette and has a different set of
		defaults.
		
		In addition to using this function, it is also possible to generate a
		cubehelix palette generally in seaborn using a string-shorthand; see the
		example below.
		
		Parameters
		----------
		n_colors : int
		    Number of colors in the palette.
		start : float, 0 <= start <= 3
		    The hue at the start of the helix.
		rot : float
		    Rotations around the hue wheel over the range of the palette.
		gamma : float 0 <= gamma
		    Gamma factor to emphasize darker (gamma < 1) or lighter (gamma > 1)
		    colors.
		hue : float, 0 <= hue <= 1
		    Saturation of the colors.
		dark : float 0 <= dark <= 1
		    Intensity of the darkest color in the palette.
		light : float 0 <= light <= 1
		    Intensity of the lightest color in the palette.
		reverse : bool
		    If True, the palette will go from dark to light.
		as_cmap : bool
		    If True, return a matplotlib colormap instead of a list of colors.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		choose_cubehelix_palette : Launch an interactive widget to select cubehelix
		                           palette parameters.
		dark_palette : Create a sequential palette with dark low values.
		light_palette : Create a sequential palette with bright low values.
		
		References
		----------
		Green, D. A. (2011). "A colour scheme for the display of astronomical
		intensity images". Bulletin of the Astromical Society of India, Vol. 39,
		p. 289-295.
		
		Examples
		--------
		
		Generate the default palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.cubehelix_palette())
		
		Rotate backwards from the same starting location:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(rot=-.4))
		
		Use a different starting point and shorter rotation:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(start=2.8, rot=.1))
		
		Reverse the direction of the lightness ramp:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.cubehelix_palette(reverse=True))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.cubehelix_palette(as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
		
		Use the full lightness range:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=0, light=1, as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
		
		Use through the :func:`color_palette` interface:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("ch:2,r=.2,l=.6"))
	**/
	static public function cubehelix_palette(?n_colors:Dynamic, ?start:Dynamic, ?rot:Dynamic, ?gamma:Dynamic, ?hue:Dynamic, ?light:Dynamic, ?dark:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Remove any common leading whitespace from every line in `text`.
		
		This can be used to make triple-quoted strings line up with the left
		edge of the display, while still presenting them in the source code
		in indented form.
		
		Note that tabs and spaces are both treated as whitespace, but they
		are not equal: the lines "  hello" and "\thello" are
		considered to have no common leading whitespace.  (This behaviour is
		new in Python 2.5; older versions of this module incorrectly
		expanded tabs before searching for common leading whitespace.)
	**/
	static public function dedent(text:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Return the list of colors in the current matplotlib color cycle.
	**/
	static public function get_color_cycle():Dynamic;
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
		
		By default, the plot aggregates over multiple ``y`` values at each value of
		``x`` and shows an estimate of the central tendency and a confidence
		interval for that estimate.
		
		Parameters
		----------
		x, y : names of variables in ``data`` or vector data, optional
		    Input data variables; must be numeric. Can pass data directly or
		    reference columns in ``data``.    
		hue : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce lines with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce lines with different widths.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce lines with different dashes
		    and/or markers. Can have a numeric dtype but will always be treated
		    as categorical.
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		palette : palette name, list, or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		hue_order : list, optional
		    Specified order for the appearance of the ``hue`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``hue`` variable is numeric.    
		hue_norm : tuple or Normalize object, optional
		    Normalization in data units for colormap applied to the ``hue``
		    variable when it is numeric. Not relevant if it is categorical.    
		sizes : list, dict, or tuple, optional
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.    
		size_order : list, optional
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.    
		size_norm : tuple or Normalize object, optional
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.    
		dashes : boolean, list, or dictionary, optional
		    Object determining how to draw the lines for different levels of the
		    ``style`` variable. Setting to ``True`` will use default dash codes, or
		    you can pass a list of dash codes or a dictionary mapping levels of the
		    ``style`` variable to dash codes. Setting to ``False`` will use solid
		    lines for all subsets. Dashes are specified as in matplotlib: a tuple
		    of ``(segment, gap)`` lengths, or an empty string to draw a solid line.
		markers : boolean, list, or dictionary, optional
		    Object determining how to draw the markers for different levels of the
		    ``style`` variable. Setting to ``True`` will use default markers, or
		    you can pass a list of markers or a dictionary mapping levels of the
		    ``style`` variable to markers. Setting to ``False`` will draw
		    marker-less lines.  Markers are specified as in matplotlib.    
		style_order : list, optional
		    Specified order for appearance of the ``style`` variable levels
		    otherwise they are determined from the data. Not relevant when the
		    ``style`` variable is numeric.    
		units : {long_form_var}
		    Grouping variable identifying sampling units. When used, a separate
		    line will be drawn for each unit with appropriate semantics, but no
		    legend entry will be added. Useful for showing distribution of
		    experimental replicates when exact identities are not needed.
		
		estimator : name of pandas method or callable or None, optional
		    Method for aggregating across multiple observations of the ``y``
		    variable at the same ``x`` level. If ``None``, all observations will
		    be drawn.    
		ci : int or "sd" or None, optional
		    Size of the confidence interval to draw when aggregating with an
		    estimator. "sd" means to draw the standard deviation of the data.
		    Setting to ``None`` will skip bootstrapping.    
		n_boot : int, optional
		    Number of bootstraps to use for computing the confidence interval.    
		sort : boolean, optional
		    If True, the data will be sorted by the x and y variables, otherwise
		    lines will connect points in the order they appear in the dataset.
		err_style : "band" or "bars", optional
		    Whether to draw the confidence intervals with translucent error bands
		    or discrete error bars.
		err_band : dict of keyword arguments
		    Additional paramters to control the aesthetics of the error bars. The
		    kwargs are passed either to ``ax.fill_between`` or ``ax.errorbar``,
		    depending on the ``err_style``.
		legend : "brief", "full", or False, optional
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If ``False``,
		    no legend data is added and no legend is drawn.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed down to ``plt.plot`` at draw time.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		scatterplot : Show the relationship between two variables without
		              emphasizing continuity of the ``x`` variable.
		pointplot : Show the relationship between two variables when one is
		            categorical.
		
		Examples
		--------
		
		Draw a single line plot with error bands showing a confidence interval:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> import matplotlib.pyplot as plt
		    >>> fmri = sns.load_dataset("fmri")
		    >>> ax = sns.lineplot(x="timepoint", y="signal", data=fmri)
		
		Group by another variable and show the groups with different colors:
		
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal", hue="event",
		    ...                   data=fmri)
		
		Show the grouping variable with both color and line dashing:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal",
		    ...                   hue="event", style="event", data=fmri)
		
		Use color and line dashing to represent two different grouping variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal",
		    ...                   hue="region", style="event", data=fmri)
		
		Use markers instead of the dashes to identify groups:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal",
		    ...                   hue="event", style="event",
		    ...                   markers=True, dashes=False, data=fmri)
		
		Show error bars instead of error bands and plot the standard error:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal", hue="event",
		    ...                   err_style="bars", ci=68, data=fmri)
		
		Show experimental replicates instead of aggregating:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="timepoint", y="signal", hue="event",
		    ...                   units="subject", estimator=None, lw=1,
		    ...                   data=fmri.query("region == 'frontal'"))
		
		Use a quantitative color mapping:
		
		.. plot::
		    :context: close-figs
		
		    >>> dots = sns.load_dataset("dots").query("align == 'dots'")
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   hue="coherence", style="choice",
		    ...                   data=dots)
		
		Use a different normalization for the colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> from matplotlib.colors import LogNorm
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   hue="coherence", style="choice",
		    ...                   hue_norm=LogNorm(), data=dots)
		
		Use a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   hue="coherence", style="choice",
		    ...                   palette="ch:2.5,.25", data=dots)
		
		Use specific color values, treating the hue variable as categorical:
		
		.. plot::
		    :context: close-figs
		
		    >>> palette = sns.color_palette("mako_r", 6)
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   hue="coherence", style="choice",
		    ...                   palette=palette, data=dots)
		
		Change the width of the lines with a quantitative variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   size="coherence", hue="choice",
		    ...                   legend="full", data=dots)
		
		Change the range of line widths used to normalize the size variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(x="time", y="firing_rate",
		    ...                   size="coherence", hue="choice",
		    ...                   sizes=(.25, 2.5), data=dots)
		
		Plot from a wide-form DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, pandas as pd; plt.close("all")
		    >>> index = pd.date_range("1 1 2000", periods=100,
		    ...                       freq="m", name="date")
		    >>> data = np.random.randn(100, 4).cumsum(axis=0)
		    >>> wide_df = pd.DataFrame(data, index, ["a", "b", "c", "d"])
		    >>> ax = sns.lineplot(data=wide_df)
		
		Plot from a list of Series:
		
		.. plot::
		    :context: close-figs
		
		    >>> list_data = [wide_df.loc[:"2005", "a"], wide_df.loc["2003":, "b"]]
		    >>> ax = sns.lineplot(data=list_data)
		
		Plot a single Series, pass kwargs to ``plt.plot``:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.lineplot(data=wide_df["a"], color="coral", label="line")
		
		Draw lines at points as they appear in the dataset:
		
		.. plot::
		    :context: close-figs
		
		    >>> x, y = np.random.randn(2, 5000).cumsum(axis=1)
		    >>> ax = sns.lineplot(x=x, y=y, sort=False, lw=1)
	**/
	static public function lineplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?dashes:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?sort:Dynamic, ?err_style:Dynamic, ?err_kws:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		After plotting, the :class:`FacetGrid` with the plot is returned and can
		be used directly to tweak supporting plot details or add other layers.
		
		Note that, unlike when using the underlying plotting functions directly,
		data must be passed in a long-form DataFrame with variables specified by
		passing strings to ``x``, ``y``, and other parameters.
		
		Parameters
		----------
		x, y : names of variables in ``data``
		    Input data variables; must be numeric.
		hue : name in ``data``, optional
		    Grouping variable that will produce elements with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : name in ``data``, optional
		    Grouping variable that will produce elements with different sizes.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : name in ``data``, optional
		    Grouping variable that will produce elements with different styles.
		    Can have a numeric dtype but will always be treated as categorical.
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		row, col : names of variables in ``data``, optional
		    Categorical variables that will determine the faceting of the grid.
		col_wrap : int, optional
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		row_order, col_order : lists of strings, optional
		    Order to organize the rows and/or columns of the grid in, otherwise the
		    orders are inferred from the data objects.
		palette : palette name, list, or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		hue_order : list, optional
		    Specified order for the appearance of the ``hue`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``hue`` variable is numeric.    
		hue_norm : tuple or Normalize object, optional
		    Normalization in data units for colormap applied to the ``hue``
		    variable when it is numeric. Not relevant if it is categorical.    
		sizes : list, dict, or tuple, optional
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.    
		size_order : list, optional
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.    
		size_norm : tuple or Normalize object, optional
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.    
		legend : "brief", "full", or False, optional
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If ``False``,
		    no legend data is added and no legend is drawn.    
		kind : string, optional
		    Kind of plot to draw, corresponding to a seaborn relational plot.
		    Options are {``scatter`` and ``line``}.
		height : scalar, optional
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar, optional
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		facet_kws : dict, optional
		    Dictionary of other keyword arguments to pass to :class:`FacetGrid`.
		kwargs : key, value pairings
		    Other keyword arguments are passed through to the underlying plotting
		    function.
		
		Returns
		-------
		g : :class:`FacetGrid`
		    Returns the :class:`FacetGrid` object with the plot on it for further
		    tweaking.
		
		Examples
		--------
		
		Draw a single facet to use the :class:`FacetGrid` legend placement:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set(style="ticks")
		    >>> tips = sns.load_dataset("tips")
		    >>> g = sns.relplot(x="total_bill", y="tip", hue="day", data=tips)
		
		Facet on the columns with another variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.relplot(x="total_bill", y="tip",
		    ...                 hue="day", col="time", data=tips)
		
		Facet on the columns and rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.relplot(x="total_bill", y="tip", hue="day",
		    ...                 col="time", row="sex", data=tips)
		
		"Wrap" many column facets into multiple rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.relplot(x="total_bill", y="tip", hue="time",
		    ...                 col="day", col_wrap=2, data=tips)
		
		Use multiple semantic variables on each facet with specified attributes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.relplot(x="total_bill", y="tip", hue="time", size="size",
		    ...                 palette=["b", "r"], sizes=(10, 100),
		    ...                 col="time", data=tips)
		
		Use a different kind of plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> fmri = sns.load_dataset("fmri")
		    >>> g = sns.relplot(x="timepoint", y="signal",
		    ...                 hue="event", style="event", col="region",
		    ...                 kind="line", data=fmri)
		
		Change the size of each facet:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.relplot(x="timepoint", y="signal",
		    ...                 hue="event", style="event", col="region",
		    ...                 height=5, aspect=.7, kind="line", data=fmri)
	**/
	static public function relplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?size:Dynamic, ?style:Dynamic, ?data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?col_wrap:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?markers:Dynamic, ?dashes:Dynamic, ?style_order:Dynamic, ?legend:Dynamic, ?kind:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?facet_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper method for removing NA values from array-like.
		
		Parameters
		----------
		arr : array-like
		    The array-like from which to remove NA values.
		
		Returns
		-------
		clean_arr : array-like
		    The original array with NA values removed.
	**/
	static public function remove_na(arr:Dynamic):Dynamic;
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
		
		Parameters
		----------
		x, y : names of variables in ``data`` or vector data, optional
		    Input data variables; must be numeric. Can pass data directly or
		    reference columns in ``data``.    
		hue : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce points with different colors.
		    Can be either categorical or numeric, although color mapping will
		    behave differently in latter case.
		size : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce points with different sizes.
		    Can be either categorical or numeric, although size mapping will
		    behave differently in latter case.
		style : name of variables in ``data`` or vector data, optional
		    Grouping variable that will produce points with different markers.
		    Can have a numeric dtype but will always be treated as categorical.
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		palette : palette name, list, or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		hue_order : list, optional
		    Specified order for the appearance of the ``hue`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``hue`` variable is numeric.    
		hue_norm : tuple or Normalize object, optional
		    Normalization in data units for colormap applied to the ``hue``
		    variable when it is numeric. Not relevant if it is categorical.    
		sizes : list, dict, or tuple, optional
		    An object that determines how sizes are chosen when ``size`` is used.
		    It can always be a list of size values or a dict mapping levels of the
		    ``size`` variable to sizes. When ``size``  is numeric, it can also be
		    a tuple specifying the minimum and maximum size to use such that other
		    values are normalized within this range.    
		size_order : list, optional
		    Specified order for appearance of the ``size`` variable levels,
		    otherwise they are determined from the data. Not relevant when the
		    ``size`` variable is numeric.    
		size_norm : tuple or Normalize object, optional
		    Normalization in data units for scaling plot objects when the
		    ``size`` variable is numeric.    
		markers : boolean, list, or dictionary, optional
		    Object determining how to draw the markers for different levels of the
		    ``style`` variable. Setting to ``True`` will use default markers, or
		    you can pass a list of markers or a dictionary mapping levels of the
		    ``style`` variable to markers. Setting to ``False`` will draw
		    marker-less lines.  Markers are specified as in matplotlib.    
		style_order : list, optional
		    Specified order for appearance of the ``style`` variable levels
		    otherwise they are determined from the data. Not relevant when the
		    ``style`` variable is numeric.    
		{x,y}_bins : lists or arrays or functions
		    *Currently non-functional.*
		units : {long_form_var}
		    Grouping variable identifying sampling units. When used, a separate
		    line will be drawn for each unit with appropriate semantics, but no
		    legend entry will be added. Useful for showing distribution of
		    experimental replicates when exact identities are not needed.
		
		    *Currently non-functional.*
		estimator : name of pandas method or callable or None, optional
		    Method for aggregating across multiple observations of the ``y``
		    variable at the same ``x`` level. If ``None``, all observations will
		    be drawn.    
		    *Currently non-functional.*
		ci : int or "sd" or None, optional
		    Size of the confidence interval to draw when aggregating with an
		    estimator. "sd" means to draw the standard deviation of the data.
		    Setting to ``None`` will skip bootstrapping.    
		    *Currently non-functional.*
		n_boot : int, optional
		    Number of bootstraps to use for computing the confidence interval.    
		    *Currently non-functional.*
		alpha : float
		    Proportional opacity of the points.
		{x,y}_jitter : booleans or floats
		    *Currently non-functional.*
		legend : "brief", "full", or False, optional
		    How to draw the legend. If "brief", numeric ``hue`` and ``size``
		    variables will be represented with a sample of evenly spaced values.
		    If "full", every group will get an entry in the legend. If ``False``,
		    no legend data is added and no legend is drawn.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed down to ``plt.scatter`` at draw
		    time.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		lineplot : Show the relationship between two variables connected with
		           lines to emphasize continuity.
		swarmplot : Draw a scatter plot with one categorical variable, arranging
		            the points to show the distribution of values.
		
		Examples
		--------
		
		Draw a simple scatter plot between two variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> import matplotlib.pyplot as plt
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.scatterplot(x="total_bill", y="tip", data=tips)
		
		Group by another variable and show the groups with different colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip", hue="time",
		    ...                      data=tips)
		
		Show the grouping variable by varying both color and marker:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="time", style="time", data=tips)
		
		Vary colors and markers to show two different grouping variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="day", style="time", data=tips)
		
		Show a quantitative variable by varying the size of the points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip", size="size",
		    ...                      data=tips)
		
		Also show the quantitative variable by also using continuous colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="size", size="size",
		    ...                      data=tips)
		
		Use a different continuous color map:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=.3, light=.8, as_cmap=True)
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="size", size="size",
		    ...                      palette=cmap,
		    ...                      data=tips)
		
		Change the minimum and maximum point size and show all sizes in legend:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=.3, light=.8, as_cmap=True)
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="size", size="size",
		    ...                      sizes=(20, 200), palette=cmap,
		    ...                      legend="full", data=tips)
		
		Use a narrower range of color map intensities:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=.3, light=.8, as_cmap=True)
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="size", size="size",
		    ...                      sizes=(20, 200), hue_norm=(0, 7),
		    ...                      legend="full", data=tips)
		
		Vary the size with a categorical variable, and use a different palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(dark=.3, light=.8, as_cmap=True)
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      hue="day", size="smoker",
		    ...                      palette="Set2",
		    ...                      data=tips)
		
		Use a specific set of markers:
		
		.. plot::
		    :context: close-figs
		
		    >>> markers = {"Lunch": "s", "Dinner": "X"}
		    >>> ax = sns.scatterplot(x="total_bill", y="tip", style="time",
		    ...                      markers=markers,
		    ...                      data=tips)
		
		Control plot attributes using matplotlib parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.scatterplot(x="total_bill", y="tip",
		    ...                      s=100, color=".2", marker="+",
		    ...                      data=tips)
		
		Pass data vectors instead of names in a data frame:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> ax = sns.scatterplot(x=iris.sepal_length, y=iris.sepal_width,
		    ...                      hue=iris.species, style=iris.species)
		
		Pass a wide-form dataset and plot against its index:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, pandas as pd; plt.close("all")
		    >>> index = pd.date_range("1 1 2000", periods=100,
		    ...                       freq="m", name="date")
		    >>> data = np.random.randn(100, 4).cumsum(axis=0)
		    >>> wide_df = pd.DataFrame(data, index, ["a", "b", "c", "d"])
		    >>> ax = sns.scatterplot(data=wide_df)
	**/
	static public function scatterplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?style:Dynamic, ?size:Dynamic, ?data:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?sizes:Dynamic, ?size_order:Dynamic, ?size_norm:Dynamic, ?markers:Dynamic, ?style_order:Dynamic, ?x_bins:Dynamic, ?y_bins:Dynamic, ?units:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?alpha:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Wrapper to handle different pandas sorting API pre/post 0.17.
	**/
	static public function sort_df(df:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var string_types : Dynamic;
}