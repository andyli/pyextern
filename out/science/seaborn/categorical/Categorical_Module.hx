/* This file is generated, do not edit! */
package seaborn.categorical;
@:pythonImport("seaborn.categorical") extern class Categorical_Module {
	static public var __all__ : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _categorical_docs : Dynamic;
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
		Deprecated; please use `catplot` instead.
	**/
	static public function factorplot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Determine how the plot should be oriented based on the data.
		
		For historical reasons, the convention is to call a plot "horizontally"
		or "vertically" oriented based on the axis representing its dependent
		variable. Practically, this is used when determining the axis for
		numerical aggregation.
		
		Parameters
		----------
		x, y : Vector data or None
		    Positional data vectors for the plot.
		orient : string or None
		    Specified orientation, which must start with "v" or "h" if not None.
		require_numeric : bool
		    If set, raise when the implied dependent variable is not numeric.
		
		Returns
		-------
		orient : "v" or "h"
		
		Raises
		------
		ValueError: When `orient` is not None and does not start with "h" or "v"
		TypeError: When dependant variable is not numeric, with `require_numeric`
	**/
	static public function infer_orient(?x:Dynamic, ?y:Dynamic, ?orient:Dynamic, ?require_numeric:Dynamic):Dynamic;
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
}