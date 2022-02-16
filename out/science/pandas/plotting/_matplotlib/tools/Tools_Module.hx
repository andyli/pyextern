/* This file is generated, do not edit! */
package pandas.plotting._matplotlib.tools;
@:pythonImport("pandas.plotting._matplotlib.tools") extern class Tools_Module {
	static public function Iterable(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function Sequence(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var TYPE_CHECKING : Dynamic;
	static public var __builtins__ : Dynamic;
	static public var __cached__ : Dynamic;
	static public var __doc__ : Dynamic;
	static public var __file__ : Dynamic;
	static public var __loader__ : Dynamic;
	static public var __name__ : Dynamic;
	static public var __package__ : Dynamic;
	static public var __spec__ : Dynamic;
	static public function _get_layout(nplots:Dynamic, ?layout:Dynamic, ?layout_type:Dynamic):Dynamic;
	/**
		Return whether an axis is externally shared.
		
		Parameters
		----------
		ax1 : matplotlib.axes
		    Axis to query.
		compare_axis : str
		    `"x"` or `"y"` according to whether the X-axis or Y-axis is being
		    compared.
		
		Returns
		-------
		bool
		    `True` if the axis is externally shared. Otherwise `False`.
		
		Notes
		-----
		If two axes with different positions are sharing an axis, they can be
		referred to as *externally* sharing the common axis.
		
		If two axes sharing an axis also have the same position, they can be
		referred to as *internally* sharing the common axis (a.k.a twinning).
		
		_handle_shared_axes() is only interested in axes externally sharing an
		axis, regardless of whether either of the axes is also internally sharing
		with a third axis.
	**/
	static public function _has_externally_shared_axis(ax1:Dynamic, compare_axis:Dynamic):Dynamic;
	static public function _remove_labels_from_axis(axis:Dynamic):Dynamic;
	static public var annotations : Dynamic;
	/**
		Return the ceiling of x as an Integral.
		
		This is the smallest integer >= x.
	**/
	static public function ceil(x:Dynamic):Dynamic;
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
	/**
		Whether fig has constrained_layout enabled.
	**/
	static public function do_adjust_figure(fig:Dynamic):Dynamic;
	/**
		Find the first place in the stack that is not inside pandas
		(tests notwithstanding).
	**/
	static public function find_stack_level():Dynamic;
	static public function flatten_axes(axes:Dynamic):Dynamic;
	static public function format_date_labels(ax:Dynamic, rot:Dynamic):Dynamic;
	static public function get_all_lines(ax:Dynamic):Dynamic;
	static public function get_xlim(lines:Dynamic):Dynamic;
	static public function handle_shared_axes(axarr:Dynamic, nplots:Dynamic, naxes:Dynamic, nrows:Dynamic, ncols:Dynamic, sharex:Dynamic, sharey:Dynamic):Dynamic;
	/**
		Check if the object is list-like.
		
		Objects that are considered list-like are for example Python
		lists, tuples, sets, NumPy arrays, and Pandas Series.
		
		Strings and datetime objects, however, are not considered list-like.
		
		Parameters
		----------
		obj : object
		    Object to check.
		allow_sets : bool, default True
		    If this parameter is False, sets will not be considered list-like.
		
		Returns
		-------
		bool
		    Whether `obj` has list-like properties.
		
		Examples
		--------
		>>> import datetime
		>>> is_list_like([1, 2, 3])
		True
		>>> is_list_like({1, 2, 3})
		True
		>>> is_list_like(datetime.datetime(2017, 1, 1))
		False
		>>> is_list_like("foo")
		False
		>>> is_list_like(1)
		False
		>>> is_list_like(np.array([2]))
		True
		>>> is_list_like(np.array(2))
		False
	**/
	static public function is_list_like(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Call fig.subplots_adjust unless fig has constrained_layout enabled.
	**/
	static public function maybe_adjust_figure(fig:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function set_ticks_props(axes:Dynamic, ?xlabelsize:Dynamic, ?xrot:Dynamic, ?ylabelsize:Dynamic, ?yrot:Dynamic):Dynamic;
	static public function table(ax:Dynamic, data:Dynamic, ?rowLabels:Dynamic, ?colLabels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
}