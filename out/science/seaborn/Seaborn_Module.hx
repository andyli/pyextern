/* This file is generated, do not edit! */
package seaborn;
@:pythonImport("seaborn") extern class Seaborn_Module {
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
	static public var _orig_rc_params : Dynamic;
	/**
		Get the parameters that control the general style of the plots.
		
		The style parameters control properties like the color of the background and
		whether a grid is enabled by default. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The options are illustrated in the
		:doc:`aesthetics tutorial <../tutorial/aesthetics>`.
		
		This function can also be used as a context manager to temporarily
		alter the global defaults. See :func:`set_theme` or :func:`set_style`
		to modify the global defaults for all plots.
		
		Parameters
		----------
		style : None, dict, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured style.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/axes_style.rst
	**/
	static public function axes_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		estimator : callable that maps vector -> scalar, optional
		    Statistical function to estimate within each categorical bin.
		ci : float or "sd" or None, optional
		    Size of confidence intervals to draw around estimated values.  If
		    "sd", skip bootstrapping and draw the standard deviation of the
		    observations. If ``None``, no bootstrapping will be performed, and
		    error bars will not be drawn.
		n_boot : int, optional
		    Number of bootstrap iterations to use when computing confidence
		    intervals.
		units : name of variable in ``data`` or vector data, optional
		    Identifier of sampling units, which will be used to perform a
		    multilevel bootstrap and account for repeated measures design.
		seed : int, numpy.random.Generator, or numpy.random.RandomState, optional
		    Seed or random number generator for reproducible bootstrapping.    
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
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
		errwidth : float, optional
		    Thickness of error bar lines (and caps).         
		capsize : float, optional
		    Width of the "caps" on error bars.
		
		dodge : bool, optional
		    When hue nesting is used, whether elements should be shifted along the
		    categorical axis.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.bar`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		countplot : Show the counts of observations in each categorical bin.    
		pointplot : Show point estimates and confidence intervals using scatterplot
		            glyphs.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a set of vertical bar plots grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
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
		
		Control bar order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="time", y="tip", data=tips,
		    ...                  order=["Dinner", "Lunch"])
		
		Use median as the estimate of central tendency:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import median
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, estimator=median)
		
		Show the standard error of the mean with the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, ci=68)
		
		Show standard deviation of observations instead of a confidence interval:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, ci="sd")
		
		Add "caps" to the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="tip", data=tips, capsize=.2)
		
		Use a different color palette for the bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="size", y="total_bill", data=tips,
		    ...                  palette="Blues_d")
		
		Use ``hue`` without changing bar position or width:
		
		.. plot::
		    :context: close-figs
		
		    >>> tips["weekend"] = tips["day"].isin(["Sat", "Sun"])
		    >>> ax = sns.barplot(x="day", y="total_bill", hue="weekend",
		    ...                  data=tips, dodge=False)
		
		Plot all bars in a single color:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="size", y="total_bill", data=tips,
		    ...                  color="salmon", saturation=.5)
		
		Use :meth:`matplotlib.axes.Axes.bar` parameters to control the style.
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.barplot(x="day", y="total_bill", data=tips,
		    ...                  linewidth=2.5, facecolor=(1, 1, 1, 0),
		    ...                  errcolor=".2", edgecolor=".2")
		
		Use :func:`catplot` to combine a :func:`barplot` and a :class:`FacetGrid`.
		This allows grouping within additional categorical variables. Using
		:func:`catplot` is safer than using :class:`FacetGrid` directly, as it
		ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="bar",
		    ...                 height=4, aspect=.7);
	**/
	static public function barplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?errcolor:Dynamic, ?errwidth:Dynamic, ?capsize:Dynamic, ?dodge:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Draw an enhanced box plot for larger datasets.
		
		This style of plot was originally named a "letter value" plot because it
		shows a large number of quantiles that are defined as "letter values".  It
		is similar to a box plot in plotting a nonparametric representation of a
		distribution in which all features correspond to actual observations. By
		plotting more quantiles, it provides more information about the shape of
		the distribution, particularly in the tails. For a more extensive
		explanation, you can read the paper that introduced the plot:
		
		https://vita.had.co.nz/papers/letter-value-plot.html
		
		
		Input data can be passed in a variety of formats, including:
		
		- Vectors of data represented as lists, numpy arrays, or pandas Series
		  objects passed directly to the ``x``, ``y``, and/or ``hue`` parameters.
		- A "long-form" DataFrame, in which case the ``x``, ``y``, and ``hue``
		  variables will determine how the data are plotted.
		- A "wide-form" DataFrame, such that each numeric column will be plotted.
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
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
		dodge : bool, optional
		    When hue nesting is used, whether elements should be shifted along the
		    categorical axis.    
		k_depth : {"tukey", "proportion", "trustworthy", "full"} or scalar,    optional
		    The number of boxes, and by extension number of percentiles, to draw.
		    All methods are detailed in Wickham's paper. Each makes different
		    assumptions about the number of outliers and leverages different
		    statistical properties. If "proportion", draw no more than
		    `outlier_prop` extreme observations. If "full", draw `log(n)+1` boxes.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		scale : {"exponential", "linear", "area"}, optional
		    Method to use for the width of the letter value boxes. All give similar
		    results visually. "linear" reduces the width by a constant linear
		    factor, "exponential" uses the proportion of data not covered, "area"
		    is proportional to the percentage of data covered.
		outlier_prop : float, optional
		    Proportion of data believed to be outliers. Must be in the range
		    (0, 1]. Used to determine the number of boxes to plot when
		    `k_depth="proportion"`.
		trust_alpha : float, optional
		    Confidence level for a box to be plotted. Used to determine the
		    number of boxes to plot when `k_depth="trustworthy"`. Must be in the
		    range (0, 1).
		showfliers : bool, optional
		    If False, suppress the plotting of outliers.
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.plot` and
		    :meth:`matplotlib.axes.Axes.scatter`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		violinplot : A combination of boxplot and kernel density estimation.    
		boxplot : A traditional box-and-whisker plot with a similar API.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a single horizontal boxen plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.boxenplot(x=tips["total_bill"])
		
		Draw a vertical boxen plot grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxenplot(x="day", y="total_bill", data=tips)
		
		Draw a letter value plot with nested grouping by two categorical variables:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxenplot(x="day", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set3")
		
		Draw a boxen plot with nested grouping when some bins are empty:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxenplot(x="day", y="total_bill", hue="time",
		    ...                    data=tips, linewidth=2.5)
		
		Control box order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxenplot(x="time", y="tip", data=tips,
		    ...                    order=["Dinner", "Lunch"])
		
		Draw a boxen plot for each numeric variable in a DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> ax = sns.boxenplot(data=iris, orient="h", palette="Set2")
		
		Use :func:`stripplot` to show the datapoints on top of the boxes:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxenplot(x="day", y="total_bill", data=tips,
		    ...                    showfliers=False)
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips,
		    ...                    size=4, color=".26")
		
		Use :func:`catplot` to combine :func:`boxenplot` and a :class:`FacetGrid`.
		This allows grouping within additional categorical variables. Using
		:func:`catplot` is safer than using :class:`FacetGrid` directly, as it
		ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="boxen",
		    ...                 height=4, aspect=.7);
	**/
	static public function boxenplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?width:Dynamic, ?dodge:Dynamic, ?k_depth:Dynamic, ?linewidth:Dynamic, ?scale:Dynamic, ?outlier_prop:Dynamic, ?trust_alpha:Dynamic, ?showfliers:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
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
		dodge : bool, optional
		    When hue nesting is used, whether elements should be shifted along the
		    categorical axis.    
		fliersize : float, optional
		    Size of the markers used to indicate outlier observations.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		whis : float, optional
		    Proportion of the IQR past the low and high quartiles to extend the
		    plot whiskers. Points outside this range will be identified as
		    outliers.
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.boxplot`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		violinplot : A combination of boxplot and kernel density estimation.    
		stripplot : A scatterplot where one variable is categorical. Can be used
		            in conjunction with other plots to show each observation.    
		swarmplot : A categorical scatterplot where the points do not overlap. Can
		            be used with other plots to show each observation.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a single horizontal boxplot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
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
		
		Control box order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="time", y="tip", data=tips,
		    ...                  order=["Dinner", "Lunch"])
		
		Draw a boxplot for each numeric variable in a DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> iris = sns.load_dataset("iris")
		    >>> ax = sns.boxplot(data=iris, orient="h", palette="Set2")
		
		Use ``hue`` without changing box position or width:
		
		.. plot::
		    :context: close-figs
		
		    >>> tips["weekend"] = tips["day"].isin(["Sat", "Sun"])
		    >>> ax = sns.boxplot(x="day", y="total_bill", hue="weekend",
		    ...                  data=tips, dodge=False)
		
		Use :func:`swarmplot` to show the datapoints on top of the boxes:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="day", y="total_bill", data=tips)
		    >>> ax = sns.swarmplot(x="day", y="total_bill", data=tips, color=".25")
		
		Use :func:`catplot` to combine a :func:`boxplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="box",
		    ...                 height=4, aspect=.7);
	**/
	static public function boxplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?width:Dynamic, ?dodge:Dynamic, ?fliersize:Dynamic, ?linewidth:Dynamic, ?whis:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Figure-level interface for drawing categorical plots onto a FacetGrid.
		
		This function provides access to several axes-level functions that
		show the relationship between a numerical and one or more categorical
		variables using one of several visual representations. The ``kind``
		parameter selects the underlying axes-level function to use:
		
		Categorical scatterplots:
		
		- :func:`stripplot` (with ``kind="strip"``; the default)
		- :func:`swarmplot` (with ``kind="swarm"``)
		
		Categorical distribution plots:
		
		- :func:`boxplot` (with ``kind="box"``)
		- :func:`violinplot` (with ``kind="violin"``)
		- :func:`boxenplot` (with ``kind="boxen"``)
		
		Categorical estimate plots:
		
		- :func:`pointplot` (with ``kind="point"``)
		- :func:`barplot` (with ``kind="bar"``)
		- :func:`countplot` (with ``kind="count"``)
		
		Extra keyword arguments are passed to the underlying function, so you
		should refer to the documentation for each to see kind-specific options.
		
		Note that unlike when using the axes-level functions directly, data must be
		passed in a long-form DataFrame with variables specified by passing strings
		to ``x``, ``y``, ``hue``, etc.
		
		As in the case with the underlying plot functions, if variables have a
		``categorical`` data type, the levels of the categorical variables, and
		their order will be inferred from the objects. Otherwise you may have to
		use alter the dataframe sorting or use the function parameters (``orient``,
		``order``, ``hue_order``, etc.) to set up the plot correctly.
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		After plotting, the :class:`FacetGrid` with the plot is returned and can
		be used directly to tweak supporting plot details or add other layers.
		
		Parameters
		----------
		x, y, hue : names of variables in ``data``
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame
		    Long-form (tidy) dataset for plotting. Each column should correspond
		    to a variable, and each row should correspond to an observation.    
		row, col : names of variables in ``data``, optional
		    Categorical variables that will determine the faceting of the grid.
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		estimator : callable that maps vector -> scalar, optional
		    Statistical function to estimate within each categorical bin.
		ci : float or "sd" or None, optional
		    Size of confidence intervals to draw around estimated values.  If
		    "sd", skip bootstrapping and draw the standard deviation of the
		    observations. If ``None``, no bootstrapping will be performed, and
		    error bars will not be drawn.
		n_boot : int, optional
		    Number of bootstrap iterations to use when computing confidence
		    intervals.
		units : name of variable in ``data`` or vector data, optional
		    Identifier of sampling units, which will be used to perform a
		    multilevel bootstrap and account for repeated measures design.
		seed : int, numpy.random.Generator, or numpy.random.RandomState, optional
		    Seed or random number generator for reproducible bootstrapping.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		row_order, col_order : lists of strings, optional
		    Order to organize the rows and/or columns of the grid in, otherwise the
		    orders are inferred from the data objects.
		kind : str, optional
		    The kind of plot to draw, corresponds to the name of a categorical
		    axes-level plotting function. Options are: "strip", "swarm", "box", "violin",
		    "boxen", "point", "bar", or "count".
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		legend : bool, optional
		    If ``True`` and there is a ``hue`` variable, draw a legend on the plot.
		legend_out : bool
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		share{x,y} : bool, 'col', or 'row' optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		margin_titles : bool
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
		    >>> sns.set_theme(style="ticks")
		    >>> exercise = sns.load_dataset("exercise")
		    >>> g = sns.catplot(x="time", y="pulse", hue="kind", data=exercise)
		
		Use a different plot kind to visualize the same data:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="time", y="pulse", hue="kind",
		    ...                data=exercise, kind="violin")
		
		Facet along the columns to show a third categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="time", y="pulse", hue="kind",
		    ...                 col="diet", data=exercise)
		
		Use a different height and aspect ratio for the facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="time", y="pulse", hue="kind",
		    ...                 col="diet", data=exercise,
		    ...                 height=5, aspect=.8)
		
		Make many column facets and wrap them into the rows of the grid:
		
		.. plot::
		    :context: close-figs
		
		    >>> titanic = sns.load_dataset("titanic")
		    >>> g = sns.catplot(x="alive", col="deck", col_wrap=4,
		    ...                 data=titanic[titanic.deck.notnull()],
		    ...                 kind="count", height=2.5, aspect=.8)
		
		Plot horizontally and pass other keyword arguments to the plot function:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="age", y="embark_town",
		    ...                 hue="sex", row="class",
		    ...                 data=titanic[titanic.embark_town.notnull()],
		    ...                 orient="h", height=2, aspect=3, palette="Set3",
		    ...                 kind="violin", dodge=True, cut=0, bw=.2)
		
		Use methods on the returned :class:`FacetGrid` to tweak the presentation:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="who", y="survived", col="class",
		    ...                 data=titanic, saturation=.5,
		    ...                 kind="bar", ci=None, aspect=.6)
		    >>> (g.set_axis_labels("", "Survival Rate")
		    ...   .set_xticklabels(["Men", "Women", "Children"])
		    ...   .set_titles("{col_name} {col_var}")
		    ...   .set(ylim=(0, 1))
		    ...   .despine(left=True))  #doctest: +ELLIPSIS
		    <seaborn.axisgrid.FacetGrid object at 0x...>
	**/
	static public function catplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?row:Dynamic, ?col:Dynamic, ?col_wrap:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?row_order:Dynamic, ?col_order:Dynamic, ?kind:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?legend:Dynamic, ?legend_out:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?margin_titles:Dynamic, ?facet_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot a matrix dataset as a hierarchically-clustered heatmap.
		
		Parameters
		----------
		data : 2D array-like
		    Rectangular data for clustering. Cannot contain NAs.
		pivot_kws : dict, optional
		    If `data` is a tidy dataframe, can provide keyword arguments for
		    pivot to create a rectangular dataframe.
		method : str, optional
		    Linkage method to use for calculating clusters. See
		    :func:`scipy.cluster.hierarchy.linkage` documentation for more
		    information.
		metric : str, optional
		    Distance metric to use for the data. See
		    :func:`scipy.spatial.distance.pdist` documentation for more options.
		    To use different metrics (or methods) for rows and columns, you may
		    construct each linkage matrix yourself and provide them as
		    `{row,col}_linkage`.
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
		figsize : tuple of (width, height), optional
		    Overall size of the figure.
		cbar_kws : dict, optional
		    Keyword arguments to pass to `cbar_kws` in :func:`heatmap`, e.g. to
		    add a label to the colorbar.
		{row,col}_cluster : bool, optional
		    If ``True``, cluster the {rows, columns}.
		{row,col}_linkage : :class:`numpy.ndarray`, optional
		    Precomputed linkage matrix for the rows or columns. See
		    :func:`scipy.cluster.hierarchy.linkage` for specific formats.
		{row,col}_colors : list-like or pandas DataFrame/Series, optional
		    List of colors to label for either the rows or columns. Useful to evaluate
		    whether samples within a group are clustered together. Can use nested lists or
		    DataFrame for multiple color levels of labeling. If given as a
		    :class:`pandas.DataFrame` or :class:`pandas.Series`, labels for the colors are
		    extracted from the DataFrames column names or from the name of the Series.
		    DataFrame/Series colors are also matched to the data by their index, ensuring
		    colors are drawn in the correct order.
		mask : bool array or DataFrame, optional
		    If passed, data will not be shown in cells where `mask` is True.
		    Cells with missing values are automatically masked. Only used for
		    visualizing, not for calculating.
		{dendrogram,colors}_ratio : float, or pair of floats, optional
		    Proportion of the figure size devoted to the two marginal elements. If
		    a pair is given, they correspond to (row, col) ratios.
		cbar_pos : tuple of (left, bottom, width, height), optional
		    Position of the colorbar axes in the figure. Setting to ``None`` will
		    disable the colorbar.
		tree_kws : dict, optional
		    Parameters for the :class:`matplotlib.collections.LineCollection`
		    that is used to plot the lines of the dendrogram tree.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to :func:`heatmap`.
		
		Returns
		-------
		:class:`ClusterGrid`
		    A :class:`ClusterGrid` instance.
		
		See Also
		--------
		heatmap : Plot rectangular data as a color-encoded matrix.
		
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
		
		    >>> import seaborn as sns; sns.set_theme(color_codes=True)
		    >>> iris = sns.load_dataset("iris")
		    >>> species = iris.pop("species")
		    >>> g = sns.clustermap(iris)
		
		Change the size and layout of the figure:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris,
		    ...                    figsize=(7, 5),
		    ...                    row_cluster=False,
		    ...                    dendrogram_ratio=(.1, .2),
		    ...                    cbar_pos=(0, .2, .03, .4))
		
		Add colored labels to identify observations:
		
		.. plot::
		    :context: close-figs
		
		    >>> lut = dict(zip(species.unique(), "rbg"))
		    >>> row_colors = species.map(lut)
		    >>> g = sns.clustermap(iris, row_colors=row_colors)
		
		Use a different colormap and adjust the limits of the color range:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, cmap="mako", vmin=0, vmax=10)
		
		Use a different similarity metric:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, metric="correlation")
		
		Use a different clustering method:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, method="single")
		
		Standardize the data within the columns:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, standard_scale=1)
		
		Normalize the data within the rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.clustermap(iris, z_score=0, cmap="vlag")
	**/
	static public function clustermap(data:Dynamic, ?pivot_kws:Dynamic, ?method:Dynamic, ?metric:Dynamic, ?z_score:Dynamic, ?standard_scale:Dynamic, ?figsize:Dynamic, ?cbar_kws:Dynamic, ?row_cluster:Dynamic, ?col_cluster:Dynamic, ?row_linkage:Dynamic, ?col_linkage:Dynamic, ?row_colors:Dynamic, ?col_colors:Dynamic, ?mask:Dynamic, ?dendrogram_ratio:Dynamic, ?colors_ratio:Dynamic, ?cbar_pos:Dynamic, ?tree_kws:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		saturation : float, optional
		    Proportion of the original saturation to draw colors at. Large patches
		    often look better with slightly desaturated colors, but set this to
		    ``1`` if you want the plot colors to perfectly match the input color
		    spec.    
		dodge : bool, optional
		    When hue nesting is used, whether elements should be shifted along the
		    categorical axis.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.bar`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		barplot : Show point estimates and confidence intervals using bars.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Show value counts for a single categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="darkgrid")
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
		
		Use :meth:`matplotlib.axes.Axes.bar` parameters to control the style.
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.countplot(x="who", data=titanic,
		    ...                    facecolor=(0, 0, 0, 0),
		    ...                    linewidth=5,
		    ...                    edgecolor=sns.color_palette("dark", 3))
		
		Use :func:`catplot` to combine a :func:`countplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="class", hue="who", col="survived",
		    ...                 data=titanic, kind="count",
		    ...                 height=4, aspect=.7);
	**/
	static public function countplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?dodge:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a palette with color names from Crayola crayons.
		
		Colors are taken from here:
		https://en.wikipedia.org/wiki/List_of_Crayola_crayon_colors
		
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
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
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
		
		    >>> import seaborn as sns; sns.set_theme()
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
		    If True, return a :class:`matplotlib.colors.Colormap`.
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		light_palette : Create a sequential palette with bright low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
		    Figure to despine all axes of, defaults to the current figure.
		ax : matplotlib axes, optional
		    Specific axes object to despine. Ignored if fig is provided.
		top, right, left, bottom : boolean, optional
		    If True, remove that spine.
		offset : int or dict, optional
		    Absolute distance, in points, spines should be moved away
		    from the axes (negative values move spines inward). A single value
		    applies to all spines; a dict can be used to set offset values per
		    side.
		trim : bool, optional
		    If True, limit spines to the smallest and largest major tick
		    on each non-despined axis.
		
		Returns
		-------
		None
	**/
	static public function despine(?fig:Dynamic, ?ax:Dynamic, ?top:Dynamic, ?right:Dynamic, ?left:Dynamic, ?bottom:Dynamic, ?offset:Dynamic, ?trim:Dynamic):Dynamic;
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
		sep : int, optional
		    Size of the intermediate region.
		n : int, optional
		    Number of colors in the palette (if not returning a cmap)
		center : {"light", "dark"}, optional
		    Whether the center of the palette is light or dark
		as_cmap : bool, optional
		    If True, return a :class:`matplotlib.colors.Colormap`.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark values.
		light_palette : Create a sequential palette with light values.
		
		Examples
		--------
		
		Generate a blue-white-red palette:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
		    >>> cmap = sns.diverging_palette(220, 20, as_cmap=True)
		    >>> ax = sns.heatmap(x, cmap=cmap)
	**/
	static public function diverging_palette(h_neg:Dynamic, h_pos:Dynamic, ?s:Dynamic, ?l:Dynamic, ?sep:Dynamic, ?n:Dynamic, ?center:Dynamic, ?as_cmap:Dynamic):Dynamic;
	/**
		Who's a good boy?
	**/
	static public function dogplot(?_:python.VarArgs<Dynamic>, ?__:python.KwArgs<Dynamic>):Dynamic;
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
		Deprecated; please use `catplot` instead.
	**/
	static public function factorplot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a path to the cache directory for example datasets.
		
		This directory is then used by :func:`load_dataset`.
		
		If the ``data_home`` argument is not specified, it tries to read from the
		``SEABORN_DATA`` environment variable and defaults to ``~/seaborn-data``.
	**/
	static public function get_data_home(?data_home:Dynamic):Dynamic;
	/**
		Report available example datasets, useful for reporting issues.
		
		Requires an internet connection.
	**/
	static public function get_dataset_names():Dynamic;
	/**
		Plot rectangular data as a color-encoded matrix.
		
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
		    data and other keyword arguments.
		cmap : matplotlib colormap name or object, or list of colors, optional
		    The mapping from data values to color space. If not provided, the
		    default will depend on whether ``center`` is set.
		center : float, optional
		    The value at which to center the colormap when plotting divergant data.
		    Using this parameter will change the default ``cmap`` if none is
		    specified.
		robust : bool, optional
		    If True and ``vmin`` or ``vmax`` are absent, the colormap range is
		    computed with robust quantiles instead of the extreme values.
		annot : bool or rectangular dataset, optional
		    If True, write the data value in each cell. If an array-like with the
		    same shape as ``data``, then use this to annotate the heatmap instead
		    of the data. Note that DataFrames will match on position, not index.
		fmt : str, optional
		    String formatting code to use when adding annotations.
		annot_kws : dict of key, value mappings, optional
		    Keyword arguments for :meth:`matplotlib.axes.Axes.text` when ``annot``
		    is True.
		linewidths : float, optional
		    Width of the lines that will divide each cell.
		linecolor : color, optional
		    Color of the lines that will divide each cell.
		cbar : bool, optional
		    Whether to draw a colorbar.
		cbar_kws : dict of key, value mappings, optional
		    Keyword arguments for :meth:`matplotlib.figure.Figure.colorbar`.
		cbar_ax : matplotlib Axes, optional
		    Axes in which to draw the colorbar, otherwise take space from the
		    main Axes.
		square : bool, optional
		    If True, set the Axes aspect to "equal" so each cell will be
		    square-shaped.
		xticklabels, yticklabels : "auto", bool, list-like, or int, optional
		    If True, plot the column names of the dataframe. If False, don't plot
		    the column names. If list-like, plot these alternate labels as the
		    xticklabels. If an integer, use the column names but plot only every
		    n label. If "auto", try to densely plot non-overlapping labels.
		mask : bool array or DataFrame, optional
		    If passed, data will not be shown in cells where ``mask`` is True.
		    Cells with missing values are automatically masked.
		ax : matplotlib Axes, optional
		    Axes in which to draw the plot, otherwise use the currently-active
		    Axes.
		kwargs : other keyword arguments
		    All other keyword arguments are passed to
		    :meth:`matplotlib.axes.Axes.pcolormesh`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Axes object with the heatmap.
		
		See Also
		--------
		clustermap : Plot a matrix using hierachical clustering to arrange the
		             rows and columns.
		
		Examples
		--------
		
		Plot a heatmap for a numpy array:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np; np.random.seed(0)
		    >>> import seaborn as sns; sns.set_theme()
		    >>> uniform_data = np.random.rand(10, 12)
		    >>> ax = sns.heatmap(uniform_data)
		
		Change the limits of the colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.heatmap(uniform_data, vmin=0, vmax=1)
		
		Plot a heatmap for data centered on 0 with a diverging colormap:
		
		.. plot::
		    :context: close-figs
		
		    >>> normal_data = np.random.randn(10, 12)
		    >>> ax = sns.heatmap(normal_data, center=0)
		
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
		
		    >>> ax = sns.heatmap(flights, center=flights.loc["Jan", 1955])
		
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
		    ...     f, ax = plt.subplots(figsize=(7, 5))
		    ...     ax = sns.heatmap(corr, mask=mask, vmax=.3, square=True)
	**/
	static public function heatmap(data:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?cmap:Dynamic, ?center:Dynamic, ?robust:Dynamic, ?annot:Dynamic, ?fmt:Dynamic, ?annot_kws:Dynamic, ?linewidths:Dynamic, ?linecolor:Dynamic, ?cbar:Dynamic, ?cbar_kws:Dynamic, ?cbar_ax:Dynamic, ?square:Dynamic, ?xticklabels:Dynamic, ?yticklabels:Dynamic, ?mask:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		husl_palette : Make a palette using evenly spaced hues in the HUSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
	static public function hls_palette(?n_colors:Dynamic, ?h:Dynamic, ?l:Dynamic, ?s:Dynamic, ?as_cmap:Dynamic):Dynamic;
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
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		hls_palette : Make a palette using evently spaced circular hues in the
		              HSL system.
		
		Examples
		--------
		
		Create a palette of 10 colors with the default parameters:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
	static public function husl_palette(?n_colors:Dynamic, ?h:Dynamic, ?s:Dynamic, ?l:Dynamic, ?as_cmap:Dynamic):Dynamic;
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
		    If True, return a :class:`matplotlib.colors.Colormap`.
		input : {'rgb', 'hls', 'husl', xkcd'}
		    Color space to interpret the input color. The first three options
		    apply to tuple inputs and the latter applies to string inputs.
		
		Returns
		-------
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		See Also
		--------
		dark_palette : Create a sequential palette with dark low values.
		diverging_palette : Create a diverging palette with two colors.
		
		Examples
		--------
		
		Generate a palette from an HTML color:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
		regression model. See the :ref:`tutorial <regression_tutorial>` for more
		information.    
		
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
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		col_wrap : int
		    "Wrap" the column variable at this width, so that the column facets
		    span multiple rows. Incompatible with a ``row`` facet.    
		height : scalar
		    Height (in inches) of each facet. See also: ``aspect``.    
		aspect : scalar
		    Aspect ratio of each facet, so that ``aspect * height`` gives the width
		    of each facet in inches.    
		markers : matplotlib marker code or list of marker codes, optional
		    Markers for the scatterplot. If a list, each marker in the list will be
		    used for each level of the ``hue`` variable.
		share{x,y} : bool, 'col', or 'row' optional
		    If true, the facets will share y axes across columns and/or x axes
		    across rows.    
		
		    .. deprecated:: 0.12.0
		        Pass using the `facet_kws` dictionary.
		
		{hue,col,row}_order : lists, optional
		    Order for the levels of the faceting variables. By default, this will
		    be the order that the levels appear in ``data`` or, if the variables
		    are pandas categoricals, the category order.
		legend : bool, optional
		    If ``True`` and there is a ``hue`` variable, add a legend.
		legend_out : bool
		    If ``True``, the figure size will be extended, and the legend will be
		    drawn outside the plot on the center right.    
		
		    .. deprecated:: 0.12.0
		        Pass using the `facet_kws` dictionary.
		
		x_estimator : callable that maps vector -> scalar, optional
		    Apply this function to each unique value of ``x`` and plot the
		    resulting estimate. This is useful when ``x`` is a discrete variable.
		    If ``x_ci`` is given, this estimate will be bootstrapped and a
		    confidence interval will be drawn.    
		x_bins : int or vector, optional
		    Bin the ``x`` variable into discrete bins and then estimate the central
		    tendency and a confidence interval. This binning only influences how
		    the scatterplot is drawn; the regression is still fit to the original
		    data.  This parameter is interpreted either as the number of
		    evenly-sized (not necessary spaced) bins or the positions of the bin
		    centers. When this parameter is used, it implies that the default of
		    ``x_estimator`` is ``numpy.mean``.    
		x_ci : "ci", "sd", int in [0, 100] or None, optional
		    Size of the confidence interval used when plotting a central tendency
		    for discrete values of ``x``. If ``"ci"``, defer to the value of the
		    ``ci`` parameter. If ``"sd"``, skip bootstrapping and show the
		    standard deviation of the observations in each bin.    
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
		seed : int, numpy.random.Generator, or numpy.random.RandomState, optional
		    Seed or random number generator for reproducible bootstrapping.    
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
		    If ``True``, the regression line is bounded by the data limits. If
		    ``False``, it extends to the ``x`` axis limits.
		
		{x,y}_jitter : floats, optional
		    Add uniform random noise of this size to either the ``x`` or ``y``
		    variables. The noise is added to a copy of the data after fitting the
		    regression, and only influences the look of the scatterplot. This can
		    be helpful when plotting variables that take discrete values.    
		{scatter,line}_kws : dictionaries
		    Additional keyword arguments to pass to ``plt.scatter`` and
		    ``plt.plot``.    
		facet_kws : dict
		    Dictionary of keyword arguments for :class:`FacetGrid`.
		
		See Also
		--------
		regplot : Plot data and a conditional model fit.
		FacetGrid : Subplot grid for plotting conditional relationships.
		pairplot : Combine :func:`regplot` and :class:`PairGrid` (when used with
		           ``kind="reg"``).
		
		Notes
		-----
		
		The :func:`regplot` and :func:`lmplot` functions are closely related, but
		the former is an axes-level function while the latter is a figure-level
		function that combines :func:`regplot` and :class:`FacetGrid`.    
		
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
		
		    >>> import seaborn as sns; sns.set_theme(color_codes=True)
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
		
		Change the height and aspect ratio of the facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="size", y="total_bill", hue="day", col="day",
		    ...                data=tips, height=6, aspect=.4, x_jitter=.1)
		
		Wrap the levels of the column variable into multiple rows:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", col="day", hue="day",
		    ...                data=tips, col_wrap=2, height=3)
		
		Condition on two variables to make a full grid:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", row="sex", col="time",
		    ...                data=tips, height=3)
		
		Use methods on the returned :class:`FacetGrid` instance to further tweak
		the plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.lmplot(x="total_bill", y="tip", row="sex", col="time",
		    ...                data=tips, height=3)
		    >>> g = (g.set_axis_labels("Total bill (US Dollars)", "Tip")
		    ...       .set(xlim=(0, 60), ylim=(0, 12),
		    ...            xticks=[10, 30, 50], yticks=[2, 6, 10])
		    ...       .fig.subplots_adjust(wspace=.02))
	**/
	static public function lmplot(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?hue:Dynamic, ?col:Dynamic, ?row:Dynamic, ?palette:Dynamic, ?col_wrap:Dynamic, ?height:Dynamic, ?aspect:Dynamic, ?markers:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?hue_order:Dynamic, ?col_order:Dynamic, ?row_order:Dynamic, ?legend:Dynamic, ?legend_out:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic, ?facet_kws:Dynamic, ?size:Dynamic):Dynamic;
	/**
		Load an example dataset from the online repository (requires internet).
		
		This function provides quick access to a small number of example datasets
		that are useful for documenting seaborn or generating reproducible examples
		for bug reports. It is not necessary for normal usage.
		
		Note that some of the datasets have a small amount of preprocessing applied
		to define a proper ordering for categorical variables.
		
		Use :func:`get_dataset_names` to see a list of available datasets.
		
		Parameters
		----------
		name : str
		    Name of the dataset (``{name}.csv`` on
		    https://github.com/mwaskom/seaborn-data).
		cache : boolean, optional
		    If True, try to load from the local cache first, and save to the cache
		    if a download is required.
		data_home : string, optional
		    The directory in which to cache data; see :func:`get_data_home`.
		kws : keys and values, optional
		    Additional keyword arguments are passed to passed through to
		    :func:`pandas.read_csv`.
		
		Returns
		-------
		df : :class:`pandas.DataFrame`
		    Tabular data, possibly with some preprocessing applied.
	**/
	static public function load_dataset(name:Dynamic, ?cache:Dynamic, ?data_home:Dynamic, ?kws:python.KwArgs<Dynamic>):Dynamic;
	/**
		Recreate a plot's legend at a new location.
		
		The name is a slight misnomer. Matplotlib legends do not expose public
		control over their position parameters. So this function creates a new legend,
		copying over the data from the original object, which is then removed.
		
		Parameters
		----------
		obj : the object with the plot
		    This argument can be either a seaborn or matplotlib object:
		
		    - :class:`seaborn.FacetGrid` or :class:`seaborn.PairGrid`
		    - :class:`matplotlib.axes.Axes` or :class:`matplotlib.figure.Figure`
		
		loc : str or int
		    Location argument, as in :meth:`matplotlib.axes.Axes.legend`.
		
		kwargs
		    Other keyword arguments are passed to :meth:`matplotlib.axes.Axes.legend`.
		
		Examples
		--------
		
		.. include:: ../docstrings/move_legend.rst
	**/
	static public function move_legend(obj:Dynamic, loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		list of RGB tuples or :class:`matplotlib.colors.Colormap`
		
		Examples
		--------
		
		Create a qualitative colorbrewer palette with 8 colors:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme()
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
	static public function mpl_palette(name:Dynamic, ?n_colors:Dynamic, ?as_cmap:Dynamic):Dynamic;
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
		Plot the values in a color palette as a horizontal array.
		
		Parameters
		----------
		pal : sequence of matplotlib colors
		    colors, i.e. as returned by seaborn.color_palette()
		size :
		    scaling factor for size of plot
	**/
	static public function palplot(pal:Dynamic, ?size:Dynamic):Dynamic;
	/**
		Get the parameters that control the scaling of plot elements.
		
		This affects things like the size of the labels, lines, and other elements
		of the plot, but not the overall style. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The base context is "notebook", and the other contexts are "paper", "talk",
		and "poster", which are version of the notebook parameters scaled by different
		values. Font elements can also be scaled independently of (but relative to)
		the other values.
		
		This function can also be used as a context manager to temporarily
		alter the global defaults. See :func:`set_theme` or :func:`set_context`
		to modify the global defaults for all plots.
		
		Parameters
		----------
		context : None, dict, or one of {paper, notebook, talk, poster}
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
		
		.. include:: ../docstrings/plotting_context.rst
	**/
	static public function plotting_context(?context:Dynamic, ?font_scale:Dynamic, ?rc:Dynamic):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		estimator : callable that maps vector -> scalar, optional
		    Statistical function to estimate within each categorical bin.
		ci : float or "sd" or None, optional
		    Size of confidence intervals to draw around estimated values.  If
		    "sd", skip bootstrapping and draw the standard deviation of the
		    observations. If ``None``, no bootstrapping will be performed, and
		    error bars will not be drawn.
		n_boot : int, optional
		    Number of bootstrap iterations to use when computing confidence
		    intervals.
		units : name of variable in ``data`` or vector data, optional
		    Identifier of sampling units, which will be used to perform a
		    multilevel bootstrap and account for repeated measures design.
		seed : int, numpy.random.Generator, or numpy.random.RandomState, optional
		    Seed or random number generator for reproducible bootstrapping.    
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
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		errwidth : float, optional
		    Thickness of error bar lines (and caps).         
		capsize : float, optional
		    Width of the "caps" on error bars.
		
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		barplot : Show point estimates and confidence intervals using bars.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a set of vertical point plots grouped by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="darkgrid")
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
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", data=tips,
		    ...                    color="#bb3f3f")
		
		Use a different color palette for the points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set2")
		
		Control point order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="time", y="tip", data=tips,
		    ...                    order=["Dinner", "Lunch"])
		
		Use median as the estimate of central tendency:
		
		.. plot::
		    :context: close-figs
		
		    >>> from numpy import median
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, estimator=median)
		
		Show the standard error of the mean with the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, ci=68)
		
		Show standard deviation of observations instead of a confidence interval:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, ci="sd")
		
		Add "caps" to the error bars:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.pointplot(x="day", y="tip", data=tips, capsize=.2)
		
		Use :func:`catplot` to combine a :func:`pointplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="point",
		    ...                 dodge=True,
		    ...                 height=4, aspect=.7);
	**/
	static public function pointplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?estimator:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?markers:Dynamic, ?linestyles:Dynamic, ?dodge:Dynamic, ?join:Dynamic, ?scale:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?errwidth:Dynamic, ?capsize:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot data and a linear regression model fit.
		
		There are a number of mutually exclusive options for estimating the
		regression model. See the :ref:`tutorial <regression_tutorial>` for more
		information.    
		
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
		    If ``x_ci`` is given, this estimate will be bootstrapped and a
		    confidence interval will be drawn.    
		x_bins : int or vector, optional
		    Bin the ``x`` variable into discrete bins and then estimate the central
		    tendency and a confidence interval. This binning only influences how
		    the scatterplot is drawn; the regression is still fit to the original
		    data.  This parameter is interpreted either as the number of
		    evenly-sized (not necessary spaced) bins or the positions of the bin
		    centers. When this parameter is used, it implies that the default of
		    ``x_estimator`` is ``numpy.mean``.    
		x_ci : "ci", "sd", int in [0, 100] or None, optional
		    Size of the confidence interval used when plotting a central tendency
		    for discrete values of ``x``. If ``"ci"``, defer to the value of the
		    ``ci`` parameter. If ``"sd"``, skip bootstrapping and show the
		    standard deviation of the observations in each bin.    
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
		seed : int, numpy.random.Generator, or numpy.random.RandomState, optional
		    Seed or random number generator for reproducible bootstrapping.    
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
		    If ``True``, the regression line is bounded by the data limits. If
		    ``False``, it extends to the ``x`` axis limits.
		
		{x,y}_jitter : floats, optional
		    Add uniform random noise of this size to either the ``x`` or ``y``
		    variables. The noise is added to a copy of the data after fitting the
		    regression, and only influences the look of the scatterplot. This can
		    be helpful when plotting variables that take discrete values.    
		label : string
		    Label to apply to either the scatterplot or regression line (if
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
		
		Notes
		-----
		
		The :func:`regplot` and :func:`lmplot` functions are closely related, but
		the former is an axes-level function while the latter is a figure-level
		function that combines :func:`regplot` and :class:`FacetGrid`.    
		
		
		It's also easy to combine combine :func:`regplot` and :class:`JointGrid` or
		:class:`PairGrid` through the :func:`jointplot` and :func:`pairplot`
		functions, although these do not directly accept all of :func:`regplot`'s
		parameters.
		
		Examples
		--------
		
		Plot the relationship between two variables in a DataFrame:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns; sns.set_theme(color_codes=True)
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
		of the estimate, and extend the regression line to the axis limits:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x=x, y=y, ci=68, truncate=False)
		
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
		
		Fit a higher-order polynomial regression:
		
		.. plot::
		    :context: close-figs
		
		    >>> ans = sns.load_dataset("anscombe")
		    >>> ax = sns.regplot(x="x", y="y", data=ans.loc[ans.dataset == "II"],
		    ...                  scatter_kws={"s": 80},
		    ...                  order=2, ci=None)
		
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
		
		Fit the regression model using log(x):
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.regplot(x="size", y="total_bill", data=tips,
		    ...                  x_estimator=np.mean, logx=True)
	**/
	static public function regplot(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?x_estimator:Dynamic, ?x_bins:Dynamic, ?x_ci:Dynamic, ?scatter:Dynamic, ?fit_reg:Dynamic, ?ci:Dynamic, ?n_boot:Dynamic, ?units:Dynamic, ?seed:Dynamic, ?order:Dynamic, ?logistic:Dynamic, ?lowess:Dynamic, ?robust:Dynamic, ?logx:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?truncate:Dynamic, ?dropna:Dynamic, ?x_jitter:Dynamic, ?y_jitter:Dynamic, ?label:Dynamic, ?color:Dynamic, ?marker:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic, ?ax:Dynamic):Dynamic;
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
		jointplot : Draw a :func:`residplot` with univariate marginal distributions
		            (when used with ``kind="resid"``).
	**/
	static public function residplot(?x:Dynamic, ?y:Dynamic, ?data:Dynamic, ?lowess:Dynamic, ?x_partial:Dynamic, ?y_partial:Dynamic, ?order:Dynamic, ?robust:Dynamic, ?dropna:Dynamic, ?label:Dynamic, ?color:Dynamic, ?scatter_kws:Dynamic, ?line_kws:Dynamic, ?ax:Dynamic):Dynamic;
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
		Return a fully saturated color with the same hue.
		
		Parameters
		----------
		color : matplotlib color
		    hex, rgb-tuple, or html color name
		
		Returns
		-------
		new_color : rgb tuple
		    saturated color code in RGB tuple representation
	**/
	static public function saturate(color:Dynamic):Dynamic;
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
	/**
		Alias for :func:`set_theme`, which is the preferred interface.
		
		This function may be removed in the future.
	**/
	static public function set(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    >>> import seaborn as sns; sns.set_theme()
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
		Set the parameters that control the scaling of plot elements.
		
		This affects things like the size of the labels, lines, and other elements
		of the plot, but not the overall style. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The base context is "notebook", and the other contexts are "paper", "talk",
		and "poster", which are version of the notebook parameters scaled by different
		values. Font elements can also be scaled independently of (but relative to)
		the other values.
		
		See :func:`plotting_context` to get the parameter values.
		
		Parameters
		----------
		context : dict, or one of {paper, notebook, talk, poster}
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
		
		.. include:: ../docstrings/set_context.rst
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
		palette : seaborn color paltte | matplotlib colormap | hls | husl
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
		Set the parameters that control the general style of the plots.
		
		The style parameters control properties like the color of the background and
		whether a grid is enabled by default. This is accomplished using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		
		The options are illustrated in the
		:doc:`aesthetics tutorial <../tutorial/aesthetics>`.
		
		See :func:`axes_style` to get the parameter values.
		
		Parameters
		----------
		style : dict, or one of {darkgrid, whitegrid, dark, white, ticks}
		    A dictionary of parameters or the name of a preconfigured style.
		rc : dict, optional
		    Parameter mappings to override the values in the preset seaborn
		    style dictionaries. This only updates parameters that are
		    considered part of the style definition.
		
		Examples
		--------
		
		.. include:: ../docstrings/set_style.rst
	**/
	static public function set_style(?style:Dynamic, ?rc:Dynamic):Dynamic;
	/**
		Set aspects of the visual theme for all matplotlib and seaborn plots.
		
		This function changes the global defaults for all plots using the
		:ref:`matplotlib rcParams system <matplotlib:matplotlib-rcparams>`.
		The themeing is decomposed into several distinct sets of parameter values.
		
		The options are illustrated in the :doc:`aesthetics <../tutorial/aesthetics>`
		and :doc:`color palette <../tutorial/color_palettes>` tutorials.
		
		Parameters
		----------
		context : string or dict
		    Scaling parameters, see :func:`plotting_context`.
		style : string or dict
		    Axes style parameters, see :func:`axes_style`.
		palette : string or sequence
		    Color palette, see :func:`color_palette`.
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
		
		Examples
		--------
		
		.. include:: ../docstrings/set_theme.rst
	**/
	static public function set_theme(?context:Dynamic, ?style:Dynamic, ?palette:Dynamic, ?font:Dynamic, ?font_scale:Dynamic, ?color_codes:Dynamic, ?rc:Dynamic):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		jitter : float, ``True``/``1`` is special-cased, optional
		    Amount of jitter (only along the categorical axis) to apply. This
		    can be useful when you have many points and they overlap, so that
		    it is easier to see the distribution. You can specify the amount
		    of jitter (half the width of the uniform random variable support),
		    or just use ``True`` for a good default.
		dodge : bool, optional
		    When using ``hue`` nesting, setting this to ``True`` will separate
		    the strips for different hue levels along the categorical axis.
		    Otherwise, the points for each level will be plotted on top of
		    each other.
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		size : float, optional
		    Radius of the markers, in points.
		edgecolor : matplotlib color, "gray" is special-cased, optional
		    Color of the lines around each point. If you pass ``"gray"``, the
		    brightness is determined by the color palette used for the body
		    of the points.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.scatter`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		swarmplot : A categorical scatterplot where the points do not overlap. Can
		            be used with other plots to show each observation.    
		boxplot : A traditional box-and-whisker plot with a similar API.    
		violinplot : A combination of boxplot and kernel density estimation.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a single horizontal strip plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.stripplot(x=tips["total_bill"])
		
		Group the strips by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips)
		
		Use a smaller amount of jitter:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips, jitter=0.05)
		
		Draw horizontal strips:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="total_bill", y="day", data=tips)
		
		Draw outlines around the points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="total_bill", y="day", data=tips,
		    ...                    linewidth=1)
		
		Nest the strips within a second categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="sex", y="total_bill", hue="day", data=tips)
		
		Draw each level of the ``hue`` variable at different locations on the
		major categorical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="day", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set2", dodge=True)
		
		Control strip order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.stripplot(x="time", y="tip", data=tips,
		    ...                    order=["Dinner", "Lunch"])
		
		Draw strips with large points and different aesthetics:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax =  sns.stripplot(x="day", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set2", size=20, marker="D",
		    ...                    edgecolor="gray", alpha=.25)
		
		Draw strips of observations on top of a box plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import numpy as np
		    >>> ax = sns.boxplot(x="tip", y="day", data=tips, whis=np.inf)
		    >>> ax = sns.stripplot(x="tip", y="day", data=tips, color=".3")
		
		Draw strips of observations on top of a violin plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", data=tips,
		    ...                     inner=None, color=".8")
		    >>> ax = sns.stripplot(x="day", y="total_bill", data=tips)
		
		Use :func:`catplot` to combine a :func:`stripplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="strip",
		    ...                 height=4, aspect=.7);
	**/
	static public function stripplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?jitter:Dynamic, ?dodge:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?size:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a categorical scatterplot with non-overlapping points.
		
		This function is similar to :func:`stripplot`, but the points are adjusted
		(only along the categorical axis) so that they don't overlap. This gives a
		better representation of the distribution of values, but it does not scale
		well to large numbers of observations. This style of plot is sometimes
		called a "beeswarm".
		
		A swarm plot can be drawn on its own, but it is also a good complement
		to a box or violin plot in cases where you want to show all observations
		along with some representation of the underlying distribution.
		
		Arranging the points properly requires an accurate transformation between
		data and point coordinates. This means that non-default axis limits must
		be set *before* drawing the plot.
		
		
		Input data can be passed in a variety of formats, including:
		
		- Vectors of data represented as lists, numpy arrays, or pandas Series
		  objects passed directly to the ``x``, ``y``, and/or ``hue`` parameters.
		- A "long-form" DataFrame, in which case the ``x``, ``y``, and ``hue``
		  variables will determine how the data are plotted.
		- A "wide-form" DataFrame, such that each numeric column will be plotted.
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
		order, hue_order : lists of strings, optional
		    Order to plot the categorical levels in, otherwise the levels are
		    inferred from the data objects.        
		dodge : bool, optional
		    When using ``hue`` nesting, setting this to ``True`` will separate
		    the strips for different hue levels along the categorical axis.
		    Otherwise, the points for each level will be plotted in one swarm.
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
		    Colors to use for the different levels of the ``hue`` variable. Should
		    be something that can be interpreted by :func:`color_palette`, or a
		    dictionary mapping hue levels to matplotlib colors.    
		size : float, optional
		    Radius of the markers, in points.
		edgecolor : matplotlib color, "gray" is special-cased, optional
		    Color of the lines around each point. If you pass ``"gray"``, the
		    brightness is determined by the color palette used for the body
		    of the points.
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		ax : matplotlib Axes, optional
		    Axes object to draw the plot onto, otherwise uses the current Axes.    
		kwargs : key, value mappings
		    Other keyword arguments are passed through to
		    :meth:`matplotlib.axes.Axes.scatter`.
		
		Returns
		-------
		ax : matplotlib Axes
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		boxplot : A traditional box-and-whisker plot with a similar API.    
		violinplot : A combination of boxplot and kernel density estimation.    
		stripplot : A scatterplot where one variable is categorical. Can be used
		            in conjunction with other plots to show each observation.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a single horizontal swarm plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
		    >>> tips = sns.load_dataset("tips")
		    >>> ax = sns.swarmplot(x=tips["total_bill"])
		
		Group the swarms by a categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="day", y="total_bill", data=tips)
		
		Draw horizontal swarms:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="total_bill", y="day", data=tips)
		
		Color the points using a second categorical variable:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="day", y="total_bill", hue="sex", data=tips)
		
		Split each level of the ``hue`` variable along the categorical axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="day", y="total_bill", hue="smoker",
		    ...                    data=tips, palette="Set2", dodge=True)
		
		Control swarm order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="time", y="total_bill", data=tips,
		    ...                    order=["Dinner", "Lunch"])
		
		Plot using larger points:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.swarmplot(x="time", y="total_bill", data=tips, size=6)
		
		Draw swarms of observations on top of a box plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.boxplot(x="total_bill", y="day", data=tips, whis=np.inf)
		    >>> ax = sns.swarmplot(x="total_bill", y="day", data=tips, color=".2")
		
		Draw swarms of observations on top of a violin plot:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="day", y="total_bill", data=tips, inner=None)
		    >>> ax = sns.swarmplot(x="day", y="total_bill", data=tips,
		    ...                    color="white", edgecolor="gray")
		
		Use :func:`catplot` to combine a :func:`swarmplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="swarm",
		    ...                 height=4, aspect=.7);
	**/
	static public function swarmplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?dodge:Dynamic, ?orient:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?size:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		- An array or list of vectors.
		
		In most cases, it is possible to use numpy or Python objects, but pandas
		objects are preferable because the associated names will be used to
		annotate the axes. Additionally, you can use Categorical types for the
		grouping variables to control the order of plot elements.    
		
		This function always treats one of the variables as categorical and
		draws data at ordinal positions (0, 1, ... n) on the relevant axis, even
		when the data has a numeric or date type.
		
		See the :ref:`tutorial <categorical_tutorial>` for more information.    
		
		Parameters
		----------
		x, y, hue : names of variables in ``data`` or vector data, optional
		    Inputs for plotting long-form data. See examples for interpretation.        
		data : DataFrame, array, or list of arrays, optional
		    Dataset for plotting. If ``x`` and ``y`` are absent, this is
		    interpreted as wide-form. Otherwise it is expected to be long-form.    
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
		dodge : bool, optional
		    When hue nesting is used, whether elements should be shifted along the
		    categorical axis.    
		orient : "v" | "h", optional
		    Orientation of the plot (vertical or horizontal). This is usually
		    inferred based on the type of the input variables, but it can be used
		    to resolve ambiguity when both `x` and `y` are numeric or when
		    plotting wide-form data.    
		linewidth : float, optional
		    Width of the gray lines that frame the plot elements.    
		color : matplotlib color, optional
		    Color for all of the elements, or seed for a gradient palette.    
		palette : palette name, list, or dict
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
		    Returns the Axes object with the plot drawn onto it.    
		
		See Also
		--------
		boxplot : A traditional box-and-whisker plot with a similar API.    
		stripplot : A scatterplot where one variable is categorical. Can be used
		            in conjunction with other plots to show each observation.    
		swarmplot : A categorical scatterplot where the points do not overlap. Can
		            be used with other plots to show each observation.    
		catplot : Combine a categorical plot with a :class:`FacetGrid`.    
		
		Examples
		--------
		
		Draw a single horizontal violinplot:
		
		.. plot::
		    :context: close-figs
		
		    >>> import seaborn as sns
		    >>> sns.set_theme(style="whitegrid")
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
		
		Control violin order by passing an explicit order:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="time", y="tip", data=tips,
		    ...                     order=["Dinner", "Lunch"])
		
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
		
		Don't let density extend past extreme values in the data:
		
		.. plot::
		    :context: close-figs
		
		    >>> ax = sns.violinplot(x="orbital_period", y="method",
		    ...                     data=planets[planets.orbital_period < 1000],
		    ...                     cut=0, scale="width", palette="Set3")
		
		Use ``hue`` without changing violin position or width:
		
		.. plot::
		    :context: close-figs
		
		    >>> tips["weekend"] = tips["day"].isin(["Sat", "Sun"])
		    >>> ax = sns.violinplot(x="day", y="total_bill", hue="weekend",
		    ...                     data=tips, dodge=False)
		
		Use :func:`catplot` to combine a :func:`violinplot` and a
		:class:`FacetGrid`. This allows grouping within additional categorical
		variables. Using :func:`catplot` is safer than using :class:`FacetGrid`
		directly, as it ensures synchronization of variable order across facets:
		
		.. plot::
		    :context: close-figs
		
		    >>> g = sns.catplot(x="sex", y="total_bill",
		    ...                 hue="smoker", col="time",
		    ...                 data=tips, kind="violin", split=True,
		    ...                 height=4, aspect=.7);
	**/
	static public function violinplot(?x:Dynamic, ?y:Dynamic, ?hue:Dynamic, ?data:Dynamic, ?order:Dynamic, ?hue_order:Dynamic, ?bw:Dynamic, ?cut:Dynamic, ?scale:Dynamic, ?scale_hue:Dynamic, ?gridsize:Dynamic, ?width:Dynamic, ?inner:Dynamic, ?split:Dynamic, ?dodge:Dynamic, ?orient:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?palette:Dynamic, ?saturation:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a palette with color names from the xkcd color survey.
		
		See xkcd for the full list of colors: https://xkcd.com/color/rgb/
		
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