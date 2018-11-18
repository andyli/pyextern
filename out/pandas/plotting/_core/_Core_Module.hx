/* This file is generated, do not edit! */
package pandas.plotting._core;
@:pythonImport("pandas.plotting._core") extern class _Core_Module {
	static public var _HAS_MPL : Dynamic;
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
	static public function _gca(?rc:Dynamic):Dynamic;
	static public function _gcf():Dynamic;
	static public function _get_all_lines(ax:Dynamic):Dynamic;
	static public function _get_standard_colors(?num_colors:Dynamic, ?colormap:Dynamic, ?color_type:Dynamic, ?color:Dynamic):Dynamic;
	static public function _get_standard_kind(kind:Dynamic):Dynamic;
	static public function _get_xlim(lines:Dynamic):Dynamic;
	static public function _grouped_plot(plotf:Dynamic, data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?numeric_only:Dynamic, ?figsize:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?layout:Dynamic, ?rot:Dynamic, ?ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _grouped_plot_by_column(plotf:Dynamic, data:Dynamic, ?columns:Dynamic, ?by:Dynamic, ?numeric_only:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _handle_shared_axes(axarr:Dynamic, nplots:Dynamic, naxes:Dynamic, nrows:Dynamic, ncols:Dynamic, sharex:Dynamic, sharey:Dynamic):Dynamic;
	static public var _kde_docstring : Dynamic;
	static public var _klasses : Dynamic;
	static public function _mpl_ge_1_3_1():Dynamic;
	static public function _mpl_ge_1_5_0():Dynamic;
	static public function _mpl_ge_2_0_0():Dynamic;
	static public function _plot(data:Dynamic, ?x:Dynamic, ?y:Dynamic, ?subplots:Dynamic, ?ax:Dynamic, ?kind:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public var _plot_klass : Dynamic;
	static public function _raise_if_no_mpl():Dynamic;
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
		
		  If False, no squeezing is done: the returned axis object is always
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
	static public function boxplot_frame(self:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		`**kwds` : Keyword Arguments
		    All other plotting keyword arguments to be passed to
		    matplotlib's boxplot function
		
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
	static public var df_ax : Dynamic;
	static public var df_coord : Dynamic;
	static public var df_kind : Dynamic;
	static public var df_note : Dynamic;
	static public var df_unique : Dynamic;
	static public var division : Dynamic;
	static public function format_date_labels(ax:Dynamic, rot:Dynamic):Dynamic;
	/**
		get_option(pat)
		
		Retrieves the value of the specified option.
		
		Available options:
		
		- compute.[use_bottleneck, use_numexpr]
		- display.[chop_threshold, colheader_justify, column_space, date_dayfirst,
		  date_yearfirst, encoding, expand_frame_repr, float_format]
		- display.html.[border, table_schema, use_mathjax]
		- display.[large_repr]
		- display.latex.[escape, longtable, multicolumn, multicolumn_format, multirow,
		  repr]
		- display.[max_categories, max_columns, max_colwidth, max_info_columns,
		  max_info_rows, max_rows, max_seq_items, memory_usage, multi_sparse,
		  notebook_repr_html, pprint_nest_depth, precision, show_dimensions]
		- display.unicode.[ambiguous_as_wide, east_asian_width]
		- display.[width]
		- html.[border]
		- io.excel.xls.[writer]
		- io.excel.xlsm.[writer]
		- io.excel.xlsx.[writer]
		- io.hdf.[default_format, dropna_table]
		- io.parquet.[engine]
		- mode.[chained_assignment, sim_interactive, use_inf_as_na, use_inf_as_null]
		- plotting.matplotlib.[register_converters]
		
		Parameters
		----------
		pat : str
		    Regexp which should match a single option.
		    Note: partial matches are supported for convenience, but unless you use the
		    full option name (e.g. x.y.z.option_name), your code may break in future
		    versions if new options with similar names are introduced.
		
		Returns
		-------
		result : the value of the option
		
		Raises
		------
		OptionError : if no such option exists
		
		Notes
		-----
		The available options with its descriptions:
		
		compute.use_bottleneck : bool
		    Use the bottleneck library to accelerate if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		
		compute.use_numexpr : bool
		    Use the numexpr library to accelerate computation if it is installed,
		    the default is True
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.chop_threshold : float or None
		    if set to a float value, all float values smaller then the given threshold
		    will be displayed as exactly 0 by repr and friends.
		    [default: None] [currently: None]
		
		display.colheader_justify : 'left'/'right'
		    Controls the justification of column headers. used by DataFrameFormatter.
		    [default: right] [currently: right]
		
		display.column_space No description available.
		    [default: 12] [currently: 12]
		
		display.date_dayfirst : boolean
		    When True, prints and parses dates with the day first, eg 20/01/2005
		    [default: False] [currently: False]
		
		display.date_yearfirst : boolean
		    When True, prints and parses dates with the year first, eg 2005/01/20
		    [default: False] [currently: False]
		
		display.encoding : str/unicode
		    Defaults to the detected encoding of the console.
		    Specifies the encoding to be used for strings returned by to_string,
		    these are generally strings meant to be displayed on the console.
		    [default: UTF-8] [currently: UTF-8]
		
		display.expand_frame_repr : boolean
		    Whether to print out the full DataFrame repr for wide DataFrames across
		    multiple lines, `max_columns` is still respected, but the output will
		    wrap-around across multiple "pages" if its width exceeds `display.width`.
		    [default: True] [currently: True]
		
		display.float_format : callable
		    The callable should accept a floating point number and return
		    a string with the desired format of the number. This is used
		    in some places like SeriesFormatter.
		    See formats.format.EngFormatter for an example.
		    [default: None] [currently: None]
		
		display.html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		
		display.html.table_schema : boolean
		    Whether to publish a Table Schema representation for frontends
		    that support it.
		    (default: False)
		    [default: False] [currently: False]
		
		display.html.use_mathjax : boolean
		    When True, Jupyter notebook will process table contents using MathJax,
		    rendering mathematical expressions enclosed by the dollar symbol.
		    (default: True)
		    [default: True] [currently: True]
		
		display.large_repr : 'truncate'/'info'
		    For DataFrames exceeding max_rows/max_cols, the repr (and HTML repr) can
		    show a truncated table (the default from 0.13), or switch to the view from
		    df.info() (the behaviour in earlier versions of pandas).
		    [default: truncate] [currently: truncate]
		
		display.latex.escape : bool
		    This specifies if the to_latex method of a Dataframe uses escapes special
		    characters.
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.latex.longtable :bool
		    This specifies if the to_latex method of a Dataframe uses the longtable
		    format.
		    Valid values: False,True
		    [default: False] [currently: False]
		
		display.latex.multicolumn : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: True] [currently: True]
		
		display.latex.multicolumn_format : bool
		    This specifies if the to_latex method of a Dataframe uses multicolumns
		    to pretty-print MultiIndex columns.
		    Valid values: False,True
		    [default: l] [currently: l]
		
		display.latex.multirow : bool
		    This specifies if the to_latex method of a Dataframe uses multirows
		    to pretty-print MultiIndex rows.
		    Valid values: False,True
		    [default: False] [currently: False]
		
		display.latex.repr : boolean
		    Whether to produce a latex DataFrame representation for jupyter
		    environments that support it.
		    (default: False)
		    [default: False] [currently: False]
		
		display.max_categories : int
		    This sets the maximum number of categories pandas should output when
		    printing out a `Categorical` or a Series of dtype "category".
		    [default: 8] [currently: 8]
		
		display.max_columns : int
		    If max_cols is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the width of the terminal and print a truncated object which fits
		    the screen width. The IPython notebook, IPython qtconsole, or IDLE
		    do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 0] [currently: 0]
		
		display.max_colwidth : int
		    The maximum width in characters of a column in the repr of
		    a pandas data structure. When the column overflows, a "..."
		    placeholder is embedded in the output.
		    [default: 50] [currently: 50]
		
		display.max_info_columns : int
		    max_info_columns is used in DataFrame.info method to decide if
		    per column information will be printed.
		    [default: 100] [currently: 100]
		
		display.max_info_rows : int or None
		    df.info() will usually show null-counts for each column.
		    For large frames this can be quite slow. max_info_rows and max_info_cols
		    limit this null check only to frames with smaller dimensions than
		    specified.
		    [default: 1690785] [currently: 1690785]
		
		display.max_rows : int
		    If max_rows is exceeded, switch to truncate view. Depending on
		    `large_repr`, objects are either centrally truncated or printed as
		    a summary view. 'None' value means unlimited.
		
		    In case python/IPython is running in a terminal and `large_repr`
		    equals 'truncate' this can be set to 0 and pandas will auto-detect
		    the height of the terminal and print a truncated object which fits
		    the screen height. The IPython notebook, IPython qtconsole, or
		    IDLE do not run in a terminal and hence it is not possible to do
		    correct auto-detection.
		    [default: 60] [currently: 60]
		
		display.max_seq_items : int or None
		    when pretty-printing a long sequence, no more then `max_seq_items`
		    will be printed. If items are omitted, they will be denoted by the
		    addition of "..." to the resulting string.
		
		    If set to None, the number of items to be printed is unlimited.
		    [default: 100] [currently: 100]
		
		display.memory_usage : bool, string or None
		    This specifies if the memory usage of a DataFrame should be displayed when
		    df.info() is called. Valid values True,False,'deep'
		    [default: True] [currently: True]
		
		display.multi_sparse : boolean
		    "sparsify" MultiIndex display (don't display repeated
		    elements in outer levels within groups)
		    [default: True] [currently: True]
		
		display.notebook_repr_html : boolean
		    When True, IPython notebook will use html representation for
		    pandas objects (if it is available).
		    [default: True] [currently: True]
		
		display.pprint_nest_depth : int
		    Controls the number of nested levels to process when pretty-printing
		    [default: 3] [currently: 3]
		
		display.precision : int
		    Floating point output precision (number of significant digits). This is
		    only a suggestion
		    [default: 6] [currently: 6]
		
		display.show_dimensions : boolean or 'truncate'
		    Whether to print out dimensions at the end of DataFrame repr.
		    If 'truncate' is specified, only print out the dimensions if the
		    frame is truncated (e.g. not display all rows and/or columns)
		    [default: truncate] [currently: truncate]
		
		display.unicode.ambiguous_as_wide : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		
		display.unicode.east_asian_width : boolean
		    Whether to use the Unicode East Asian Width to calculate the display text
		    width.
		    Enabling this may affect to the performance (default: False)
		    [default: False] [currently: False]
		
		display.width : int
		    Width of the display in characters. In case python/IPython is running in
		    a terminal this can be set to None and pandas will correctly auto-detect
		    the width.
		    Note that the IPython notebook, IPython qtconsole, or IDLE do not run in a
		    terminal and hence it is not possible to correctly detect the width.
		    [default: 80] [currently: 80]
		
		html.border : int
		    A ``border=value`` attribute is inserted in the ``<table>`` tag
		    for the DataFrame HTML repr.
		    [default: 1] [currently: 1]
		    (Deprecated, use `display.html.border` instead.)
		
		io.excel.xls.writer : string
		    The default Excel writer engine for 'xls' files. Available options:
		    auto, xlwt.
		    [default: auto] [currently: auto]
		
		io.excel.xlsm.writer : string
		    The default Excel writer engine for 'xlsm' files. Available options:
		    auto, openpyxl.
		    [default: auto] [currently: auto]
		
		io.excel.xlsx.writer : string
		    The default Excel writer engine for 'xlsx' files. Available options:
		    auto, openpyxl, xlsxwriter.
		    [default: auto] [currently: auto]
		
		io.hdf.default_format : format
		    default format writing format, if None, then
		    put will default to 'fixed' and append will default to 'table'
		    [default: None] [currently: None]
		
		io.hdf.dropna_table : boolean
		    drop ALL nan rows when appending to a table
		    [default: False] [currently: False]
		
		io.parquet.engine : string
		    The default parquet reader/writer engine. Available options:
		    'auto', 'pyarrow', 'fastparquet', the default is 'auto'
		    [default: auto] [currently: auto]
		
		mode.chained_assignment : string
		    Raise an exception, warn, or no action if trying to use chained assignment,
		    The default is warn
		    [default: warn] [currently: warn]
		
		mode.sim_interactive : boolean
		    Whether to simulate interactive mode for purposes of testing
		    [default: False] [currently: False]
		
		mode.use_inf_as_na : boolean
		    True means treat None, NaN, INF, -INF as NA (old way),
		    False means None and NaN are null, but INF, -INF are not NA
		    (new way).
		    [default: False] [currently: False]
		
		mode.use_inf_as_null : boolean
		    use_inf_as_null had been deprecated and will be removed in a future
		    version. Use `use_inf_as_na` instead.
		    [default: False] [currently: False]
		    (Deprecated, use `mode.use_inf_as_na` instead.)
		
		plotting.matplotlib.register_converters : bool
		    Whether to register converters with matplotlib's units registry for
		    dates, times, datetimes, and Periods. Toggling to False will remove
		    the converters, restoring any converters that pandas overwrote.
		    [default: True] [currently: True]
	**/
	static public function get_option(?args:python.VarArgs<Dynamic>, ?kwds:python.KwArgs<Dynamic>):Dynamic;
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
		Make a histogram of the DataFrame's.
		
		A `histogram`_ is a representation of the distribution of data.
		This function calls :meth:`matplotlib.pyplot.hist`, on each series in
		the DataFrame, resulting in one histogram per column.
		
		.. _histogram: https://en.wikipedia.org/wiki/Histogram
		
		Parameters
		----------
		data : DataFrame
		    The pandas object holding the data.
		column : string or sequence
		    If passed, will be used to limit data to a subset of columns.
		by : object, optional
		    If passed, then used to form histograms for separate groups.
		grid : boolean, default True
		    Whether to show axis grid lines.
		xlabelsize : int, default None
		    If specified changes the x-axis label size.
		xrot : float, default None
		    Rotation of x axis labels. For example, a value of 90 displays the
		    x labels rotated 90 degrees clockwise.
		ylabelsize : int, default None
		    If specified changes the y-axis label size.
		yrot : float, default None
		    Rotation of y axis labels. For example, a value of 90 displays the
		    y labels rotated 90 degrees clockwise.
		ax : Matplotlib axes object, default None
		    The axes to plot the histogram on.
		sharex : boolean, default True if ax is None else False
		    In case subplots=True, share x axis and set some x axis labels to
		    invisible; defaults to True if ax is None otherwise False if an ax
		    is passed in.
		    Note that passing in both an ax and sharex=True will alter all x axis
		    labels for all subplots in a figure.
		sharey : boolean, default False
		    In case subplots=True, share y axis and set some y axis labels to
		    invisible.
		figsize : tuple
		    The size in inches of the figure to create. Uses the value in
		    `matplotlib.rcParams` by default.
		layout : tuple, optional
		    Tuple of (rows, columns) for the layout of the histograms.
		bins : integer or sequence, default 10
		    Number of histogram bins to be used. If an integer is given, bins + 1
		    bin edges are calculated and returned. If bins is a sequence, gives
		    bin edges, including left edge of first bin and right edge of last
		    bin. In this case, bins is returned unmodified.
		**kwds
		    All other plotting keyword arguments to be passed to
		    :meth:`matplotlib.pyplot.hist`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or numpy.ndarray of them
		
		See Also
		--------
		matplotlib.pyplot.hist : Plot a histogram using matplotlib.
		
		Examples
		--------
		
		.. plot::
		    :context: close-figs
		
		    This example draws a histogram based on the length and width of
		    some animals, displayed in three bins
		
		    >>> df = pd.DataFrame({
		    ...     'length': [1.5, 0.5, 1.2, 0.9, 3],
		    ...     'width': [0.7, 0.2, 0.15, 0.2, 1.1]
		    ...     }, index= ['pig', 'rabbit', 'duck', 'chicken', 'horse'])
		    >>> hist = df.hist(bins=3)
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
		bins : integer or sequence, default 10
		    Number of histogram bins to be used. If an integer is given, bins + 1
		    bin edges are calculated and returned. If bins is a sequence, gives
		    bin edges, including left edge of first bin and right edge of last
		    bin. In this case, bins is returned unmodified.
		bins: integer, default 10
		    Number of histogram bins to be used
		`**kwds` : keywords
		    To be passed to the actual plotting function
		
		See Also
		--------
		matplotlib.axes.Axes.hist : Plot a histogram using matplotlib.
	**/
	static public function hist_series(self:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?grid:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic, ?figsize:Dynamic, ?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return True if hash(obj) will succeed, False otherwise.
		
		Some types will pass a test against collections.Hashable but fail when they
		are actually hashed with hash().
		
		Distinguish between these and other types by trying the call to hash() and
		seeing if they raise TypeError.
		
		Examples
		--------
		>>> a = ([],)
		>>> isinstance(a, collections.Hashable)
		True
		>>> is_hashable(a)
		False
	**/
	static public function is_hashable(obj:Dynamic):Dynamic;
	static public function is_integer(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Check if the object is an iterator.
		
		For example, lists are considered iterators
		but not strings or datetime objects.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_iter : bool
		    Whether `obj` is an iterator.
		
		Examples
		--------
		>>> is_iterator([1, 2, 3])
		True
		>>> is_iterator(datetime(2017, 1, 1))
		False
		>>> is_iterator("foo")
		False
		>>> is_iterator(1)
		False
	**/
	static public function is_iterator(obj:Dynamic):Bool;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : The object to check.
		
		Returns
		-------
		is_list_like : bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
	**/
	static public function is_list_like(obj:Dynamic):Bool;
	/**
		Check if the object is a number.
		
		Returns True when the object is a number, and False if is not.
		
		Parameters
		----------
		obj : any type
		    The object to check if is a number.
		
		Returns
		-------
		is_number : bool
		    Whether `obj` is a number or not.
		
		See Also
		--------
		pandas.api.types.is_integer: checks a subgroup of numbers
		
		Examples
		--------
		>>> pd.api.types.is_number(1)
		True
		>>> pd.api.types.is_number(7.15)
		True
		
		Booleans are valid because they are int subclass.
		
		>>> pd.api.types.is_number(False)
		True
		
		>>> pd.api.types.is_number("foo")
		False
		>>> pd.api.types.is_number("5")
		False
	**/
	static public function is_number(obj:Dynamic):Bool;
	/**
		Detect missing values for an array-like object.
		
		This function takes a scalar or array-like object and indictates
		whether values are missing (``NaN`` in numeric arrays, ``None`` or ``NaN``
		in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : scalar or array-like
		    Object to check for null or missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is missing.
		
		See Also
		--------
		notna : boolean inverse of pandas.isna.
		Series.isna : Detetct missing values in a Series.
		DataFrame.isna : Detect missing values in a DataFrame.
		Index.isna : Detect missing values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.isna('dog')
		False
		
		>>> pd.isna(np.nan)
		True
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.isna(array)
		array([[False,  True, False],
		       [False, False,  True]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                           "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.isna(index)
		array([False, False,  True, False])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.isna(df)
		       0      1      2
		0  False  False  False
		1  False   True  False
		
		>>> pd.isna(df[1])
		0    False
		1     True
		Name: 1, dtype: bool
	**/
	static public function isna(obj:Dynamic):Dynamic;
	static public function lrange(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	static public function namedtuple(typename:Dynamic, field_names:Dynamic, ?verbose:Dynamic, ?rename:Dynamic, ?module:Dynamic):Dynamic;
	/**
		Detect non-missing values for an array-like object.
		
		This function takes a scalar or array-like object and indictates
		whether values are valid (not missing, which is ``NaN`` in numeric
		arrays, ``None`` or ``NaN`` in object arrays, ``NaT`` in datetimelike).
		
		Parameters
		----------
		obj : array-like or object value
		    Object to check for *not* null or *non*-missing values.
		
		Returns
		-------
		bool or array-like of bool
		    For scalar input, returns a scalar boolean.
		    For array input, returns an array of boolean indicating whether each
		    corresponding element is valid.
		
		See Also
		--------
		isna : boolean inverse of pandas.notna.
		Series.notna : Detetct valid values in a Series.
		DataFrame.notna : Detect valid values in a DataFrame.
		Index.notna : Detect valid values in an Index.
		
		Examples
		--------
		Scalar arguments (including strings) result in a scalar boolean.
		
		>>> pd.notna('dog')
		True
		
		>>> pd.notna(np.nan)
		False
		
		ndarrays result in an ndarray of booleans.
		
		>>> array = np.array([[1, np.nan, 3], [4, 5, np.nan]])
		>>> array
		array([[ 1., nan,  3.],
		       [ 4.,  5., nan]])
		>>> pd.notna(array)
		array([[ True, False,  True],
		       [ True,  True, False]])
		
		For indexes, an ndarray of booleans is returned.
		
		>>> index = pd.DatetimeIndex(["2017-07-05", "2017-07-06", None,
		...                          "2017-07-08"])
		>>> index
		DatetimeIndex(['2017-07-05', '2017-07-06', 'NaT', '2017-07-08'],
		              dtype='datetime64[ns]', freq=None)
		>>> pd.notna(index)
		array([ True,  True, False,  True])
		
		For Series and DataFrame, the same type is returned, containing booleans.
		
		>>> df = pd.DataFrame([['ant', 'bee', 'cat'], ['dog', None, 'fly']])
		>>> df
		     0     1    2
		0  ant   bee  cat
		1  dog  None  fly
		>>> pd.notna(df)
		      0      1     2
		0  True   True  True
		1  True  False  True
		
		>>> pd.notna(df[1])
		0     True
		1    False
		Name: 1, dtype: bool
	**/
	static public function notna(obj:Dynamic):Dynamic;
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
		y : label, position or list of label, positions, default None
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
		title : string or list
		    Title to use for the plot. If a string is passed, print the string at
		    the top of the figure. If a list is passed and `subplots` is True,
		    print each item in the list above the corresponding subplot.
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
		`**kwds` : keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		axes : :class:`matplotlib.axes.Axes` or numpy.ndarray of them
		
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
		title : string or list
		    Title to use for the plot. If a string is passed, print the string at
		    the top of the figure. If a list is passed and `subplots` is True,
		    print each item in the list above the corresponding subplot.
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
		`**kwds` : keywords
		    Options to pass to matplotlib plotting method
		
		Returns
		-------
		axes : :class:`matplotlib.axes.Axes` or numpy.ndarray of them
		
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
		Return array-like containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na_arraylike(arr:Dynamic):Dynamic;
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