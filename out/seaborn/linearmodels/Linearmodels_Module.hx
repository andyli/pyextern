/* This file is generated, do not edit! */
package seaborn.linearmodels;
@:pythonImport("seaborn.linearmodels") extern class Linearmodels_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _facet_docs : Dynamic;
	static public var _has_statsmodels : Dynamic;
	static public var _regression_docs : Dynamic;
	/**
		Plot the coefficients from a linear model.
		
		Parameters
		----------
		formula : string
		    patsy formula for ols model
		data : dataframe
		    data for the plot; formula terms must appear in columns
		groupby : grouping object, optional
		    object to group data with to fit conditional models
		intercept : bool, optional
		    if False, strips the intercept term before plotting
		ci : float, optional
		    size of confidence intervals
		palette : seaborn color palette, optional
		    palette for the horizonal plots
	**/
	static public function coefplot(formula:Dynamic, data:Dynamic, ?groupby:Dynamic, ?intercept:Dynamic, ?ci:Dynamic, ?palette:Dynamic):Dynamic;
	/**
		Return a list of colors defining a color palette.
		
		Availible seaborn palette names:
		    deep, muted, bright, pastel, dark, colorblind
		
		Other options:
		    hls, husl, any named matplotlib palette, list of colors
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		Matplotlib paletes can be specified as reversed palettes by appending
		"_r" to the name or as dark palettes by appending "_d" to the name.
		(These options are mutually exclusive, but the resulting list of colors
		can also be reversed).
		
		This function can also be used in a ``with`` statement to temporarily
		set the color cycle for a plot or set of plots.
		
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
		
		Show one of the "seaborn palettes", which have the same basic order of hues
		as the default matplotlib color cycle but more attractive colors.
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.color_palette("muted"))
		
		Use discrete values from one of the built-in matplotlib colormaps.
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("RdBu", n_colors=7))
		
		Make a "dark" matplotlib sequential palette variant. (This can be good
		when coloring multiple lines or points that correspond to an ordered
		variable, where you don't want the lightest lines to be invisible).
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Blues_d"))
		
		Use a categorical matplotlib palette, add some desaturation. (This can be
		good when making plots with large patches, which look best with dimmer
		colors).
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.color_palette("Set1", n_colors=8, desat=.5))
		
		Use as a context manager:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, matplotlib.pyplot as plt
		    >>> with sns.color_palette("husl", 8):
		    ...    _ = plt.plot(np.c_[np.zeros(8), np.arange(8)].T)
	**/
	static public function color_palette(?palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic):Dynamic;
	/**
		Plot a correlation matrix with colormap and r values.
		
		NOTE: This function is deprecated in favor of :func:`heatmap` and will
		be removed in a forthcoming release.
		
		Parameters
		----------
		data : Dataframe or nobs x nvars array
		    Rectangular input data with variabes in the columns.
		names : sequence of strings
		    Names to associate with variables if `data` is not a DataFrame.
		annot : bool
		    Whether to annotate the upper triangle with correlation coefficients.
		sig_stars : bool
		    If True, get significance with permutation test and denote with stars.
		sig_tail : both | upper | lower
		    Direction for significance test. Also controls the default colorbar.
		sig_corr : bool
		    If True, use FWE-corrected p values for the sig stars.
		cmap : colormap
		    Colormap name as string or colormap object.
		cmap_range : None, "full", (low, high)
		    Either truncate colormap at (-max(abs(r)), max(abs(r))), use the
		    full range (-1, 1), or specify (min, max) values for the colormap.
		cbar : bool
		    If true, plot the colorbar legend.
		method: None (pearson) | kendall | spearman
		    Correlation method to compute pairwise correlations. Methods other
		    than the default pearson correlation will not have a significance
		    computed.
		ax : matplotlib axis
		    Axis to draw plot in.
		kwargs : other keyword arguments
		    Passed to ax.matshow()
		
		Returns
		-------
		ax : matplotlib axis
		    Axis object with plot.
	**/
	static public function corrplot(data:Dynamic, ?names:Dynamic, ?annot:Dynamic, ?sig_stars:Dynamic, ?sig_tail:Dynamic, ?sig_corr:Dynamic, ?cmap:Dynamic, ?cmap_range:Dynamic, ?cbar:Dynamic, ?diag_names:Dynamic, ?method:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
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
		Visualize a continuous two-way interaction with a contour plot.
		
		Parameters
		----------
		x1, x2, y, strings or array-like
		    Either the two independent variables and the dependent variable,
		    or keys to extract them from `data`
		data : DataFrame
		    Pandas DataFrame with the data in the columns.
		filled : bool
		    Whether to plot with filled or unfilled contours
		cmap : matplotlib colormap
		    Colormap to represent yhat in the countour plot.
		colorbar : bool
		    Whether to draw the colorbar for interpreting the color values.
		levels : int or sequence
		    Number or position of contour plot levels.
		logistic : bool
		    Fit a logistic regression model instead of linear regression.
		contour_kws : dictionary
		    Keyword arguments for contour[f]().
		scatter_kws : dictionary
		    Keyword arguments for plot().
		ax : matplotlib axis
		    Axis to draw plot in.
		
		Returns
		-------
		ax : Matplotlib axis
		    Axis with the contour plot.
	**/
	static public function interactplot(x1:Dynamic, x2:Dynamic, y:Dynamic, ?data:Dynamic, ?filled:Dynamic, ?cmap:Dynamic, ?colorbar:Dynamic, ?levels:Dynamic, ?logistic:Dynamic, ?contour_kws:Dynamic, ?scatter_kws:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Fit and plot a univariate or bivariate kernel density estimate.
		
		Parameters
		----------
		data : 1d array-like
		    Input data.
		data2: 1d array-like
		    Second input data. If present, a bivariate KDE will be estimated.
		shade : bool, optional
		    If True, shade in the area under the KDE curve (or draw with filled
		    contours when data is bivariate).
		vertical : bool
		    If True, density is on x-axis.
		kernel : {'gau' | 'cos' | 'biw' | 'epa' | 'tri' | 'triw' }, optional
		    Code for shape of kernel to fit with. Bivariate KDE can only use
		    gaussian kernel.
		bw : {'scott' | 'silverman' | scalar | pair of scalars }, optional
		    Name of reference method to determine kernel size, scalar factor,
		    or scalar for each dimension of the bivariate plot.
		gridsize : int, optional
		    Number of discrete points in the evaluation grid.
		cut : scalar, optional
		    Draw the estimate to cut * bw from the extreme data points.
		clip : pair of scalars, or pair of pair of scalars, optional
		    Lower and upper bounds for datapoints used to fit KDE. Can provide
		    a pair of (low, high) bounds for bivariate plots.
		legend : bool, optinal
		    If True, add a legend or label the axes when possible.
		cumulative : bool
		    If True, draw the cumulative distribution estimated by the kde.
		shade_lowest : bool
		    If True, shade the lowest contour of a bivariate KDE plot. Not
		    relevant when drawing a univariate plot or when ``shade=False``.
		    Setting this to ``False`` can be useful when you want multiple
		    densities on the same Axes.
		ax : matplotlib axis, optional
		    Axis to plot on, otherwise uses current axis.
		kwargs : key, value pairings
		    Other keyword arguments are passed to ``plt.plot()`` or
		    ``plt.contour{f}`` depending on whether a univariate or bivariate
		    plot is being drawn.
		
		Returns
		-------
		ax : matplotlib Axes
		    Axes with plot.
		
		See Also
		--------
		distplot: Flexibly plot a univariate distribution of observations.
		jointplot: Plot a joint dataset with bivariate and marginal distributions.
		
		Examples
		--------
		
		Plot a basic univariate density:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(10)
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> mean, cov = [0, 2], [(1, .5), (.5, 1)]
		    >>> x, y = np.random.multivariate_normal(mean, cov, size=50).T
		    >>> ax = sns.kdeplot(x)
		
		Shade under the density curve and use a different color:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, shade=True, color="r")
		
		Plot a bivariate density:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y)
		
		Use filled contours:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, shade=True)
		
		Use more contour levels and a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, n_levels=30, cmap="Purples_d")
		
		Use a narrower bandwith:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, bw=.15)
		
		Plot the density on the vertical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(y, vertical=True)
		
		Limit the density curve within the range of the data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, cut=0)
		
		Plot two shaded bivariate densities:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> setosa = iris.loc[iris.species == "setosa"]
		    >>> virginica = iris.loc[iris.species == "virginica"]
		    >>> ax = sns.kdeplot(setosa.sepal_width, setosa.sepal_length,
		    ...                  cmap="Reds", shade=True, shade_lowest=False)
		    >>> ax = sns.kdeplot(virginica.sepal_width, virginica.sepal_length,
		    ...                  cmap="Blues", shade=True, shade_lowest=False)
	**/
	static public function kdeplot(data:Dynamic, ?data2:Dynamic, ?shade:Dynamic, ?vertical:Dynamic, ?kernel:Dynamic, ?bw:Dynamic, ?gridsize:Dynamic, ?cut:Dynamic, ?clip:Dynamic, ?legend:Dynamic, ?cumulative:Dynamic, ?shade_lowest:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Plot data and regression model fits across a FacetGrid.
		
		This function combines :func:`regplot` and :class:`FacetGrid`. It is
		intended as a convenient interface to fit regression models across
		conditional subsets of a dataset.
		
		When thinking about how to assign variables to different facets, a general
		rule is that it makes sense to use ``hue`` for the most important
		comparison, followed by ``col`` and ``row``. However, always think about
		your particular dataset and the goals of the visualization you are
		creating.
		
		There are a number of mutually exclusive options for estimating the
		regression model: ``order``, ``logistic``, ``lowess``, ``robust``, and
		``logx``. See the parameter docs for more information on these options.    
		
		The parameters to this function span most of the options in
		:class:`FacetGrid`, although there may be occasional cases where you will
		want to use that class and :func:`regplot` directly.
		
		Parameters
		----------
		x, y : strings, optional
		    Input variables; these should be column names in ``data``.
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		hue, col, row : strings
		    Variables that define subsets of the data, which will be drawn on
		    separate facets in the grid. See the ``*_order`` parameters to control
		    the order of levels of this variable.
		palette : seaborn color palette or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		col_wrap : int, optional
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		size : scalar, optional
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar, optional
		    Aspect ratio of each facet, so that ``aspect * size`` gives the width
		    of each facet in inches.    
		markers : matplotlib marker code or list of marker codes, optional
		    Markers for the scatterplot. If a list, each marker in the list will be
		    used for each level of the ``hue`` variable.
		share_{x,y} : bool, optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		{hue,col,row}_order : lists, optional
		    Order for the levels of the faceting variables. By default, this will
		    be the order that the levels appear in ``data`` or, if the variables
		    are pandas categoricals, the category order.
		legend : bool, optional
		    If ``True`` and there is a ``hue`` variable, add a legend.
		legend_out : bool, optional
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		x_estimator : callable that maps vector -> scalar, optional
		    Apply this function to each unique value of ``x`` and plot the
		    resulting estimate. This is useful when ``x`` is a discrete variable.
		    If ``x_ci`` is not ``None``, this estimate will be bootstrapped and a
		    confidence interval will be drawn.    
		x_bins : int or vector, optional
		    Bin the ``x`` variable into discrete bins and then estimate the central
		    tendency and a confidence interval. This binning only influences how
		    the scatterplot is drawn; the regression is still fit to the original
		    data.  This parameter is interpreted either as the number of
		    evenly-sized (not necessary spaced) bins or the positions of the bin
		    centers. When this parameter is used, it implies that the default of
		    ``x_estimator`` is ``numpy.mean``.    
		x_ci : "ci", int in [0, 100] or None, optional
		    Size of the confidence interval used when plotting a central tendency
		    for discrete values of ``x``. If "ci", defer to the value of the``ci``
		    parameter.    
		scatter : bool, optional
		    If ``True``, draw a scatterplot with the underlying observations (or
		    the ``x_estimator`` values).    
		fit_reg : bool, optional
		    If ``True``, estimate and plot a regression model relating the ``x``
		    and ``y`` variables.    
		ci : int in [0, 100] or None, optional
		    Size of the confidence interval for the regression estimate. This will
		    be drawn using translucent bands around the regression line. The
		    confidence interval is estimated using a bootstrap; for large
		    datasets, it may be advisable to avoid that computation by setting
		    this parameter to None.    
		n_boot : int, optional
		    Number of bootstrap resamples used to estimate the ``ci``. The default
		    value attempts to balance time and stability; you may want to increase
		    this value for "final" versions of plots.    
		units : variable name in ``data``, optional
		    If the ``x`` and ``y`` observations are nested within sampling units,
		    those can be specified here. This will be taken into account when
		    computing the confidence intervals by performing a multilevel bootstrap
		    that resamples both units and observations (within unit). This does not
		    otherwise influence how the regression is estimated or drawn.    
		order : int, optional
		    If ``order`` is greater than 1, use ``numpy.polyfit`` to estimate a
		    polynomial regression.    
		logistic : bool, optional
		    If ``True``, assume that ``y`` is a binary variable and use
		    ``statsmodels`` to estimate a logistic regression model. Note that this
		    is substantially more computationally intensive than linear regression,
		    so you may wish to decrease the number of bootstrap resamples
		    (``n_boot``) or set ``ci`` to None.    
		lowess : bool, optional
		    If ``True``, use ``statsmodels`` to estimate a nonparametric lowess
		    model (locally weighted linear regression). Note that confidence
		    intervals cannot currently be drawn for this kind of model.    
		robust : bool, optional
		    If ``True``, use ``statsmodels`` to estimate a robust regression. This
		    will de-weight outliers. Note that this is substantially more
		    computationally intensive than standard linear regression, so you may
		    wish to decrease the number of bootstrap resamples (``n_boot``) or set
		    ``ci`` to None.    
		logx : bool, optional
		    If ``True``, estimate a linear regression of the form y ~ log(x), but
		    plot the scatterplot and regression model in the input space. Note that
		    ``x`` must be positive for this to work.    
		{x,y}_partial : strings in ``data`` or matrices
		    Confounding variables to regress out of the ``x`` or ``y`` variables
		    before plotting.    
		truncate : bool, optional
		    By default, the regression line is drawn to fill the x axis limits
		    after the scatterplot is drawn. If ``truncate`` is ``True``, it will
		    instead by bounded by the data limits.    
		{x,y}_jitter : floats, optional
		    Add uniform random noise of this size to either the ``x`` or ``y``
		    variables. The noise is added to a copy of the data after fitting the
		    regression, and only influences the look of the scatterplot. This can
		    be helpful when plotting variables that take discrete values.    
		{scatter,line}_kws : dictionaries
		    Additional keyword arguments to pass to ``plt.scatter`` and
		    ``plt.plot``.    
		
		See Also
		--------
		regplot : Plot data and a conditional model fit.
		FacetGrid : Subplot grid for plotting conditional relationships.
		pairplot : Combine :func:`regplot` and :class:`PairGrid` (when used with
		           ``kind="reg"``).
		
		Notes
		-----
		
		Understanding the difference between :func:`regplot` and :func:`lmplot` can
		be a bit tricky. In fact, they are closely related, as :func:`lmplot` uses
		:func:`regplot` internally and takes most of its parameters. However,
		:func:`regplot` is an axes-level function, so it draws directly onto an
		axes (either the currently active axes or the one provided by the ``ax``
		parameter), while :func:`lmplot` is a figure-level function and creates its
		own figure, which is managed through a :class:`FacetGrid`. This has a few
		consequences, namely that :func:`regplot` can happily coexist in a figure
		with other kinds of plots and will follow the global matplotlib color
		cycle. In contrast, :func:`lmplot` needs to occupy an entire figure, and
		the size and color cycle are controlled through function parameters,
		ignoring the global defaults.    
		
		Examples
		--------
		
		These examples focus on basic regression model plots to exhibit the
		various faceting options; see the :func:`regplot` docs for demonstrations
		of the other options for plotting the data and models. There are also
		other examples for how to manipulate plot using the returned object on
		the :class:`FacetGrid` docs.
		
		Plot a simple linear relationship between two variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> tips = sns.load_dataset("tips")
		    >>> g = sns.lmplot(x="total_bill", y="tip", data=tips)
		
		Condition on a third variable and plot the levels in different colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", hue="smoker", data=tips)
		
		Use different markers as well as colors so the plot will reproduce to
		black-and-white more easily:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", hue="smoker", data=tips,
		    ...                markers=["o", "x"])
		
		Use a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", hue="smoker", data=tips,
		    ...                palette="Set1")
		
		Map ``hue`` levels to colors with a dictionary:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", hue="smoker", data=tips,
		    ...                palette=dict(Yes="g", No="m"))
		
		Plot the levels of the third variable across different columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", col="smoker", data=tips)
		
		Change the size and aspect ratio of the facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="size", y="total_bill", hue="day", col="day",
		    ...                data=tips, aspect=.4, x_jitter=.1)
		
		Wrap the levels of the column variable into multiple rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", col="day", hue="day",
		    ...                data=tips, col_wrap=2, size=3)
		
		Condition on two variables to make a full grid:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", row="sex", col="time",
		    ...                data=tips, size=3)
		
		Use methods on the returned :class:`FacetGrid` instance to further tweak
		the plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", row="sex", col="time",
		    ...                data=tips, size=3)
		    >>> g = (g.set_axis_labels("Total bill (US Dollars)", "Tip")
		    ...       .set(xlim=(0, 60), ylim=(0, 12),
		    ...            xticks=[10, 30, 50], yticks=[2, 6, 10])
		    ...       .fig.subplots_adjust(wspace=.02))
	**/
	static public function lmplot(x:Dynamic, y:Dynamic, data:Dynamic, ?hue:Dynamic, ?col:Dynamic, ?row:Dynamic, ?palette:Dynamic, ?col_wrap:Dynamic, ?size:Dynamic, ?aspect:Dynamic, ?markers:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?hue_order:Dynamic, ?col_order:Dynamic, ?row_order:Dynamic, ?legend:Dynamic, ?legend_out:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic):Dynamic;
	/**
		Plot pairwise relationships in a dataset.
		
		By default, this function will create a grid of Axes such that each
		variable in ``data`` will by shared in the y-axis across a single row and
		in the x-axis across a single column. The diagonal Axes are treated
		differently, drawing a plot to show the univariate distribution of the data
		for the variable in that column.
		
		It is also possible to show a subset of variables or plot different
		variables on the rows and columns.
		
		This is a high-level interface for :class:`PairGrid` that is intended to
		make it easy to draw a few common styles. You should use :class`PairGrid`
		directly if you need more flexibility.
		
		Parameters
		----------
		data : DataFrame
		    Tidy (long-form) dataframe where each column is a variable and
		    each row is an observation.
		hue : string (variable name), optional
		    Variable in ``data`` to map plot aspects to different colors.
		hue_order : list of strings
		    Order for the levels of the hue variable in the palette
		palette : dict or seaborn color palette
		    Set of colors for mapping the ``hue`` variable. If a dict, keys
		    should be values  in the ``hue`` variable.
		vars : list of variable names, optional
		    Variables within ``data`` to use, otherwise use every column with
		    a numeric datatype.
		{x, y}_vars : lists of variable names, optional
		    Variables within ``data`` to use separately for the rows and
		    columns of the figure; i.e. to make a non-square plot.
		kind : {'scatter', 'reg'}, optional
		    Kind of plot for the non-identity relationships.
		diag_kind : {'hist', 'kde'}, optional
		    Kind of plot for the diagonal subplots.
		markers : single matplotlib marker code or list, optional
		    Either the marker to use for all datapoints or a list of markers with
		    a length the same as the number of levels in the hue variable so that
		    differently colored points will also have different scatterplot
		    markers.
		size : scalar, optional
		    Height (in inches) of each facet.
		aspect : scalar, optional
		    Aspect * size gives the width (in inches) of each facet.
		dropna : boolean, optional
		    Drop missing values from the data before plotting.
		{plot, diag, grid}_kws : dicts, optional
		    Dictionaries of keyword arguments.
		
		Returns
		-------
		grid : PairGrid
		    Returns the underlying ``PairGrid`` instance for further tweaking.
		
		See Also
		--------
		PairGrid : Subplot grid for more flexible plotting of pairwise
		           relationships.
		
		Examples
		--------
		
		Draw scatterplots for joint relationships and histograms for univariate
		distributions:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(style="ticks", color_codes=True)
		    >>> iris = sns.load_dataset("iris")
		    >>> g = sns.pairplot(iris)
		
		Show different levels of a categorical variable by the color of plot
		elements:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, hue="species")
		
		Use a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, hue="species", palette="husl")
		
		Use different markers for each level of the hue variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, hue="species", markers=["o", "s", "D"])
		
		Plot a subset of variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, vars=["sepal_width", "sepal_length"])
		
		Draw larger plots:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, size=3,
		    ...                  vars=["sepal_width", "sepal_length"])
		
		Plot different variables in the rows and columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris,
		    ...                  x_vars=["sepal_width", "sepal_length"],
		    ...                  y_vars=["petal_width", "petal_length"])
		
		Use kernel density estimates for univariate plots:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, diag_kind="kde")
		
		Fit linear regression models to the scatter plots:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, kind="reg")
		
		Pass keyword arguments down to the underlying functions (it may be easier
		to use :class:`PairGrid` directly):
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.pairplot(iris, diag_kind="kde", markers="+",
		    ...                  plot_kws=dict(s=50, edgecolor="b", linewidth=1),
		    ...                  diag_kws=dict(shade=True))
	**/
	static public function pairplot(data:Dynamic, ?hue:Dynamic, ?hue_order:Dynamic, ?palette:Dynamic, ?vars:Dynamic, ?x_vars:Dynamic, ?y_vars:Dynamic, ?kind:Dynamic, ?diag_kind:Dynamic, ?markers:Dynamic, ?size:Dynamic, ?aspect:Dynamic, ?dropna:Dynamic, ?plot_kws:Dynamic, ?diag_kws:Dynamic, ?grid_kws:Dynamic):Dynamic;
	/**
		Plot data and a linear regression model fit.
		
		There are a number of mutually exclusive options for estimating the
		regression model: ``order``, ``logistic``, ``lowess``, ``robust``, and
		``logx``. See the parameter docs for more information on these options.    
		
		Parameters
		----------
		x, y: string, series, or vector array
		    Input variables. If strings, these should correspond with column names
		    in ``data``. When pandas objects are used, axes will be labeled with
		    the series name.
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		x_estimator : callable that maps vector -> scalar, optional
		    Apply this function to each unique value of ``x`` and plot the
		    resulting estimate. This is useful when ``x`` is a discrete variable.
		    If ``x_ci`` is not ``None``, this estimate will be bootstrapped and a
		    confidence interval will be drawn.    
		x_bins : int or vector, optional
		    Bin the ``x`` variable into discrete bins and then estimate the central
		    tendency and a confidence interval. This binning only influences how
		    the scatterplot is drawn; the regression is still fit to the original
		    data.  This parameter is interpreted either as the number of
		    evenly-sized (not necessary spaced) bins or the positions of the bin
		    centers. When this parameter is used, it implies that the default of
		    ``x_estimator`` is ``numpy.mean``.    
		x_ci : "ci", int in [0, 100] or None, optional
		    Size of the confidence interval used when plotting a central tendency
		    for discrete values of ``x``. If "ci", defer to the value of the``ci``
		    parameter.    
		scatter : bool, optional
		    If ``True``, draw a scatterplot with the underlying observations (or
		    the ``x_estimator`` values).    
		fit_reg : bool, optional
		    If ``True``, estimate and plot a regression model relating the ``x``
		    and ``y`` variables.    
		ci : int in [0, 100] or None, optional
		    Size of the confidence interval for the regression estimate. This will
		    be drawn using translucent bands around the regression line. The
		    confidence interval is estimated using a bootstrap; for large
		    datasets, it may be advisable to avoid that computation by setting
		    this parameter to None.    
		n_boot : int, optional
		    Number of bootstrap resamples used to estimate the ``ci``. The default
		    value attempts to balance time and stability; you may want to increase
		    this value for "final" versions of plots.    
		units : variable name in ``data``, optional
		    If the ``x`` and ``y`` observations are nested within sampling units,
		    those can be specified here. This will be taken into account when
		    computing the confidence intervals by performing a multilevel bootstrap
		    that resamples both units and observations (within unit). This does not
		    otherwise influence how the regression is estimated or drawn.    
		order : int, optional
		    If ``order`` is greater than 1, use ``numpy.polyfit`` to estimate a
		    polynomial regression.    
		logistic : bool, optional
		    If ``True``, assume that ``y`` is a binary variable and use
		    ``statsmodels`` to estimate a logistic regression model. Note that this
		    is substantially more computationally intensive than linear regression,
		    so you may wish to decrease the number of bootstrap resamples
		    (``n_boot``) or set ``ci`` to None.    
		lowess : bool, optional
		    If ``True``, use ``statsmodels`` to estimate a nonparametric lowess
		    model (locally weighted linear regression). Note that confidence
		    intervals cannot currently be drawn for this kind of model.    
		robust : bool, optional
		    If ``True``, use ``statsmodels`` to estimate a robust regression. This
		    will de-weight outliers. Note that this is substantially more
		    computationally intensive than standard linear regression, so you may
		    wish to decrease the number of bootstrap resamples (``n_boot``) or set
		    ``ci`` to None.    
		logx : bool, optional
		    If ``True``, estimate a linear regression of the form y ~ log(x), but
		    plot the scatterplot and regression model in the input space. Note that
		    ``x`` must be positive for this to work.    
		{x,y}_partial : strings in ``data`` or matrices
		    Confounding variables to regress out of the ``x`` or ``y`` variables
		    before plotting.    
		truncate : bool, optional
		    By default, the regression line is drawn to fill the x axis limits
		    after the scatterplot is drawn. If ``truncate`` is ``True``, it will
		    instead by bounded by the data limits.    
		{x,y}_jitter : floats, optional
		    Add uniform random noise of this size to either the ``x`` or ``y``
		    variables. The noise is added to a copy of the data after fitting the
		    regression, and only influences the look of the scatterplot. This can
		    be helpful when plotting variables that take discrete values.    
		label : string
		    Label to apply to ether the scatterplot or regression line (if
		    ``scatter`` is ``False``) for use in a legend.
		color : matplotlib color
		    Color to apply to all plot elements; will be superseded by colors
		    passed in ``scatter_kws`` or ``line_kws``.
		marker : matplotlib marker code
		    Marker to use for the scatterplot glyphs.
		{scatter,line}_kws : dictionaries
		    Additional keyword arguments to pass to ``plt.scatter`` and
		    ``plt.plot``.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.
		
		Returns
		-------
		ax : matplotlib Axes
		    The Axes object containing the plot.
		
		See Also
		--------
		lmplot : Combine :func:`regplot` and :class:`FacetGrid` to plot multiple
		         linear relationships in a dataset.
		jointplot : Combine :func:`regplot` and :class:`JointGrid` (when used with
		            ``kind="reg"``).
		pairplot : Combine :func:`regplot` and :class:`PairGrid` (when used with
		           ``kind="reg"``).
		residplot : Plot the residuals of a linear regression model.
		interactplot : Plot a two-way interaction between continuous variables
		
		Notes
		-----
		
		Understanding the difference between :func:`regplot` and :func:`lmplot` can
		be a bit tricky. In fact, they are closely related, as :func:`lmplot` uses
		:func:`regplot` internally and takes most of its parameters. However,
		:func:`regplot` is an axes-level function, so it draws directly onto an
		axes (either the currently active axes or the one provided by the ``ax``
		parameter), while :func:`lmplot` is a figure-level function and creates its
		own figure, which is managed through a :class:`FacetGrid`. This has a few
		consequences, namely that :func:`regplot` can happily coexist in a figure
		with other kinds of plots and will follow the global matplotlib color
		cycle. In contrast, :func:`lmplot` needs to occupy an entire figure, and
		the size and color cycle are controlled through function parameters,
		ignoring the global defaults.    
		
		
		It's also easy to combine combine :func:`regplot` and :class:`JointGrid` or
		:class:`PairGrid` through the :func:`jointplot` and :func:`pairplot`
		functions, although these do not directly accept all of :func:`regplot`'s
		parameters.
		
		Examples
		--------
		
		Plot the relationship between two variables in a DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.regplot(x="total_bill", y="tip", data=tips)
		
		Plot with two variables defined as numpy arrays; use a different color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(8)
		    >>> mean, cov = [4, 6], [(1.5, .7), (.7, 1)]
		    >>> x, y = np.random.multivariate_normal(mean, cov, 80).T
		    >>> ax = sns.regplot(x=x, y=y, color="g")
		
		Plot with two variables defined as pandas Series; use a different marker:
		
		.. plot::
		    :context: close-figs
		
		    >>> import pandas as pd
		    >>> x, y = pd.Series(x, name="x_var"), pd.Series(y, name="y_var")
		    >>> ax = sns.regplot(x=x, y=y, marker="+")
		
		Use a 68% confidence interval, which corresponds with the standard error
		of the estimate:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x=x, y=y, ci=68)
		
		Plot with a discrete ``x`` variable and add some jitter:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x="size", y="total_bill", data=tips, x_jitter=.1)
		
		Plot with a discrete ``x`` variable showing means and confidence intervals
		for unique values:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x="size", y="total_bill", data=tips,
		    ...                  x_estimator=np.mean)
		
		Plot with a continuous variable divided into discrete bins:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x=x, y=y, x_bins=4)
		
		Fit a higher-order polynomial regression and truncate the model prediction:
		
		.. plot::
		    :context: close-figs
		
		    >>> ans = sns.load_dataset("anscombe")
		    >>> ax = sns.regplot(x="x", y="y", data=ans.loc[ans.dataset == "II"],
		    ...                  scatter_kws={"s": 80},
		    ...                  order=2, ci=None, truncate=True)
		
		Fit a robust regression and don't plot a confidence interval:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x="x", y="y", data=ans.loc[ans.dataset == "III"],
		    ...                  scatter_kws={"s": 80},
		    ...                  robust=True, ci=None)
		
		Fit a logistic regression; jitter the y variable and use fewer bootstrap
		iterations:
		
		.. plot::
		    :context: close-figs
		
		    >>> tips["big_tip"] = (tips.tip / tips.total_bill) > .175
		    >>> ax = sns.regplot(x="total_bill", y="big_tip", data=tips,
		    ...                  logistic=True, n_boot=500, y_jitter=.03)
		
		Fit the regression model using log(x) and truncate the model prediction:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x="size", y="total_bill", data=tips,
		    ...                  x_estimator=np.mean, logx=True, truncate=True)
	**/
	static public function regplot(x:Dynamic, y:Dynamic, ?data:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?dropna:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?label:Dynamic, ?color:Dynamic, ?marker:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Plot the residuals of a linear regression.
		
		This function will regress y on x (possibly as a robust or polynomial
		regression) and then draw a scatterplot of the residuals. You can
		optionally fit a lowess smoother to the residual plot, which can
		help in determining if there is structure to the residuals.
		
		Parameters
		----------
		x : vector or string
		    Data or column name in `data` for the predictor variable.
		y : vector or string
		    Data or column name in `data` for the response variable.
		data : DataFrame, optional
		    DataFrame to use if `x` and `y` are column names.
		lowess : boolean, optional
		    Fit a lowess smoother to the residual scatterplot.
		{x, y}_partial : matrix or string(s) , optional
		    Matrix with same first dimension as `x`, or column name(s) in `data`.
		    These variables are treated as confounding and are removed from
		    the `x` or `y` variables before plotting.
		order : int, optional
		    Order of the polynomial to fit when calculating the residuals.
		robust : boolean, optional
		    Fit a robust linear regression when calculating the residuals.
		dropna : boolean, optional
		    If True, ignore observations with missing data when fitting and
		    plotting.
		label : string, optional
		    Label that will be used in any plot legends.
		color : matplotlib color, optional
		    Color to use for all elements of the plot.
		{scatter, line}_kws : dictionaries, optional
		    Additional keyword arguments passed to scatter() and plot() for drawing
		    the components of the plot.
		ax : matplotlib axis, optional
		    Plot into this axis, otherwise grab the current axis or make a new
		    one if not existing.
		
		Returns
		-------
		ax: matplotlib axes
		    Axes with the regression plot.
		
		See Also
		--------
		regplot : Plot a simple linear regression model.
		jointplot (with kind="resid"): Draw a residplot with univariate
		                               marginal distrbutions.
	**/
	static public function residplot(x:Dynamic, y:Dynamic, ?data:Dynamic, ?lowess:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?order:Dynamic, ?robust:Dynamic, ?dropna:Dynamic, ?label:Dynamic, ?color:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic, ?ax:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Plot a symmetric matrix with colormap and statistic values.
		
		NOTE: This function is deprecated in favor of :func:`heatmap` and will
		be removed in a forthcoming release.
	**/
	static public function symmatplot(mat:Dynamic, ?p_mat:Dynamic, ?names:Dynamic, ?cmap:Dynamic, ?cmap_range:Dynamic, ?cbar:Dynamic, ?annot:Dynamic, ?diag_names:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
}