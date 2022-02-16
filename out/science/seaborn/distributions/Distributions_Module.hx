/* This file is generated, do not edit! */
package seaborn.distributions;
@:pythonImport("seaborn.distributions") extern class Distributions_Module {
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
		Assign default kwargs for call_func using values from source_func.
	**/
	static public function _assign_default_kwargs(kws:Dynamic, call_func:Dynamic, source_func:Dynamic):Dynamic;
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
	static public var _dist_params : Dynamic;
	static public var _facet_docs : Dynamic;
	/**
		Calculate number of hist bins using Freedman-Diaconis rule.
	**/
	static public function _freedman_diaconis_bins(a:Dynamic):Dynamic;
	/**
		Establish support for a kernel density estimate.
	**/
	static public function _kde_support(data:Dynamic, bw:Dynamic, gridsize:Dynamic, cut:Dynamic, clip:Dynamic):Dynamic;
	/**
		Wrapper for mpl.cbook.normalize_kwargs that supports <= 3.2.1.
	**/
	static public function _normalize_kwargs(kws:Dynamic, artist:Dynamic):Dynamic;
	static public var _param_docs : Dynamic;
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
		Figure-level interface for drawing distribution plots onto a FacetGrid.
		
		This function provides access to several approaches for visualizing the
		univariate or bivariate distribution of data, including subsets of data
		defined by semantic mapping and faceting across multiple subplots. The
		``kind`` parameter selects the approach to use:
		
		- :func:`histplot` (with ``kind="hist"``; the default)
		- :func:`kdeplot` (with ``kind="kde"``)
		- :func:`ecdfplot` (with ``kind="ecdf"``; univariate-only)
		
		Additionally, a :func:`rugplot` can be added to any kind of plot to show
		individual observations.
		
		Extra keyword arguments are passed to the underlying function, so you should
		refer to the documentation for each to understand the complete set of options
		for making plots with this interface.
		
		See the :doc:`distribution plots tutorial <../tutorial/distributions>` for a more
		in-depth discussion of the relative strengths and weaknesses of each approach.
		The distinction between figure-level and axes-level functions is explained
		further in the :doc:`user guide <../tutorial/function_overview>`.
		
		Parameters
		----------
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		row, col : vectors or keys in ``data``
		    Variables that define subsets to plot on different facets.    
		kind : {"hist", "kde", "ecdf"}
		    Approach for visualizing the data. Selects the underlying plotting function
		    and determines the additional set of valid parameters.
		rug : bool
		    If True, show each observation with marginal ticks (as in :func:`rugplot`).
		rug_kws : dict
		    Parameters to control the appearance of the rug plot.
		log_scale : bool or number, or pair of bools or numbers
		    Set axis scale(s) to log. A single value sets the data axis for univariate
		    distributions and both axes for bivariate distributions. A pair of values
		    sets each axis independently. Numeric values are interpreted as the desired
		    base (default 10). If `False`, defer to the existing Axes scale.
		legend : bool
		    If False, suppress the legend for semantic variables.
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
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Single color specification for when hue mapping is not used. Otherwise, the
		    plot will try to hook into the matplotlib property cycle.
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		{row,col}_order : vector of strings
		    Specify the order in which levels of the ``row`` and/or ``col`` variables
		    appear in the grid of subplots.    
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		facet_kws : dict
		    Additional parameters passed to :class:`FacetGrid`.
		
		kwargs
		    Other keyword arguments are documented with the relevant axes-level function:
		
		    - :func:`histplot` (with ``kind="hist"``)
		    - :func:`kdeplot` (with ``kind="kde"``)
		    - :func:`ecdfplot` (with ``kind="ecdf"``)
		
		Returns
		-------
		:class:`FacetGrid`
		    An object managing one or more subplots that correspond to conditional data
		    subsets with convenient methods for batch-setting of axes attributes.
		
		See Also
		--------
		histplot : Plot a histogram of binned counts with optional normalization or smoothing.
		kdeplot : Plot univariate or bivariate distributions using kernel density estimation.
		rugplot : Plot a tick at each observation value along the x and/or y axes.
		ecdfplot : Plot empirical cumulative distribution functions.
		jointplot : Draw a bivariate plot with univariate marginal distributions.
		
		Examples
		--------
		
		See the API documentation for the axes-level functions for more details
		about the breadth of options available for each plot kind.
		
		.. include:: ../docstrings/displot.rst
	**/
	static public function displot(?data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?row:Dynamic, ?col:Dynamic, ?weights:Dynamic, ?kind:Dynamic, ?rug:Dynamic, ?rug_kws:Dynamic, ?log_scale:Dynamic, ?legend:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?color:Dynamic, ?col_wrap:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?facet_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		DEPRECATED: Flexibly plot a univariate distribution of observations.
		
		.. warning::
		   This function is deprecated and will be removed in a future version.
		   Please adapt your code to use one of two new functions:
		
		   - :func:`displot`, a figure-level function with a similar flexibility
		     over the kind of plot to draw
		   - :func:`histplot`, an axes-level function for plotting histograms,
		     including with kernel density smoothing
		
		This function combines the matplotlib ``hist`` function (with automatic
		calculation of a good default bin size) with the seaborn :func:`kdeplot`
		and :func:`rugplot` functions. It can also fit ``scipy.stats``
		distributions and plot the estimated PDF over the data.
		
		Parameters
		----------
		a : Series, 1d-array, or list.
		    Observed data. If this is a Series object with a ``name`` attribute,
		    the name will be used to label the data axis.
		bins : argument for matplotlib hist(), or None, optional
		    Specification of hist bins. If unspecified, as reference rule is used
		    that tries to find a useful default.
		hist : bool, optional
		    Whether to plot a (normed) histogram.
		kde : bool, optional
		    Whether to plot a gaussian kernel density estimate.
		rug : bool, optional
		    Whether to draw a rugplot on the support axis.
		fit : random variable object, optional
		    An object with `fit` method, returning a tuple that can be passed to a
		    `pdf` method a positional arguments following a grid of values to
		    evaluate the pdf on.
		hist_kws : dict, optional
		    Keyword arguments for :meth:`matplotlib.axes.Axes.hist`.
		kde_kws : dict, optional
		    Keyword arguments for :func:`kdeplot`.
		rug_kws : dict, optional
		    Keyword arguments for :func:`rugplot`.
		color : matplotlib color, optional
		    Color to plot everything but the fitted curve in.
		vertical : bool, optional
		    If True, observed values are on y-axis.
		norm_hist : bool, optional
		    If True, the histogram height shows a density rather than a count.
		    This is implied if a KDE or fitted density is plotted.
		axlabel : string, False, or None, optional
		    Name for the support axis label. If None, will try to get it
		    from a.name if False, do not set a label.
		label : string, optional
		    Legend label for the relevant component of the plot.
		ax : matplotlib axis, optional
		    If provided, plot on this axis.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot for further tweaking.
		
		See Also
		--------
		kdeplot : Show a univariate or bivariate distribution with a kernel
		          density estimate.
		rugplot : Draw small vertical lines to show each observation in a
		          distribution.
		
		Examples
		--------
		
		Show a default plot with a kernel density estimate and histogram with bin
		size determined automatically with a reference rule:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns, numpy as np
		    >>> sns.set_theme(); np.random.seed(0)
		    >>> x = np.random.randn(100)
		    >>> ax = sns.distplot(x)
		
		Use Pandas objects to get an informative axis label:
		
		.. plot::
		    :context: close-figs
		
		    >>> import pandas as pd
		    >>> x = pd.Series(x, name="x variable")
		    >>> ax = sns.distplot(x)
		
		Plot the distribution with a kernel density estimate and rug plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, rug=True, hist=False)
		
		Plot the distribution with a histogram and maximum likelihood gaussian
		distribution fit:
		
		.. plot::
		    :context: close-figs
		
		    >>> from scipy.stats import norm
		    >>> ax = sns.distplot(x, fit=norm, kde=False)
		
		Plot the distribution on the vertical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, vertical=True)
		
		Change the color of all the plot elements:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.set_color_codes()
		    >>> ax = sns.distplot(x, color="y")
		
		Pass specific parameters to the underlying plot functions:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.distplot(x, rug=True, rug_kws={"color": "g"},
		    ...                   kde_kws={"color": "k", "lw": 3, "label": "KDE"},
		    ...                   hist_kws={"histtype": "step", "linewidth": 3,
		    ...                             "alpha": 1, "color": "g"})
	**/
	static public function distplot(?a:Dynamic, ?bins:Dynamic, ?hist:Dynamic, ?kde:Dynamic, ?rug:Dynamic, ?fit:Dynamic, ?hist_kws:Dynamic, ?kde_kws:Dynamic, ?rug_kws:Dynamic, ?fit_kws:Dynamic, ?color:Dynamic, ?vertical:Dynamic, ?norm_hist:Dynamic, ?axlabel:Dynamic, ?label:Dynamic, ?ax:Dynamic, ?x:Dynamic):Dynamic;
	/**
		Plot empirical cumulative distribution functions.
		
		An ECDF represents the proportion or count of observations falling below each
		unique value in a dataset. Compared to a histogram or density plot, it has the
		advantage that each observation is visualized directly, meaning that there are
		no binning or smoothing parameters that need to be adjusted. It also aids direct
		comparisons between multiple distributions. A downside is that the relationship
		between the appearance of the plot and the basic properties of the distribution
		(such as its central tendency, variance, and the presence of any bimodality)
		may not be as intuitive.
		
		More information is provided in the :ref:`user guide <tutorial_ecdf>`.
		
		Parameters
		----------
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		weights : vector or key in ``data``
		    If provided, weight the contribution of the corresponding data points
		    towards the cumulative distribution using these values.
		stat : {{"proportion", "count"}}
		    Distribution statistic to compute.
		complementary : bool
		    If True, use the complementary CDF (1 - CDF)
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
		log_scale : bool or number, or pair of bools or numbers
		    Set axis scale(s) to log. A single value sets the data axis for univariate
		    distributions and both axes for bivariate distributions. A pair of values
		    sets each axis independently. Numeric values are interpreted as the desired
		    base (default 10). If `False`, defer to the existing Axes scale.
		legend : bool
		    If False, suppress the legend for semantic variables.
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		kwargs
		    Other keyword arguments are passed to :meth:`matplotlib.axes.Axes.plot`.
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		See Also
		--------
		displot : Figure-level interface to distribution plot functions.
		histplot : Plot a histogram of binned counts with optional normalization or smoothing.
		kdeplot : Plot univariate or bivariate distributions using kernel density estimation.
		rugplot : Plot a tick at each observation value along the x and/or y axes.
		
		Examples
		--------
		
		.. include:: ../docstrings/ecdfplot.rst
	**/
	static public function ecdfplot(?data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?weights:Dynamic, ?stat:Dynamic, ?complementary:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?log_scale:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot univariate or bivariate histograms to show distributions of datasets.
		
		A histogram is a classic visualization tool that represents the distribution
		of one or more variables by counting the number of observations that fall within
		disrete bins.
		
		This function can normalize the statistic computed within each bin to estimate
		frequency, density or probability mass, and it can add a smooth curve obtained
		using a kernel density estimate, similar to :func:`kdeplot`.
		
		More information is provided in the :ref:`user guide <tutorial_hist>`.
		
		Parameters
		----------
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		hue : vector or key in ``data``
		    Semantic variable that is mapped to determine the color of plot elements.
		weights : vector or key in ``data``
		    If provided, weight the contribution of the corresponding data points
		    towards the count in each bin by these factors.
		stat : str
		    Aggregate statistic to compute in each bin.
		    
		    - `count`: show the number of observations in each bin
		    - `frequency`: show the number of observations divided by the bin width
		    - `probability`: or `proportion`: normalize such that bar heights sum to 1
		    - `percent`: normalize such that bar heights sum to 100
		    - `density`: normalize such that the total area of the histogram equals 1
		bins : str, number, vector, or a pair of such values
		    Generic bin parameter that can be the name of a reference rule,
		    the number of bins, or the breaks of the bins.
		    Passed to :func:`numpy.histogram_bin_edges`.
		binwidth : number or pair of numbers
		    Width of each bin, overrides ``bins`` but can be used with
		    ``binrange``.
		binrange : pair of numbers or a pair of pairs
		    Lowest and highest value for bin edges; can be used either
		    with ``bins`` or ``binwidth``. Defaults to data extremes.
		discrete : bool
		    If True, default to ``binwidth=1`` and draw the bars so that they are
		    centered on their corresponding data points. This avoids "gaps" that may
		    otherwise appear when using discrete (integer) data.
		cumulative : bool
		    If True, plot the cumulative counts as bins increase.
		common_bins : bool
		    If True, use the same bins when semantic variables produce multiple
		    plots. If using a reference rule to determine the bins, it will be computed
		    with the full dataset.
		common_norm : bool
		    If True and using a normalized statistic, the normalization will apply over
		    the full dataset. Otherwise, normalize each histogram independently.
		multiple : {"layer", "dodge", "stack", "fill"}
		    Approach to resolving multiple elements when semantic mapping creates subsets.
		    Only relevant with univariate data.
		element : {"bars", "step", "poly"}
		    Visual representation of the histogram statistic.
		    Only relevant with univariate data.
		fill : bool
		    If True, fill in the space under the histogram.
		    Only relevant with univariate data.
		shrink : number
		    Scale the width of each bar relative to the binwidth by this factor.
		    Only relevant with univariate data.
		kde : bool
		    If True, compute a kernel density estimate to smooth the distribution
		    and show on the plot as (one or more) line(s).
		    Only relevant with univariate data.
		kde_kws : dict
		    Parameters that control the KDE computation, as in :func:`kdeplot`.
		line_kws : dict
		    Parameters that control the KDE visualization, passed to
		    :meth:`matplotlib.axes.Axes.plot`.
		thresh : number or None
		    Cells with a statistic less than or equal to this value will be transparent.
		    Only relevant with bivariate data.
		pthresh : number or None
		    Like ``thresh``, but a value in [0, 1] such that cells with aggregate counts
		    (or other statistics, when used) up to this proportion of the total will be
		    transparent.
		pmax : number or None
		    A value in [0, 1] that sets that saturation point for the colormap at a value
		    such that cells below is constistute this proportion of the total count (or
		    other statistic, when used).
		cbar : bool
		    If True, add a colorbar to annotate the color mapping in a bivariate plot.
		    Note: Does not currently support plots with a ``hue`` variable well.
		cbar_ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the colorbar.
		cbar_kws : dict
		    Additional parameters passed to :meth:`matplotlib.figure.Figure.colorbar`.
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
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Single color specification for when hue mapping is not used. Otherwise, the
		    plot will try to hook into the matplotlib property cycle.
		log_scale : bool or number, or pair of bools or numbers
		    Set axis scale(s) to log. A single value sets the data axis for univariate
		    distributions and both axes for bivariate distributions. A pair of values
		    sets each axis independently. Numeric values are interpreted as the desired
		    base (default 10). If `False`, defer to the existing Axes scale.
		legend : bool
		    If False, suppress the legend for semantic variables.
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		kwargs
		    Other keyword arguments are passed to one of the following matplotlib
		    functions:
		
		    - :meth:`matplotlib.axes.Axes.bar` (univariate, element="bars")
		    - :meth:`matplotlib.axes.Axes.fill_between` (univariate, other element, fill=True)
		    - :meth:`matplotlib.axes.Axes.plot` (univariate, other element, fill=False)
		    - :meth:`matplotlib.axes.Axes.pcolormesh` (bivariate)
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		See Also
		--------
		displot : Figure-level interface to distribution plot functions.
		kdeplot : Plot univariate or bivariate distributions using kernel density estimation.
		rugplot : Plot a tick at each observation value along the x and/or y axes.
		ecdfplot : Plot empirical cumulative distribution functions.
		jointplot : Draw a bivariate plot with univariate marginal distributions.
		
		Notes
		-----
		
		The choice of bins for computing and plotting a histogram can exert
		substantial influence on the insights that one is able to draw from the
		visualization. If the bins are too large, they may erase important features.
		On the other hand, bins that are too small may be dominated by random
		variability, obscuring the shape of the true underlying distribution. The
		default bin size is determined using a reference rule that depends on the
		sample size and variance. This works well in many cases, (i.e., with
		"well-behaved" data) but it fails in others. It is always a good to try
		different bin sizes to be sure that you are not missing something important.
		This function allows you to specify bins in several different ways, such as
		by setting the total number of bins to use, the width of each bin, or the
		specific locations where the bins should break.
		
		Examples
		--------
		
		.. include:: ../docstrings/histplot.rst
	**/
	static public function histplot(?data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?weights:Dynamic, ?stat:Dynamic, ?bins:Dynamic, ?binwidth:Dynamic, ?binrange:Dynamic, ?discrete:Dynamic, ?cumulative:Dynamic, ?common_bins:Dynamic, ?common_norm:Dynamic, ?multiple:Dynamic, ?element:Dynamic, ?fill:Dynamic, ?shrink:Dynamic, ?kde:Dynamic, ?kde_kws:Dynamic, ?line_kws:Dynamic, ?thresh:Dynamic, ?pthresh:Dynamic, ?pmax:Dynamic, ?cbar:Dynamic, ?cbar_ax:Dynamic, ?cbar_kws:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?color:Dynamic, ?log_scale:Dynamic, ?legend:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot univariate or bivariate distributions using kernel density estimation.
		
		A kernel density estimate (KDE) plot is a method for visualizing the
		distribution of observations in a dataset, analagous to a histogram. KDE
		represents the data using a continuous probability density curve in one or
		more dimensions.
		
		The approach is explained further in the :ref:`user guide <tutorial_kde>`.
		
		Relative to a histogram, KDE can produce a plot that is less cluttered and
		more interpretable, especially when drawing multiple distributions. But it
		has the potential to introduce distortions if the underlying distribution is
		bounded or not smooth. Like a histogram, the quality of the representation
		also depends on the selection of good smoothing parameters.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		shade : bool
		    Alias for ``fill``. Using ``fill`` is recommended.
		vertical : bool
		    Orientation parameter.
		
		    .. deprecated:: 0.11.0
		       specify orientation by assigning the ``x`` or ``y`` variables.
		
		kernel : str
		    Function that defines the kernel.
		
		    .. deprecated:: 0.11.0
		       support for non-Gaussian kernels has been removed.
		
		bw : str, number, or callable
		    Smoothing parameter.
		
		    .. deprecated:: 0.11.0
		       see ``bw_method`` and ``bw_adjust``.
		
		gridsize : int
		    Number of points on each dimension of the evaluation grid.
		cut : number, optional
		    Factor, multiplied by the smoothing bandwidth, that determines how
		    far the evaluation grid extends past the extreme datapoints. When
		    set to 0, truncate the curve at the data limits.
		clip : pair of numbers or None, or a pair of such pairs
		    Do not evaluate the density outside of these limits.
		legend : bool
		    If False, suppress the legend for semantic variables.
		cumulative : bool, optional
		    If True, estimate a cumulative distribution function.
		shade_lowest : bool
		    If False, the area below the lowest contour will be transparent
		
		    .. deprecated:: 0.11.0
		       see ``thresh``.
		
		cbar : bool
		    If True, add a colorbar to annotate the color mapping in a bivariate plot.
		    Note: Does not currently support plots with a ``hue`` variable well.
		cbar_ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the colorbar.
		cbar_kws : dict
		    Additional parameters passed to :meth:`matplotlib.figure.Figure.colorbar`.
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		weights : vector or key in ``data``
		    If provided, weight the kernel density estimation using these values.
		hue : vector or key in ``data``
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
		multiple : {{"layer", "stack", "fill"}}
		    Method for drawing multiple elements when semantic mapping creates subsets.
		    Only relevant with univariate data.
		common_norm : bool
		    If True, scale each conditional density by the number of observations
		    such that the total area under all densities sums to 1. Otherwise,
		    normalize each density independently.
		common_grid : bool
		    If True, use the same evaluation grid for each kernel density estimate.
		    Only relevant with univariate data.
		levels : int or vector
		    Number of contour levels or values to draw contours at. A vector argument
		    must have increasing values in [0, 1]. Levels correspond to iso-proportions
		    of the density: e.g., 20% of the probability mass will lie below the
		    contour drawn for 0.2. Only relevant with bivariate data.
		thresh : number in [0, 1]
		    Lowest iso-proportion level at which to draw a contour line. Ignored when
		    ``levels`` is a vector. Only relevant with bivariate data.
		bw_method : string, scalar, or callable, optional
		    Method for determining the smoothing bandwidth to use; passed to
		    :class:`scipy.stats.gaussian_kde`.
		bw_adjust : number, optional
		    Factor that multiplicatively scales the value chosen using
		    ``bw_method``. Increasing will make the curve smoother. See Notes.
		log_scale : bool or number, or pair of bools or numbers
		    Set axis scale(s) to log. A single value sets the data axis for univariate
		    distributions and both axes for bivariate distributions. A pair of values
		    sets each axis independently. Numeric values are interpreted as the desired
		    base (default 10). If `False`, defer to the existing Axes scale.
		color : :mod:`matplotlib color <matplotlib.colors>`
		    Single color specification for when hue mapping is not used. Otherwise, the
		    plot will try to hook into the matplotlib property cycle.
		fill : bool or None
		    If True, fill in the area under univariate density curves or between
		    bivariate contours. If None, the default depends on ``multiple``.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		warn_singular : bool
		    If True, issue a warning when trying to estimate the density of data
		    with zero variance.
		kwargs
		    Other keyword arguments are passed to one of the following matplotlib
		    functions:
		
		    - :meth:`matplotlib.axes.Axes.plot` (univariate, ``fill=False``),
		    - :meth:`matplotlib.axes.Axes.fill_between` (univariate, ``fill=True``),
		    - :meth:`matplotlib.axes.Axes.contour` (bivariate, ``fill=False``),
		    - :meth:`matplotlib.axes.contourf` (bivariate, ``fill=True``).
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		See Also
		--------
		displot : Figure-level interface to distribution plot functions.
		histplot : Plot a histogram of binned counts with optional normalization or smoothing.
		ecdfplot : Plot empirical cumulative distribution functions.
		jointplot : Draw a bivariate plot with univariate marginal distributions.
		violinplot : Draw an enhanced boxplot using kernel density estimation.
		
		Notes
		-----
		
		The *bandwidth*, or standard deviation of the smoothing kernel, is an
		important parameter. Misspecification of the bandwidth can produce a
		distorted representation of the data. Much like the choice of bin width in a
		histogram, an over-smoothed curve can erase true features of a
		distribution, while an under-smoothed curve can create false features out of
		random variability. The rule-of-thumb that sets the default bandwidth works
		best when the true distribution is smooth, unimodal, and roughly bell-shaped.
		It is always a good idea to check the default behavior by using ``bw_adjust``
		to increase or decrease the amount of smoothing.
		
		Because the smoothing algorithm uses a Gaussian kernel, the estimated density
		curve can extend to values that do not make sense for a particular dataset.
		For example, the curve may be drawn over negative values when smoothing data
		that are naturally positive. The ``cut`` and ``clip`` parameters can be used
		to control the extent of the curve, but datasets that have many observations
		close to a natural boundary may be better served by a different visualization
		method.
		
		Similar considerations apply when a dataset is naturally discrete or "spiky"
		(containing many repeated observations of the same value). Kernel density
		estimation will always produce a smooth curve, which would be misleading
		in these situations.
		
		The units on the density axis are a common source of confusion. While kernel
		density estimation produces a probability distribution, the height of the curve
		at each point gives a density, not a probability. A probability can be obtained
		only by integrating the density across a range. The curve is normalized so
		that the integral over all possible values is 1, meaning that the scale of
		the density axis depends on the data values.
		
		Examples
		--------
		
		.. include:: ../docstrings/kdeplot.rst
	**/
	static public function kdeplot(?x:Dynamic, ?y:Dynamic, ?shade:Dynamic, ?vertical:Dynamic, ?kernel:Dynamic, ?bw:Dynamic, ?gridsize:Dynamic, ?cut:Dynamic, ?clip:Dynamic, ?legend:Dynamic, ?cumulative:Dynamic, ?shade_lowest:Dynamic, ?cbar:Dynamic, ?cbar_ax:Dynamic, ?cbar_kws:Dynamic, ?ax:Dynamic, ?weights:Dynamic, ?hue:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?multiple:Dynamic, ?common_norm:Dynamic, ?common_grid:Dynamic, ?levels:Dynamic, ?thresh:Dynamic, ?bw_method:Dynamic, ?bw_adjust:Dynamic, ?log_scale:Dynamic, ?color:Dynamic, ?fill:Dynamic, ?data:Dynamic, ?data2:Dynamic, ?warn_singular:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper method for removing null values from data vectors.
		
		Parameters
		----------
		vector : vector object
		    Must implement boolean masking with [] subscript syntax.
		
		Returns
		-------
		clean_clean : same type as ``vector``
		    Vector of data with null values removed. May be a copy or a view.
	**/
	static public function remove_na(vector:Dynamic):Dynamic;
	/**
		Plot marginal distributions by drawing ticks along the x and y axes.
		
		This function is intended to complement other plots by showing the location
		of individual observations in an unobstrusive way.
		
		Parameters
		----------
		x, y : vectors or keys in ``data``
		    Variables that specify positions on the x and y axes.
		height : number
		    Proportion of axes extent covered by each rug element.
		axis : {"x", "y"}
		    Axis to draw the rug on.
		
		    .. deprecated:: 0.11.0
		       specify axis by assigning the ``x`` or ``y`` variables.
		
		ax : :class:`matplotlib.axes.Axes`
		    Pre-existing axes for the plot. Otherwise, call :func:`matplotlib.pyplot.gca`
		    internally.
		data : :class:`pandas.DataFrame`, :class:`numpy.ndarray`, mapping, or sequence
		    Input data structure. Either a long-form collection of vectors that can be
		    assigned to named variables or a wide-form dataset that will be internally
		    reshaped.
		hue : vector or key in ``data``
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
		expand_margins : bool
		    If True, increase the axes margins by the height of the rug to avoid
		    overlap with other elements.
		legend : bool
		    If False, do not add a legend for semantic variables.
		kwargs
		    Other keyword arguments are passed to
		    :meth:`matplotlib.collections.LineCollection`
		
		Returns
		-------
		:class:`matplotlib.axes.Axes`
		    The matplotlib axes containing the plot.
		
		Examples
		--------
		
		.. include:: ../docstrings/rugplot.rst
	**/
	static public function rugplot(?x:Dynamic, ?height:Dynamic, ?axis:Dynamic, ?ax:Dynamic, ?data:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?palette:Dynamic, ?hue_order:Dynamic, ?hue_norm:Dynamic, ?expand_margins:Dynamic, ?legend:Dynamic, ?a:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert *c* to an RGBA color.
		
		Parameters
		----------
		c : Matplotlib color or ``np.ma.masked``
		
		alpha : float, optional
		    If *alpha* is given, force the alpha value of the returned RGBA tuple
		    to *alpha*.
		
		    If None, the alpha value from *c* is used. If *c* does not have an
		    alpha channel, then alpha defaults to 1.
		
		    *alpha* is ignored for the color value ``"none"`` (case-insensitive),
		    which always maps to ``(0, 0, 0, 0)``.
		
		Returns
		-------
		tuple
		    Tuple of floats ``(r, g, b, a)``, where each channel (red, green, blue,
		    alpha) can assume values between 0 and 1.
	**/
	static public function to_rgba(c:Dynamic, ?alpha:Dynamic):Dynamic;
}