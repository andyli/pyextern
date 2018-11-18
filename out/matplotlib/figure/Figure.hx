/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure", "Figure") extern class Figure {
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		__dir__() -> list
		default dir() implementation
	**/
	public function __dir__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
	public function __getstate__():Dynamic;
	/**
		Return self>value.
	**/
	public function __gt__(value:Dynamic):Dynamic;
	/**
		Return hash(self).
	**/
	public function __hash__():Dynamic;
	/**
		Parameters
		----------
		figsize : 2-tuple of floats, default: :rc:`figure.figsize`
		    Figure dimension ``(width, height)`` in inches.
		
		dpi : float, default: :rc:`figure.dpi`
		    Dots per inch.
		
		facecolor : default: :rc:`figure.facecolor`
		    The figure patch facecolor.
		
		edgecolor : default: :rc:`figure.edgecolor`
		    The figure patch edge color.
		
		linewidth : float
		    The linewidth of the frame (i.e. the edge linewidth of the figure
		    patch).
		
		frameon : bool, default: :rc:`figure.frameon`
		    If ``False``, suppress drawing the figure frame.
		
		subplotpars : :class:`SubplotParams`
		    Subplot parameters. If not given, the default subplot
		    parameters :rc:`figure.subplot.*` are used.
		
		tight_layout : bool or dict, default: :rc:`figure.autolayout`
		    If ``False`` use *subplotpars*. If ``True`` adjust subplot
		    parameters using `.tight_layout` with default padding.
		    When providing a dict containing the keys ``pad``, ``w_pad``,
		    ``h_pad``, and ``rect``, the default `.tight_layout` paddings
		    will be overridden.
		
		constrained_layout : bool
		    If ``True`` use constrained layout to adjust positioning of plot
		    elements.  Like ``tight_layout``, but designed to be more
		    flexible.  See
		    :doc:`/tutorials/intermediate/constrainedlayout_guide`
		    for examples.  (Note: does not work with :meth:`.subplot` or
		    :meth:`.subplot2grid`.)
		    Defaults to :rc:`figure.constrained_layout.use`.
	**/
	@:native("__init__")
	public function ___init__(?figsize:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?frameon:Dynamic, ?subplotpars:Dynamic, ?tight_layout:Dynamic, ?constrained_layout:Dynamic):Dynamic;
	/**
		Parameters
		----------
		figsize : 2-tuple of floats, default: :rc:`figure.figsize`
		    Figure dimension ``(width, height)`` in inches.
		
		dpi : float, default: :rc:`figure.dpi`
		    Dots per inch.
		
		facecolor : default: :rc:`figure.facecolor`
		    The figure patch facecolor.
		
		edgecolor : default: :rc:`figure.edgecolor`
		    The figure patch edge color.
		
		linewidth : float
		    The linewidth of the frame (i.e. the edge linewidth of the figure
		    patch).
		
		frameon : bool, default: :rc:`figure.frameon`
		    If ``False``, suppress drawing the figure frame.
		
		subplotpars : :class:`SubplotParams`
		    Subplot parameters. If not given, the default subplot
		    parameters :rc:`figure.subplot.*` are used.
		
		tight_layout : bool or dict, default: :rc:`figure.autolayout`
		    If ``False`` use *subplotpars*. If ``True`` adjust subplot
		    parameters using `.tight_layout` with default padding.
		    When providing a dict containing the keys ``pad``, ``w_pad``,
		    ``h_pad``, and ``rect``, the default `.tight_layout` paddings
		    will be overridden.
		
		constrained_layout : bool
		    If ``True`` use constrained layout to adjust positioning of plot
		    elements.  Like ``tight_layout``, but designed to be more
		    flexible.  See
		    :doc:`/tutorials/intermediate/constrainedlayout_guide`
		    for examples.  (Note: does not work with :meth:`.subplot` or
		    :meth:`.subplot2grid`.)
		    Defaults to :rc:`figure.constrained_layout.use`.
	**/
	public function new(?figsize:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?frameon:Dynamic, ?subplotpars:Dynamic, ?tight_layout:Dynamic, ?constrained_layout:Dynamic):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	public function __init_subclass__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		Return repr(self).
	**/
	public function __repr__():Dynamic;
	/**
		Implement setattr(self, name, value).
	**/
	public function __setattr__(name:Dynamic, value:Dynamic):Dynamic;
	public function __setstate__(state:Dynamic):Dynamic;
	/**
		__sizeof__() -> int
		size of object in memory, in bytes
	**/
	public function __sizeof__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Return str(self).
	**/
	public function __str__():Dynamic;
	/**
		Abstract classes can override this to customize issubclass().
		
		This is invoked early on by abc.ABCMeta.__subclasscheck__().
		It should return True, False or NotImplemented.  If it returns
		NotImplemented, the normal algorithm is used.  Otherwise, it
		overrides the normal algorithm (and the outcome is cached).
	**/
	public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	/**
		Helper for :func:`~matplotlib.pyplot.gci`. Do not use elsewhere.
	**/
	public function _gci():Dynamic;
	public function _get_axes():Dynamic;
	public function _get_dpi():Dynamic;
	/**
		Make a hashable key out of args and kwargs.
	**/
	public function _make_key(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public var _prop_order : Dynamic;
	public function _remove_ax(ax:Dynamic):Dynamic;
	public function _repr_html_():Dynamic;
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Parameters
		----------
		dpi : float
		
		forward : bool
		    Passed on to `~.Figure.set_size_inches`
	**/
	public function _set_dpi(dpi:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Add any :class:`~matplotlib.artist.Artist` to the figure.
		
		Usually artists are added to axes objects using
		:meth:`matplotlib.axes.Axes.add_artist`, but use this method in the
		rare cases that adding directly to the figure is necessary.
		
		Parameters
		----------
		artist : `~matplotlib.artist.Artist`
		    The artist to add to the figure. If the added artist has no
		    transform previously set, its transform will be set to
		    ``figure.transFigure``.
		clip : bool, optional, default ``False``
		    An optional parameter ``clip`` determines whether the added artist
		    should be clipped by the figure patch. Default is *False*,
		    i.e. no clipping.
		
		Returns
		-------
		artist : The added `~matplotlib.artist.Artist`
	**/
	public function add_artist(artist:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		Add an axes to the figure.
		
		Call signatures::
		
		    add_axes(rect, projection=None, polar=False, **kwargs)
		    add_axes(ax)
		
		Parameters
		----------
		
		rect : sequence of float
		    The dimensions [left, bottom, width, height] of the new axes. All
		    quantities are in fractions of figure width and height.
		
		projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
		    The projection type of the `~.axes.Axes`. *str* is the name of
		    a custom projection, see `~matplotlib.projections`. The default
		    None results in a 'rectilinear' projection.
		
		polar : boolean, optional
		    If True, equivalent to projection='polar'.
		
		sharex, sharey : `~.axes.Axes`, optional
		    Share the x or y `~matplotlib.axis` with sharex and/or sharey.
		    The axis will have the same limits, ticks, and scale as the axis
		    of the shared axes.
		
		label : str
		    A label for the returned axes.
		
		Other Parameters
		----------------
		**kwargs
		    This method also takes the keyword arguments for
		    the returned axes class. The keyword arguments for the
		    rectilinear axes class `~.axes.Axes` can be found in
		    the following table but there might also be other keyword
		    arguments if another projection is used, see the actual axes
		    class.
		      adjustable: {'box', 'datalim'}
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  anchor: 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		  animated: bool
		  aspect: {'auto', 'equal'} or num
		  autoscale_on: bool
		  autoscalex_on: bool
		  autoscaley_on: bool
		  axes_locator: Callable[[Axes, Renderer], Bbox]
		  axisbelow: bool or 'line'
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None] 
		  contains: callable
		  facecolor: color
		  fc: color
		  figure: `.Figure`
		  frame_on: bool
		  gid: str
		  in_layout: bool
		  label: object
		  navigate: bool
		  navigate_mode: unknown
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		  rasterization_zorder: float or None
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  title: str
		  transform: `.Transform`
		  url: str
		  visible: bool
		  xbound: unknown
		  xlabel: str
		  xlim: (left: float, right: float)
		  xmargin: float greater than -0.5
		  xscale: {"linear", "log", "symlog", "logit", ...}
		  xticklabels: List[str]
		  xticks: list
		  ybound: unknown
		  ylabel: str
		  ylim: (bottom: float, top: float)
		  ymargin: float greater than -0.5
		  yscale: {"linear", "log", "symlog", "logit", ...}
		  yticklabels: List[str]
		  yticks: list
		  zorder: float
		
		Returns
		-------
		axes : `~.axes.Axes` (or a subclass of `~.axes.Axes`)
		    The returned axes class depends on the projection used. It is
		    `~.axes.Axes` if rectilinear projection are used and
		    `.projections.polar.PolarAxes` if polar projection
		    are used.
		
		Notes
		-----
		If the figure already has an axes with key (*args*,
		*kwargs*) then it will simply make that axes current and
		return it.  This behavior is deprecated. Meanwhile, if you do
		not want this behavior (i.e., you want to force the creation of a
		new axes), you must use a unique set of args and kwargs.  The axes
		*label* attribute has been exposed for this purpose: if you want
		two axes that are otherwise identical to be added to the figure,
		make sure you give them unique labels.
		
		In rare circumstances, `.add_axes` may be called with a single
		argument, a axes instance already created in the present figure but
		not in the figure's list of axes.
		
		See Also
		--------
		.Figure.add_subplot
		.pyplot.subplot
		.pyplot.axes
		.Figure.subplots
		.pyplot.subplots
		
		Examples
		--------
		Some simple examples::
		
		    rect = l, b, w, h
		    fig = plt.figure(1)
		    fig.add_axes(rect,label=label1)
		    fig.add_axes(rect,label=label2)
		    fig.add_axes(rect, frameon=False, facecolor='g')
		    fig.add_axes(rect, polar=True)
		    ax=fig.add_axes(rect, projection='polar')
		    fig.delaxes(ax)
		    fig.add_axes(ax)
	**/
	public function add_axes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Whenever the axes state change, ``func(self)`` will be called.
	**/
	public function add_axobserver(func:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Return a `.GridSpec` that has this figure as a parent.  This allows
		complex layout of axes in the figure.
		
		Parameters
		----------
		nrows : int
		    Number of rows in grid.
		
		ncols : int
		    Number or columns in grid.
		
		Returns
		-------
		gridspec : `.GridSpec`
		
		Other Parameters
		----------------
		*kwargs* are passed to `.GridSpec`.
		
		See Also
		--------
		matplotlib.pyplot.subplots
		
		Examples
		--------
		Adding a subplot that spans two rows::
		
		    fig = plt.figure()
		    gs = fig.add_gridspec(2, 2)
		    ax1 = fig.add_subplot(gs[0, 0])
		    ax2 = fig.add_subplot(gs[1, 0])
		    # spans two rows:
		    ax3 = fig.add_subplot(gs[:, 1])
	**/
	public function add_gridspec(nrows:Dynamic, ncols:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an `~.axes.Axes` to the figure as part of a subplot arrangement.
		
		Call signatures::
		
		   add_subplot(nrows, ncols, index, **kwargs)
		   add_subplot(pos, **kwargs)
		   add_subplot(ax)
		
		Parameters
		----------
		*args
		    Either a 3-digit integer or three separate integers
		    describing the position of the subplot. If the three
		    integers are *nrows*, *ncols*, and *index* in order, the
		    subplot will take the *index* position on a grid with *nrows*
		    rows and *ncols* columns. *index* starts at 1 in the upper left
		    corner and increases to the right.
		
		    *pos* is a three digit integer, where the first digit is the
		    number of rows, the second the number of columns, and the third
		    the index of the subplot. i.e. fig.add_subplot(235) is the same as
		    fig.add_subplot(2, 3, 5). Note that all integers must be less than
		    10 for this form to work.
		
		projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
		    The projection type of the subplot (`~.axes.Axes`). *str* is the
		    name of a custom projection, see `~matplotlib.projections`. The
		    default None results in a 'rectilinear' projection.
		
		polar : boolean, optional
		    If True, equivalent to projection='polar'.
		
		sharex, sharey : `~.axes.Axes`, optional
		    Share the x or y `~matplotlib.axis` with sharex and/or sharey.
		    The axis will have the same limits, ticks, and scale as the axis
		    of the shared axes.
		
		label : str
		    A label for the returned axes.
		
		Other Parameters
		----------------
		**kwargs
		    This method also takes the keyword arguments for
		    the returned axes base class. The keyword arguments for the
		    rectilinear base class `~.axes.Axes` can be found in
		    the following table but there might also be other keyword
		    arguments if another projection is used.
		      adjustable: {'box', 'datalim'}
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  anchor: 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		  animated: bool
		  aspect: {'auto', 'equal'} or num
		  autoscale_on: bool
		  autoscalex_on: bool
		  autoscaley_on: bool
		  axes_locator: Callable[[Axes, Renderer], Bbox]
		  axisbelow: bool or 'line'
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None] 
		  contains: callable
		  facecolor: color
		  fc: color
		  figure: `.Figure`
		  frame_on: bool
		  gid: str
		  in_layout: bool
		  label: object
		  navigate: bool
		  navigate_mode: unknown
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		  rasterization_zorder: float or None
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  title: str
		  transform: `.Transform`
		  url: str
		  visible: bool
		  xbound: unknown
		  xlabel: str
		  xlim: (left: float, right: float)
		  xmargin: float greater than -0.5
		  xscale: {"linear", "log", "symlog", "logit", ...}
		  xticklabels: List[str]
		  xticks: list
		  ybound: unknown
		  ylabel: str
		  ylim: (bottom: float, top: float)
		  ymargin: float greater than -0.5
		  yscale: {"linear", "log", "symlog", "logit", ...}
		  yticklabels: List[str]
		  yticks: list
		  zorder: float
		
		Returns
		-------
		axes : an `.axes.SubplotBase` subclass of `~.axes.Axes` (or a                subclass of `~.axes.Axes`)
		
		    The axes of the subplot. The returned axes base class depends on
		    the projection used. It is `~.axes.Axes` if rectilinear projection
		    are used and `.projections.polar.PolarAxes` if polar projection
		    are used. The returned axes is then a subplot subclass of the
		    base class.
		
		Notes
		-----
		If the figure already has a subplot with key (*args*,
		*kwargs*) then it will simply make that subplot current and
		return it.  This behavior is deprecated. Meanwhile, if you do
		not want this behavior (i.e., you want to force the creation of a
		new suplot), you must use a unique set of args and kwargs.  The axes
		*label* attribute has been exposed for this purpose: if you want
		two subplots that are otherwise identical to be added to the figure,
		make sure you give them unique labels.
		
		In rare circumstances, `.add_subplot` may be called with a single
		argument, a subplot axes instance already created in the
		present figure but not in the figure's list of axes.
		
		See Also
		--------
		.Figure.add_axes
		.pyplot.subplot
		.pyplot.axes
		.Figure.subplots
		.pyplot.subplots
		
		Examples
		--------
		::
		
		    fig=plt.figure(1)
		    fig.add_subplot(221)
		
		    # equivalent but more general
		    ax1=fig.add_subplot(2, 2, 1)
		
		    # add a subplot with no frame
		    ax2=fig.add_subplot(222, frameon=False)
		
		    # add a polar subplot
		    fig.add_subplot(223, projection='polar')
		
		    # add a red subplot that share the x-axis with ax1
		    fig.add_subplot(224, sharex=ax1, facecolor='red')
		
		    #delete x2 from the figure
		    fig.delaxes(ax2)
		
		    #add x2 to the figure again
		    fig.add_subplot(ax2)
	**/
	public function add_subplot(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Align the xlabels and ylabels of subplots with the same subplots
		row or column (respectively) if label alignment is being
		done automatically (i.e. the label position is not manually set).
		
		Alignment persists for draw events after this is called.
		
		Parameters
		----------
		axs : list of `~matplotlib.axes.Axes`
		    Optional list (or ndarray) of `~matplotlib.axes.Axes`
		    to align the labels.
		    Default is to align all axes on the figure.
		
		See Also
		--------
		matplotlib.figure.Figure.align_xlabels
		
		matplotlib.figure.Figure.align_ylabels
	**/
	public function align_labels(?axs:Dynamic):Dynamic;
	/**
		Align the ylabels of subplots in the same subplot column if label
		alignment is being done automatically (i.e. the label position is
		not manually set).
		
		Alignment persists for draw events after this is called.
		
		If a label is on the bottom, it is aligned with labels on axes that
		also have their label on the bottom and that have the same
		bottom-most subplot row.  If the label is on the top,
		it is aligned with labels on axes with the same top-most row.
		
		Parameters
		----------
		axs : list of `~matplotlib.axes.Axes`
		    Optional list of (or ndarray) `~matplotlib.axes.Axes`
		    to align the xlabels.
		    Default is to align all axes on the figure.
		
		See Also
		--------
		matplotlib.figure.Figure.align_ylabels
		
		matplotlib.figure.Figure.align_labels
		
		Notes
		-----
		This assumes that ``axs`` are from the same `.GridSpec`, so that
		their `.SubplotSpec` positions correspond to figure positions.
		
		Examples
		--------
		Example with rotated xtick labels::
		
		    fig, axs = plt.subplots(1, 2)
		    for tick in axs[0].get_xticklabels():
		        tick.set_rotation(55)
		    axs[0].set_xlabel('XLabel 0')
		    axs[1].set_xlabel('XLabel 1')
		    fig.align_xlabels()
	**/
	public function align_xlabels(?axs:Dynamic):Dynamic;
	/**
		Align the ylabels of subplots in the same subplot column if label
		alignment is being done automatically (i.e. the label position is
		not manually set).
		
		Alignment persists for draw events after this is called.
		
		If a label is on the left, it is aligned with labels on axes that
		also have their label on the left and that have the same
		left-most subplot column.  If the label is on the right,
		it is aligned with labels on axes with the same right-most column.
		
		Parameters
		----------
		axs : list of `~matplotlib.axes.Axes`
		    Optional list (or ndarray) of `~matplotlib.axes.Axes`
		    to align the ylabels.
		    Default is to align all axes on the figure.
		
		See Also
		--------
		matplotlib.figure.Figure.align_xlabels
		
		matplotlib.figure.Figure.align_labels
		
		Notes
		-----
		This assumes that ``axs`` are from the same `.GridSpec`, so that
		their `.SubplotSpec` positions correspond to figure positions.
		
		Examples
		--------
		Example with large yticks labels::
		
		    fig, axs = plt.subplots(2, 1)
		    axs[0].plot(np.arange(0, 1000, 50))
		    axs[0].set_ylabel('YLabel 0')
		    axs[1].set_ylabel('YLabel 1')
		    fig.align_ylabels()
	**/
	public function align_ylabels(?axs:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		Date ticklabels often overlap, so it is useful to rotate them
		and right align them.  Also, a common use case is a number of
		subplots with shared xaxes where the x-axis is date data.  The
		ticklabels are often long, and it helps to rotate them on the
		bottom subplot and turn them off on other subplots, as well as
		turn off xlabels.
		
		Parameters
		----------
		bottom : scalar
		    The bottom of the subplots for :meth:`subplots_adjust`.
		
		rotation : angle in degrees
		    The rotation of the xtick labels.
		
		ha : string
		    The horizontal alignment of the xticklabels.
		
		which : {None, 'major', 'minor', 'both'}
		    Selects which ticklabels to rotate. Default is None which works
		    the same as major.
	**/
	public function autofmt_xdate(?bottom:Dynamic, ?rotation:Dynamic, ?ha:Dynamic, ?which:Dynamic):Dynamic;
	/**
		List of axes in the Figure. You can access the axes in the Figure through this list. Do not modify the list itself. Instead, use `~Figure.add_axes`, `~.Figure.subplot` or `~.Figure.delaxes` to add or remove an axes.
	**/
	public var axes : Dynamic;
	/**
		Clear the figure -- synonym for :meth:`clf`.
	**/
	public function clear(?keep_observers:Dynamic):Dynamic;
	/**
		Clear the figure.
		
		Set *keep_observers* to True if, for example,
		a gui widget is tracking the axes in the figure.
	**/
	public function clf(?keep_observers:Dynamic):Dynamic;
	/**
		Create a colorbar for a ScalarMappable instance, *mappable*.
		
		Documentation for the pyplot thin wrapper:
		
		
		Add a colorbar to a plot.
		
		Function signatures for the :mod:`~matplotlib.pyplot` interface; all
		but the first are also method signatures for the
		:meth:`~matplotlib.figure.Figure.colorbar` method::
		
		  colorbar(**kwargs)
		  colorbar(mappable, **kwargs)
		  colorbar(mappable, cax=cax, **kwargs)
		  colorbar(mappable, ax=ax, **kwargs)
		
		Parameters
		----------
		mappable :
		    The :class:`~matplotlib.image.Image`,
		    :class:`~matplotlib.contour.ContourSet`, etc. to
		    which the colorbar applies; this argument is mandatory for the Figure
		    :meth:`~matplotlib.figure.Figure.colorbar` method but optional for the
		    pyplot :func:`~matplotlib.pyplot.colorbar` function, which sets the
		    default to the current image.
		
		cax : :class:`~matplotlib.axes.Axes` object, optional
		    Axes into which the colorbar will be drawn.
		
		ax : :class:`~matplotlib.axes.Axes`, list of Axes, optional
		    Parent axes from which space for a new colorbar axes will be stolen.
		    If a list of axes is given they will all be resized to make room for the
		    colorbar axes.
		
		use_gridspec : bool, optional
		    If *cax* is ``None``, a new *cax* is created as an instance of
		    Axes. If *ax* is an instance of Subplot and *use_gridspec* is ``True``,
		    *cax* is created as an instance of Subplot using the
		    grid_spec module.
		
		
		Returns
		-------
		:class:`~matplotlib.colorbar.Colorbar` instance
		    See also its base class, :class:`~matplotlib.colorbar.ColorbarBase`.
		    Call the :meth:`~matplotlib.colorbar.ColorbarBase.set_label` method
		    to label the colorbar.
		
		Notes
		-----
		Additional keyword arguments are of two kinds:
		
		  axes properties:
		
		
		    ============= ====================================================
		    Property      Description
		    ============= ====================================================
		    *orientation* vertical or horizontal
		    *fraction*    0.15; fraction of original axes to use for colorbar
		    *pad*         0.05 if vertical, 0.15 if horizontal; fraction
		                  of original axes between colorbar and new image axes
		    *shrink*      1.0; fraction by which to multiply the size of the colorbar
		    *aspect*      20; ratio of long to short dimensions
		    *anchor*      (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal;
		                  the anchor point of the colorbar axes
		    *panchor*     (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal;
		                  the anchor point of the colorbar parent axes. If
		                  False, the parent axes' anchor will be unchanged
		    ============= ====================================================
		
		
		  colorbar properties:
		
		
		    ============  ====================================================
		    Property      Description
		    ============  ====================================================
		    *extend*      [ 'neither' | 'both' | 'min' | 'max' ]
		                  If not 'neither', make pointed end(s) for out-of-
		                  range values.  These are set for a given colormap
		                  using the colormap set_under and set_over methods.
		    *extendfrac*  [ *None* | 'auto' | length | lengths ]
		                  If set to *None*, both the minimum and maximum
		                  triangular colorbar extensions with have a length of
		                  5% of the interior colorbar length (this is the
		                  default setting). If set to 'auto', makes the
		                  triangular colorbar extensions the same lengths as
		                  the interior boxes (when *spacing* is set to
		                  'uniform') or the same lengths as the respective
		                  adjacent interior boxes (when *spacing* is set to
		                  'proportional'). If a scalar, indicates the length
		                  of both the minimum and maximum triangular colorbar
		                  extensions as a fraction of the interior colorbar
		                  length. A two-element sequence of fractions may also
		                  be given, indicating the lengths of the minimum and
		                  maximum colorbar extensions respectively as a
		                  fraction of the interior colorbar length.
		    *extendrect*  bool
		                  If *False* the minimum and maximum colorbar extensions
		                  will be triangular (the default). If *True* the
		                  extensions will be rectangular.
		    *spacing*     [ 'uniform' | 'proportional' ]
		                  Uniform spacing gives each discrete color the same
		                  space; proportional makes the space proportional to
		                  the data interval.
		    *ticks*       [ None | list of ticks | Locator object ]
		                  If None, ticks are determined automatically from the
		                  input.
		    *format*      [ None | format string | Formatter object ]
		                  If None, the
		                  :class:`~matplotlib.ticker.ScalarFormatter` is used.
		                  If a format string is given, e.g., '%.3f', that is
		                  used. An alternative
		                  :class:`~matplotlib.ticker.Formatter` object may be
		                  given instead.
		    *drawedges*   bool
		                  Whether to draw lines at color boundaries.
		    ============  ====================================================
		
		    The following will probably be useful only in the context of
		    indexed colors (that is, when the mappable has norm=NoNorm()),
		    or other unusual circumstances.
		
		    ============   ===================================================
		    Property       Description
		    ============   ===================================================
		    *boundaries*   None or a sequence
		    *values*       None or a sequence which must be of length 1 less
		                   than the sequence of *boundaries*. For each region
		                   delimited by adjacent entries in *boundaries*, the
		                   color mapped to the corresponding value in values
		                   will be used.
		    ============   ===================================================
		
		
		
		If *mappable* is a :class:`~matplotlib.contours.ContourSet`, its *extend*
		kwarg is included automatically.
		
		The *shrink* kwarg provides a simple way to scale the colorbar with respect
		to the axes. Note that if *cax* is specified it determines the size of the
		colorbar and *shrink* and *aspect* kwargs are ignored.
		
		For more precise control, you can manually specify the positions of
		the axes objects in which the mappable and the colorbar are drawn.  In
		this case, do not use any of the axes properties kwargs.
		
		It is known that some vector graphics viewer (svg and pdf) renders white gaps
		between segments of the colorbar. This is due to bugs in the viewers not
		matplotlib. As a workaround the colorbar can be rendered with overlapping
		segments::
		
		    cbar = colorbar()
		    cbar.solids.set_edgecolor("face")
		    draw()
		
		However this has negative consequences in other circumstances. Particularly
		with semi transparent images (alpha < 1) and colorbar extensions and is not
		enabled by default see (issue #1188).
	**/
	public function colorbar(mappable:Dynamic, ?cax:Dynamic, ?ax:Dynamic, ?use_gridspec:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Test whether the mouse event occurred on the figure.
		
		Returns
		-------
		    bool, {}
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		For artists in an axes, if the xaxis has units support,
		convert *x* using xaxis unit type
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		For artists in an axes, if the yaxis has units support,
		convert *y* using yaxis unit type
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Remove the `~matplotlib.axes.Axes` *ax* from the figure and update the
		current axes.
	**/
	public function delaxes(ax:Dynamic):Dynamic;
	/**
		The resolution in dots per inch.
	**/
	public var dpi : Dynamic;
	/**
		Render the figure using :class:`matplotlib.backend_bases.RendererBase`
		instance *renderer*.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Draw :class:`matplotlib.artist.Artist` instance *a* only.
		This is available only after the figure is drawn.
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Use ``layoutbox`` to determine pos positions within axes.
		
		See also `.set_constrained_layout_pads`.
	**/
	public function execute_constrained_layout(?renderer:Dynamic):Dynamic;
	/**
		Add a non-resampled image to the figure.
		
		The image is attached to the lower or upper left corner depending on
		*origin*.
		
		Parameters
		----------
		X
		    The image data. This is an array of one of the following shapes:
		
		    - MxN: luminance (grayscale) values
		    - MxNx3: RGB values
		    - MxNx4: RGBA values
		
		xo, yo : int
		    The *x* /*y* image offset in pixels.
		
		alpha : None or float
		    The alpha blending value.
		
		norm : :class:`matplotlib.colors.Normalize`
		    A :class:`.Normalize` instance to map the luminance to the
		    interval [0, 1].
		
		cmap : str or :class:`matplotlib.colors.Colormap`
		    The colormap to use. Default: :rc:`image.cmap`.
		
		vmin, vmax : scalar
		    If *norm* is not given, these values set the data limits for the
		    colormap.
		
		origin : {'upper', 'lower'}
		    Indicates where the [0, 0] index of the array is in the upper left
		    or lower left corner of the axes. Defaults to :rc:`image.origin`.
		
		resize : bool
		    If *True*, resize the figure to match the given image size.
		
		Returns
		-------
		:class:`matplotlib.image.FigureImage`
		
		Other Parameters
		----------------
		**kwargs
		    Additional kwargs are `.Artist` kwargs passed on to `.FigureImage`.
		
		Notes
		-----
		figimage complements the axes image
		(:meth:`~matplotlib.axes.Axes.imshow`) which will be resampled
		to fit the current axes.  If you want a resampled image to
		fill the entire figure, you can define an
		:class:`~matplotlib.axes.Axes` with extent [0,0,1,1].
		
		
		Examples::
		
		    f = plt.figure()
		    nx = int(f.get_figwidth() * f.dpi)
		    ny = int(f.get_figheight() * f.dpi)
		    data = np.random.random((ny, nx))
		    f.figimage(data)
		    plt.show()
	**/
	public function figimage(X:Dynamic, ?xo:Dynamic, ?yo:Dynamic, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?origin:Dynamic, ?resize:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Find artist objects.
		
		Recursively find all :class:`~matplotlib.artist.Artist` instances
		contained in self.
		
		*match* can be
		
		  - None: return all objects contained in artist.
		
		  - function with signature ``boolean = match(artist)``
		    used to filter matches
		
		  - class instance: e.g., Line2D.  Only return artists of class type.
		
		If *include_self* is True (default), include self in the list to be
		checked for a match.
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return *cursor data* string formatted.
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Get the current axes, creating one if necessary.
		
		The following kwargs are supported for ensuring the returned axes
		adheres to the given projection etc., and for axes creation if
		the active axes does not exist:
		
		  adjustable: {'box', 'datalim'}
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  anchor: 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		  animated: bool
		  aspect: {'auto', 'equal'} or num
		  autoscale_on: bool
		  autoscalex_on: bool
		  autoscaley_on: bool
		  axes_locator: Callable[[Axes, Renderer], Bbox]
		  axisbelow: bool or 'line'
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None] 
		  contains: callable
		  facecolor: color
		  fc: color
		  figure: `.Figure`
		  frame_on: bool
		  gid: str
		  in_layout: bool
		  label: object
		  navigate: bool
		  navigate_mode: unknown
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		  rasterization_zorder: float or None
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  title: str
		  transform: `.Transform`
		  url: str
		  visible: bool
		  xbound: unknown
		  xlabel: str
		  xlim: (left: float, right: float)
		  xmargin: float greater than -0.5
		  xscale: {"linear", "log", "symlog", "logit", ...}
		  xticklabels: List[str]
		  xticks: list
		  ybound: unknown
		  ylabel: str
		  ylim: (bottom: float, top: float)
		  ymargin: float greater than -0.5
		  yscale: {"linear", "log", "symlog", "logit", ...}
		  yticklabels: List[str]
		  yticks: list
		  zorder: float
	**/
	public function gca(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return filter function to be used for agg filter.
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the artist's animated state
	**/
	public function get_animated():Dynamic;
	/**
		Return a list of axes in the Figure. You can access and modify the
		axes in the Figure through this list.
		
		Do not modify the list itself. Instead, use `~Figure.add_axes`,
		`~.Figure.subplot` or `~.Figure.delaxes` to add or remove an axes.
		
		Note: This is equivalent to the property `~.Figure.axes`.
	**/
	public function get_axes():Dynamic;
	/**
		Get a list of artists contained in the figure.
	**/
	public function get_children():Dynamic;
	/**
		Return artist clipbox
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether artist uses clipping
	**/
	public function get_clip_on():Dynamic;
	/**
		Return artist clip path
	**/
	public function get_clip_path():Dynamic;
	/**
		Return a boolean: True means constrained layout is being used.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
	**/
	public function get_constrained_layout():Dynamic;
	/**
		Get padding for ``constrained_layout``.
		
		Returns a list of `w_pad, h_pad` in inches and
		`wspace` and `hspace` as fractions of the subplot.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
		
		Parameters
		----------
		
		relative : boolean
		    If `True`, then convert from inches to figure relative.
	**/
	public function get_constrained_layout_pads(?relative:Dynamic):Dynamic;
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Return the resolution in dots per inch as a float.
	**/
	public function get_dpi():Dynamic;
	/**
		Get the edge color of the Figure rectangle.
	**/
	public function get_edgecolor():Dynamic;
	/**
		Get the face color of the Figure rectangle.
	**/
	public function get_facecolor():Dynamic;
	/**
		Return the figure height as a float.
	**/
	public function get_figheight():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the figure width as a float.
	**/
	public function get_figwidth():Dynamic;
	/**
		Return whether the figure frame will be drawn.
	**/
	public function get_frameon():Dynamic;
	/**
		Returns the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist.
	**/
	public function get_picker():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Returns the current size of the figure in inches.
		
		Returns
		-------
		size : ndarray
		   The size (width, height) of the figure in inches.
		
		See Also
		--------
		matplotlib.Figure.set_size_inches
	**/
	public function get_size_inches():Dynamic;
	/**
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or `None`
		
		    A 3-tuple with the following elements:
		
		      * `scale`: The amplitude of the wiggle perpendicular to the
		        source line.
		
		      * `length`: The length of the wiggle along the line.
		
		      * `randomness`: The scale factor by which the length is
		        shrunken or expanded.
		
		    May return `None` if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Returns the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
	**/
	public function get_snap():Dynamic;
	/**
		Return whether `.tight_layout` is called when drawing.
	**/
	public function get_tight_layout():Dynamic;
	/**
		Return a (tight) bounding box of the figure in inches.
		
		Artists that have ``artist.set_in_layout(False)`` are not included
		in the bbox.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		bbox_extra_artists : list of `.Artist` or ``None``
		    List of artists to include in the tight bounding box.  If
		    ``None`` (default), then all artist children of each axes are
		    included in the tight bounding box.
		
		Returns
		-------
		bbox : `.BboxBase`
		    containing the bounding box (in figure inches).
	**/
	public function get_tightbbox(renderer:Dynamic, ?bbox_extra_artists:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform`
		instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		Returns the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Return the figure bounding box in display space. Arguments are ignored.
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Blocking call to interact with a figure.
		
		Wait until the user clicks *n* times on the figure, and return the
		coordinates of each click in a list.
		
		The buttons used for the various actions (adding points, removing
		points, terminating the inputs) can be overridden via the
		arguments *mouse_add*, *mouse_pop* and *mouse_stop*, that give
		the associated mouse button: 1 for left, 2 for middle, 3 for
		right.
		
		Parameters
		----------
		n : int, optional, default: 1
		    Number of mouse clicks to accumulate. If negative, accumulate
		    clicks until the input is terminated manually.
		timeout : scalar, optional, default: 30
		    Number of seconds to wait before timing out. If zero or negative
		    will never timeout.
		show_clicks : bool, optional, default: False
		    If True, show a red cross at the location of each click.
		mouse_add : int, one of (1, 2, 3), optional, default: 1 (left click)
		    Mouse button used to add points.
		mouse_pop : int, one of (1, 2, 3), optional, default: 3 (right click)
		    Mouse button used to remove the most recently added point.
		mouse_stop : int, one of (1, 2, 3), optional, default: 2 (middle click)
		    Mouse button used to stop input.
		
		Returns
		-------
		points : list of tuples
		    A list of the clicked (x, y) coordinates.
		
		Notes
		-----
		The keyboard can also be used to select points in case your mouse
		does not have one or more of the buttons.  The delete and backspace
		keys act like right clicking (i.e., remove last point), the enter key
		terminates input and any other key (not already used by the window
		manager) selects a point.
	**/
	public function ginput(?n:Dynamic, ?timeout:Dynamic, ?show_clicks:Dynamic, ?mouse_add:Dynamic, ?mouse_pop:Dynamic, ?mouse_stop:Dynamic):Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		.. deprecated:: 2.2
		    The hitlist function was deprecated in Matplotlib 2.2 and will be removed in 3.1.
		
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		Initialize the layoutbox for use in constrained_layout.
	**/
	public function init_layoutbox():Dynamic;
	/**
		.. deprecated:: 2.2
		    artist.figure is not None
		
		Returns whether the artist is assigned to a `.Figure`.
	**/
	public function is_figure_set():Dynamic;
	/**
		Returns *True* if :class:`Artist` has a transform explicitly
		set.
	**/
	public function is_transform_set():Dynamic;
	/**
		Place a legend on the figure.
		
		To make a legend from existing artists on every axes::
		
		  legend()
		
		To make a legend for a list of lines and labels::
		
		  legend( (line1, line2, line3),
		          ('label1', 'label2', 'label3'),
		          loc='upper right')
		
		These can also be specified by keyword::
		
		  legend(handles=(line1, line2, line3),
		        labels=('label1', 'label2', 'label3'),
		        loc='upper right')
		
		Parameters
		----------
		
		handles : sequence of `.Artist`, optional
		    A list of Artists (lines, patches) to be added to the legend.
		    Use this together with *labels*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		    The length of handles and labels should be the same in this
		    case. If they are not, they are truncated to the smaller length.
		
		labels : sequence of strings, optional
		    A list of labels to show next to the artists.
		    Use this together with *handles*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		Other Parameters
		----------------
		
		
		loc : int or string or pair of floats, default: :rc:`legend.loc` ('best' for axes, 'upper right' for figures)
		    The location of the legend. Possible codes are:
		
		        ===============   =============
		        Location String   Location Code
		        ===============   =============
		        'best'            0
		        'upper right'     1
		        'upper left'      2
		        'lower left'      3
		        'lower right'     4
		        'right'           5
		        'center left'     6
		        'center right'    7
		        'lower center'    8
		        'upper center'    9
		        'center'          10
		        ===============   =============
		
		
		    Alternatively can be a 2-tuple giving ``x, y`` of the lower-left
		    corner of the legend in axes coordinates (in which case
		    ``bbox_to_anchor`` will be ignored).
		
		    The 'best' option can be quite slow for plots with large amounts
		    of data. Your plotting speed may benefit from providing a specific
		    location.
		
		bbox_to_anchor : `.BboxBase`, 2-tuple, or 4-tuple of floats
		    Box that is used to position the legend in conjunction with *loc*.
		    Defaults to `axes.bbox` (if called as a method to `.Axes.legend`) or
		    `figure.bbox` (if `.Figure.legend`).  This argument allows arbitrary
		    placement of the legend.
		
		    Bbox coordinates are interpreted in the coordinate system given by
		    `bbox_transform`, with the default transform
		    Axes or Figure coordinates, depending on which ``legend`` is called.
		
		    If a 4-tuple or `.BboxBase` is given, then it specifies the bbox
		    ``(x, y, width, height)`` that the legend is placed in.
		    To put the legend in the best location in the bottom right
		    quadrant of the axes (or figure)::
		
		        loc='best', bbox_to_anchor=(0.5, 0., 0.5, 0.5)
		
		    A 2-tuple ``(x, y)`` places the corner of the legend specified by *loc* at
		    x, y.  For example, to put the legend's upper right-hand corner in the
		    center of the axes (or figure) the following keywords can be used::
		
		        loc='upper right', bbox_to_anchor=(0.5, 0.5)
		
		ncol : integer
		    The number of columns that the legend has. Default is 1.
		
		prop : None or :class:`matplotlib.font_manager.FontProperties` or dict
		    The font properties of the legend. If None (default), the current
		    :data:`matplotlib.rcParams` will be used.
		
		fontsize : int or float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    Controls the font size of the legend. If the value is numeric the
		    size will be the absolute font size in points. String values are
		    relative to the current default font size. This argument is only
		    used if `prop` is not specified.
		
		numpoints : None or int
		    The number of marker points in the legend when creating a legend
		    entry for a `.Line2D` (line).
		    Default is ``None``, which will take the value from
		    :rc:`legend.numpoints`.
		
		scatterpoints : None or int
		    The number of marker points in the legend when creating
		    a legend entry for a `.PathCollection` (scatter plot).
		    Default is ``None``, which will take the value from
		    :rc:`legend.scatterpoints`.
		
		scatteryoffsets : iterable of floats
		    The vertical offset (relative to the font size) for the markers
		    created for a scatter plot legend entry. 0.0 is at the base the
		    legend text, and 1.0 is at the top. To draw all markers at the
		    same height, set to ``[0.5]``. Default is ``[0.375, 0.5, 0.3125]``.
		
		markerscale : None or int or float
		    The relative size of legend markers compared with the originally
		    drawn ones.
		    Default is ``None``, which will take the value from
		    :rc:`legend.markerscale`.
		
		markerfirst : bool
		    If *True*, legend marker is placed to the left of the legend label.
		    If *False*, legend marker is placed to the right of the legend
		    label.
		    Default is *True*.
		
		frameon : None or bool
		    Control whether the legend should be drawn on a patch
		    (frame).
		    Default is ``None``, which will take the value from
		    :rc:`legend.frameon`.
		
		fancybox : None or bool
		    Control whether round edges should be enabled around the
		    :class:`~matplotlib.patches.FancyBboxPatch` which makes up the
		    legend's background.
		    Default is ``None``, which will take the value from
		    :rc:`legend.fancybox`.
		
		shadow : None or bool
		    Control whether to draw a shadow behind the legend.
		    Default is ``None``, which will take the value from
		    :rc:`legend.shadow`.
		
		framealpha : None or float
		    Control the alpha transparency of the legend's background.
		    Default is ``None``, which will take the value from
		    :rc:`legend.framealpha`.  If shadow is activated and
		    *framealpha* is ``None``, the default value is ignored.
		
		facecolor : None or "inherit" or a color spec
		    Control the legend's background color.
		    Default is ``None``, which will take the value from
		    :rc:`legend.facecolor`.  If ``"inherit"``, it will take
		    :rc:`axes.facecolor`.
		
		edgecolor : None or "inherit" or a color spec
		    Control the legend's background patch edge color.
		    Default is ``None``, which will take the value from
		    :rc:`legend.edgecolor` If ``"inherit"``, it will take
		    :rc:`axes.edgecolor`.
		
		mode : {"expand", None}
		    If `mode` is set to ``"expand"`` the legend will be horizontally
		    expanded to fill the axes area (or `bbox_to_anchor` if defines
		    the legend's size).
		
		bbox_transform : None or :class:`matplotlib.transforms.Transform`
		    The transform for the bounding box (`bbox_to_anchor`). For a value
		    of ``None`` (default) the Axes'
		    :data:`~matplotlib.axes.Axes.transAxes` transform will be used.
		
		title : str or None
		    The legend's title. Default is no title (``None``).
		
		title_fontsize: str or None
		    The fontsize of the legend's title.  Default is the default fontsize.
		
		borderpad : float or None
		    The fractional whitespace inside the legend border.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.borderpad`.
		
		labelspacing : float or None
		    The vertical space between the legend entries.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.labelspacing`.
		
		handlelength : float or None
		    The length of the legend handles.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.handlelength`.
		
		handletextpad : float or None
		    The pad between the legend handle and text.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.handletextpad`.
		
		borderaxespad : float or None
		    The pad between the axes and legend border.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.borderaxespad`.
		
		columnspacing : float or None
		    The spacing between columns.
		    Measured in font-size units.
		    Default is ``None``, which will take the value from
		    :rc:`legend.columnspacing`.
		
		handler_map : dict or None
		    The custom dictionary mapping instances or types to a legend
		    handler. This `handler_map` updates the default handler map
		    found at :func:`matplotlib.legend.Legend.get_legend_handler_map`.
		
		
		
		Returns
		-------
		:class:`matplotlib.legend.Legend` instance
		
		Notes
		-----
		Not all kinds of artist are supported by the legend command. See
		:doc:`/tutorials/intermediate/legend_guide` for details.
	**/
	public function legend(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var mouseover : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		Process pick event
		
		each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return *True* if :class:`Artist` is pickable.
	**/
	public function pickable():Dynamic;
	/**
		return a dictionary mapping property name -> value for all Artist props
	**/
	public function properties():Dynamic;
	/**
		Remove the artist from the figure if possible.  The effect
		will not be visible until the figure is redrawn, e.g., with
		:meth:`matplotlib.axes.Axes.draw_idle`.  Call
		:meth:`matplotlib.axes.Axes.relim` to update the axes limits
		if desired.
		
		Note: :meth:`~matplotlib.axes.Axes.relim` will not see
		collections even if the collection was added to axes with
		*autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its *id*.
		
		.. seealso::
		
		    :meth:`add_callback`
		       For adding callbacks
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		Save the current figure.
		
		Call signature::
		
		  savefig(fname, dpi=None, facecolor='w', edgecolor='w',
		          orientation='portrait', papertype=None, format=None,
		          transparent=False, bbox_inches=None, pad_inches=0.1,
		          frameon=None, metadata=None)
		
		The output formats available depend on the backend being used.
		
		Parameters
		----------
		
		fname : str or file-like object
		    A string containing a path to a filename, or a Python
		    file-like object, or possibly some backend-dependent object
		    such as :class:`~matplotlib.backends.backend_pdf.PdfPages`.
		
		    If *format* is *None* and *fname* is a string, the output
		    format is deduced from the extension of the filename. If
		    the filename has no extension, :rc:`savefig.format` is used.
		
		    If *fname* is not a string, remember to specify *format* to
		    ensure that the correct backend is used.
		
		Other Parameters
		----------------
		
		dpi : [ *None* | scalar > 0 | 'figure' ]
		    The resolution in dots per inch.  If *None*, defaults to
		    :rc:`savefig.dpi`.  If 'figure', uses the figure's dpi value.
		
		quality : [ *None* | 1 <= scalar <= 100 ]
		    The image quality, on a scale from 1 (worst) to 95 (best).
		    Applicable only if *format* is jpg or jpeg, ignored otherwise.
		    If *None*, defaults to :rc:`savefig.jpeg_quality` (95 by default).
		    Values above 95 should be avoided; 100 completely disables the
		    JPEG quantization stage.
		
		facecolor : color spec or None, optional
		    The facecolor of the figure; if *None*, defaults to
		    :rc:`savefig.facecolor`.
		
		edgecolor : color spec or None, optional
		    The edgecolor of the figure; if *None*, defaults to
		    :rc:`savefig.edgecolor`
		
		orientation : {'landscape', 'portrait'}
		    Currently only supported by the postscript backend.
		
		papertype : str
		    One of 'letter', 'legal', 'executive', 'ledger', 'a0' through
		    'a10', 'b0' through 'b10'. Only supported for postscript
		    output.
		
		format : str
		    One of the file extensions supported by the active
		    backend.  Most backends support png, pdf, ps, eps and svg.
		
		transparent : bool
		    If *True*, the axes patches will all be transparent; the
		    figure patch will also be transparent unless facecolor
		    and/or edgecolor are specified via kwargs.
		    This is useful, for example, for displaying
		    a plot on top of a colored background on a web page.  The
		    transparency of these patches will be restored to their
		    original values upon exit of this function.
		
		frameon : bool
		    If *True*, the figure patch will be colored, if *False*, the
		    figure background will be transparent.  If not provided, the
		    rcParam 'savefig.frameon' will be used.
		
		bbox_inches : str or `~matplotlib.transforms.Bbox`, optional
		    Bbox in inches. Only the given portion of the figure is
		    saved. If 'tight', try to figure out the tight bbox of
		    the figure. If None, use savefig.bbox
		
		pad_inches : scalar, optional
		    Amount of padding around the figure when bbox_inches is
		    'tight'. If None, use savefig.pad_inches
		
		bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
		
		metadata : dict, optional
		    Key/value pairs to store in the image metadata. The supported keys
		    and defaults depend on the image format and backend:
		
		    - 'png' with Agg backend: See the parameter ``metadata`` of
		      `~.FigureCanvasAgg.print_png`.
		    - 'pdf' with pdf backend: See the parameter ``metadata`` of
		      `~.backend_pdf.PdfPages`.
		    - 'eps' and 'ps' with PS backend: Only 'Creator' is supported.
	**/
	public function savefig(fname:Dynamic, ?frameon:Dynamic, ?transparent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the current axes to be a and return a.
	**/
	public function sca(a:Dynamic):Dynamic;
	/**
		A property batch setter. Pass *kwargs* to set properties.
		        
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the agg filter.
		
		Parameters
		----------
		filter_func : callable
		    A filter function, which takes a (m, n, 3) float array and a dpi
		    value, and returns a (m, n, 3) array.
		
		    .. ACCEPTS: a filter function, which takes a (m, n, 3) float array
		        and a dpi value, and returns a (m, n, 3) array
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : float
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set the canvas that contains the figure
		
		Parameters
		----------
		canvas : FigureCanvas
	**/
	public function set_canvas(canvas:Dynamic):Dynamic;
	/**
		Set the artist's clip `.Bbox`.
		
		Parameters
		----------
		clipbox : `.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		- a :class:`~matplotlib.patches.Patch` (or subclass) instance; or
		- a :class:`~matplotlib.path.Path` instance, in which case a
		  :class:`~matplotlib.transforms.Transform` instance, which will be
		  applied to the path before using it for clipping, must be provided;
		  or
		- ``None``, to remove a previously set clipping path.
		
		For efficiency, if the path happens to be an axis-aligned rectangle,
		this method will set the clipping box to the corresponding rectangle
		and set the clipping path to ``None``.
		
		ACCEPTS: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set whether ``constrained_layout`` is used upon drawing. If None,
		the rcParams['figure.constrained_layout.use'] value will be used.
		
		When providing a dict containing the keys `w_pad`, `h_pad`
		the default ``constrained_layout`` paddings will be
		overridden.  These pads are in inches and default to 3.0/72.0.
		``w_pad`` is the width padding and ``h_pad`` is the height padding.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
		
		Parameters
		----------
		constrained : bool or dict or None
	**/
	public function set_constrained_layout(constrained:Dynamic):Dynamic;
	/**
		Set padding for ``constrained_layout``.  Note the kwargs can be passed
		as a dictionary ``fig.set_constrained_layout(**paddict)``.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
		
		Parameters
		----------
		
		w_pad : scalar
		    Width padding in inches.  This is the pad around axes
		    and is meant to make sure there is enough room for fonts to
		    look good.  Defaults to 3 pts = 0.04167 inches
		
		h_pad : scalar
		    Height padding in inches. Defaults to 3 pts.
		
		wspace: scalar
		    Width padding between subplots, expressed as a fraction of the
		    subplot width.  The total padding ends up being w_pad + wspace.
		
		hspace: scalar
		    Height padding between subplots, expressed as a fraction of the
		    subplot width. The total padding ends up being h_pad + hspace.
	**/
	public function set_constrained_layout_pads(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Replace the contains test used by this artist. The new picker
		should be a callable function which determines whether the
		artist is hit by the mouse event::
		
		    hit, props = picker(artist, mouseevent)
		
		If the mouse event is over the artist, return *hit* = *True*
		and *props* is a dictionary of properties you want returned
		with the contains test.
		
		Parameters
		----------
		picker : callable
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the resolution of the figure in dots-per-inch.
		
		Parameters
		----------
		val : float
	**/
	public function set_dpi(val:Dynamic):Dynamic;
	/**
		Set the edge color of the Figure rectangle.
		
		Parameters
		----------
		color : color
	**/
	public function set_edgecolor(color:Dynamic):Dynamic;
	/**
		Set the face color of the Figure rectangle.
		
		Parameters
		----------
		color : color
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the height of the figure in inches.
		
		.. ACCEPTS: float
	**/
	public function set_figheight(val:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the width of the figure in inches.
		
		.. ACCEPTS: float
	**/
	public function set_figwidth(val:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set whether the figure frame (background) is displayed or invisible.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frameon(b:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set if artist is to be included in layout calculations,
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
		
		Parameters
		----------
		in_layout : bool
	**/
	public function set_in_layout(in_layout:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Set the epsilon for picking used by this artist
		
		*picker* can be one of the following:
		
		  * *None*: picking is disabled for this artist (default)
		
		  * A boolean: if *True* then picking will be enabled and the
		    artist will fire a pick event if the mouse event is over
		    the artist
		
		  * A float: if picker is a number it is interpreted as an
		    epsilon tolerance in points and the artist will fire
		    off an event if it's data is within epsilon of the mouse
		    event.  For some artists like lines and patch collections,
		    the artist may provide additional data to the pick event
		    that is generated, e.g., the indices of the data within
		    epsilon of the pick event
		
		  * A function: if picker is callable, it is a user supplied
		    function which determines whether the artist is hit by the
		    mouse event::
		
		      hit, props = picker(artist, mouseevent)
		
		    to determine the hit test.  if the mouse event is over the
		    artist, return *hit=True* and props is a dictionary of
		    properties you want added to the PickEvent attributes.
		
		Parameters
		----------
		picker : None or bool or float or callable
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the figure size in inches.
		
		Call signatures::
		
		     fig.set_size_inches(w, h)  # OR
		     fig.set_size_inches((w, h))
		
		optional kwarg *forward=True* will cause the canvas size to be
		automatically updated; e.g., you can resize the figure window
		from the shell
		
		ACCEPTS: a (w, h) tuple with w, h in inches
		
		See Also
		--------
		matplotlib.Figure.get_size_inches
	**/
	public function set_size_inches(w:Dynamic, ?h:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Sets the sketch parameters.
		
		Parameters
		----------
		
		scale : float, optional
		    The amplitude of the wiggle perpendicular to the source
		    line, in pixels.  If scale is `None`, or not provided, no
		    sketch filter will be provided.
		
		length : float, optional
		     The length of the wiggle along the line, in pixels
		     (default 128.0)
		
		randomness : float, optional
		    The scale factor by which the length is shrunken or
		    expanded (default 16.0)
		
		    .. ACCEPTS: (scale: float, length: float, randomness: float)
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set whether and how `.tight_layout` is called when drawing.
		
		Parameters
		----------
		tight : bool or dict with keys "pad", "w_pad", "h_pad", "rect" or None
		    If a bool, sets whether to call `.tight_layout` upon drawing.
		    If ``None``, use the ``figure.autolayout`` rcparam instead.
		    If a dict, pass it as kwargs to `.tight_layout`, overriding the
		    default paddings.
	**/
	public function set_tight_layout(tight:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Sets the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		If using a GUI backend with pyplot, display the figure window.
		
		If the figure was not created using
		:func:`~matplotlib.pyplot.figure`, it will lack a
		:class:`~matplotlib.backend_bases.FigureManagerBase`, and
		will raise an AttributeError.
		
		Parameters
		----------
		warn : bool
		    If ``True`` and we are not running headless (i.e. on Linux with an
		    unset DISPLAY), issue warning when called on a non-GUI backend.
	**/
	public function show(?warn:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		`x` and `y` sticky edge lists.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical usecase is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the `x` and `y` lists
		can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Add a set of subplots to this figure.
		
		This utility wrapper makes it convenient to create common layouts of
		subplots in a single call.
		
		Parameters
		----------
		nrows, ncols : int, optional, default: 1
		    Number of rows/columns of the subplot grid.
		
		sharex, sharey : bool or {'none', 'all', 'row', 'col'}, default: False
		    Controls sharing of properties among x (`sharex`) or y (`sharey`)
		    axes:
		
		        - True or 'all': x- or y-axis will be shared among all
		          subplots.
		        - False or 'none': each subplot x- or y-axis will be
		          independent.
		        - 'row': each subplot row will share an x- or y-axis.
		        - 'col': each subplot column will share an x- or y-axis.
		
		    When subplots have a shared x-axis along a column, only the x tick
		    labels of the bottom subplot are created. Similarly, when subplots
		    have a shared y-axis along a row, only the y tick labels of the
		    first column subplot are created. To later turn other subplots'
		    ticklabels on, use `~matplotlib.axes.Axes.tick_params`.
		
		squeeze : bool, optional, default: True
		    - If True, extra dimensions are squeezed out from the returned
		      array of Axes:
		
		        - if only one subplot is constructed (nrows=ncols=1), the
		          resulting single Axes object is returned as a scalar.
		        - for Nx1 or 1xM subplots, the returned object is a 1D numpy
		          object array of Axes objects.
		        - for NxM, subplots with N>1 and M>1 are returned
		          as a 2D array.
		
		    - If False, no squeezing at all is done: the returned Axes object
		      is always a 2D array containing Axes instances, even if it ends
		      up being 1x1.
		
		subplot_kw : dict, optional
		    Dict with keywords passed to the
		    :meth:`~matplotlib.figure.Figure.add_subplot` call used to create
		    each subplot.
		
		gridspec_kw : dict, optional
		    Dict with keywords passed to the
		    `~matplotlib.gridspec.GridSpec` constructor used to create
		    the grid the subplots are placed on.
		
		Returns
		-------
		ax : `~.axes.Axes` object or array of Axes objects.
		    *ax* can be either a single `~matplotlib.axes.Axes` object or
		    an array of Axes objects if more than one subplot was created. The
		    dimensions of the resulting array can be controlled with the
		    squeeze keyword, see above.
		
		Examples
		--------
		::
		
		    # First create some toy data:
		    x = np.linspace(0, 2*np.pi, 400)
		    y = np.sin(x**2)
		
		    # Create a figure
		    plt.figure(1, clear=True)
		
		    # Creates a subplot
		    ax = fig.subplots()
		    ax.plot(x, y)
		    ax.set_title('Simple plot')
		
		    # Creates two subplots and unpacks the output array immediately
		    ax1, ax2 = fig.subplots(1, 2, sharey=True)
		    ax1.plot(x, y)
		    ax1.set_title('Sharing Y axis')
		    ax2.scatter(x, y)
		
		    # Creates four polar axes, and accesses them through the
		    # returned array
		    axes = fig.subplots(2, 2, subplot_kw=dict(polar=True))
		    axes[0, 0].plot(x, y)
		    axes[1, 1].scatter(x, y)
		
		    # Share a X axis with each column of subplots
		    fig.subplots(2, 2, sharex='col')
		
		    # Share a Y axis with each row of subplots
		    fig.subplots(2, 2, sharey='row')
		
		    # Share both X and Y axes with all subplots
		    fig.subplots(2, 2, sharex='all', sharey='all')
		
		    # Note that this is the same as
		    fig.subplots(2, 2, sharex=True, sharey=True)
		
		    See Also
		    --------
		    .pyplot.subplots
		    .Figure.add_subplot
		    .pyplot.subplot
		    
	**/
	public function subplots(?nrows:Dynamic, ?ncols:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?squeeze:Dynamic, ?subplot_kw:Dynamic, ?gridspec_kw:Dynamic):Dynamic;
	/**
		Update the :class:`SubplotParams` with *kwargs* (defaulting to rc when
		*None*) and update the subplot locations.
	**/
	public function subplots_adjust(?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Dynamic;
	/**
		Add a centered title to the figure.
		
		Parameters
		----------
		t : str
		    The title text.
		
		x : float, default 0.5
		    The x location of the text in figure coordinates.
		
		y : float, default 0.98
		    The y location of the text in figure coordinates.
		
		horizontalalignment, ha : {'center', 'left', right'}, default: 'center'
		    The horizontal alignment of the text relative to (*x*, *y*).
		
		verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: 'top'
		    The vertical alignment of the text relative to (*x*, *y*).
		
		fontsize, size : default: :rc:`figure.titlesize`
		    The font size of the text. See `.Text.set_size` for possible
		    values.
		
		fontweight, weight : default: :rc:`figure.titleweight`
		    The font weight of the text. See `.Text.set_weight` for possible
		    values.
		
		
		Returns
		-------
		    text
		        The `.Text` instance of the title.
		
		
		Other Parameters
		----------------
		fontproperties : None or dict, optional
		    A dict of font properties. If *fontproperties* is given the
		    default values for font size and weight are taken from the
		    `FontProperties` defaults. :rc:`figure.titlesize` and
		    :rc:`figure.titleweight` are ignored in this case.
		
		**kwargs
		    Additional kwargs are :class:`matplotlib.text.Text` properties.
		
		
		Examples
		--------
		
		>>> fig.suptitle('This is the figure title', fontsize=12)
	**/
	public function suptitle(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add text to figure.
		
		Parameters
		----------
		x, y : float
		    The position to place the text. By default, this is in figure
		    coordinates, floats in [0, 1]. The coordinate system can be changed
		    using the *transform* keyword.
		
		s : str
		    The text string.
		
		fontdict : dictionary, optional, default: None
		    A dictionary to override the default text properties. If fontdict
		    is None, the defaults are determined by your rc parameters. A
		    property in *kwargs* override the same property in fontdict.
		
		withdash : boolean, optional, default: False
		    Creates a `~matplotlib.text.TextWithDash` instance instead of a
		    `~matplotlib.text.Text` instance.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.text.Text` properties
		    Other miscellaneous text parameters.
		      agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  animated: bool
		  backgroundcolor: color
		  bbox: dict with properties for `.patches.FancyBboxPatch`
		  clip_box: `matplotlib.transforms.Bbox`
		  clip_on: bool
		  clip_path: { (`.path.Path`, `.transforms.Transform`), `.patches.Patch`, None } 
		  color: color
		  contains: callable
		  figure: `.Figure`
		  fontfamily: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontname: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontproperties: `.font_manager.FontProperties`
		  fontsize: {size in points, 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		  fontstretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		  fontstyle: {'normal', 'italic', 'oblique'}
		  fontvariant: {'normal', 'small-caps'}
		  fontweight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		  gid: str
		  horizontalalignment: {'center', 'right', 'left'}
		  in_layout: bool
		  label: object
		  linespacing: float (multiple of font size)
		  multialignment: {'left', 'right', 'center'}
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: (float, float)
		  rasterized: bool or None
		  rotation: {angle in degrees, 'vertical', 'horizontal'}
		  rotation_mode: {None, 'default', 'anchor'}
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  text: string or object castable to string (but ``None`` becomes ``''``)
		  transform: `.Transform`
		  url: str
		  usetex: bool or None
		  verticalalignment: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		  visible: bool
		  wrap: bool
		  x: float
		  y: float
		  zorder: float
		
		Returns
		-------
		text : `~.text.Text`
		
		See Also
		--------
		.Axes.text
		.pyplot.text
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?fontdict:Dynamic, ?withdash:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Automatically adjust subplot parameters to give specified padding.
		
		To exclude an artist on the axes from the bounding box calculation
		that determines the subplot parameters (i.e. legend, or annotation),
		then set `a.set_in_layout(False)` for that artist.
		
		Parameters
		----------
		renderer : subclass of `~.backend_bases.RendererBase`, optional
		    Defaults to the renderer for the figure.
		
		pad : float, optional
		    Padding between the figure edge and the edges of subplots,
		    as a fraction of the font size.
		h_pad, w_pad : float, optional
		    Padding (height/width) between edges of adjacent subplots,
		    as a fraction of the font size.  Defaults to *pad*.
		rect : tuple (left, bottom, right, top), optional
		    A rectangle (left, bottom, right, top) in the normalized
		    figure coordinate that the whole subplots area (including
		    labels) will fit into. Default is (0, 0, 1, 1).
		
		See Also
		--------
		.Figure.set_tight_layout
		.pyplot.tight_layout
	**/
	public function tight_layout(?renderer:Dynamic, ?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		Update this artist's properties from the dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Blocking call to interact with the figure.
		
		This will return True is a key was pressed, False if a mouse
		button was pressed and None if *timeout* was reached without
		either being pressed.
		
		If *timeout* is negative, does not timeout.
	**/
	public function waitforbuttonpress(?timeout:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}