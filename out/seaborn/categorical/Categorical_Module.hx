/* This file is generated, do not edit! */
package seaborn.categorical;
@:pythonImport("seaborn.categorical") extern class Categorical_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _categorical_docs : Dynamic;
	static public var _facet_docs : Dynamic;
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
		Calculate the IQR for an array of numbers.
	**/
	static public function iqr(a:Dynamic):Dynamic;
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
	/**
		Return series containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na(series:Dynamic):Dynamic;
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
}