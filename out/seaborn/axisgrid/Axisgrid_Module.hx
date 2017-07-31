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
	static public var _facet_docs : Dynamic;
	/**
		Calculate number of hist bins using Freedman-Diaconis rule.
	**/
	static public function _freedman_diaconis_bins(a:Dynamic):Dynamic;
	/**
		Make a palette that blends between a list of colors.
		
		Parameters
		----------
		colors : sequence of colors in various formats interpreted by ``input``
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    Number of colors in the palette.
		as_cmap : bool, optional
		    If True, return as a matplotlib colormap instead of list.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
	**/
	static public function blend_palette(colors:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
	/**
		Return a list of colors defining a color palette.
		
		Available seaborn palette names:
		    deep, muted, bright, pastel, dark, colorblind
		
		Other options:
		    hls, husl, any named matplotlib palette, list of colors
		
		Calling this function with ``palette=None`` will return the current
		matplotlib color cycle.
		
		Matplotlib palettes can be specified as reversed palettes by appending
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
	/**
		Flexibly plot a univariate distribution of observations.
		
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
		    Specification of hist bins, or None to use Freedman-Diaconis rule.
		hist : bool, optional
		    Whether to plot a (normed) histogram.
		kde : bool, optional
		    Whether to plot a gaussian kernel density estimate.
		rug : bool, optional
		    Whether to draw a rugplot on the support axis.
		fit : random variable object, optional
		    An object with `fit` method, returning a tuple that can be passed to a
		    `pdf` method a positional arguments following an grid of values to
		    evaluate the pdf on.
		{hist, kde, rug, fit}_kws : dictionaries, optional
		    Keyword arguments for underlying plotting functions.
		color : matplotlib color, optional
		    Color to plot everything but the fitted curve in.
		vertical : bool, optional
		    If True, oberved values are on y-axis.
		norm_hist : bool, optional
		    If True, the histogram height shows a density rather than a count.
		    This is implied if a KDE or fitted density is plotted.
		axlabel : string, False, or None, optional
		    Name for the support axis label. If None, will try to get it
		    from a.namel if False, do not set a label.
		label : string, optional
		    Legend label for the relevent component of the plot
		ax : matplotlib axis, optional
		    if provided, plot on this axis
		
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
		    >>> sns.set(); np.random.seed(0)
		    >>> x = np.random.randn(100)
		    >>> ax = sns.distplot(x)
		
		Use Pandas objects to get an informative axis label:
		
		.. plot::
		    :context: close-figs
		
		    >>> import pandas as pd
		    >>> x = pd.Series(x, name="x variable")
		    >>> ax = sns.distplot(x)
		
		Plot the distribution with a kenel density estimate and rug plot:
		
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
	static public function distplot(a:Dynamic, ?bins:Dynamic, ?hist:Dynamic, ?kde:Dynamic, ?rug:Dynamic, ?fit:Dynamic, ?hist_kws:Dynamic, ?kde_kws:Dynamic, ?rug_kws:Dynamic, ?fit_kws:Dynamic, ?color:Dynamic, ?vertical:Dynamic, ?norm_hist:Dynamic, ?axlabel:Dynamic, ?label:Dynamic, ?ax:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Draw a plot of two variables with bivariate and univariate graphs.
		
		This function provides a convenient interface to the :class:`JointGrid`
		class, with several canned plot kinds. This is intended to be a fairly
		lightweight wrapper; if you need more flexibility, you should use
		:class:`JointGrid` directly.
		
		Parameters
		----------
		x, y : strings or vectors
		    Data or names of variables in ``data``.
		data : DataFrame, optional
		    DataFrame when ``x`` and ``y`` are variable names.
		kind : { "scatter" | "reg" | "resid" | "kde" | "hex" }, optional
		    Kind of plot to draw.
		stat_func : callable or None, optional
		    Function used to calculate a statistic about the relationship and
		    annotate the plot. Should map `x` and `y` either to a single value
		    or to a (value, p) tuple. Set to ``None`` if you don't want to
		    annotate the plot.
		color : matplotlib color, optional
		    Color used for the plot elements.
		size : numeric, optional
		    Size of the figure (it will be square).
		ratio : numeric, optional
		    Ratio of joint axes size to marginal axes height.
		space : numeric, optional
		    Space between the joint and marginal axes
		dropna : bool, optional
		    If True, remove observations that are missing from ``x`` and ``y``.
		{x, y}lim : two-tuples, optional
		    Axis limits to set before plotting.
		{joint, marginal, annot}_kws : dicts, optional
		    Additional keyword arguments for the plot components.
		kwargs : key, value pairings
		    Additional keyword arguments are passed to the function used to
		    draw the plot on the joint Axes, superseding items in the
		    ``joint_kws`` dictionary.
		
		Returns
		-------
		grid : :class:`JointGrid`
		    :class:`JointGrid` object with the plot on it.
		
		See Also
		--------
		JointGrid : The Grid class used for drawing this plot. Use it directly if
		            you need more flexibility.
		
		Examples
		--------
		
		Draw a scatterplot with marginal histograms:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np, pandas as pd; np.random.seed(0)
		    >>> import seaborn as sns; sns.set(style="white", color_codes=True)
		    >>> tips = sns.load_dataset("tips")
		    >>> g = sns.jointplot(x="total_bill", y="tip", data=tips)
		
		Add regression and kernel density fits:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.jointplot("total_bill", "tip", data=tips, kind="reg")
		
		Replace the scatterplot with a joint histogram using hexagonal bins:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.jointplot("total_bill", "tip", data=tips, kind="hex")
		
		Replace the scatterplots and histograms with density estimates and align
		the marginal Axes tightly with the joint Axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> g = sns.jointplot("sepal_width", "petal_length", data=iris,
		    ...                   kind="kde", space=0, color="g")
		
		Use a different statistic for the annotation:
		
		.. plot::
		    :context: close-figs
		
		    >>> from scipy.stats import spearmanr
		    >>> g = sns.jointplot("size", "total_bill", data=tips,
		    ...                   stat_func=spearmanr, color="m")
		
		Draw a scatterplot, then add a joint density estimate:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = (sns.jointplot("sepal_length", "sepal_width",
		    ...                    data=iris, color="k")
		    ...         .plot_joint(sns.kdeplot, zorder=0, n_levels=6))
		
		Pass vectors in directly without using Pandas, then name the axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> x, y = np.random.randn(2, 300)
		    >>> g = (sns.jointplot(x, y, kind="hex", stat_func=None)
		    ...         .set_axis_labels("x", "y"))
		
		Draw a smaller figure with more space devoted to the marginal plots:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.jointplot("total_bill", "tip", data=tips,
		    ...                   size=5, ratio=3, color="g")
		
		Pass keyword arguments down to the underlying plots:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.jointplot("petal_length", "sepal_length", data=iris,
		    ...                   marginal_kws=dict(bins=15, rug=True),
		    ...                   annot_kws=dict(stat="r"),
		    ...                   s=40, edgecolor="w", linewidth=1)
	**/
	static public function jointplot(x:Dynamic, y:Dynamic, ?data:Dynamic, ?kind:Dynamic, ?stat_func:Dynamic, ?color:Dynamic, ?size:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?joint_kws:Dynamic, ?marginal_kws:Dynamic, ?annot_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fit and plot a univariate or bivariate kernel density estimate.
		
		Parameters
		----------
		data : 1d array-like
		    Input data.
		data2: 1d array-like, optional
		    Second input data. If present, a bivariate KDE will be estimated.
		shade : bool, optional
		    If True, shade in the area under the KDE curve (or draw with filled
		    contours when data is bivariate).
		vertical : bool, optional
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
		legend : bool, optional
		    If True, add a legend or label the axes when possible.
		cumulative : bool, optional
		    If True, draw the cumulative distribution estimated by the kde.
		shade_lowest : bool, optional
		    If True, shade the lowest contour of a bivariate KDE plot. Not
		    relevant when drawing a univariate plot or when ``shade=False``.
		    Setting this to ``False`` can be useful when you want multiple
		    densities on the same Axes.
		cbar : bool, optional
		    If True and drawing a bivariate KDE plot, add a colorbar.
		cbar_ax : matplotlib axes, optional
		    Existing axes to draw the colorbar onto, otherwise space is taken
		    from the main axes.
		cbar_kws : dict, optional
		    Keyword arguments for ``fig.colorbar()``.
		ax : matplotlib axes, optional
		    Axes to plot on, otherwise uses current axes.
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
		
		Add a colorbar for the contours:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.kdeplot(x, y, cbar=True)
		
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
	static public function kdeplot(data:Dynamic, ?data2:Dynamic, ?shade:Dynamic, ?vertical:Dynamic, ?kernel:Dynamic, ?bw:Dynamic, ?gridsize:Dynamic, ?cut:Dynamic, ?clip:Dynamic, ?legend:Dynamic, ?cumulative:Dynamic, ?shade_lowest:Dynamic, ?cbar:Dynamic, ?cbar_ax:Dynamic, ?cbar_kws:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public var string_types : Dynamic;
}