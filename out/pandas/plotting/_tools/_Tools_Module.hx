/* This file is generated, do not edit! */
package pandas.plotting._tools;
@:pythonImport("pandas.plotting._tools") extern class _Tools_Module {
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _flatten(axes:Dynamic):Dynamic;
	static public function _get_all_lines(ax:Dynamic):Dynamic;
	static public function _get_layout(nplots:Dynamic, ?layout:Dynamic, ?layout_type:Dynamic):Dynamic;
	static public function _get_xlim(lines:Dynamic):Dynamic;
	static public function _handle_shared_axes(axarr:Dynamic, nplots:Dynamic, naxes:Dynamic, nrows:Dynamic, ncols:Dynamic, sharex:Dynamic, sharey:Dynamic):Dynamic;
	static public function _remove_labels_from_axis(axis:Dynamic):Dynamic;
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
		ceil(x)
		
		Return the ceiling of x as an Integral.
		This is the smallest integer >= x.
	**/
	static public function ceil(args:haxe.extern.Rest<Dynamic>):Dynamic;
	static public var division : Dynamic;
	static public function format_date_labels(ax:Dynamic, rot:Dynamic):Dynamic;
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