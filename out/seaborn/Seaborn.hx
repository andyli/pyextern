/* This file is generated, do not edit! */
package seaborn;
@:pythonImport("seaborn") extern class Seaborn {
	static public var SEABORN_PALETTES : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var __version__ : Dynamic;
	/**
		Return a parameter dict for the aesthetic style of the plots.
		
		This affects things like the color of the axes, whether a grid is
		enabled by default, and other aesthetic elements.
		
		This function returns an object that can be used in a ``with`` statement
		to temporarily change the style parameters.
		
		Parameters
		----------
		style : dict, None, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured set.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		>>> st = axes_style("whitegrid")
		
		>>> set_style("ticks", {"xtick.major.size": 8, "ytick.major.size": 8})
		
		>>> import matplotlib.pyplot as plt
		>>> with axes_style("white"):
		...     f, ax = plt.subplots()
		...     ax.plot(x, y)               # doctest: +SKIP
		
		See Also
		--------
		set_style : set the matplotlib parameters for a seaborn theme
		plotting_context : return a parameter dict to to scale plot elements
		color_palette : define the color palette for a plot
	**/
	static public function axes_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Return booleans for whether the x and y ticklabels on an Axes overlap.
		
		Parameters
		----------
		ax : matplotlib Axes
		
		Returns
		-------
		x_overlap, y_overlap : booleans
		    True when the labels on that axis overlap.
	**/
	static public function axes_ticklabels_overlap(ax:Dynamic):Dynamic;
	/**
		Return a boolean for whether the list of ticklabels have overlaps.
		
		Parameters
		----------
		labels : list of ticklabels
		
		Returns
		-------
		overlap : boolean
		    True if any of the labels overlap.
	**/
	static public function axis_ticklabels_overlap(labels:Dynamic):Dynamic;
	/**
		Grab current axis and label it.
	**/
	static public function axlabel(xlabel:Dynamic, ylabel:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Show point estimates and confidence intervals as rectangular bars.
		
		A bar plot represents an estimate of central tendency for a numeric
		variable with the height of each rectangle and provides some indication of
		the uncertainty around that estimate using error bars. Bar plots include 0
		in the quantitative axis range, and they are a good choice when 0 is a
		meaningful value for the quantitative variable, and you want to make
		comparisons against it.
		
		For datasets where 0 is not a meaningful value, a point plot will allow you
		to focus on differences between levels of one or more categorical
		variables.
		
		It is also important to keep in mind that a bar plot shows only the mean
		(or other estimator) value, but in many cases it may be more informative to
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
		saturation : float, optional
		    Proportion of the original saturation to draw colors at. Large patches
		    often look better with slightly desaturated colors, but set this to
		    ``1`` if you want the plot colors to perfectly match the input color
		    spec.    
		errcolor : matplotlib color
		    Color for the lines that represent the confidence interval.
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to ``plt.bar`` at draw
		    time.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the boxplot drawn onto it.    
		
		See Also
		--------
		countplot : Show the counts of observations in each categorical bin.    
		pointplot : Show point estimates and confidence intervals using scatterplot
		            glyphs.    
		factorplot : Combine categorical plots and a class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a set of vertical bar plots grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_style("whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.barplot(x="day", y="total_bill", data=tips)
		
		Draw a set of vertical bars with nested grouping by a two variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="total_bill", hue="sex", data=tips)
		
		Draw a set of horizontal bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="tip", y="day", data=tips)
		
		Control bar order by sorting the input data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="size", y="tip", data=tips.sort("size"))
		
		Control bar order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="size", y="tip", data=tips,
		    ...                  order=np.arange(1, 7), palette="Blues_d")
		
		Use median as the estimate of central tendency:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import median
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, estimator=median)
		
		Show the standard error of the mean with the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, ci=68)
		
		Use a different color palette for the bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot("size", y="total_bill", data=tips.sort("size"),
		    ...                  palette="Blues_d")
		
		Plot all bars in a single color:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot("size", y="total_bill", data=tips.sort("size"),
		    ...                  color="salmon", saturation=.5)
		
		Use ``plt.bar`` keyword arguments to further change the aesthetic:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot("day", "total_bill", data=tips,
		    ...                  linewidth=2.5, facecolor=(1, 1, 1, 0),
		    ...                  errcolor=".2", edgecolor=".2")
	**/
	static public function barplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?errcolor:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
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
		    func : callable, default np.mean
		        Function to call on the args that are passed in.
		    random_seed : int | None, default None
		        Seed for the random number generator; useful if you want
		        reproducible resamples.
		
		Returns
		-------
		boot_dist: array
		    array of bootstrapped statistic values
	**/
	static public function bootstrap(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Draw a box plot to show distributions with respect to categories.
		
		A box plot (or box-and-whisker plot) shows the distribution of quantitative
		data in a way that facilitates comparisons between variables or across
		levels of a categorical variable. The box shows the quartiles of the
		dataset while the whiskers extend to show the rest of the distribution,
		except for points that are determined to be "outliers" using a method
		that is a function of the inter-quartile range.
		
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
		saturation : float, optional
		    Proportion of the original saturation to draw colors at. Large patches
		    often look better with slightly desaturated colors, but set this to
		    ``1`` if you want the plot colors to perfectly match the input color
		    spec.    
		width : float, optional
		    Width of a full element when not using hue nesting, or width of all the
		    elements for one level of the major grouping variable.    
		fliersize : float, optional
		    Size of the markers used to indicate outlier observations.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		whis : float, optional
		    Proportion of the IQR past the low and high quartiles to extend the
		    plot whiskers. Points outside this range will be identified as
		    outliers.
		notch : boolean, optional
		    Whether to "notch" the box to indicate a confidence interval for the
		    median. There are several other parameters that can control how the
		    notches are drawn; see the ``plt.boxplot`` help for more information
		    on them.
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to ``plt.boxplot`` at draw
		    time.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the boxplot drawn onto it.    
		
		See Also
		--------
		violinplot : A combination of boxplot and kernel density estimation.    
		stripplot : A scatterplot where one variable is categorical. Can be used
		            in conjunction with a other plots to show each observation.    
		
		Examples
		--------
		
		Draw a single horizontal boxplot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_style("whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.boxplot(x=tips["total_bill"])
		
		Draw a vertical boxplot grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="day", y="total_bill", data=tips)
		
		Draw a boxplot with nested grouping by two categorical variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="day", y="total_bill", hue="smoker",
		    ...                  data=tips, palette="Set3")
		
		Draw a boxplot with nested grouping when some bins are empty:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="day", y="total_bill", hue="time",
		    ...                  data=tips, linewidth=2.5)
		
		Control box order by sorting the input data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="size", y="tip", data=tips.sort("size"))
		
		Control box order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="size", y="tip", data=tips,
		    ...                  order=np.arange(1, 7), palette="Blues_d")
		
		Draw a boxplot for each numeric variable in a DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> ax = sns.boxplot(data=iris, orient="h", palette="Set2")
		
		Use :func:`stripplot` to show the datapoints on top of the boxes:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="day", y="total_bill", data=tips)
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips,
		    ...                    size=4, jitter=True, edgecolor="gray")
		
		Draw a box plot on to a :class:`FacetGrid` to group within an additional
		categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="time", size=4, aspect=.7)
		    >>> (g.map(sns.boxplot, "sex", "total_bill", "smoker")
		    ...   .despine(left=True)
		    ...   .add_legend(title="smoker"))  #doctest: +ELLIPSIS
		    <seaborn.axisgrid.FacetGrid object at 0x...>
	**/
	static public function boxplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?width:Dynamic, ?fliersize:Dynamic, ?linewidth:Dynamic, ?whis:Dynamic, ?notch:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function categorical_order(values:Dynamic, ?order:Dynamic):Dynamic;
	/**
		Select a palette from the ColorBrewer set.
		
		These palettes are built into matplotlib and can be used by name in
		many seaborn functions, or by passing the object returned by this function.
		
		Parameters
		----------
		data_type : {'sequential', 'diverging', 'qualitative'}
		    This describes the kind of data you want to visualize. See the seaborn
		    color palette docs for more information about how to choose this value.
		    Note that you can pass substrings (e.g. 'q' for 'qualitative.
		
		as_cmap : bool
		    If True, the return value is a matplotlib colormap rather than a
		    list of discrete colors.
		
		Returns
		-------
		pal or cmap : list of colors or matplotlib colormap
		    Object that can be passed to plotting functions.
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		light_palette : Create a sequential palette with bright low values.
		diverging_palette : Create a diverging palette from selected colors.
		cubehelix_palette : Create a sequential palette or colormap using the
		                    cubehelix system.
	**/
	static public function choose_colorbrewer_palette(data_type:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Launch an interactive widget to create a sequential cubehelix palette.
		
		This corresponds with the :func:`cubehelix_palette` function. This kind
		of palette is good for data that range between relatively uninteresting
		low values and interesting high values. The cubehelix system allows the
		palette to have more hue variance across the range, which can be helpful
		for distinguishing a wider range of values.
		
		Requires IPython 2+ and must be used in the notebook.
		
		Parameters
		----------
		as_cmap : bool
		    If True, the return value is a matplotlib colormap rather than a
		    list of discrete colors.
		
		Returns
		-------
		pal or cmap : list of colors or matplotlib colormap
		    Object that can be passed to plotting functions.
		
		See Also
		--------
		cubehelix_palette : Create a sequential palette or colormap using the
		                    cubehelix system.
	**/
	static public function choose_cubehelix_palette(?as_cmap:Dynamic):Dynamic;
	/**
		Launch an interactive widget to create a dark sequential palette.
		
		This corresponds with the :func:`dark_palette` function. This kind
		of palette is good for data that range between relatively uninteresting
		low values and interesting high values.
		
		Requires IPython 2+ and must be used in the notebook.
		
		Parameters
		----------
		input : {'husl', 'hls', 'rgb'}
		    Color space for defining the seed value. Note that the default is
		    different than the default input for :func:`dark_palette`.
		as_cmap : bool
		    If True, the return value is a matplotlib colormap rather than a
		    list of discrete colors.
		
		Returns
		-------
		pal or cmap : list of colors or matplotlib colormap
		    Object that can be passed to plotting functions.
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		light_palette : Create a sequential palette with bright low values.
		cubehelix_palette : Create a sequential palette or colormap using the
		                    cubehelix system.
	**/
	static public function choose_dark_palette(?input:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Launch an interactive widget to choose a diverging color palette.
		
		This corresponds with the :func:`diverging_palette` function. This kind
		of palette is good for data that range between interesting low values
		and interesting high values with a meaningful midpoint. (For example,
		change scores relative to some baseline value).
		
		Requires IPython 2+ and must be used in the notebook.
		
		Parameters
		----------
		as_cmap : bool
		    If True, the return value is a matplotlib colormap rather than a
		    list of discrete colors.
		
		Returns
		-------
		pal or cmap : list of colors or matplotlib colormap
		    Object that can be passed to plotting functions.
		
		See Also
		--------
		diverging_palette : Create a diverging color palette or colormap.
		choose_colorbrewer_palette : Interactively choose palettes from the
		                             colorbrewer set, including diverging palettes.
	**/
	static public function choose_diverging_palette(?as_cmap:Dynamic):Dynamic;
	/**
		Launch an interactive widget to create a light sequential palette.
		
		This corresponds with the :func:`light_palette` function. This kind
		of palette is good for data that range between relatively uninteresting
		low values and interesting high values.
		
		Requires IPython 2+ and must be used in the notebook.
		
		Parameters
		----------
		input : {'husl', 'hls', 'rgb'}
		    Color space for defining the seed value. Note that the default is
		    different than the default input for :func:`light_palette`.
		as_cmap : bool
		    If True, the return value is a matplotlib colormap rather than a
		    list of discrete colors.
		
		Returns
		-------
		pal or cmap : list of colors or matplotlib colormap
		    Object that can be passed to plotting functions.
		
		See Also
		--------
		light_palette : Create a sequential palette with bright low values.
		dark_palette : Create a sequential palette with dark low values.
		cubehelix_palette : Create a sequential palette or colormap using the
		                    cubehelix system.
	**/
	static public function choose_light_palette(?input:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Return a percentile range from an array of values.
	**/
	static public function ci(a:Dynamic, ?which:Dynamic, ?axis:Dynamic):Dynamic;
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
		Plot a hierarchically clustered heatmap of a pandas DataFrame
		
		Parameters
		----------
		data: pandas.DataFrame
		    Rectangular data for clustering. Cannot contain NAs.
		pivot_kws : dict, optional
		    If `data` is a tidy dataframe, can provide keyword arguments for
		    pivot to create a rectangular dataframe.
		method : str, optional
		    Linkage method to use for calculating clusters.
		    See scipy.cluster.hierarchy.linkage documentation for more information:
		    http://docs.scipy.org/doc/scipy/reference/generated/scipy.cluster.hierarchy.linkage.html
		metric : str, optional
		    Distance metric to use for the data. See
		    scipy.spatial.distance.pdist documentation for more options
		    http://docs.scipy.org/doc/scipy/reference/generated/scipy.spatial.distance.pdist.html
		z_score : int or None, optional
		    Either 0 (rows) or 1 (columns). Whether or not to calculate z-scores
		    for the rows or the columns. Z scores are: z = (x - mean)/std, so
		    values in each row (column) will get the mean of the row (column)
		    subtracted, then divided by the standard deviation of the row (column).
		    This ensures that each row (column) has mean of 0 and variance of 1.
		standard_scale : int or None, optional
		    Either 0 (rows) or 1 (columns). Whether or not to standardize that
		    dimension, meaning for each row or column, subtract the minimum and
		    divide each by its maximum.
		figsize: tuple of two ints, optional
		    Size of the figure to create.
		cbar_kws : dict, optional
		    Keyword arguments to pass to ``cbar_kws`` in ``heatmap``, e.g. to
		    add a label to the colorbar.
		{row,col}_cluster : bool, optional
		    If True, cluster the {rows, columns}.
		{row,col}_linkage : numpy.array, optional
		    Precomputed linkage matrix for the rows or columns. See
		    scipy.cluster.hierarchy.linkage for specific formats.
		{row,col}_colors : list-like, optional
		    List of colors to label for either the rows or columns. Useful to
		    evaluate whether samples within a group are clustered together. Can
		    use nested lists for multiple color levels of labeling.
		mask : boolean array or DataFrame, optional
		    If passed, data will not be shown in cells where ``mask`` is True.
		    Cells with missing values are automatically masked. Only used for
		    visualizing, not for calculating.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to ``sns.heatmap``
		
		Returns
		-------
		clustergrid : ClusterGrid
		    A ClusterGrid instance.
		
		Notes
		-----
		The returned object has a ``savefig`` method that should be used if you
		want to save the figure object without clipping the dendrograms.
		
		To access the reordered row indices, use:
		``clustergrid.dendrogram_row.reordered_ind``
		
		Column indices, use:
		``clustergrid.dendrogram_col.reordered_ind``
		
		Examples
		--------
		
		Plot a clustered heatmap:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> flights = sns.load_dataset("flights")
		    >>> flights = flights.pivot("month", "year", "passengers")
		    >>> g = sns.clustermap(flights)
		
		Don't cluster one of the axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(flights, col_cluster=False)
		
		Use a different colormap and add lines to separate the cells:
		
		.. plot::
		    :context: close-figs
		
		    >>> cmap = sns.cubehelix_palette(as_cmap=True, rot=-.3, light=1)
		    >>> g = sns.clustermap(flights, cmap=cmap, linewidths=.5)
		
		Use a different figure size:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(flights, cmap=cmap, figsize=(7, 5))
		
		Standardize the data across the columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(flights, standard_scale=1)
		
		Normalize the data across the rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(flights, z_score=0)
		
		Use a different clustering method:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(flights, method="single", metric="cosine")
		
		Add colored labels on one of the axes:
		
		.. plot::
		    :context: close-figs
		
		    >>> season_colors = (sns.color_palette("BuPu", 3) +
		    ...                  sns.color_palette("RdPu", 3) +
		    ...                  sns.color_palette("YlGn", 3) +
		    ...                  sns.color_palette("OrRd", 3))
		    >>> g = sns.clustermap(flights, row_colors=season_colors)
	**/
	static public function clustermap(data:Dynamic, ?pivot_kws:Dynamic, ?method:Dynamic, ?metric:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?cbar_kws:Dynamic, ?row_cluster:Dynamic, ?col_cluster:Dynamic, ?row_linkage:Dynamic, ?col_linkage:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic, kwargs:Dynamic):Dynamic;
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
		Show the counts of observations in each categorical bin using bars.
		
		A count plot can be thought of as a histogram across a categorical, instead
		of quantitative, variable. The basic API and options are identical to those
		for :func:`barplot`, so you can compare counts across nested variables.
		
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
		saturation : float, optional
		    Proportion of the original saturation to draw colors at. Large patches
		    often look better with slightly desaturated colors, but set this to
		    ``1`` if you want the plot colors to perfectly match the input color
		    spec.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed to ``plt.bar``.
		
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
		
		Show value counts for a single categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set(style="darkgrid")
		    >>> titanic = sns.load_dataset("titanic")
		    >>> ax = sns.countplot(x="class", data=titanic)
		
		Show value counts for two categorical variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.countplot(x="class", hue="who", data=titanic)
		
		Plot the bars horizontally:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.countplot(y="class", hue="who", data=titanic)
		
		Use a different color palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.countplot(x="who", data=titanic, palette="Set3")
		
		Use ``plt.bar`` keyword arguments for a different look:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.countplot(x="who", data=titanic,
		    ...                    facecolor=(0, 0, 0, 0),
		    ...                    linewidth=5,
		    ...                    edgecolor=sns.color_palette("dark", 3))
	**/
	static public function countplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Make a palette with color names from Crayola crayons.
		
		Colors are taken from here:
		http://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors
		
		This is just a simple wrapper around the ``seaborn.crayons`` dictionary.
		
		Parameters
		----------
		colors : list of strings
		    List of keys in the ``seaborn.crayons`` dictionary.
		
		Returns
		-------
		palette : seaborn color palette
		    Returns the list of colors as rgb tuples in an object that behaves like
		    other seaborn color palettes.
		
		See Also
		--------
		xkcd_palette : Make a palette with named colors from the XKCD color survey.
	**/
	static public function crayon_palette(colors:Dynamic):Dynamic;
	static public var crayons : Dynamic;
	/**
		Make a sequential palette from the cubehelix system.
		
		This produces a colormap with linearly-decreasing (or increasing)
		brightness. That means that information will be preserved if printed to
		black and white or viewed by someone who is colorblind.  "cubehelix" is
		also availible as a matplotlib-based palette, but this function gives the
		user more control over the look of the palette and has a different set of
		defaults.
		
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
	**/
	static public function cubehelix_palette(?n_colors:Dynamic, ?start:Dynamic, ?rot:Dynamic, ?gamma:Dynamic, ?hue:Dynamic, ?light:Dynamic, ?dark:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Make a sequential palette that blends from dark to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_dark_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex, rgb-tuple, or html color name
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    if True, return as a matplotlib colormap instead of list
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		light_palette : Create a sequential palette with bright low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.dark_palette("purple"))
		
		Generate a palette that decreases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.dark_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.dark_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function dark_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
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
		Draw a tree diagram of relationships within a matrix
		
		Parameters
		----------
		data : pandas.DataFrame
		    Rectangular data
		linkage : numpy.array, optional
		    Linkage matrix
		axis : int, optional
		    Which axis to use to calculate linkage. 0 is rows, 1 is columns.
		label : bool, optional
		    If True, label the dendrogram at leaves with column or row names
		metric : str, optional
		    Distance metric. Anything valid for scipy.spatial.distance.pdist
		method : str, optional
		    Linkage method to use. Anything valid for
		    scipy.cluster.hierarchy.linkage
		rotate : bool, optional
		    When plotting the matrix, whether to rotate it 90 degrees
		    counter-clockwise, so the leaves face right
		ax : matplotlib axis, optional
		    Axis to plot on, otherwise uses current axis
		
		Returns
		-------
		dendrogramplotter : _DendrogramPlotter
		    A Dendrogram plotter object.
		
		Notes
		-----
		Access the reordered dendrogram indices with
		dendrogramplotter.reordered_ind
	**/
	static public function dendrogram(data:Dynamic, ?linkage:Dynamic, ?axis:Dynamic, ?label:Dynamic, ?metric:Dynamic, ?method:Dynamic, ?rotate:Dynamic, ?ax:Dynamic):Dynamic;
	/**
		Decrease the saturation channel of a color by some percent.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		prop : float
		    saturation channel of color will be multiplied by this value
		
		Returns
		-------
		new_color : rgb tuple
		    desaturated color code in RGB tuple representation
	**/
	static public function desaturate(color:Dynamic, prop:Dynamic):Dynamic;
	/**
		Remove the top and right spines from plot(s).
		
		fig : matplotlib figure, optional
		    Figure to despine all axes of, default uses current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine.
		top, right, left, bottom : boolean, optional
		    If True, remove that spine.
		offset : int or None  (default), optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward).
		trim : bool, optional
		    If true, limit spines to the smallest and largest major tick
		    on each non-despined axis.
		
		Returns
		-------
		None
	**/
	static public function despine(?fig:Dynamic, ?ax:Dynamic, ?top:Dynamic, ?right:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?offset:Dynamic, ?trim:Dynamic):Dynamic;
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
		norm_hist : bool, otional
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
		    >>> sns.set(rc={"figure.figsize": (8, 4)}); np.random.seed(0)
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
	/**
		Make a diverging palette between two HUSL colors.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_diverging_palette` function.
		
		Parameters
		----------
		h_neg, h_pos : float in [0, 359]
		    Anchor hues for negative and positive extents of the map.
		s : float in [0, 100], optional
		    Anchor saturation for both extents of the map.
		l : float in [0, 100], optional
		    Anchor lightness for both extents of the map.
		n : int, optional
		    Number of colors in the palette (if not returning a cmap)
		center : {"light", "dark"}, optional
		    Whether the center of the palette is light or dark
		as_cmap : bool, optional
		    If true, return a matplotlib colormap object rather than a
		    list of colors.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark values.
		light_palette : Create a sequential palette with light values.
		
		Examples
		--------
		
		Generate a blue-white-red palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.diverging_palette(240, 10, n=9))
		
		Generate a brighter green-white-purple palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.diverging_palette(150, 275, s=80, l=55, n=9))
		
		Generate a blue-black-red palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.diverging_palette(250, 15, s=75, l=40,
		    ...                                   n=9, center="dark"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.diverging_palette(220, 20, sep=20, as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function diverging_palette(h_neg:Dynamic, h_pos:Dynamic, ?s:Dynamic, ?l:Dynamic, ?sep:Dynamic, ?n:Dynamic, ?center:Dynamic, ?as_cmap:Dynamic):Dynamic;
	static public var division : Dynamic;
	/**
		Draw a categorical plot onto a FacetGrid.
		
		The default plot that is shown is a point plot, but other seaborn
		categorical plots can be chosen with the ``kind`` parameter, including
		box plots, violin plots, bar plots, or strip plots.
		
		It is important to choose how variables get mapped to the plot structure
		such that the most important comparisons are easiest to make. As a general
		rule, it is easier to compare positions that are closer together, so the
		``hue`` variable should be used for the most important comparisons. For
		secondary comparisons, try to share the quantitative axis (so, use ``col``
		for vertical plots and ``row`` for horizontal plots). Note that, although
		it is possible to make rather complex plots using this function, in many
		cases you may be better served by created several smaller and more focused
		plots than by trying to stuff many comparisons into one figure.
		
		After plotting, the :class:`FacetGrid` with the plot is returned and can
		be used directly to tweak supporting plot details or add other layers.
		
		Note that, unlike when using the underlying plotting functions directly,
		data must be passed in a long-form DataFrame with variables specified by
		passing strings to ``x``, ``y``, ``hue``, and other parameters.
		
		As in the case with the underlying plot functions, if variables have a
		``categorical`` data type, the correct orientation of the plot elements,
		the levels of the categorical variables, and their order will be inferred
		from the objects. Otherwise you may have to use the function parameters
		(``orient``, ``order``, ``hue_order``, etc.) to set up the plot correctly.
		
		Parameters
		----------
		x, y, hue : names of variables in ``data``
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame
		    Long-form (tidy) dataset for plotting. Each column should correspond
		    to a variable, and each row should correspond to an observation.    
		row, col : names of variables in ``data``, optional
		    Categorical variables that will determine the faceting of the grid.
		col_wrap : int, optional
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
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
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		row_order, col_order : lists of strings, optional
		    Order to organize the rows and/or columns of the grid in, otherwise the
		    orders are inferred from the data objects.
		kind : {``point``, ``bar``, ``count``, ``box``, ``violin``, ``strip``}
		    The kind of plot to draw.
		size : scalar, optional
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar, optional
		    Aspect ratio of each facet, so that ``aspect * size`` gives the width
		    of each facet in inches.    
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
		legend : bool, optional
		    If ``True`` and there is a ``hue`` variable, draw a legend on the plot.
		legend_out : bool, optional
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		share_{x,y} : bool, optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		margin_titles : bool, optional
		    If ``True``, the titles for the row variable are drawn to the right of
		    the last column. This option is experimental and may not work in all
		    cases.    
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
		    >>> exercise = sns.load_dataset("exercise")
		    >>> g = sns.factorplot(x="time", y="pulse", hue="kind", data=exercise)
		
		Use a different plot kind to visualize the same data:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.factorplot(x="time", y="pulse", hue="kind",
		    ...                    data=exercise, kind="violin")
		
		Facet along the columns to show a third categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.factorplot(x="time", y="pulse", hue="kind",
		    ...                    col="diet", data=exercise)
		
		Use a different size and aspect ratio for the facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.factorplot(x="time", y="pulse", hue="kind",
		    ...                    col="diet", data=exercise,
		    ...                    size=5, aspect=.8)
		
		Make many column facets and wrap them into the rows of the grid:
		
		.. plot::
		    :context: close-figs
		
		    >>> titanic = sns.load_dataset("titanic")
		    >>> g = sns.factorplot("alive", col="deck", col_wrap=4,
		    ...                    data=titanic[titanic.deck.notnull()],
		    ...                    kind="count", size=2.5, aspect=.8)
		
		Plot horizontally and pass other keyword arguments to the plot function:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.factorplot(x="age", y="embark_town",
		    ...                    hue="sex", row="class",
		    ...                    data=titanic[titanic.embark_town.notnull()],
		    ...                    orient="h", size=2, aspect=3.5, palette="Set3",
		    ...                    kind="violin", split=True, cut=0, bw=.2)
		
		Use methods on the returned :class:`FacetGrid` to tweak the presentation:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.factorplot(x="who", y="survived", col="class",
		    ...                    data=titanic, saturation=.5,
		    ...                    kind="bar", ci=None, aspect=.6)
		    >>> (g.set_axis_labels("", "Survival Rate")
		    ...   .set_xticklabels(["Men", "Women", "Children"])
		    ...   .set_titles("{col_name} {col_var}")
		    ...   .set(ylim=(0, 1))
		    ...   .despine(left=True))  #doctest: +ELLIPSIS
		    <seaborn.axisgrid.FacetGrid object at 0x...>
	**/
	static public function factorplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?col_wrap:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?kind:Dynamic, ?size:Dynamic, ?aspect:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?legend:Dynamic, ?legend_out:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?margin_titles:Dynamic, ?facet_kws:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the path of the seaborn data directory.
		
		This is used by the ``load_dataset`` function.
		
		If the ``data_home`` argument is not specified, the default location
		is ``~/seaborn-data``.
		
		Alternatively, a different default location can be specified using the
		environment variable ``SEABORN_DATA``.
	**/
	static public function get_data_home(?data_home:Dynamic):Dynamic;
	/**
		Report available example datasets, useful for reporting issues.
	**/
	static public function get_dataset_names():Dynamic;
	/**
		Plot rectangular data as a color-encoded matrix.
		
		This function tries to infer a good colormap to use from the data, but
		this is not guaranteed to work, so take care to make sure the kind of
		colormap (sequential or diverging) and its limits are appropriate.
		
		This is an Axes-level function and will draw the heatmap into the
		currently-active Axes if none is provided to the ``ax`` argument.  Part of
		this Axes space will be taken and used to plot a colormap, unless ``cbar``
		is False or a separate Axes is provided to ``cbar_ax``.
		
		Parameters
		----------
		data : rectangular dataset
		    2D dataset that can be coerced into an ndarray. If a Pandas DataFrame
		    is provided, the index/column information will be used to label the
		    columns and rows.
		vmin, vmax : floats, optional
		    Values to anchor the colormap, otherwise they are inferred from the
		    data and other keyword arguments. When a diverging dataset is inferred,
		    one of these values may be ignored.
		cmap : matplotlib colormap name or object, optional
		    The mapping from data values to color space. If not provided, this
		    will be either a cubehelix map (if the function infers a sequential
		    dataset) or ``RdBu_r`` (if the function infers a diverging dataset).
		center : float, optional
		    The value at which to center the colormap. Passing this value implies
		    use of a diverging colormap.
		robust : bool, optional
		    If True and ``vmin`` or ``vmax`` are absent, the colormap range is
		    computed with robust quantiles instead of the extreme values.
		annot : bool, optional
		    If True, write the data value in each cell.
		fmt : string, optional
		    String formatting code to use when ``annot`` is True.
		annot_kws : dict of key, value mappings, optional
		    Keyword arguments for ``ax.text`` when ``annot`` is True.
		linewidths : float, optional
		    Width of the lines that will divide each cell.
		linecolor : color, optional
		    Color of the lines that will divide each cell.
		cbar : boolean, optional
		    Whether to draw a colorbar.
		cbar_kws : dict of key, value mappings, optional
		    Keyword arguments for `fig.colorbar`.
		cbar_ax : matplotlib Axes, optional
		    Axes in which to draw the colorbar, otherwise take space from the
		    main Axes.
		square : boolean, optional
		    If True, set the Axes aspect to "equal" so each cell will be
		    square-shaped.
		ax : matplotlib Axes, optional
		    Axes in which to draw the plot, otherwise use the currently-active
		    Axes.
		xticklabels : list-like, int, or bool, optional
		    If True, plot the column names of the dataframe. If False, don't plot
		    the column names. If list-like, plot these alternate labels as the
		    xticklabels. If an integer, use the column names but plot only every
		    n label.
		yticklabels : list-like, int, or bool, optional
		    If True, plot the row names of the dataframe. If False, don't plot
		    the row names. If list-like, plot these alternate labels as the
		    yticklabels. If an integer, use the index names but plot only every
		    n label.
		mask : boolean array or DataFrame, optional
		    If passed, data will not be shown in cells where ``mask`` is True.
		    Cells with missing values are automatically masked.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to ``ax.pcolormesh``.
		
		Returns
		-------
		ax : matplotlib Axes
		    Axes object with the heatmap.
		
		Examples
		--------
		
		Plot a heatmap for a numpy array:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(0)
		    >>> import seaborn as sns; sns.set()
		    >>> uniform_data = np.random.rand(10, 12)
		    >>> ax = sns.heatmap(uniform_data)
		
		Change the limits of the colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(uniform_data, vmin=0, vmax=1)
		
		Plot a heatmap for data centered on 0:
		
		.. plot::
		    :context: close-figs
		
		    >>> normal_data = np.random.randn(10, 12)
		    >>> ax = sns.heatmap(normal_data)
		
		Plot a dataframe with meaningful row and column labels:
		
		.. plot::
		    :context: close-figs
		
		    >>> flights = sns.load_dataset("flights")
		    >>> flights = flights.pivot("month", "year", "passengers")
		    >>> ax = sns.heatmap(flights)
		
		Annotate each cell with the numeric value using integer formatting:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, annot=True, fmt="d")
		
		Add lines between each cell:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, linewidths=.5)
		
		Use a different colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, cmap="YlGnBu")
		
		Center the colormap at a specific value:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, center=flights.loc["January", 1955])
		
		Plot every other column label and don't plot row labels:
		
		.. plot::
		    :context: close-figs
		
		    >>> data = np.random.randn(50, 20)
		    >>> ax = sns.heatmap(data, xticklabels=2, yticklabels=False)
		
		Don't draw a colorbar:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(flights, cbar=False)
		
		Use different axes for the colorbar:
		
		.. plot::
		    :context: close-figs
		
		    >>> grid_kws = {"height_ratios": (.9, .05), "hspace": .3}
		    >>> f, (ax, cbar_ax) = plt.subplots(2, gridspec_kw=grid_kws)
		    >>> ax = sns.heatmap(flights, ax=ax,
		    ...                  cbar_ax=cbar_ax,
		    ...                  cbar_kws={"orientation": "horizontal"})
		
		Use a mask to plot only part of a matrix
		
		.. plot::
		    :context: close-figs
		
		    >>> corr = np.corrcoef(np.random.randn(10, 200))
		    >>> mask = np.zeros_like(corr)
		    >>> mask[np.triu_indices_from(mask)] = True
		    >>> with sns.axes_style("white"):
		    ...     ax = sns.heatmap(corr, mask=mask, vmax=.3, square=True)
	**/
	static public function heatmap(data:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?cmap:Dynamic, ?center:Dynamic, ?robust:Dynamic, ?annot:Dynamic, ?fmt:Dynamic, ?annot_kws:Dynamic, ?linewidths:Dynamic, ?linecolor:Dynamic, ?cbar:Dynamic, ?cbar_kws:Dynamic, ?cbar_ax:Dynamic, ?square:Dynamic, ?ax:Dynamic, ?xticklabels:Dynamic, ?yticklabels:Dynamic, ?mask:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Get a set of evenly spaced colors in HLS hue space.
		
		h, l, and s should be between 0 and 1
		
		Parameters
		----------
		
		n_colors : int
		    number of colors in the palette
		h : float
		    first hue
		l : float
		    lightness
		s : float
		    saturation
		
		Returns
		-------
		palette : seaborn color palette
		    List-like object of colors as RGB tuples.
		
		See Also
		--------
		husl_palette : Make a palette using evently spaced circular hues in the
		               HUSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.hls_palette(10))
		
		Create a palette of 10 colors that begins at a different hue value:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, h=.5))
		
		Create a palette of 10 colors that are darker than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, l=.4))
		
		Create a palette of 10 colors that are less saturated than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.hls_palette(10, s=.4))
	**/
	static public function hls_palette(?n_colors:Dynamic, ?h:Dynamic, ?l:Dynamic, ?s:Dynamic):Dynamic;
	/**
		Get a set of evenly spaced colors in HUSL hue space.
		
		h, s, and l should be between 0 and 1
		
		Parameters
		----------
		
		n_colors : int
		    number of colors in the palette
		h : float
		    first hue
		s : float
		    saturation
		l : float
		    lightness
		
		Returns
		-------
		palette : seaborn color palette
		    List-like object of colors as RGB tuples.
		
		See Also
		--------
		hls_palette : Make a palette using evently spaced circular hues in the
		              HSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.husl_palette(10))
		
		Create a palette of 10 colors that begins at a different hue value:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, h=.5))
		
		Create a palette of 10 colors that are darker than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, l=.4))
		
		Create a palette of 10 colors that are less saturated than the default:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.husl_palette(10, s=.4))
	**/
	static public function husl_palette(?n_colors:Dynamic, ?h:Dynamic, ?s:Dynamic, ?l:Dynamic):Dynamic;
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
		Calculate the IQR for an array of numbers.
	**/
	static public function iqr(a:Dynamic):Dynamic;
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
		stat_func : callable or None
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
		{joint, marginal, annot}_kws : dicts
		    Additional keyword arguments for the plot components.
		kwargs : key, value pairs
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
	static public function jointplot(x:Dynamic, y:Dynamic, ?data:Dynamic, ?kind:Dynamic, ?stat_func:Dynamic, ?color:Dynamic, ?size:Dynamic, ?ratio:Dynamic, ?space:Dynamic, ?dropna:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?joint_kws:Dynamic, ?marginal_kws:Dynamic, ?annot_kws:Dynamic, kwargs:Dynamic):Dynamic;
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
		Make a sequential palette that blends from light to ``color``.
		
		This kind of palette is good for data that range between relatively
		uninteresting low values and interesting high values.
		
		The ``color`` parameter can be specified in a number of ways, including
		all options for defining a color in matplotlib and several additional
		color spaces that are handled by seaborn. You can also use the database
		of named colors from the XKCD color survey.
		
		If you are using the IPython notebook, you can also choose this palette
		interactively with the :func:`choose_light_palette` function.
		
		Parameters
		----------
		color : base color for high values
		    hex code, html color name, or tuple in ``input`` space.
		n_colors : int, optional
		    number of colors in the palette
		reverse : bool, optional
		    if True, reverse the direction of the blend
		as_cmap : bool, optional
		    if True, return as a matplotlib colormap instead of list
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.light_palette("purple"))
		
		Generate a palette that increases in lightness:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette("seagreen", reverse=True))
		
		Generate a palette from an HUSL-space seed:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.light_palette((260, 75, 60), input="husl"))
		
		Generate a colormap object:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import arange
		    >>> x = arange(25).reshape(5, 5)
		    >>> cmap = sns.light_palette("#2ecc71", as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function light_palette(color:Dynamic, ?n_colors:Dynamic, ?reverse:Dynamic, ?as_cmap:Dynamic, ?input:Dynamic):Dynamic;
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
		Load a dataset from the online repository (requires internet).
		
		Parameters
		----------
		name : str
		    Name of the dataset (`name`.csv on
		    https://github.com/mwaskom/seaborn-data).  You can obtain list of
		    available datasets using :func:`get_dataset_names`
		cache : boolean, optional
		    If True, then cache data locally and use the cache on subsequent calls
		data_home : string, optional
		    The directory in which to cache data. By default, uses ~/seaborn_data/
		kws : dict, optional
		    Passed to pandas.read_csv
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, kws:Dynamic):Dynamic;
	/**
		Return discrete colors from a matplotlib palette.
		
		Note that this handles the qualitative colorbrewer palettes
		properly, although if you ask for more colors than a particular
		qualitative palette can provide you will get fewer than you are
		expecting. In contrast, asking for qualitative color brewer palettes
		using :func:`color_palette` will return the expected number of colors,
		but they will cycle.
		
		If you are using the IPython notebook, you can also use the function
		:func:`choose_colorbrewer_palette` to interactively select palettes.
		
		Parameters
		----------
		name : string
		    Name of the palette. This should be a named matplotlib colormap.
		n_colors : int
		    Number of discrete colors in the palette.
		
		Returns
		-------
		palette or cmap : seaborn color palette or matplotlib colormap
		    List-like object of colors as RGB tuples, or colormap object that
		    can map continuous values to colors, depending on the value of the
		    ``as_cmap`` parameter.
		
		Examples
		--------
		
		Create a qualitative colorbrewer palette with 8 colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set()
		    >>> sns.palplot(sns.mpl_palette("Set2", 8))
		
		Create a sequential colorbrewer palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("Blues"))
		
		Create a diverging palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("seismic", 8))
		
		Create a "dark" sequential palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.palplot(sns.mpl_palette("GnBu_d"))
	**/
	static public function mpl_palette(name:Dynamic, ?n_colors:Dynamic):Dynamic;
	/**
		Simple function to offset spines away from axes.
		
		Use this immediately after creating figure and axes objects.
		Offsetting spines after plotting or manipulating the axes
		objects may result in loss of labels, ticks, and formatting.
		
		Parameters
		----------
		offset : int, optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward).
		fig : matplotlib figure, optional
		    Figure to despine all axes of, default uses current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine
		
		Returns
		-------
		None
	**/
	static public function offset_spines(?offset:Dynamic, ?fig:Dynamic, ?ax:Dynamic):Dynamic;
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
		Plot the values in a color palette as a horizontal array.
		
		Parameters
		----------
		pal : sequence of matplotlib colors
		    colors, i.e. as returned by seaborn.color_palette()
		size :
		    scaling factor for size of plot
	**/
	static public function palplot(pal:Dynamic, ?size:Dynamic):Dynamic;
	static public var pandas_has_categoricals : Dynamic;
	/**
		Like scoreatpercentile but can take and return array of percentiles.
		
		Parameters
		----------
		a : array
		    data
		pcts : sequence of percentile values
		    percentile or percentiles to find score at
		axis : int or None
		    if not None, computes scores over this axis
		
		Returns
		-------
		scores: array
		    array of scores at requested percentiles
		    first dimension is length of object passed to ``pcts``
	**/
	static public function percentiles(a:Dynamic, pcts:Dynamic, ?axis:Dynamic):Dynamic;
	/**
		Return a parameter dict to scale elements of the figure.
		
		This affects things like the size of the labels, lines, and other
		elements of the plot, but not the overall style. The base context
		is "notebook", and the other contexts are "paper", "talk", and "poster",
		which are version of the notebook parameters scaled by .8, 1.3, and 1.6,
		respectively.
		
		This function returns an object that can be used in a ``with`` statement
		to temporarily change the context parameters.
		
		Parameters
		----------
		context : dict, None, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		>>> c = plotting_context("poster")
		
		>>> c = plotting_context("notebook", font_scale=1.5)
		
		>>> c = plotting_context("talk", rc={"lines.linewidth": 2})
		
		>>> import matplotlib.pyplot as plt
		>>> with plotting_context("paper"):
		...     f, ax = plt.subplots()
		...     ax.plot(x, y)                 # doctest: +SKIP
		
		See Also
		--------
		set_context : set the matplotlib parameters to scale plot elements
		axes_style : return a dict of parameters defining a figure style
		color_palette : define the color palette for a plot
	**/
	static public function plotting_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Return arguments to plt.bar for pmf-like histogram of an array.
		
		Parameters
		----------
		a: array-like
		    array to make histogram of
		bins: int
		    number of bins
		
		Returns
		-------
		x: array
		    left x position of bars
		h: array
		    height of bars
		w: float
		    width of bars
	**/
	static public function pmf_hist(a:Dynamic, ?bins:Dynamic):Dynamic;
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
	static public var print_function : Dynamic;
	/**
		Plot today's daily puppy. Only works in the IPython notebook.
	**/
	static public function puppyplot(?grown_up:Dynamic):Dynamic;
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
		Return series containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na(series:Dynamic):Dynamic;
	/**
		Restore all RC params to default settings.
	**/
	static public function reset_defaults():Dynamic;
	/**
		Restore all RC params to original settings (respects custom rc).
	**/
	static public function reset_orig():Dynamic;
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
	/**
		Plot datapoints in an array as sticks on an axis.
		
		Parameters
		----------
		a : vector
		    1D array of observations.
		height : scalar, optional
		    Height of ticks as proportion of the axis.
		axis : {'x' | 'y'}, optional
		    Axis to draw rugplot on.
		ax : matplotlib axes
		    Axes to draw plot into; otherwise grabs current axes.
		kwargs : key, value mappings
		    Other keyword arguments are passed to ``axvline`` or ``axhline``.
		
		Returns
		-------
		ax : matplotlib axes
		    The Axes object with the plot on it.
	**/
	static public function rugplot(a:Dynamic, ?height:Dynamic, ?axis:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return a fully saturated color with the same hue.
		
		Parameters
		----------
		color :  matplotlib color
		    hex, rgb-tuple, or html color name
		
		Returns
		-------
		new_color : rgb tuple
		    saturated color code in RGB tuple representation
	**/
	static public function saturate(color:Dynamic):Dynamic;
	/**
		Set aesthetic parameters in one step.
		
		Each set of parameters can be set directly or temporarily, see the
		referenced functions below for more information.
		
		Parameters
		----------
		context : string or dict
		    Plotting context parameters, see :func:`plotting_context`
		style : string or dict
		    Axes style parameters, see :func:`axes_style`
		palette : string or sequence
		    Color palette, see :func:`color_palette`
		font : string
		    Font family, see matplotlib font manager.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		rc : dict or None
		    Dictionary of rc parameter mappings to override the above.
	**/
	static public function set(?context:Dynamic, ?style:Dynamic, ?palette:Dynamic, ?font:Dynamic, ?font_scale:Dynamic, ?color_codes:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Change how matplotlib color shorthands are interpreted.
		
		Calling this will change how shorthand codes like "b" or "g"
		are interpreted by matplotlib in subsequent plots.
		
		Parameters
		----------
		palette : {deep, muted, pastel, dark, bright, colorblind}
		    Named seaborn palette to use as the source of colors.
		
		See Also
		--------
		set : Color codes can be set through the high-level seaborn style
		      manager.
		set_palette : Color codes can also be set through the function that
		              sets the matplotlib color cycle.
		
		Examples
		--------
		
		Map matplotlib color codes to the default seaborn palette.
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> import seaborn as sns; sns.set()
		    >>> sns.set_color_codes()
		    >>> _ = plt.plot([0, 1], color="r")
		
		Use a different seaborn palette.
		
		.. plot::
		    :context: close-figs
		
		    >>> sns.set_color_codes("dark")
		    >>> _ = plt.plot([0, 1], color="g")
		    >>> _ = plt.plot([0, 2], color="m")
	**/
	static public function set_color_codes(?palette:Dynamic):Dynamic;
	/**
		Set the plotting context parameters.
		
		This affects things like the size of the labels, lines, and other
		elements of the plot, but not the overall style. The base context
		is "notebook", and the other contexts are "paper", "talk", and "poster",
		which are version of the notebook parameters scaled by .8, 1.3, and 1.6,
		respectively.
		
		Parameters
		----------
		context : dict, None, or one of {paper, notebook, talk, poster}
		    A dictionary of parameters or the name of a preconfigured set.
		font_scale : float, optional
		    Separate scaling factor to independently scale the size of the
		    font elements.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    context dictionaries. This only updates parameters that are
		    considered part of the context definition.
		
		Examples
		--------
		>>> set_context("paper")
		
		>>> set_context("talk", font_scale=1.4)
		
		>>> set_context("talk", rc={"lines.linewidth": 2})
		
		See Also
		--------
		plotting_context : return a dictionary of rc parameters, or use in
		                   a ``with`` statement to temporarily set the context.
		set_style : set the default parameters for figure style
		set_palette : set the default color palette for figures
	**/
	static public function set_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Independently manipulate the h, l, or s channels of a color.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		h, l, s : floats between 0 and 1, or None
		    new values for each channel in hls space
		
		Returns
		-------
		new_color : rgb tuple
		    new color code in RGB tuple representation
	**/
	static public function set_hls_values(color:Dynamic, ?h:Dynamic, ?l:Dynamic, ?s:Dynamic):Dynamic;
	/**
		Set the matplotlib color cycle using a seaborn palette.
		
		Parameters
		----------
		palette : hls | husl | matplotlib colormap | seaborn color palette
		    Palette definition. Should be something that :func:`color_palette`
		    can process.
		n_colors : int
		    Number of colors in the cycle. The default number of colors will depend
		    on the format of ``palette``, see the :func:`color_palette`
		    documentation for more information.
		desat : float
		    Proportion to desaturate each color by.
		color_codes : bool
		    If ``True`` and ``palette`` is a seaborn palette, remap the shorthand
		    color codes (e.g. "b", "g", "r", etc.) to the colors from this palette.
		
		Examples
		--------
		>>> set_palette("Reds")
		
		>>> set_palette("Set1", 8, .75)
		
		See Also
		--------
		color_palette : build a color palette or set the color cycle temporarily
		                in a ``with`` statement.
		set_context : set parameters to scale plot elements
		set_style : set the default parameters for figure style
	**/
	static public function set_palette(palette:Dynamic, ?n_colors:Dynamic, ?desat:Dynamic, ?color_codes:Dynamic):Dynamic;
	/**
		Set the aesthetic style of the plots.
		
		This affects things like the color of the axes, whether a grid is
		enabled by default, and other aesthetic elements.
		
		Parameters
		----------
		style : dict, None, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured set.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		>>> set_style("whitegrid")
		
		>>> set_style("ticks", {"xtick.major.size": 8, "ytick.major.size": 8})
		
		See Also
		--------
		axes_style : return a dict of parameters or use in a ``with`` statement
		             to temporarily set the style.
		set_context : set parameters to scale plot elements
		set_palette : set the default color palette for figures
	**/
	static public function set_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Return a R-style significance string corresponding to p values.
	**/
	static public function sig_stars(p:Dynamic):Dynamic;
	static public var string_types : Dynamic;
	/**
		Draw a scatterplot where one variable is categorical.
		
		A strip plot can be drawn on its own, but it is also a good complement
		to a box or violin plot in cases where you want to show all observations
		along with some representation of the underlying distribution.
		
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
		jitter : float, ``True``/``1`` is special-cased, optional
		    Amount of jitter (only along the categorical axis) to apply. This
		    can be useful when you have many points and they overlap, so that
		    it is easier to see the distribution. You can specify the amount
		    of jitter (half the width of the uniform random variable support),
		    or just use ``True`` for a good default.
		split : bool, optional
		    When using ``hue`` nesting, setting this to ``True`` will separate
		    the strips for different hue levels along the categorical axis.
		    Otherwise, the points for each level will be plotted on top of
		    each other.
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
		size : float, optional
		    Diameter of the markers, in points. (Although ``plt.scatter`` is used
		    to draw the points, the ``size`` argument here takes a "normal"
		    markersize and not size^2 like ``plt.scatter``.
		edgecolor : matplotlib color, "gray" is special-cased, optional
		    Color of the lines around each point. If you pass ``"gray"``, the
		    brightness is determined by the color palette used for the body
		    of the points.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the boxplot drawn onto it.    
		
		See Also
		--------
		boxplot : A traditional box-and-whisker plot with a similar API.    
		violinplot : A combination of boxplot and kernel density estimation.    
		
		Examples
		--------
		
		Draw a single horizontal strip plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_style("whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.stripplot(x=tips["total_bill"])
		
		Group the strips by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips)
		
		Add jitter to bring out the distribution of values:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips, jitter=True)
		
		Use a smaller amount of jitter:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips, jitter=0.05)
		
		Draw horizontal strips:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="total_bill", y="day", data=tips,
		    ...                    jitter=True)
		
		Nest the strips within a second categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="sex", y="total_bill", hue="day",
		    ...                    data=tips, jitter=True)
		
		Draw each level of the ``hue`` variable at the same location on the
		major categorical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", hue="smoker",
		    ...                    data=tips, jitter=True,
		    ...                    palette="Set2", split=False)
		
		Control strip order by sorting the input data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="size", y="tip", data=tips.sort("size"))
		
		Control strip order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="size", y="tip", data=tips,
		    ...                    order=np.arange(1, 7), palette="Blues_d")
		
		Draw strips with large points and different aesthetics:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax =  sns.stripplot("day", "total_bill", "smoker", data=tips,
		    ...                    palette="Set2", size=20, marker="D",
		    ...                    edgecolor="gray", alpha=.25)
		
		Draw strips of observations on top of a box plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="tip", y="day", data=tips, whis=np.inf)
		    >>> ax = sns.stripplot(x="tip", y="day", data=tips, jitter=True)
		
		Draw strips of observations on top of a violin plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", data=tips, inner=None)
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips,
		    ...                    jitter=True, color="white", edgecolor="gray")
	**/
	static public function stripplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?jitter:Dynamic, ?split:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?size:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Plot a symmetric matrix with colormap and statistic values.
		
		NOTE: This function is deprecated in favor of :func:`heatmap` and will
		be removed in a forthcoming release.
	**/
	static public function symmatplot(mat:Dynamic, ?p_mat:Dynamic, ?names:Dynamic, ?cmap:Dynamic, ?cmap_range:Dynamic, ?cbar:Dynamic, ?annot:Dynamic, ?diag_names:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Plot one or more timeseries with flexible representation of uncertainty.
		
		This function is intended to be used with data where observations are
		nested within sampling units that were measured at multiple timepoints.
		
		It can take data specified either as a long-form (tidy) DataFrame or as an
		ndarray with dimensions (unit, time) The interpretation of some of the
		other parameters changes depending on the type of object passed as data.
		
		Parameters
		----------
		data : DataFrame or ndarray
		    Data for the plot. Should either be a "long form" dataframe or an
		    array with dimensions (unit, time, condition). In both cases, the
		    condition field/dimension is optional. The type of this argument
		    determines the interpretation of the next few parameters. When
		    using a DataFrame, the index has to be sequential.
		time : string or series-like
		    Either the name of the field corresponding to time in the data
		    DataFrame or x values for a plot when data is an array. If a Series,
		    the name will be used to label the x axis.
		unit : string
		    Field in the data DataFrame identifying the sampling unit (e.g.
		    subject, neuron, etc.). The error representation will collapse over
		    units at each time/condition observation. This has no role when data
		    is an array.
		value : string
		    Either the name of the field corresponding to the data values in
		    the data DataFrame (i.e. the y coordinate) or a string that forms
		    the y axis label when data is an array.
		condition : string or Series-like
		    Either the name of the field identifying the condition an observation
		    falls under in the data DataFrame, or a sequence of names with a length
		    equal to the size of the third dimension of data. There will be a
		    separate trace plotted for each condition. If condition is a Series
		    with a name attribute, the name will form the title for the plot
		    legend (unless legend is set to False).
		err_style : string or list of strings or None
		    Names of ways to plot uncertainty across units from set of
		    {ci_band, ci_bars, boot_traces, boot_kde, unit_traces, unit_points}.
		    Can use one or more than one method.
		ci : float or list of floats in [0, 100]
		    Confidence interaval size(s). If a list, it will stack the error
		    plots for each confidence interval. Only relevant for error styles
		    with "ci" in the name.
		interpolate : boolean
		    Whether to do a linear interpolation between each timepoint when
		    plotting. The value of this parameter also determines the marker
		    used for the main plot traces, unless marker is specified as a keyword
		    argument.
		color : seaborn palette or matplotlib color name or dictionary
		    Palette or color for the main plots and error representation (unless
		    plotting by unit, which can be separately controlled with err_palette).
		    If a dictionary, should map condition name to color spec.
		estimator : callable
		    Function to determine central tendency and to pass to bootstrap
		    must take an ``axis`` argument.
		n_boot : int
		    Number of bootstrap iterations.
		err_palette : seaborn palette
		    Palette name or list of colors used when plotting data for each unit.
		err_kws : dict, optional
		    Keyword argument dictionary passed through to matplotlib function
		    generating the error plot,
		legend : bool, optional
		    If ``True`` and there is a ``condition`` variable, add a legend to
		    the plot.
		ax : axis object, optional
		    Plot in given axis; if None creates a new figure
		kwargs :
		    Other keyword arguments are passed to main plot() call
		
		Returns
		-------
		ax : matplotlib axis
		    axis with plot data
		
		Examples
		--------
		
		Plot a trace with translucent confidence bands:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(22)
		    >>> import seaborn as sns; sns.set(color_codes=True)
		    >>> x = np.linspace(0, 15, 31)
		    >>> data = np.sin(x) + np.random.rand(10, 31) + np.random.randn(10, 1)
		    >>> ax = sns.tsplot(data=data)
		
		Plot a long-form dataframe with several conditions:
		
		.. plot::
		    :context: close-figs
		
		    >>> gammas = sns.load_dataset("gammas")
		    >>> ax = sns.tsplot(time="timepoint", value="BOLD signal",
		    ...                 unit="subject", condition="ROI",
		    ...                 data=gammas)
		
		Use error bars at the positions of the observations:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="ci_bars", color="g")
		
		Don't interpolate between the observations:
		
		.. plot::
		    :context: close-figs
		
		    >>> import matplotlib.pyplot as plt
		    >>> ax = sns.tsplot(data=data, err_style="ci_bars", interpolate=False)
		
		Show multiple confidence bands:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, ci=[68, 95], color="m")
		
		Use a different estimator:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, estimator=np.median)
		
		Show each bootstrap resample:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="boot_traces", n_boot=500)
		
		Show the trace from each sampling unit:
		
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.tsplot(data=data, err_style="unit_traces")
	**/
	static public function tsplot(data:Dynamic, ?time:Dynamic, ?unit:Dynamic, ?condition:Dynamic, ?value:Dynamic, ?err_style:Dynamic, ?ci:Dynamic, ?interpolate:Dynamic, ?color:Dynamic, ?estimator:Dynamic, ?n_boot:Dynamic, ?err_palette:Dynamic, ?err_kws:Dynamic, ?legend:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	static public function urlopen(url:Dynamic, ?data:Dynamic, ?timeout:Dynamic, ?cafile:Dynamic, ?capath:Dynamic, ?cadefault:Dynamic, ?context:Dynamic):Dynamic;
	/**
		Retrieve a URL into a temporary location on disk.
		
		Requires a URL argument. If a filename is passed, it is used as
		the temporary file location. The reporthook argument should be
		a callable that accepts a block number, a read size, and the
		total file size of the URL target. The data argument should be
		valid URL encoded data.
		
		If a filename is passed and the URL points to a local resource,
		the result is a copy from local file to new file.
		
		Returns a tuple containing the path to the newly created
		data file as well as the resulting HTTPMessage object.
	**/
	static public function urlretrieve(url:Dynamic, ?filename:Dynamic, ?reporthook:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Draw a combination of boxplot and kernel density estimate.
		
		A violin plot plays a similar role as a box and whisker plot. It shows the
		distribution of quantitative data across several levels of one (or more)
		categorical variables such that those distributions can be compared. Unlike
		a box plot, in which all of the plot components correspond to actual
		datapoints, the violin plot features a kernel density estimation of the
		underlying distribution.
		
		This can be an effective and attractive way to show multiple distributions
		of data at once, but keep in mind that the estimation procedure is
		influenced by the sample size, and violins for relatively small samples
		might look misleadingly smooth.
		
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
		bw : {'scott', 'silverman', float}, optional
		    Either the name of a reference rule or the scale factor to use when
		    computing the kernel bandwidth. The actual kernel size will be
		    determined by multiplying the scale factor by the standard deviation of
		    the data within each bin.
		cut : float, optional
		    Distance, in units of bandwidth size, to extend the density past the
		    extreme datapoints. Set to 0 to limit the violin range within the range
		    of the observed data (i.e., to have the same effect as ``trim=True`` in
		    ``ggplot``.
		scale : {"area", "count", "width"}, optional
		    The method used to scale the width of each violin. If ``area``, each
		    violin will have the same area. If ``count``, the width of the violins
		    will be scaled by the number of observations in that bin. If ``width``,
		    each violin will have the same width.
		scale_hue : bool, optional
		    When nesting violins using a ``hue`` variable, this parameter
		    determines whether the scaling is computed within each level of the
		    major grouping variable (``scale_hue=True``) or across all the violins
		    on the plot (``scale_hue=False``).
		gridsize : int, optional
		    Number of points in the discrete grid used to compute the kernel
		    density estimate.
		width : float, optional
		    Width of a full element when not using hue nesting, or width of all the
		    elements for one level of the major grouping variable.    
		inner : {"box", "quartile", "point", "stick", None}, optional
		    Representation of the datapoints in the violin interior. If ``box``,
		    draw a miniature boxplot. If ``quartiles``, draw the quartiles of the
		    distribution.  If ``point`` or ``stick``, show each underlying
		    datapoint. Using ``None`` will draw unadorned violins.
		split : bool, optional
		    When using hue nesting with a variable that takes two levels, setting
		    ``split`` to True will draw half of a violin for each level. This can
		    make it easier to directly compare the distributions.
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred from the dtype of the input variables, but can be used to
		    specify when the "categorical" variable is a numeric or when plotting
		    wide-form data.    
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for :func:`light_palette` when
		    using hue nesting.    
		palette : seaborn color palette or dict, optional
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		saturation : float, optional
		    Proportion of the original saturation to draw colors at. Large patches
		    often look better with slightly desaturated colors, but set this to
		    ``1`` if you want the plot colors to perfectly match the input color
		    spec.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the boxplot drawn onto it.    
		
		See Also
		--------
		boxplot : A traditional box-and-whisker plot with a similar API.    
		stripplot : A scatterplot where one variable is categorical. Can be used
		            in conjunction with a other plots to show each observation.    
		
		Examples
		--------
		
		Draw a single horizontal violinplot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_style("whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.violinplot(x=tips["total_bill"])
		
		Draw a vertical violinplot grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", data=tips)
		
		Draw a violinplot with nested grouping by two categorical variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="smoker",
		    ...                     data=tips, palette="muted")
		
		Draw split violins to compare the across the hue variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="smoker",
		    ...                     data=tips, palette="muted", split=True)
		
		Control violin order by sorting the input data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="size", y="tip", data=tips.sort("size"))
		
		Control violin order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="size", y="tip", data=tips,
		    ...                     order=np.arange(1, 7), palette="Blues_d")
		
		Scale the violin width by the number of observations in each bin:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="sex",
		    ...                     data=tips, palette="Set2", split=True,
		    ...                     scale="count")
		
		Draw the quartiles as horizontal lines instead of a mini-box:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="sex",
		    ...                     data=tips, palette="Set2", split=True,
		    ...                     scale="count", inner="quartile")
		
		Show each observation with a stick inside the violin:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="sex",
		    ...                     data=tips, palette="Set2", split=True,
		    ...                     scale="count", inner="stick")
		
		Scale the density relative to the counts across all bins:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="sex",
		    ...                     data=tips, palette="Set2", split=True,
		    ...                     scale="count", inner="stick", scale_hue=False)
		
		Use a narrow bandwidth to reduce the amount of smoothing:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="sex",
		    ...                     data=tips, palette="Set2", split=True,
		    ...                     scale="count", inner="stick",
		    ...                     scale_hue=False, bw=.2)
		
		Draw horizontal violins:
		
		.. plot::
		    :context: close-figs
		
		    >>> planets = sns.load_dataset("planets")
		    >>> ax = sns.violinplot(x="orbital_period", y="method",
		    ...                     data=planets[planets.orbital_period < 1000],
		    ...                     scale="width", palette="Set3")
		
		Draw a violin plot on to a :class:`FacetGrid` to group within an additional
		categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.FacetGrid(tips, col="time", size=4, aspect=.7)
		    >>> (g.map(sns.violinplot, "sex", "total_bill", "smoker", split=True)
		    ...   .despine(left=True)
		    ...   .add_legend(title="smoker"))  # doctest: +ELLIPSIS
		    <seaborn.axisgrid.FacetGrid object at 0x...>
	**/
	static public function violinplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?bw:Dynamic, ?cut:Dynamic, ?scale:Dynamic, ?scale_hue:Dynamic, ?gridsize:Dynamic, ?width:Dynamic, ?inner:Dynamic, ?split:Dynamic, ?orient:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?ax:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Make a palette with color names from the xkcd color survey.
		
		See xkcd for the full list of colors: http://xkcd.com/color/rgb/
		
		This is just a simple wrapper around the ``seaborn.xkcd_rgb`` dictionary.
		
		Parameters
		----------
		colors : list of strings
		    List of keys in the ``seaborn.xkcd_rgb`` dictionary.
		
		Returns
		-------
		palette : seaborn color palette
		    Returns the list of colors as RGB tuples in an object that behaves like
		    other seaborn color palettes.
		
		See Also
		--------
		crayon_palette : Make a palette with Crayola crayon colors.
	**/
	static public function xkcd_palette(colors:Dynamic):Dynamic;
	static public var xkcd_rgb : Dynamic;
}