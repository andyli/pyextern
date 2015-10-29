/* This file is generated, do not edit! */
package seaborn.tests;
@:pythonImport("seaborn.tests.test_axisgrid") extern class Test_axisgrid {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
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
	static public var old_matplotlib : Dynamic;
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
		Show point estimates and confidence intervals using scatter plot glyphs.
		
		A point plot represents an estimate of central tendency for a numeric
		variable by the position of scatter plot points and provides some
		indication of the uncertainty around that estimate using error bars.
		
		Point plots can be more useful than bar plots for focusing comparisons
		between different levels of one or more categorical variables. They are
		particularly adept at showing interactions: how the relationship between
		levels of one categorical variable changes across levels of a second
		categorical variable. The lines that join each point from the same ``hue``
		level allow interactions to be judged by differences in slope, which is
		easier for the eyes than comparing the heights of several groups of points
		or bars.
		
		It is important to keep in mind that a point plot shows only the mean (or
		other estimator) value, but in many cases it may be more informative to
		show the distribution of values at each level of the categorical variables.
		In that case, other approaches such as a box or violin plot may be more
		appropriate.
		
		Input data can be passed in a variety of formats, including:
		
		- Vectors of data represented as lists, numpy arrays, or pandas Series
		  objects passed directly to the ``x``, ``y``, and/or ``hue`` parameters.
		- A "long-form" DataFrame, in which case the ``x``, ``y``, and ``hue``
		  variables will determine how the data are plotted.
		- A "wide-form" DataFrame, such that each numeric column will be plotted.
		- Anything accepted by ``plt.boxplot`` (e.g. a 2d array or list of vectors)
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame
		    Tidy ("long-form") dataframe where each column is a variable and each
		    row is an observation.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		estimator : callable that maps vector -> scalar, optional
		    Statistical function to estimate within each categorical bin.
		ci : float or None, optional
		    Size of confidence intervals to draw around estimated values. If
		    ``None``, no bootstrapping will be performed, and error bars will
		    not be drawn.
		n_boot : int, optional
		    Number of bootstrap iterations to use when computing confidence
		    intervals.
		units : name of variable in ``data`` or vector data, optional
		    Identifier of sampling units, which will be used to perform a
		    multilevel bootstrap and account for repeated measures design.    
		markers : string or list of strings, optional
		    Markers to use for each of the ``hue`` levels.
		linestyles : string or list of strings, optional
		    Line styles to use for each of the ``hue`` levels.
		dodge : bool or float, optional
		    Amount to separate the points for each level of the ``hue`` variable
		    along the categorical axis.
		join : bool, optional
		    If ``True``, lines will be drawn between point estimates at the same
		    ``hue`` level.
		scale : float, optional
		    Scale factor for the plot elements.
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred from the dtype of the input variables, but can be used to
		    specify when the "categorical" variable is a numeric or when plotting
		    wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for :func:`light_palette` when
		    using hue nesting.    
		palette : seaborn color palette or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the boxplot drawn onto it.    
		
		See Also
		--------
		barplot : Show point estimates and confidence intervals using bars.    
		factorplot : Combine categorical plots and a class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a set of vertical point plots grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_style("darkgrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.pointplot(x="time", y="total_bill", data=tips)
		
		Draw a set of vertical points with nested grouping by a two variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", hue="smoker",
		    ...                    data=tips)
		
		Separate the points for different hue levels along the categorical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", hue="smoker",
		    ...                    data=tips, dodge=True)
		
		Use a different marker and line style for the hue levels:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", hue="smoker",
		    ...                    data=tips,
		    ...                    markers=["o", "x"],
		    ...                    linestyles=["-", "--"])
		
		Draw a set of horizontal points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="tip", y="day", data=tips)
		
		Don't draw a line connecting each point:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="tip", y="day", data=tips, join=False)
		
		Use a different color for a single-layer plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot("time", y="total_bill", data=tips,
		    ...                    color="#bb3f3f")
		
		Use a different color palette for the points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set2")
		
		Control point order by sorting the input data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="size", y="tip", data=tips.sort("size"))
		
		Control point order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="size", y="tip", data=tips,
		    ...                    order=np.arange(1, 7), palette="Blues_d")
		
		Use median as the estimate of central tendency:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import median
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, estimator=median)
		
		Show the standard error of the mean with the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, ci=68)
	**/
	static public function pointplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?markers:Dynamic, ?linestyles:Dynamic, ?dodge:Dynamic, ?join:Dynamic, ?scale:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	static public var rs : Dynamic;
	/**
		Make function raise SkipTest exception if a given condition is true.
		
		If the condition is a callable, it is used at runtime to dynamically
		make the decision. This is useful for tests that may require costly
		imports, to delay the cost until the test suite is actually executed.
		
		Parameters
		----------
		skip_condition : bool or callable
		    Flag to determine whether to skip the decorated test.
		msg : str, optional
		    Message to give on raising a SkipTest exception. Default is None.
		
		Returns
		-------
		decorator : function
		    Decorator which, when applied to a function, causes SkipTest
		    to be raised when `skip_condition` is True, and the function
		    to be called normally otherwise.
		
		Notes
		-----
		The decorator itself is decorated with the ``nose.tools.make_decorator``
		function in order to transmit function name, and various other metadata.
	**/
	static public function skipif(skip_condition:Dynamic, ?msg:Dynamic):Dynamic;
}