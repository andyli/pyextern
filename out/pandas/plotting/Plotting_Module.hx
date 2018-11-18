/* This file is generated, do not edit! */
package pandas.plotting;
@:pythonImport("pandas.plotting") extern class Plotting_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __path__ : Dynamic;
	static public var __spec__ : Dynamic;
	/**
		Generates a matplotlib plot of Andrews curves, for visualising clusters of
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
		    Data to be plotted, preferably normalized to (0.0, 1.0)
		class_column : Name of the column containing class names
		ax : matplotlib axes object, default None
		samples : Number of points to plot in each curve
		color: list or tuple, optional
		    Colors to use for the different classes
		colormap : str or matplotlib colormap object, default None
		    Colormap to select colors from. If string, load colormap with that name
		    from matplotlib.
		kwds: keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		ax: Matplotlib axis object
	**/
	static public function andrews_curves(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?samples:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Autocorrelation plot for time series.
		
		Parameters:
		-----------
		series: Time series
		ax: Matplotlib axis object, optional
		kwds : keywords
		    Options to pass to matplotlib plotting method
		
		Returns:
		-----------
		ax: Matplotlib axis object
	**/
	static public function autocorrelation_plot(series:Dynamic, ?ax:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		    Pandas Series from where to get the samplings for the bootstrapping.
		fig : matplotlib.figure.Figure, default None
		    If given, it will use the `fig` reference for plotting instead of
		    creating a new one with default parameters.
		size : int, default 50
		    Number of data points to consider during each sampling. It must be
		    greater or equal than the length of the `series`.
		samples : int, default 500
		    Number of times the bootstrap procedure is performed.
		**kwds :
		    Options to pass to matplotlib plotting method.
		
		Returns
		-------
		fig : matplotlib.figure.Figure
		    Matplotlib figure
		
		See Also
		--------
		pandas.DataFrame.plot : Basic plotting for DataFrame objects.
		pandas.Series.plot : Basic plotting for Series objects.
		
		Examples
		--------
		
		.. plot::
		        :context: close-figs
		
		        >>> import numpy as np
		        >>> s = pd.Series(np.random.uniform(size=100))
		        >>> fig = pd.plotting.bootstrap_plot(s)
	**/
	static public function bootstrap_plot(series:Dynamic, ?fig:Dynamic, ?size:Dynamic, ?samples:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a box plot from DataFrame columns.
		
		Make a box-and-whisker plot from DataFrame columns, optionally grouped
		by some other columns. A box plot is a method for graphically depicting
		groups of numerical data through their quartiles.
		The box extends from the Q1 to Q3 quartile values of the data,
		with a line at the median (Q2). The whiskers extend from the edges
		of box to show the range of the data. The position of the whiskers
		is set by default to `1.5 * IQR (IQR = Q3 - Q1)` from the edges of the box.
		Outlier points are those past the end of the whiskers.
		
		For further details see
		Wikipedia's entry for `boxplot <https://en.wikipedia.org/wiki/Box_plot>`_.
		
		Parameters
		----------
		column : str or list of str, optional
		    Column name or list of names, or vector.
		    Can be any valid input to :meth:`pandas.DataFrame.groupby`.
		by : str or array-like, optional
		    Column in the DataFrame to :meth:`pandas.DataFrame.groupby`.
		    One box-plot will be done per value of columns in `by`.
		ax : object of class matplotlib.axes.Axes, optional
		    The matplotlib axes to be used by boxplot.
		fontsize : float or str
		    Tick label font size in points or as a string (e.g., `large`).
		rot : int or float, default 0
		    The rotation angle of labels (in degrees)
		    with respect to the screen coordinate sytem.
		grid : boolean, default True
		    Setting this to True will show the grid.
		figsize : A tuple (width, height) in inches
		    The size of the figure to create in matplotlib.
		layout : tuple (rows, columns), optional
		    For example, (3, 5) will display the subplots
		    using 3 columns and 5 rows, starting from the top-left.
		return_type : {'axes', 'dict', 'both'} or None, default 'axes'
		    The kind of object to return. The default is ``axes``.
		
		    * 'axes' returns the matplotlib axes the boxplot is drawn on.
		    * 'dict' returns a dictionary whose values are the matplotlib
		      Lines of the boxplot.
		    * 'both' returns a namedtuple with the axes and dict.
		    * when grouping with ``by``, a Series mapping columns to
		      ``return_type`` is returned.
		
		      If ``return_type`` is `None`, a NumPy array
		      of axes with the same shape as ``layout`` is returned.
		**kwds
		    All other plotting keyword arguments to be passed to
		    :func:`matplotlib.pyplot.boxplot`.
		
		Returns
		-------
		result :
		
		    The return type depends on the `return_type` parameter:
		
		    * 'axes' : object of class matplotlib.axes.Axes
		    * 'dict' : dict of matplotlib.lines.Line2D objects
		    * 'both' : a nametuple with strucure (ax, lines)
		
		    For data grouped with ``by``:
		
		    * :class:`~pandas.Series`
		    * :class:`~numpy.array` (for ``return_type = None``)
		
		See Also
		--------
		Series.plot.hist: Make a histogram.
		matplotlib.pyplot.boxplot : Matplotlib equivalent plot.
		
		Notes
		-----
		Use ``return_type='dict'`` when you want to tweak the appearance
		of the lines after plotting. In this case a dict containing the Lines
		making up the boxes, caps, fliers, medians, and whiskers is returned.
		
		Examples
		--------
		
		Boxplots can be created for every column in the dataframe
		by ``df.boxplot()`` or indicating the columns to be used:
		
		.. plot::
		    :context: close-figs
		
		    >>> np.random.seed(1234)
		    >>> df = pd.DataFrame(np.random.randn(10,4),
		    ...                   columns=['Col1', 'Col2', 'Col3', 'Col4'])
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2', 'Col3'])
		
		Boxplots of variables distributions grouped by the values of a third
		variable can be created using the option ``by``. For instance:
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(np.random.randn(10, 2),
		    ...                   columns=['Col1', 'Col2'])
		    >>> df['X'] = pd.Series(['A', 'A', 'A', 'A', 'A',
		    ...                      'B', 'B', 'B', 'B', 'B'])
		    >>> boxplot = df.boxplot(by='X')
		
		A list of strings (i.e. ``['X', 'Y']``) can be passed to boxplot
		in order to group the data by combination of the variables in the x-axis:
		
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame(np.random.randn(10,3),
		    ...                   columns=['Col1', 'Col2', 'Col3'])
		    >>> df['X'] = pd.Series(['A', 'A', 'A', 'A', 'A',
		    ...                      'B', 'B', 'B', 'B', 'B'])
		    >>> df['Y'] = pd.Series(['A', 'B', 'A', 'B', 'A',
		    ...                      'B', 'A', 'B', 'A', 'B'])
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by=['X', 'Y'])
		
		The layout of boxplot can be adjusted giving a tuple to ``layout``:
		
		.. plot::
		    :context: close-figs
		
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                      layout=(2, 1))
		
		Additional formatting can be done to the boxplot, like suppressing the grid
		(``grid=False``), rotating the labels in the x-axis (i.e. ``rot=45``)
		or changing the fontsize (i.e. ``fontsize=15``):
		
		.. plot::
		    :context: close-figs
		
		    >>> boxplot = df.boxplot(grid=False, rot=45, fontsize=15)
		
		The parameter ``return_type`` can be used to select the type of element
		returned by `boxplot`.  When ``return_type='axes'`` is selected,
		the matplotlib axes on which the boxplot is drawn are returned:
		
		    >>> boxplot = df.boxplot(column=['Col1','Col2'], return_type='axes')
		    >>> type(boxplot)
		    <class 'matplotlib.axes._subplots.AxesSubplot'>
		
		When grouping with ``by``, a Series mapping columns to ``return_type``
		is returned:
		
		    >>> boxplot = df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                      return_type='axes')
		    >>> type(boxplot)
		    <class 'pandas.core.series.Series'>
		
		If ``return_type`` is `None`, a NumPy array of axes with the same shape
		as ``layout`` is returned:
		
		    >>> boxplot =  df.boxplot(column=['Col1', 'Col2'], by='X',
		    ...                       return_type=None)
		    >>> type(boxplot)
		    <class 'numpy.ndarray'>
	**/
	static public function boxplot(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove pandas' formatters and converters
		
		Removes the custom converters added by :func:`register`. This
		attempts to set the state of the registry back to the state before
		pandas registered its own units. Converters for pandas' own types like
		Timestamp and Period are removed completely. Converters for types
		pandas overwrites, like ``datetime.datetime``, are restored to their
		original value.
		
		See Also
		--------
		deregister_matplotlib_converters
	**/
	static public function deregister_matplotlib_converters():Dynamic;
	/**
		Lag plot for time series.
		
		Parameters
		----------
		series: Time series
		lag: lag of the scatter plot, default 1
		ax: Matplotlib axis object, optional
		kwds: Matplotlib scatter method keyword arguments, optional
		
		Returns
		-------
		ax: Matplotlib axis object
	**/
	static public function lag_plot(series:Dynamic, ?lag:Dynamic, ?ax:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parallel coordinates plotting.
		
		Parameters
		----------
		frame: DataFrame
		class_column: str
		    Column name containing class names
		cols: list, optional
		    A list of column names to use
		ax: matplotlib.axis, optional
		    matplotlib axis object
		color: list or tuple, optional
		    Colors to use for the different classes
		use_columns: bool, optional
		    If true, columns will be used as xticks
		xticks: list or tuple, optional
		    A list of values to use for xticks
		colormap: str or matplotlib colormap, default None
		    Colormap to use for line colors.
		axvlines: bool, optional
		    If true, vertical lines will be added at each xtick
		axvlines_kwds: keywords, optional
		    Options to be passed to axvline method for vertical lines
		sort_labels: bool, False
		    Sort class_column labels, useful when assigning colors
		
		    .. versionadded:: 0.20.0
		
		kwds: keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		ax: matplotlib axis object
		
		Examples
		--------
		>>> from pandas import read_csv
		>>> from pandas.tools.plotting import parallel_coordinates
		>>> from matplotlib import pyplot as plt
		>>> df = read_csv('https://raw.github.com/pandas-dev/pandas/master'
		                  '/pandas/tests/data/iris.csv')
		>>> parallel_coordinates(df, 'Name', color=('#556270',
		                         '#4ECDC4', '#C7F464'))
		>>> plt.show()
	**/
	static public function parallel_coordinates(frame:Dynamic, class_column:Dynamic, ?cols:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?use_columns:Dynamic, ?xticks:Dynamic, ?colormap:Dynamic, ?axvlines:Dynamic, ?axvlines_kwds:Dynamic, ?sort_labels:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		<http://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.135.889>`_
		describing RadViz.
		
		Parameters
		----------
		frame : `DataFrame`
		    Pandas object holding the data.
		class_column : str
		    Column name containing the name of the data point category.
		ax : :class:`matplotlib.axes.Axes`, optional
		    A plot instance to which to add the information.
		color : list[str] or tuple[str], optional
		    Assign a color to each category. Example: ['blue', 'green'].
		colormap : str or :class:`matplotlib.colors.Colormap`, default None
		    Colormap to select colors from. If string, load colormap with that
		    name from matplotlib.
		kwds : optional
		    Options to pass to matplotlib scatter plotting method.
		
		Returns
		-------
		axes : :class:`matplotlib.axes.Axes`
		
		See Also
		--------
		pandas.plotting.andrews_curves : Plot clustering visualization
		
		Examples
		--------
		.. plot::
		    :context: close-figs
		
		    >>> df = pd.DataFrame({
		    ...         'SepalLength': [6.5, 7.7, 5.1, 5.8, 7.6, 5.0, 5.4, 4.6,
		    ...                         6.7, 4.6],
		    ...         'SepalWidth': [3.0, 3.8, 3.8, 2.7, 3.0, 2.3, 3.0, 3.2,
		    ...                        3.3, 3.6],
		    ...         'PetalLength': [5.5, 6.7, 1.9, 5.1, 6.6, 3.3, 4.5, 1.4,
		    ...                         5.7, 1.0],
		    ...         'PetalWidth': [1.8, 2.2, 0.4, 1.9, 2.1, 1.0, 1.5, 0.2,
		    ...                        2.1, 0.2],
		    ...         'Category': ['virginica', 'virginica', 'setosa',
		    ...                      'virginica', 'virginica', 'versicolor',
		    ...                      'versicolor', 'setosa', 'virginica',
		    ...                      'setosa']
		    ...     })
		    >>> rad_viz = pd.plotting.radviz(df, 'Category')
	**/
	static public function radviz(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Register Pandas Formatters and Converters with matplotlib
		
		This function modifies the global ``matplotlib.units.registry``
		dictionary. Pandas adds custom converters for
		
		* pd.Timestamp
		* pd.Period
		* np.datetime64
		* datetime.datetime
		* datetime.date
		* datetime.time
		
		See Also
		--------
		deregister_matplotlib_converter
	**/
	static public function register_matplotlib_converters(?explicit:Dynamic):Dynamic;
	/**
		Draw a matrix of scatter plots.
		
		Parameters
		----------
		frame : DataFrame
		alpha : float, optional
		    amount of transparency applied
		figsize : (float,float), optional
		    a tuple (width, height) in inches
		ax : Matplotlib axis object, optional
		grid : bool, optional
		    setting this to True will show the grid
		diagonal : {'hist', 'kde'}
		    pick between 'kde' and 'hist' for
		    either Kernel Density Estimation or Histogram
		    plot in the diagonal
		marker : str, optional
		    Matplotlib marker type, default '.'
		hist_kwds : other plotting keyword arguments
		    To be passed to hist function
		density_kwds : other plotting keyword arguments
		    To be passed to kernel density estimate plot
		range_padding : float, optional
		    relative extension of axis range in x and y
		    with respect to (x_max - x_min) or (y_max - y_min),
		    default 0.05
		kwds : other plotting keyword arguments
		    To be passed to scatter function
		
		Examples
		--------
		>>> df = DataFrame(np.random.randn(1000, 4), columns=['A','B','C','D'])
		>>> scatter_matrix(df, alpha=0.2)
	**/
	static public function scatter_matrix(frame:Dynamic, ?alpha:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?diagonal:Dynamic, ?marker:Dynamic, ?density_kwds:Dynamic, ?hist_kwds:Dynamic, ?range_padding:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to convert DataFrame and Series to matplotlib.table
		
		Parameters
		----------
		`ax`: Matplotlib axes object
		`data`: DataFrame or Series
		    data for table contents
		`kwargs`: keywords, optional
		    keyword arguments which passed to matplotlib.table.table.
		    If `rowLabels` or `colLabels` is not specified, data index or column
		    name will be used.
		
		Returns
		-------
		matplotlib table object
	**/
	static public function table(ax:Dynamic, data:Dynamic, ?rowLabels:Dynamic, ?colLabels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}