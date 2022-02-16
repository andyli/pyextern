/* This file is generated, do not edit! */
package pandas.plotting._misc;
@:pythonImport("pandas.plotting._misc") extern class _Misc_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Return the plotting backend to use (e.g. `pandas.plotting._matplotlib`).
		
		The plotting system of pandas uses matplotlib by default, but the idea here
		is that it can also work with other third-party backends. This function
		returns the module which provides a top-level `.plot` method that will
		actually do the plotting. The backend is specified from a string, which
		either comes from the keyword argument `backend`, or, if not specified, from
		the option `pandas.options.plotting.backend`. All the rest of the code in
		this file uses the backend specified there for the plotting.
		
		The backend is imported lazily, as matplotlib is a soft dependency, and
		pandas can be used without it being installed.
		
		Notes
		-----
		Modifies `_backends` with imported backend as a side effect.
	**/
	static public function _get_plot_backend(?backend:Dynamic):Dynamic;
	/**
		Generate a matplotlib plot of Andrews curves, for visualising clusters of
		multivariate data.
		
		Andrews curves have the functional form:
		
		f(t) = x_1/sqrt(2) + x_2 sin(t) + x_3 cos(t) +
		       x_4 sin(2t) + x_5 cos(2t) + ...
		
		Where x coefficients correspond to the values of each dimension and t is
		linearly spaced between -pi and +pi. Each row of frame then corresponds to
		a single curve.
		
		Parameters
		----------
		frame : DataFrame
		    Data to be plotted, preferably normalized to (0.0, 1.0).
		class_column : Name of the column containing class names
		ax : matplotlib axes object, default None
		samples : Number of points to plot in each curve
		color : list or tuple, optional
		    Colors to use for the different classes.
		colormap : str or matplotlib colormap object, default None
		    Colormap to select colors from. If string, load colormap with that name
		    from matplotlib.
		**kwargs
		    Options to pass to matplotlib plotting method.
		
		Returns
		-------
		class:`matplotlip.axis.Axes`
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.read_csv(
		    ...     'https://raw.github.com/pandas-dev/'
		    ...     'pandas/main/pandas/tests/io/data/csv/iris.csv'
		    ... )
		    >>> pd.plotting.andrews_curves(df, 'Name')
		    <AxesSubplot:title={'center':'width'}>
	**/
	static public function andrews_curves(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?samples:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Autocorrelation plot for time series.
		
		Parameters
		----------
		series : Time series
		ax : Matplotlib axis object, optional
		**kwargs
		    Options to pass to matplotlib plotting method.
		
		Returns
		-------
		class:`matplotlib.axis.Axes`
		
		Examples
		--------
		
		The horizontal lines in the plot correspond to 95% and 99% confidence bands.
		
		The dashed line is 99% confidence band.
		
		.. plot::
		    :context: close-figs
		
		    >>> spacing = np.linspace(-9 * np.pi, 9 * np.pi, num=1000)
		    >>> s = pd.Series(0.7 * np.random.rand(1000) + 0.3 * np.sin(spacing))
		    >>> pd.plotting.autocorrelation_plot(s)
		    <AxesSubplot:title={'center':'width'}, xlabel='Lag', ylabel='Autocorrelation'>
	**/
	static public function autocorrelation_plot(series:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Bootstrap plot on mean, median and mid-range statistics.
		
		The bootstrap plot is used to estimate the uncertainty of a statistic
		by relaying on random sampling with replacement [1]_. This function will
		generate bootstrapping plots for mean, median and mid-range statistics
		for the given number of samples of the given size.
		
		.. [1] "Bootstrapping (statistics)" in     https://en.wikipedia.org/wiki/Bootstrapping_%28statistics%29
		
		Parameters
		----------
		series : pandas.Series
		    Series from where to get the samplings for the bootstrapping.
		fig : matplotlib.figure.Figure, default None
		    If given, it will use the `fig` reference for plotting instead of
		    creating a new one with default parameters.
		size : int, default 50
		    Number of data points to consider during each sampling. It must be
		    less than or equal to the length of the `series`.
		samples : int, default 500
		    Number of times the bootstrap procedure is performed.
		**kwds
		    Options to pass to matplotlib plotting method.
		
		Returns
		-------
		matplotlib.figure.Figure
		    Matplotlib figure.
		
		See Also
		--------
		DataFrame.plot : Basic plotting for DataFrame objects.
		Series.plot : Basic plotting for Series objects.
		
		Examples
		--------
		This example draws a basic bootstrap plot for a Series.
		
		.. plot::
		    :context: close-figs
		
		    >>> s = pd.Series(np.random.uniform(size=100))
		    >>> pd.plotting.bootstrap_plot(s)
		    <Figure size 640x480 with 6 Axes>
	**/
	static public function bootstrap_plot(series:Dynamic, ?fig:Dynamic, ?size:Dynamic, ?samples:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		@contextmanager decorator.
		
		Typical usage:
		
		    @contextmanager
		    def some_generator(<arguments>):
		        <setup>
		        try:
		            yield <value>
		        finally:
		            <cleanup>
		
		This makes this:
		
		    with some_generator(<arguments>) as <variable>:
		        <body>
		
		equivalent to this:
		
		    <setup>
		    try:
		        <variable> = <value>
		        <body>
		    finally:
		        <cleanup>
	**/
	static public function contextmanager(func:Dynamic):Dynamic;
	/**
		Remove pandas formatters and converters.
		
		Removes the custom converters added by :func:`register`. This
		attempts to set the state of the registry back to the state before
		pandas registered its own units. Converters for pandas' own types like
		Timestamp and Period are removed completely. Converters for types
		pandas overwrites, like ``datetime.datetime``, are restored to their
		original value.
		
		See Also
		--------
		register_matplotlib_converters : Register pandas formatters and converters
		    with matplotlib.
	**/
	static public function deregister():Dynamic;
	/**
		Lag plot for time series.
		
		Parameters
		----------
		series : Time series
		lag : lag of the scatter plot, default 1
		ax : Matplotlib axis object, optional
		**kwds
		    Matplotlib scatter method keyword arguments.
		
		Returns
		-------
		class:`matplotlib.axis.Axes`
		
		Examples
		--------
		
		Lag plots are most commonly used to look for patterns in time series data.
		
		Given the following time series
		
		.. plot::
		    :context: close-figs
		
		    >>> np.random.seed(5)
		    >>> x = np.cumsum(np.random.normal(loc=1, scale=5, size=50))
		    >>> s = pd.Series(x)
		    >>> s.plot()
		    <AxesSubplot:xlabel='Midrange'>
		
		A lag plot with ``lag=1`` returns
		
		.. plot::
		    :context: close-figs
		
		    >>> pd.plotting.lag_plot(s, lag=1)
		    <AxesSubplot:xlabel='y(t)', ylabel='y(t + 1)'>
	**/
	static public function lag_plot(series:Dynamic, ?lag:Dynamic, ?ax:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parallel coordinates plotting.
		
		Parameters
		----------
		frame : DataFrame
		class_column : str
		    Column name containing class names.
		cols : list, optional
		    A list of column names to use.
		ax : matplotlib.axis, optional
		    Matplotlib axis object.
		color : list or tuple, optional
		    Colors to use for the different classes.
		use_columns : bool, optional
		    If true, columns will be used as xticks.
		xticks : list or tuple, optional
		    A list of values to use for xticks.
		colormap : str or matplotlib colormap, default None
		    Colormap to use for line colors.
		axvlines : bool, optional
		    If true, vertical lines will be added at each xtick.
		axvlines_kwds : keywords, optional
		    Options to be passed to axvline method for vertical lines.
		sort_labels : bool, default False
		    Sort class_column labels, useful when assigning colors.
		**kwargs
		    Options to pass to matplotlib plotting method.
		
		Returns
		-------
		class:`matplotlib.axis.Axes`
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.read_csv(
		    ...     'https://raw.github.com/pandas-dev/'
		    ...     'pandas/main/pandas/tests/io/data/csv/iris.csv'
		    ... )
		    >>> pd.plotting.parallel_coordinates(
		    ...     df, 'Name', color=('#556270', '#4ECDC4', '#C7F464')
		    ... )
		    <AxesSubplot:xlabel='y(t)', ylabel='y(t + 1)'>
	**/
	static public function parallel_coordinates(frame:Dynamic, class_column:Dynamic, ?cols:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?use_columns:Dynamic, ?xticks:Dynamic, ?colormap:Dynamic, ?axvlines:Dynamic, ?axvlines_kwds:Dynamic, ?sort_labels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var plot_params : Dynamic;
	/**
		Plot a multidimensional dataset in 2D.
		
		Each Series in the DataFrame is represented as a evenly distributed
		slice on a circle. Each data point is rendered in the circle according to
		the value on each Series. Highly correlated `Series` in the `DataFrame`
		are placed closer on the unit circle.
		
		RadViz allow to project a N-dimensional data set into a 2D space where the
		influence of each dimension can be interpreted as a balance between the
		influence of all dimensions.
		
		More info available at the `original article
		<https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.135.889>`_
		describing RadViz.
		
		Parameters
		----------
		frame : `DataFrame`
		    Object holding the data.
		class_column : str
		    Column name containing the name of the data point category.
		ax : :class:`matplotlib.axes.Axes`, optional
		    A plot instance to which to add the information.
		color : list[str] or tuple[str], optional
		    Assign a color to each category. Example: ['blue', 'green'].
		colormap : str or :class:`matplotlib.colors.Colormap`, default None
		    Colormap to select colors from. If string, load colormap with that
		    name from matplotlib.
		**kwds
		    Options to pass to matplotlib scatter plotting method.
		
		Returns
		-------
		class:`matplotlib.axes.Axes`
		
		See Also
		--------
		plotting.andrews_curves : Plot clustering visualization.
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(
		    ...     {
		    ...         'SepalLength': [6.5, 7.7, 5.1, 5.8, 7.6, 5.0, 5.4, 4.6, 6.7, 4.6],
		    ...         'SepalWidth': [3.0, 3.8, 3.8, 2.7, 3.0, 2.3, 3.0, 3.2, 3.3, 3.6],
		    ...         'PetalLength': [5.5, 6.7, 1.9, 5.1, 6.6, 3.3, 4.5, 1.4, 5.7, 1.0],
		    ...         'PetalWidth': [1.8, 2.2, 0.4, 1.9, 2.1, 1.0, 1.5, 0.2, 2.1, 0.2],
		    ...         'Category': [
		    ...             'virginica',
		    ...             'virginica',
		    ...             'setosa',
		    ...             'virginica',
		    ...             'virginica',
		    ...             'versicolor',
		    ...             'versicolor',
		    ...             'setosa',
		    ...             'virginica',
		    ...             'setosa'
		    ...         ]
		    ...     }
		    ... )
		    >>> pd.plotting.radviz(df, 'Category')
		    <AxesSubplot:xlabel='y(t)', ylabel='y(t + 1)'>
	**/
	static public function radviz(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Register pandas formatters and converters with matplotlib.
		
		This function modifies the global ``matplotlib.units.registry``
		dictionary. pandas adds custom converters for
		
		* pd.Timestamp
		* pd.Period
		* np.datetime64
		* datetime.datetime
		* datetime.date
		* datetime.time
		
		See Also
		--------
		deregister_matplotlib_converters : Remove pandas formatters and converters.
	**/
	static public function register():Dynamic;
	/**
		Draw a matrix of scatter plots.
		
		Parameters
		----------
		frame : DataFrame
		alpha : float, optional
		    Amount of transparency applied.
		figsize : (float,float), optional
		    A tuple (width, height) in inches.
		ax : Matplotlib axis object, optional
		grid : bool, optional
		    Setting this to True will show the grid.
		diagonal : {'hist', 'kde'}
		    Pick between 'kde' and 'hist' for either Kernel Density Estimation or
		    Histogram plot in the diagonal.
		marker : str, optional
		    Matplotlib marker type, default '.'.
		density_kwds : keywords
		    Keyword arguments to be passed to kernel density estimate plot.
		hist_kwds : keywords
		    Keyword arguments to be passed to hist function.
		range_padding : float, default 0.05
		    Relative extension of axis range in x and y with respect to
		    (x_max - x_min) or (y_max - y_min).
		**kwargs
		    Keyword arguments to be passed to scatter function.
		
		Returns
		-------
		numpy.ndarray
		    A matrix of scatter plots.
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(np.random.randn(1000, 4), columns=['A','B','C','D'])
		    >>> pd.plotting.scatter_matrix(df, alpha=0.2)
		    array([[<AxesSubplot:xlabel='A', ylabel='A'>,
		        <AxesSubplot:xlabel='B', ylabel='A'>,
		        <AxesSubplot:xlabel='C', ylabel='A'>,
		        <AxesSubplot:xlabel='D', ylabel='A'>],
		       [<AxesSubplot:xlabel='A', ylabel='B'>,
		        <AxesSubplot:xlabel='B', ylabel='B'>,
		        <AxesSubplot:xlabel='C', ylabel='B'>,
		        <AxesSubplot:xlabel='D', ylabel='B'>],
		       [<AxesSubplot:xlabel='A', ylabel='C'>,
		        <AxesSubplot:xlabel='B', ylabel='C'>,
		        <AxesSubplot:xlabel='C', ylabel='C'>,
		        <AxesSubplot:xlabel='D', ylabel='C'>],
		       [<AxesSubplot:xlabel='A', ylabel='D'>,
		        <AxesSubplot:xlabel='B', ylabel='D'>,
		        <AxesSubplot:xlabel='C', ylabel='D'>,
		        <AxesSubplot:xlabel='D', ylabel='D'>]], dtype=object)
	**/
	static public function scatter_matrix(frame:Dynamic, ?alpha:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?diagonal:Dynamic, ?marker:Dynamic, ?density_kwds:Dynamic, ?hist_kwds:Dynamic, ?range_padding:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to convert DataFrame and Series to matplotlib.table.
		
		Parameters
		----------
		ax : Matplotlib axes object
		data : DataFrame or Series
		    Data for table contents.
		**kwargs
		    Keyword arguments to be passed to matplotlib.table.table.
		    If `rowLabels` or `colLabels` is not specified, data index or column
		    name will be used.
		
		Returns
		-------
		matplotlib table object
	**/
	static public function table(ax:Dynamic, data:Dynamic, ?rowLabels:Dynamic, ?colLabels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}