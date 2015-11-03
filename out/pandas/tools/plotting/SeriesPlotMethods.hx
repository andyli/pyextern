/* This file is generated, do not edit! */
package pandas.tools.plotting;
@:pythonImport("pandas.tools.plotting", "SeriesPlotMethods") extern class SeriesPlotMethods {
	/**
		Return a string representation for a particular object.
		
		Invoked by bytes(obj) in py3 only.
		Yields a bytestring in both py2/py3.
	**/
	public function __bytes__():Dynamic;
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
		    See :ref:`Plotting with Error Bars <visualization.errorbars>` for detail.
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
	public function __call__(?kind:Dynamic, ?ax:Dynamic, ?figsize:Dynamic, ?use_index:Dynamic, ?title:Dynamic, ?grid:Dynamic, ?legend:Dynamic, ?style:Dynamic, ?logx:Dynamic, ?logy:Dynamic, ?loglog:Dynamic, ?xticks:Dynamic, ?yticks:Dynamic, ?xlim:Dynamic, ?ylim:Dynamic, ?rot:Dynamic, ?fontsize:Dynamic, ?colormap:Dynamic, ?table:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?label:Dynamic, ?secondary_y:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Provide method name lookup and completion
		Only provide 'public' methods
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		default object formatter
	**/
	public function __format__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return self>=value.
	**/
	public function __ge__(value:Dynamic):Dynamic;
	/**
		Return getattr(self, name).
	**/
	public function __getattribute__(name:Dynamic):Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(data:Dynamic):Dynamic;
	/**
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	public function new(data:Dynamic):Void;
	/**
		Return self<=value.
	**/
	public function __le__(value:Dynamic):Dynamic;
	/**
		Return self<value.
	**/
	public function __lt__(value:Dynamic):Dynamic;
	static public var __module__ : Dynamic;
	/**
		Return self!=value.
	**/
	public function __ne__(value:Dynamic):Dynamic;
	/**
		Create and return a new object.  See help(type) for accurate signature.
	**/
	static public function __new__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		helper for pickle
	**/
	public function __reduce_ex__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular Object
		
		Invoked by str(df) in both py2/py3.
		Yields Bytestring in Py2, Unicode String in py3.
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return a string representation for a particular object.
		
		Invoked by unicode(obj) in py2 only. Yields a Unicode String in both
		py2/py3.
	**/
	public function __unicode__():Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		class constructor (for this class it's just `__class__`
	**/
	public var _constructor : Dynamic;
	/**
		add addtional __dir__ for this object 
	**/
	public function _dir_additions():Dynamic;
	/**
		delete unwanted __dir__ for this object 
	**/
	public function _dir_deletions():Dynamic;
	/**
		Reset cached properties. If ``key`` is passed, only clears that key.
	**/
	public function _reset_cache(?key:Dynamic):Dynamic;
	/**
		Area plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function area(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Vertical bar plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function bar(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Horizontal bar plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function barh(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Boxplot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function box(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Kernel Density Estimate plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function density(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Histogram
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		bins: integer, default 10
		    Number of histogram bins to be used
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function hist(?bins:Dynamic, ?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Kernel Density Estimate plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function kde(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Line plot
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function line(?kwds:python.KwArgs<Dynamic>):Dynamic;
	/**
		Pie chart
		
		.. versionadded:: 0.17.0
		
		Parameters
		----------
		**kwds : optional
		    Keyword arguments to pass on to :py:meth:`pandas.Series.plot`.
		
		Returns
		-------
		axes : matplotlib.AxesSubplot or np.array of them
	**/
	public function pie(?kwds:python.KwArgs<Dynamic>):Dynamic;
}