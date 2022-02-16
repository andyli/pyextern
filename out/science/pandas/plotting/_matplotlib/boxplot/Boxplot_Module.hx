/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.boxplot;
@:pythonImport("pandas.plotting._matplotlib.boxplot") extern class Boxplot_Module {
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _grouped_plot_by_column(plotf:Dynamic, data:Dynamic, ?columns:Dynamic, ?by:Dynamic, ?numeric_only:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?ax:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var annotations : Dynamic;
	static public function boxplot(data:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function boxplot_frame(self:Dynamic, ?column:Dynamic, ?by:Dynamic, ?ax:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?return_type:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function boxplot_frame_groupby(grouped:Dynamic, ?subplots:Dynamic, ?column:Dynamic, ?fontsize:Dynamic, ?rot:Dynamic, ?grid:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?layout:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create data for iteration given `by` is assigned or not, and it is only
		used in both hist and boxplot.
		
		If `by` is assigned, return a dictionary of DataFrames in which the key of
		dictionary is the values in groups.
		If `by` is not assigned, return input as is, and this preserves current
		status of iter_data.
		
		Parameters
		----------
		data : reformatted grouped data from `_compute_plot_data` method.
		kind : str, plot kind. This function is only used for `hist` and `box` plots.
		
		Returns
		-------
		iter_data : DataFrame or Dictionary of DataFrames
		
		Examples
		--------
		If `by` is assigned:
		
		>>> import numpy as np
		>>> tuples = [('h1', 'a'), ('h1', 'b'), ('h2', 'a'), ('h2', 'b')]
		>>> mi = MultiIndex.from_tuples(tuples)
		>>> value = [[1, 3, np.nan, np.nan],
		...          [3, 4, np.nan, np.nan], [np.nan, np.nan, 5, 6]]
		>>> data = DataFrame(value, columns=mi)
		>>> create_iter_data_given_by(data)
		{'h1':     h1
		     a    b
		0  1.0  3.0
		1  3.0  4.0
		2  NaN  NaN, 'h2':     h2
		     a    b
		0  NaN  NaN
		1  NaN  NaN
		2  5.0  6.0}
	**/
	static public function create_iter_data_given_by(data:Dynamic, ?kind:Dynamic):Dynamic;
	/**
		Create a figure with a set of subplots already made.
		
		This utility wrapper makes it convenient to create common layouts of
		subplots, including the enclosing figure object, in a single call.
		
		Parameters
		----------
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
		
		layout_type : {'box', 'horizontal', 'vertical'}, default 'box'
		  Specify how to layout the subplot grid.
		
		fig_kw : Other keyword arguments to be passed to the figure() call.
		    Note that all keywords not recognized above will be
		    automatically included here.
		
		Returns
		-------
		fig, ax : tuple
		  - fig is the Matplotlib Figure object
		  - ax can be either a single axis object or an array of axis objects if
		  more than one subplot was created.  The dimensions of the resulting array
		  can be controlled with the squeeze keyword, see above.
		
		Examples
		--------
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
	static public function create_subplots(naxes:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?squeeze:Dynamic, ?subplot_kw:Dynamic, ?ax:Dynamic, ?layout:Dynamic, ?layout_type:Dynamic, ?fig_kw:python.KwArgs<Dynamic>):python.Tuple<Dynamic>;
	static public function flatten_axes(axes:Dynamic):Dynamic;
	/**
		Get standard colors based on `colormap`, `color_type` or `color` inputs.
		
		Parameters
		----------
		num_colors : int
		    Minimum number of colors to be returned.
		    Ignored if `color` is a dictionary.
		colormap : :py:class:`matplotlib.colors.Colormap`, optional
		    Matplotlib colormap.
		    When provided, the resulting colors will be derived from the colormap.
		color_type : {"default", "random"}, optional
		    Type of colors to derive. Used if provided `color` and `colormap` are None.
		    Ignored if either `color` or `colormap` are not None.
		color : dict or str or sequence, optional
		    Color(s) to be used for deriving sequence of colors.
		    Can be either be a dictionary, or a single color (single color string,
		    or sequence of floats representing a single color),
		    or a sequence of colors.
		
		Returns
		-------
		dict or list
		    Standard colors. Can either be a mapping if `color` was a dictionary,
		    or a list of colors with a length of `num_colors` or more.
		
		Warns
		-----
		UserWarning
		    If both `colormap` and `color` are provided.
		    Parameter `color` will override.
	**/
	static public function get_standard_colors(num_colors:Dynamic, ?colormap:Dynamic, ?color_type:Dynamic, ?color:Dynamic):Dynamic;
	/**
		Check if the object is dict-like.
		
		Parameters
		----------
		obj : The object to check
		
		Returns
		-------
		is_dict_like : bool
		    Whether `obj` has dict-like properties.
		
		Examples
		--------
		>>> is_dict_like({1: 2})
		True
		>>> is_dict_like([1, 2, 3])
		False
		>>> is_dict_like(dict)
		False
		>>> is_dict_like(dict())
		True
	**/
	static public function is_dict_like(obj:Dynamic):Bool;
	/**
		Call fig.subplots_adjust unless fig has constrained_layout enabled.
	**/
	static public function maybe_adjust_figure(fig:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		This function is the sanctioned way of converting objects
		to a string representation and properly handles nested sequences.
		
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
		max_seq_items : int or None, default None
		    Pass through to other pretty printers to limit sequence printing
		
		Returns
		-------
		str
	**/
	static public function pprint_thing(thing:Dynamic, ?_nest_lvl:Dynamic, ?escape_chars:Dynamic, ?default_escapes:Dynamic, ?quote_strings:Dynamic, ?max_seq_items:Dynamic):Dynamic;
	/**
		Return array-like containing only true/non-NaN values, possibly empty.
	**/
	static public function remove_na_arraylike(arr:Dynamic):Dynamic;
	/**
		Set one or more properties on an `.Artist`, or list allowed values.
		
		Parameters
		----------
		obj : `.Artist` or list of `.Artist`
		    The artist(s) whose properties are being set or queried.  When setting
		    properties, all artists are affected; when querying the allowed values,
		    only the first instance in the sequence is queried.
		
		    For example, two lines can be made thicker and red with a single call:
		
		    >>> x = arange(0, 1, 0.01)
		    >>> lines = plot(x, sin(2*pi*x), x, sin(4*pi*x))
		    >>> setp(lines, linewidth=2, color='r')
		
		file : file-like, default: `sys.stdout`
		    Where `setp` writes its output when asked to list allowed values.
		
		    >>> with open('output.log') as file:
		    ...     setp(line, file=file)
		
		    The default, ``None``, means `sys.stdout`.
		
		*args, **kwargs
		    The properties to set.  The following combinations are supported:
		
		    - Set the linestyle of a line to be dashed:
		
		      >>> line, = plot([1, 2, 3])
		      >>> setp(line, linestyle='--')
		
		    - Set multiple properties at once:
		
		      >>> setp(line, linewidth=2, color='r')
		
		    - List allowed values for a line's linestyle:
		
		      >>> setp(line, 'linestyle')
		      linestyle: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		
		    - List all properties that can be set, and their allowed values:
		
		      >>> setp(line)
		      agg_filter: a filter function, ...
		      [long output listing omitted]
		
		    `setp` also supports MATLAB style string/value pairs.  For example, the
		    following are equivalent:
		
		    >>> setp(lines, 'linewidth', 2, 'color', 'r')  # MATLAB style
		    >>> setp(lines, linewidth=2, color='r')        # Python style
		
		See Also
		--------
		getp
	**/
	static public function setp(obj:Dynamic, ?args:python.VarArgs<Dynamic>, ?file:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}