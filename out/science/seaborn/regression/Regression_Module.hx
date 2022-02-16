/* This file is generated, do not edit! */
package seaborn.regression;
@:pythonImport("seaborn.regression") extern class Regression_Module {
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
	static public var _has_statsmodels : Dynamic;
	static public var _regression_docs : Dynamic;
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
}