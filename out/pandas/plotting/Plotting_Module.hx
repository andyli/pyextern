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
		
		Parameters:
		-----------
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
		
		Returns:
		--------
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
		Bootstrap plot.
		
		Parameters:
		-----------
		series: Time series
		fig: matplotlib figure object, optional
		size: number of data points to consider during each sampling
		samples: number of times the bootstrap procedure is performed
		kwds: optional keyword arguments for plotting commands, must be accepted
		    by both hist and plot
		
		Returns:
		--------
		fig: matplotlib figure
	**/
	static public function bootstrap_plot(series:Dynamic, ?fig:Dynamic, ?size:Dynamic, ?samples:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a box plot from DataFrame column optionally grouped by some columns or
		other inputs
		
		Parameters
		----------
		data : the pandas object holding the data
		column : column name or list of names, or vector
		    Can be any valid input to groupby
		by : string or sequence
		    Column in the DataFrame to group by
		ax : Matplotlib axes object, optional
		fontsize : int or string
		rot : label rotation angle
		figsize : A tuple (width, height) in inches
		grid : Setting this to True will show the grid
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		return_type : {None, 'axes', 'dict', 'both'}, default None
		    The kind of object to return. The default is ``axes``
		    'axes' returns the matplotlib axes the boxplot is drawn on;
		    'dict' returns a dictionary  whose values are the matplotlib
		    Lines of the boxplot;
		    'both' returns a namedtuple with the axes and dict.
		
		    When grouping with ``by``, a Series mapping columns to ``return_type``
		    is returned, unless ``return_type`` is None, in which case a NumPy
		    array of axes is returned with the same shape as ``layout``.
		    See the prose documentation for more.
		
		kwds : other plotting keyword arguments to be passed to matplotlib boxplot
		       function
		
		Returns
		-------
		lines : dict
		ax : matplotlib Axes
		(ax, lines): namedtuple
		
		Notes
		-----
		Use ``return_type='dict'`` when you want to tweak the appearance
		of the lines after plotting. In this case a dict containing the Lines
		making up the boxes, caps, fliers, medians, and whiskers is returned.
	**/
	static public function boxplot(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Lag plot for time series.
		
		Parameters:
		-----------
		series: Time series
		lag: lag of the scatter plot, default 1
		ax: Matplotlib axis object, optional
		kwds: Matplotlib scatter method keyword arguments, optional
		
		Returns:
		--------
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
		    Sort class_column labels, useful when assigning colours
		
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
		RadViz - a multivariate data visualization algorithm
		
		Parameters:
		-----------
		frame: DataFrame
		class_column: str
		    Column name containing class names
		ax: Matplotlib axis object, optional
		color: list or tuple, optional
		    Colors to use for the different classes
		colormap : str or matplotlib colormap object, default None
		    Colormap to select colors from. If string, load colormap with that name
		    from matplotlib.
		kwds: keywords
		    Options to pass to matplotlib scatter plotting method
		
		Returns:
		--------
		ax: Matplotlib axis object
	**/
	static public function radviz(frame:Dynamic, class_column:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?colormap:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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