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
	static public function _get_marker_compat(marker:Dynamic):Dynamic;
	static public function _get_standard_colors(?num_colors:Dynamic, ?colormap:Dynamic, ?color_type:Dynamic, ?color:Dynamic):Dynamic;
	static public function _set_ticks_props(axes:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic):Dynamic;
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
		Decorator to deprecate a keyword argument of a function
		
		Parameters
		----------
		old_arg_name : str
		    Name of argument in function to deprecate
		new_arg_name : str
		    Name of preferred argument in function
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
	static public var division : Dynamic;
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
	/**
		Replacement for numpy.isfinite / -numpy.isnan which is suitable for use
		on object arrays.
		
		Parameters
		----------
		arr : ndarray or object value
		    Object to check for *not*-null-ness
		
		Returns
		-------
		isnulled : array-like of bool or bool
		    Array or bool indicating whether an object is *not* null or if an array
		    is given which of the element is *not* null.
		
		See also
		--------
		pandas.isnull : boolean inverse of pandas.notnull
	**/
	static public function notnull(obj:Dynamic):Dynamic;
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
}