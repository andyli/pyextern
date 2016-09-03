/* This file is generated, do not edit! */
package pandas.tools.plotting;
@:pythonImport("pandas.tools.plotting") extern class Plotting_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public var _all_kinds : Dynamic;
	static public var _common_kinds : Dynamic;
	static public var _dataframe_kinds : Dynamic;
	static public function _flatten(axes:Dynamic):Dynamic;
	static public function _gca():Dynamic;
	static public function _gcf():Dynamic;
	static public function _get_all_lines(ax:Dynamic):Dynamic;
	static public function _get_layout(nplots:Dynamic, ?layout:Dynamic, ?layout_type:Dynamic):Dynamic;
	static public function _get_marker_compat(marker:Dynamic):Dynamic;
	static public function _get_standard_colors(?num_colors:Dynamic, ?colormap:Dynamic, ?color_type:Dynamic, ?color:Dynamic):Dynamic;
	static public function _get_standard_kind(kind:Dynamic):Dynamic;
	static public function _get_xlim(lines:Dynamic):Dynamic;
	static public function _grouped_plot(plotf:Dynamic, data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?numeric_only:Dynamic, ?figsize:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?layout:Dynamic, ?rot:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _grouped_plot_by_column(plotf:Dynamic, data:Dynamic, ?columns:Dynamic, ?by:Dynamic, ?numeric_only:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _handle_shared_axes(axarr:Dynamic, nplots:Dynamic, naxes:Dynamic, nrows:Dynamic, ncols:Dynamic, sharex:Dynamic, sharey:Dynamic):Dynamic;
	static public var _klasses : Dynamic;
	static public function _mpl_ge_1_3_1():Dynamic;
	static public function _mpl_ge_1_4_0():Dynamic;
	static public function _mpl_ge_1_5_0():Dynamic;
	static public function _mpl_le_1_2_1():Dynamic;
	static public function _plot(data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?subplots:Dynamic, ?ax:Dynamic, ?kind:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _plot_klass : Dynamic;
	static public function _remove_labels_from_axis(axis:Dynamic):Dynamic;
	static public var _series_kinds : Dynamic;
	static public function _set_ticks_props(axes:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic):Dynamic;
	static public var _shared_doc_df_kwargs : Dynamic;
	static public var _shared_doc_kwargs : Dynamic;
	static public var _shared_doc_series_kwargs : Dynamic;
	static public var _shared_docs : Dynamic;
	/**
		Create a figure with a set of subplots already made.
		
		This utility wrapper makes it convenient to create common layouts of
		subplots, including the enclosing figure object, in a single call.
		
		Keyword arguments:
		
		naxes : int
		  Number of required axes. Exceeded axes are set invisible. Default is
		  nrows * ncols.
		
		sharex : bool
		  If True, the X axis will be shared amongst all subplots.
		
		sharey : bool
		  If True, the Y axis will be shared amongst all subplots.
		
		squeeze : bool
		
		  If True, extra dimensions are squeezed out from the returned axis object:
		    - if only one subplot is constructed (nrows=ncols=1), the resulting
		    single Axis object is returned as a scalar.
		    - for Nx1 or 1xN subplots, the returned object is a 1-d numpy object
		    array of Axis objects are returned as numpy 1-d arrays.
		    - for NxM subplots with N>1 and M>1 are returned as a 2d array.
		
		  If False, no squeezing at all is done: the returned axis object is always
		  a 2-d array containing Axis instances, even if it ends up being 1x1.
		
		subplot_kw : dict
		  Dict with keywords passed to the add_subplot() call used to create each
		  subplots.
		
		ax : Matplotlib axis object, optional
		
		layout : tuple
		  Number of rows and columns of the subplot grid.
		  If not specified, calculated from naxes and layout_type
		
		layout_type : {'box', 'horziontal', 'vertical'}, default 'box'
		  Specify how to layout the subplot grid.
		
		fig_kw : Other keyword arguments to be passed to the figure() call.
		    Note that all keywords not recognized above will be
		    automatically included here.
		
		Returns:
		
		fig, ax : tuple
		  - fig is the Matplotlib Figure object
		  - ax can be either a single axis object or an array of axis objects if
		  more than one subplot was created.  The dimensions of the resulting array
		  can be controlled with the squeeze keyword, see above.
		
		**Examples:**
		
		x = np.linspace(0, 2*np.pi, 400)
		y = np.sin(x**2)
		
		# Just a figure and one subplot
		f, ax = plt.subplots()
		ax.plot(x, y)
		ax.set_title('Simple plot')
		
		# Two subplots, unpack the output array immediately
		f, (ax1, ax2) = plt.subplots(1, 2, sharey=True)
		ax1.plot(x, y)
		ax1.set_title('Sharing Y axis')
		ax2.scatter(x, y)
		
		# Four polar axes
		plt.subplots(2, 2, subplot_kw=dict(polar=True))
	**/
	static public function _subplots(?naxes:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?squeeze:Dynamic, ?subplot_kw:Dynamic, ?ax:Dynamic, ?layout:Dynamic, ?layout_type:Dynamic, ?fig_kw:python.KwArgs<Dynamic>):Dynamic;
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
		return_type : {'axes', 'dict', 'both'}, default 'dict'
		    The kind of object to return. 'dict' returns a dictionary
		    whose values are the matplotlib Lines of the boxplot;
		    'axes' returns the matplotlib axes the boxplot is drawn on;
		    'both' returns a namedtuple with the axes and dict.
		
		    When grouping with ``by``, a dict mapping columns to ``return_type``
		    is returned.
		
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
		Make box plots from DataFrameGroupBy data.
		
		Parameters
		----------
		grouped : Grouped DataFrame
		subplots :
		    * ``False`` - no subplots will be used
		    * ``True`` - create a subplot for each group
		column : column name or list of names, or vector
		    Can be any valid input to groupby
		fontsize : int or string
		rot : label rotation angle
		grid : Setting this to True will show the grid
		ax : Matplotlib axis object, default None
		figsize : A tuple (width, height) in inches
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		kwds : other plotting keyword arguments to be passed to matplotlib boxplot
		       function
		
		Returns
		-------
		dict of key/value = group key/DataFrame.boxplot return value
		or DataFrame.boxplot return value in case subplots=figures=False
		
		Examples
		--------
		>>> import pandas
		>>> import numpy as np
		>>> import itertools
		>>>
		>>> tuples = [t for t in itertools.product(range(1000), range(4))]
		>>> index = pandas.MultiIndex.from_tuples(tuples, names=['lvl0', 'lvl1'])
		>>> data = np.random.randn(len(index),4)
		>>> df = pandas.DataFrame(data, columns=list('ABCD'), index=index)
		>>>
		>>> grouped = df.groupby(level='lvl1')
		>>> boxplot_frame_groupby(grouped)
		>>>
		>>> grouped = df.unstack(level='lvl1').groupby(level=0, axis=1)
		>>> boxplot_frame_groupby(grouped, subplots=False)
	**/
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var colors : Dynamic;
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
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of prefered argument in function
		mapping : dict or callable
		    If mapping is present, use it to translate old arguments to
		    new arguments. A callable must do its own value checking;
		    values not found in a dict will be forwarded unchanged.
		
		Examples
		--------
		The following deprecates 'cols', using 'columns' instead
		
		>>> @deprecate_kwarg(old_arg_name='cols', new_arg_name='columns')
		... def f(columns=''):
		...     print(columns)
		...
		>>> f(columns='should work ok')
		should work ok
		>>> f(cols='should raise warning')
		FutureWarning: cols is deprecated, use columns instead
		  warnings.warn(msg, FutureWarning)
		should raise warning
		>>> f(cols='should error', columns="can't pass do both")
		TypeError: Can only specify 'cols' or 'columns', not both
		>>> @deprecate_kwarg('old', 'new', {'yes': True, 'no': False})
		... def f(new=False):
		...     print('yes!' if new else 'no!')
		...
		>>> f(old='yes')
		FutureWarning: old='yes' is deprecated, use new=True instead
		  warnings.warn(msg, FutureWarning)
		yes!
	**/
	static public function deprecate_kwarg(old_arg_name:Dynamic, new_arg_name:Dynamic, ?mapping:Dynamic, ?stacklevel:Dynamic):Dynamic;
	static public var df_ax : Dynamic;
	static public var df_coord : Dynamic;
	static public var df_kind : Dynamic;
	static public var df_note : Dynamic;
	static public var df_unique : Dynamic;
	static public var division : Dynamic;
	static public function format_date_labels(ax:Dynamic, rot:Dynamic):Dynamic;
	/**
		Grouped histogram
		
		Parameters
		----------
		data: Series/DataFrame
		column: object, optional
		by: object, optional
		ax: axes, optional
		bins: int, default 50
		figsize: tuple, optional
		layout: optional
		sharex: boolean, default False
		sharey: boolean, default False
		rot: int, default 90
		grid: bool, default True
		kwargs: dict, keyword arguments passed to matplotlib.Axes.hist
		
		Returns
		-------
		axes: collection of Matplotlib Axes
	**/
	static public function grouped_hist(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?bins:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw histogram of the DataFrame's series using matplotlib / pylab.
		
		Parameters
		----------
		data : DataFrame
		column : string or sequence
		    If passed, will be used to limit data to a subset of columns
		by : object, optional
		    If passed, then used to form histograms for separate groups
		grid : boolean, default True
		    Whether to show axis grid lines
		xlabelsize : int, default None
		    If specified changes the x-axis label size
		xrot : float, default None
		    rotation of x axis labels
		ylabelsize : int, default None
		    If specified changes the y-axis label size
		yrot : float, default None
		    rotation of y axis labels
		ax : matplotlib axes object, default None
		sharex : boolean, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in; Be aware, that passing in both an ax and sharex=True
		    will alter all x axis labels for all subplots in a figure!
		sharey : boolean, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible
		figsize : tuple
		    The size of the figure to create in inches by default
		layout: (optional) a tuple (rows, columns) for the layout of the histograms
		bins: integer, default 10
		    Number of histogram bins to be used
		kwds : other plotting keyword arguments
		    To be passed to hist function
	**/
	static public function hist_frame(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?ax:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw histogram of the input series using matplotlib
		
		Parameters
		----------
		by : object, optional
		    If passed, then used to form histograms for separate groups
		ax : matplotlib axis object
		    If not passed, uses gca()
		grid : boolean, default True
		    Whether to show axis grid lines
		xlabelsize : int, default None
		    If specified changes the x-axis label size
		xrot : float, default None
		    rotation of x axis labels
		ylabelsize : int, default None
		    If specified changes the y-axis label size
		yrot : float, default None
		    rotation of y axis labels
		figsize : tuple, default None
		    figure size in inches by default
		bins: integer, default 10
		    Number of histogram bins to be used
		kwds : keywords
		    To be passed to the actual plotting function
		
		Notes
		-----
		See matplotlib documentation online for more on this
	**/
	static public function hist_series(self:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?figsize:Dynamic, ?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
	static public function lmap(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var mpl_stylesheet : Dynamic;
	/**
		Returns a new subclass of tuple with named fields.
		
		>>> Point = namedtuple('Point', ['x', 'y'])
		>>> Point.__doc__                   # docstring for the new class
		'Point(x, y)'
		>>> p = Point(11, y=22)             # instantiate with positional args or keywords
		>>> p[0] + p[1]                     # indexable like a plain tuple
		33
		>>> x, y = p                        # unpack like a regular tuple
		>>> x, y
		(11, 22)
		>>> p.x + p.y                       # fields also accessible by name
		33
		>>> d = p._asdict()                 # convert to a dictionary
		>>> d['x']
		11
		>>> Point(**d)                      # convert from a dictionary
		Point(x=11, y=22)
		>>> p._replace(x=100)               # _replace() is like str.replace() but targets named fields
		Point(x=100, y=22)
	**/
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic):Dynamic;
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
		>>> df = read_csv('https://raw.github.com/pydata/pandas/master'
		                  '/pandas/tests/data/iris.csv')
		>>> parallel_coordinates(df, 'Name', color=('#556270',
		                         '#4ECDC4', '#C7F464'))
		>>> plt.show()
	**/
	static public function parallel_coordinates(frame:Dynamic, class_column:Dynamic, ?cols:Dynamic, ?ax:Dynamic, ?color:Dynamic, ?use_columns:Dynamic, ?xticks:Dynamic, ?colormap:Dynamic, ?axvlines:Dynamic, ?axvlines_kwds:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make plots of DataFrame using matplotlib / pylab.
		
		*New in version 0.17.0:* Each plot kind has a corresponding method on the
		``DataFrame.plot`` accessor:
		``df.plot(kind='line')`` is equivalent to
		``df.plot.line()``.
		
		Parameters
		----------
		data : DataFrame
		x : label or position, default None
		y : label or position, default None
		    Allows plotting of one column versus another
		kind : str
		    - 'line' : line plot (default)
		    - 'bar' : vertical bar plot
		    - 'barh' : horizontal bar plot
		    - 'hist' : histogram
		    - 'box' : boxplot
		    - 'kde' : Kernel Density Estimation plot
		    - 'density' : same as 'kde'
		    - 'area' : area plot
		    - 'pie' : pie plot
		    - 'scatter' : scatter plot
		    - 'hexbin' : hexbin plot
		ax : matplotlib axes object, default None
		subplots : boolean, default False
		    Make separate subplots for each column
		sharex : boolean, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in; Be aware, that passing in both an ax and sharex=True
		    will alter all x axis labels for all axis in a figure!
		sharey : boolean, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible
		layout : tuple (optional)
		    (rows, columns) for the layout of subplots
		figsize : a tuple (width, height) in inches
		use_index : boolean, default True
		    Use index as ticks for x axis
		title : string
		    Title to use for the plot
		grid : boolean, default None (matlab style default)
		    Axis grid lines
		legend : False/True/'reverse'
		    Place legend on axis subplots
		style : list or dict
		    matplotlib line style per column
		logx : boolean, default False
		    Use log scaling on x axis
		logy : boolean, default False
		    Use log scaling on y axis
		loglog : boolean, default False
		    Use log scaling on both x and y axes
		xticks : sequence
		    Values to use for the xticks
		yticks : sequence
		    Values to use for the yticks
		xlim : 2-tuple/list
		ylim : 2-tuple/list
		rot : int, default None
		    Rotation for ticks (xticks for vertical, yticks for horizontal plots)
		fontsize : int, default None
		    Font size for xticks and yticks
		colormap : str or matplotlib colormap object, default None
		    Colormap to select colors from. If string, load colormap with that name
		    from matplotlib.
		colorbar : boolean, optional
		    If True, plot colorbar (only relevant for 'scatter' and 'hexbin' plots)
		position : float
		    Specify relative alignments for bar plot layout.
		    From 0 (left/bottom-end) to 1 (right/top-end). Default is 0.5 (center)
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		table : boolean, Series or DataFrame, default False
		    If True, draw a table using the data in the DataFrame and the data will
		    be transposed to meet matplotlib's default layout.
		    If a Series or DataFrame is passed, use passed data to draw a table.
		yerr : DataFrame, Series, array-like, dict and str
		    See :ref:`Plotting with Error Bars <visualization.errorbars>` for
		    detail.
		xerr : same types as yerr.
		stacked : boolean, default False in line and
		    bar plots, and True in area plot. If True, create stacked plot.
		sort_columns : boolean, default False
		    Sort column names to determine plot ordering
		secondary_y : boolean or sequence, default False
		    Whether to plot on the secondary y-axis
		    If a list/tuple, which columns to plot on secondary y-axis
		mark_right : boolean, default True
		    When using a secondary_y axis, automatically mark the column
		    labels with "(right)" in the legend
		kwds : keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
		
		Notes
		-----
		
		- See matplotlib documentation online for more on this subject
		- If `kind` = 'bar' or 'barh', you can specify relative alignments
		  for bar plot layout by `position` keyword.
		  From 0 (left/bottom-end) to 1 (right/top-end). Default is 0.5 (center)
		- If `kind` = 'scatter' and the argument `c` is the name of a dataframe
		  column, the values of that column are used to color each point.
		- If `kind` = 'hexbin', you can control the size of the bins with the
		  `gridsize` argument. By default, a histogram of the counts around each
		  `(x, y)` point is computed. You can specify alternative aggregations
		  by passing values to the `C` and `reduce_C_function` arguments.
		  `C` specifies the value at each `(x, y)` point and `reduce_C_function`
		  is a function of one argument that reduces all the values in a bin to
		  a single number (e.g. `mean`, `max`, `sum`, `std`).
	**/
	static public function plot_frame(data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?kind:Dynamic, ?ax:Dynamic, ?subplots:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?layout:Dynamic, ?figsize:Dynamic, ?use_index:Dynamic, ?title:Dynamic, ?grid:Dynamic, ?legend:Dynamic, ?style:Dynamic, ?logx:Dynamic, ?logy:Dynamic, ?loglog:Dynamic, ?xticks:Dynamic, ?yticks:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?rot:Dynamic, ?fontsize:Dynamic, ?colormap:Dynamic, ?table:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?secondary_y:Dynamic, ?sort_columns:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var plot_params : Dynamic;
	/**
		Make plots of Series using matplotlib / pylab.
		
		*New in version 0.17.0:* Each plot kind has a corresponding method on the
		``Series.plot`` accessor:
		``s.plot(kind='line')`` is equivalent to
		``s.plot.line()``.
		
		Parameters
		----------
		data : Series
		
		kind : str
		    - 'line' : line plot (default)
		    - 'bar' : vertical bar plot
		    - 'barh' : horizontal bar plot
		    - 'hist' : histogram
		    - 'box' : boxplot
		    - 'kde' : Kernel Density Estimation plot
		    - 'density' : same as 'kde'
		    - 'area' : area plot
		    - 'pie' : pie plot
		
		ax : matplotlib axes object
		    If not passed, uses gca()
		figsize : a tuple (width, height) in inches
		use_index : boolean, default True
		    Use index as ticks for x axis
		title : string
		    Title to use for the plot
		grid : boolean, default None (matlab style default)
		    Axis grid lines
		legend : False/True/'reverse'
		    Place legend on axis subplots
		style : list or dict
		    matplotlib line style per column
		logx : boolean, default False
		    Use log scaling on x axis
		logy : boolean, default False
		    Use log scaling on y axis
		loglog : boolean, default False
		    Use log scaling on both x and y axes
		xticks : sequence
		    Values to use for the xticks
		yticks : sequence
		    Values to use for the yticks
		xlim : 2-tuple/list
		ylim : 2-tuple/list
		rot : int, default None
		    Rotation for ticks (xticks for vertical, yticks for horizontal plots)
		fontsize : int, default None
		    Font size for xticks and yticks
		colormap : str or matplotlib colormap object, default None
		    Colormap to select colors from. If string, load colormap with that name
		    from matplotlib.
		colorbar : boolean, optional
		    If True, plot colorbar (only relevant for 'scatter' and 'hexbin' plots)
		position : float
		    Specify relative alignments for bar plot layout.
		    From 0 (left/bottom-end) to 1 (right/top-end). Default is 0.5 (center)
		layout : tuple (optional)
		    (rows, columns) for the layout of the plot
		table : boolean, Series or DataFrame, default False
		    If True, draw a table using the data in the DataFrame and the data will
		    be transposed to meet matplotlib's default layout.
		    If a Series or DataFrame is passed, use passed data to draw a table.
		yerr : DataFrame, Series, array-like, dict and str
		    See :ref:`Plotting with Error Bars <visualization.errorbars>` for
		    detail.
		xerr : same types as yerr.
		label : label argument to provide to plot
		secondary_y : boolean or sequence of ints, default False
		    If True then y-axis will be on the right
		mark_right : boolean, default True
		    When using a secondary_y axis, automatically mark the column
		    labels with "(right)" in the legend
		kwds : keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
		
		Notes
		-----
		
		- See matplotlib documentation online for more on this subject
		- If `kind` = 'bar' or 'barh', you can specify relative alignments
		  for bar plot layout by `position` keyword.
		  From 0 (left/bottom-end) to 1 (right/top-end). Default is 0.5 (center)
	**/
	static public function plot_series(data:Dynamic, ?kind:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?use_index:Dynamic, ?title:Dynamic, ?grid:Dynamic, ?legend:Dynamic, ?style:Dynamic, ?logx:Dynamic, ?logy:Dynamic, ?loglog:Dynamic, ?xticks:Dynamic, ?yticks:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?rot:Dynamic, ?fontsize:Dynamic, ?colormap:Dynamic, ?table:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?label:Dynamic, ?secondary_y:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a unicode representation.
		
		properly handles nested sequences containing unicode strings
		(unicode(object) does not)
		
		Parameters
		----------
		thing : anything to be formatted
		_nest_lvl : internal use only. pprint_thing() is mutually-recursive
		    with pprint_sequence, this argument is used to keep track of the
		    current nesting level, and limit it.
		escape_chars : list or dict, optional
		    Characters to escape. If a dict is passed the values are the
		    replacements
		default_escapes : bool, default False
		    Whether the input escape characters replaces or adds to the defaults
		max_seq_items : False, int, default None
		    Pass thru to other pretty printers to limit sequence printing
		
		Returns
		-------
		result - unicode object on py2, str on py3. Always Unicode.
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
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
		Return series containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na(series:Dynamic):Dynamic;
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
		Make a scatter plot from two DataFrame columns
		
		Parameters
		----------
		data : DataFrame
		x : Column name for the x-axis values
		y : Column name for the y-axis values
		ax : Matplotlib axis object
		figsize : A tuple (width, height) in inches
		grid : Setting this to True will show the grid
		kwargs : other plotting keyword arguments
		    To be passed to scatter function
		
		Returns
		-------
		fig : matplotlib.Figure
	**/
	static public function scatter_plot(data:Dynamic, x:Dynamic, y:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?grid:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var series_ax : Dynamic;
	static public var series_coord : Dynamic;
	static public var series_kind : Dynamic;
	static public var series_note : Dynamic;
	static public var series_unique : Dynamic;
	static public var string_types : Dynamic;
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