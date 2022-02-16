/* This file is generated, do not edit! */
package matplotlib.figure;
@:pythonImport("matplotlib.figure", "Figure") extern class Figure {
	static public var _PROPERTIES_EXCLUDED_FROM_SET : Dynamic;
	public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Implement delattr(self, name).
	**/
	public function __delattr__(name:Dynamic):Dynamic;
	static public var __dict__ : Dynamic;
	/**
		Default dir() implementation.
	**/
	public function __dir__():Dynamic;
	static public var __doc__ : Dynamic;
	/**
		Return self==value.
	**/
	public function __eq__(value:Dynamic):Dynamic;
	/**
		Default object formatter.
	**/
	public function __format__(format_spec:Dynamic):Dynamic;
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
		    If ``False``, suppress drawing the figure background patch.
		
		subplotpars : `SubplotParams`
		    Subplot parameters. If not given, the default subplot
		    parameters :rc:`figure.subplot.*` are used.
		
		tight_layout : bool or dict, default: :rc:`figure.autolayout`
		    Whether to use the tight layout mechanism. See `.set_tight_layout`.
		
		    .. admonition:: Discouraged
		
		        The use of this parameter is discouraged. Please use
		        ``layout='tight'`` instead for the common case of
		        ``tight_layout=True`` and use `.set_tight_layout` otherwise.
		
		constrained_layout : bool, default: :rc:`figure.constrained_layout.use`
		    This is equal to ``layout='constrained'``.
		
		    .. admonition:: Discouraged
		
		        The use of this parameter is discouraged. Please use
		        ``layout='constrained'`` instead.
		
		layout : {'constrained', 'tight'}, optional
		    The layout mechanism for positioning of plot elements.
		    Supported values:
		
		    - 'constrained': The constrained layout solver usually gives the
		      best layout results and is thus recommended. However, it is
		      computationally expensive and can be slow for complex figures
		      with many elements.
		
		      See :doc:`/tutorials/intermediate/constrainedlayout_guide`
		      for examples.
		
		    - 'tight': Use the tight layout mechanism. This is a relatively
		      simple algorithm, that adjusts the subplot parameters so that
		      decorations like tick labels, axis labels and titles have enough
		      space. See `.Figure.set_tight_layout` for further details.
		
		    If not given, fall back to using the parameters *tight_layout* and
		    *constrained_layout*, including their config defaults
		    :rc:`figure.autolayout` and :rc:`figure.constrained_layout.use`.
		
		Other Parameters
		----------------
		**kwargs : `.Figure` properties, optional
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    canvas: FigureCanvas
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    constrained_layout: bool or dict or None
		    constrained_layout_pads: float, default: :rc:`figure.constrained_layout.w_pad`
		    dpi: float
		    edgecolor: color
		    facecolor: color
		    figheight: float
		    figure: `.Figure`
		    figwidth: float
		    frameon: bool
		    gid: str
		    in_layout: bool
		    label: object
		    linewidth: number
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    size_inches: (float, float) or float
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    tight_layout: bool or dict with keys "pad", "w_pad", "h_pad", "rect" or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	@:native("__init__")
	public function ___init__(?figsize:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?frameon:Dynamic, ?subplotpars:Dynamic, ?tight_layout:Dynamic, ?constrained_layout:Dynamic, ?layout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		    If ``False``, suppress drawing the figure background patch.
		
		subplotpars : `SubplotParams`
		    Subplot parameters. If not given, the default subplot
		    parameters :rc:`figure.subplot.*` are used.
		
		tight_layout : bool or dict, default: :rc:`figure.autolayout`
		    Whether to use the tight layout mechanism. See `.set_tight_layout`.
		
		    .. admonition:: Discouraged
		
		        The use of this parameter is discouraged. Please use
		        ``layout='tight'`` instead for the common case of
		        ``tight_layout=True`` and use `.set_tight_layout` otherwise.
		
		constrained_layout : bool, default: :rc:`figure.constrained_layout.use`
		    This is equal to ``layout='constrained'``.
		
		    .. admonition:: Discouraged
		
		        The use of this parameter is discouraged. Please use
		        ``layout='constrained'`` instead.
		
		layout : {'constrained', 'tight'}, optional
		    The layout mechanism for positioning of plot elements.
		    Supported values:
		
		    - 'constrained': The constrained layout solver usually gives the
		      best layout results and is thus recommended. However, it is
		      computationally expensive and can be slow for complex figures
		      with many elements.
		
		      See :doc:`/tutorials/intermediate/constrainedlayout_guide`
		      for examples.
		
		    - 'tight': Use the tight layout mechanism. This is a relatively
		      simple algorithm, that adjusts the subplot parameters so that
		      decorations like tick labels, axis labels and titles have enough
		      space. See `.Figure.set_tight_layout` for further details.
		
		    If not given, fall back to using the parameters *tight_layout* and
		    *constrained_layout*, including their config defaults
		    :rc:`figure.autolayout` and :rc:`figure.constrained_layout.use`.
		
		Other Parameters
		----------------
		**kwargs : `.Figure` properties, optional
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    canvas: FigureCanvas
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    constrained_layout: bool or dict or None
		    constrained_layout_pads: float, default: :rc:`figure.constrained_layout.w_pad`
		    dpi: float
		    edgecolor: color
		    facecolor: color
		    figheight: float
		    figure: `.Figure`
		    figwidth: float
		    frameon: bool
		    gid: str
		    in_layout: bool
		    label: object
		    linewidth: number
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    size_inches: (float, float) or float
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    tight_layout: bool or dict with keys "pad", "w_pad", "h_pad", "rect" or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	public function new(?figsize:Dynamic, ?dpi:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?linewidth:Dynamic, ?frameon:Dynamic, ?subplotpars:Dynamic, ?tight_layout:Dynamic, ?constrained_layout:Dynamic, ?layout:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
	/**
		This method is called when a class is subclassed.
		
		The default implementation does nothing. It may be
		overridden to extend subclasses.
	**/
	static public function __init_subclass__():Dynamic;
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
		Helper for pickle.
	**/
	public function __reduce__():Dynamic;
	/**
		Helper for pickle.
	**/
	public function __reduce_ex__(protocol:Dynamic):Dynamic;
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
		Size of object in memory, in bytes.
	**/
	public function __sizeof__():Dynamic;
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
		Private helper for `add_axes` and `add_subplot`.
	**/
	public function _add_axes_internal(ax:Dynamic, key:Dynamic):Dynamic;
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Base impl. for checking whether a mouseevent happened in an artist.
		
		1. If the artist figure is known and the event did not occur in that
		   figure (by checking its ``canvas`` attribute), reject it.
		2. Otherwise, return `None, {}`, indicating that the subclass'
		   implementation should be used.
		
		Subclasses should start their definition of `contains` as follows:
		
		    inside, info = self._default_contains(mouseevent)
		    if inside is not None:
		        return inside, info
		    # subclass-specific implementation follows
		
		The *figure* kwarg is provided for the implementation of
		`.Figure.contains`.
	**/
	public function _default_contains(mouseevent:Dynamic, ?figure:Dynamic):Dynamic;
	/**
		Get the current colorable artist.
		
		Specifically, returns the current `.ScalarMappable` instance (`.Image`
		created by `imshow` or `figimage`, `.Collection` created by `pcolor` or
		`scatter`, etc.), or *None* if no such instance has been defined.
		
		The current image is an attribute of the current Axes, or the nearest
		earlier Axes in the current figure that contains an image.
		
		Notes
		-----
		Historically, the only colorable artists were images; hence the name
		``gci`` (get current image).
	**/
	public function _gci():Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	public function _get_dpi():Dynamic;
	/**
		Also runs apply_aspect
	**/
	public function _get_draw_artists(renderer:Dynamic):Dynamic;
	static public function _normalize_grid_string(layout:Dynamic):Dynamic;
	/**
		Handle the args/kwargs to add_axes/add_subplot/gca, returning::
		
		    (axes_proj_class, proj_class_kwargs)
		
		which can be used for new Axes initialization/identification.
	**/
	public function _process_projection_requirements(?args:python.VarArgs<Dynamic>, ?axes_class:Dynamic, ?polar:Dynamic, ?projection:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _repr_html_():Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : array-like or scalar or None
		    All values must be within the 0-1 range, inclusive.
		    Masked values and nans are not supported.
	**/
	public function _set_alpha_for_array(alpha:Dynamic):Dynamic;
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
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Add a centered %(name)s to the figure.
		
		Parameters
		----------
		t : str
		    The %(name)s text.
		x : float, default: %(x0)s
		    The x location of the text in figure coordinates.
		y : float, default: %(y0)s
		    The y location of the text in figure coordinates.
		horizontalalignment, ha : {'center', 'left', 'right'}, default: %(ha)s
		    The horizontal alignment of the text relative to (*x*, *y*).
		verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: %(va)s
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
		    The `.Text` instance of the %(name)s.
		
		Other Parameters
		----------------
		fontproperties : None or dict, optional
		    A dict of font properties. If *fontproperties* is given the
		    default values for font size and weight are taken from the
		    `.FontProperties` defaults. :rc:`figure.titlesize` and
		    :rc:`figure.titleweight` are ignored in this case.
		
		**kwargs
		    Additional kwargs are `matplotlib.text.Text` properties.
	**/
	public function _suplabels(t:Dynamic, info:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Update the signature of the set function to list all properties
		as keyword arguments.
		
		Property aliases are not listed in the signature for brevity, but
		are still accepted as keyword arguments.
	**/
	static public function _update_set_signature_and_docstring():Dynamic;
	/**
		Add an `.Artist` to the figure.
		
		Usually artists are added to Axes objects using `.Axes.add_artist`;
		this method can be used in the rare cases where one needs to add
		artists directly to the figure instead.
		
		Parameters
		----------
		artist : `~matplotlib.artist.Artist`
		    The artist to add to the figure. If the added artist has no
		    transform previously set, its transform will be set to
		    ``figure.transSubfigure``.
		clip : bool, default: False
		    Whether the added artist should be clipped by the figure patch.
		
		Returns
		-------
		`~matplotlib.artist.Artist`
		    The added artist.
	**/
	public function add_artist(artist:Dynamic, ?clip:Dynamic):Dynamic;
	/**
		Add an Axes to the figure.
		
		Call signatures::
		
		    add_axes(rect, projection=None, polar=False, **kwargs)
		    add_axes(ax)
		
		Parameters
		----------
		rect : sequence of float
		    The dimensions [left, bottom, width, height] of the new Axes. All
		    quantities are in fractions of figure width and height.
		
		projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
		    The projection type of the `~.axes.Axes`. *str* is the name of
		    a custom projection, see `~matplotlib.projections`. The default
		    None results in a 'rectilinear' projection.
		
		polar : bool, default: False
		    If True, equivalent to projection='polar'.
		
		axes_class : subclass type of `~.axes.Axes`, optional
		    The `.axes.Axes` subclass that is instantiated.  This parameter
		    is incompatible with *projection* and *polar*.  See
		    :ref:`axisartist_users-guide-index` for examples.
		
		sharex, sharey : `~.axes.Axes`, optional
		    Share the x or y `~matplotlib.axis` with sharex and/or sharey.
		    The axis will have the same limits, ticks, and scale as the axis
		    of the shared axes.
		
		label : str
		    A label for the returned Axes.
		
		Returns
		-------
		`~.axes.Axes`, or a subclass of `~.axes.Axes`
		    The returned axes class depends on the projection used. It is
		    `~.axes.Axes` if rectilinear projection is used and
		    `.projections.polar.PolarAxes` if polar projection is used.
		
		Other Parameters
		----------------
		**kwargs
		    This method also takes the keyword arguments for
		    the returned Axes class. The keyword arguments for the
		    rectilinear Axes class `~.axes.Axes` can be found in
		    the following table but there might also be other keyword
		    arguments if another projection is used, see the actual Axes
		    class.
		
		    Properties:
		    adjustable: {'box', 'datalim'}
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    anchor: (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
		    animated: bool
		    aspect: {'auto', 'equal'} or float
		    autoscale_on: bool
		    autoscalex_on: bool
		    autoscaley_on: bool
		    axes_locator: Callable[[Axes, Renderer], Bbox]
		    axisbelow: bool or 'line'
		    box_aspect: float or None
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    facecolor or fc: color
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
		    prop_cycle: unknown
		    rasterization_zorder: float or None
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    title: str
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xbound: unknown
		    xlabel: str
		    xlim: (bottom: float, top: float)
		    xmargin: float greater than -0.5
		    xscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    xticklabels: unknown
		    xticks: unknown
		    ybound: unknown
		    ylabel: str
		    ylim: (bottom: float, top: float)
		    ymargin: float greater than -0.5
		    yscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    yticklabels: unknown
		    yticks: unknown
		    zorder: float
		
		Notes
		-----
		In rare circumstances, `.add_axes` may be called with a single
		argument, an Axes instance already created in the present figure but
		not in the figure's list of Axes.
		
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
		    fig = plt.figure()
		    fig.add_axes(rect)
		    fig.add_axes(rect, frameon=False, facecolor='g')
		    fig.add_axes(rect, polar=True)
		    ax = fig.add_axes(rect, projection='polar')
		    fig.delaxes(ax)
		    fig.add_axes(ax)
	**/
	public function add_axes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Whenever the Axes state change, ``func(self)`` will be called.
	**/
	public function add_axobserver(func:Dynamic):Dynamic;
	/**
		Add a callback function that will be called whenever one of the
		`.Artist`'s properties changes.
		
		Parameters
		----------
		func : callable
		    The callback function. It must have the signature::
		
		        def func(artist: Artist) -> Any
		
		    where *artist* is the calling `.Artist`. Return values may exist
		    but are ignored.
		
		Returns
		-------
		int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Return a `.GridSpec` that has this figure as a parent.  This allows
		complex layout of Axes in the figure.
		
		Parameters
		----------
		nrows : int, default: 1
		    Number of rows in grid.
		
		ncols : int, default: 1
		    Number or columns in grid.
		
		Returns
		-------
		`.GridSpec`
		
		Other Parameters
		----------------
		**kwargs
		    Keyword arguments are passed to `.GridSpec`.
		
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
	public function add_gridspec(?nrows:Dynamic, ?ncols:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a `~.figure.SubFigure` to the figure as part of a subplot
		arrangement.
		
		Parameters
		----------
		subplotspec : `.gridspec.SubplotSpec`
		    Defines the region in a parent gridspec where the subfigure will
		    be placed.
		
		Returns
		-------
		`.figure.SubFigure`
		
		Other Parameters
		----------------
		**kwargs
		    Are passed to the `~.figure.SubFigure` object.
		
		See Also
		--------
		.Figure.subfigures
	**/
	public function add_subfigure(subplotspec:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an `~.axes.Axes` to the figure as part of a subplot arrangement.
		
		Call signatures::
		
		   add_subplot(nrows, ncols, index, **kwargs)
		   add_subplot(pos, **kwargs)
		   add_subplot(ax)
		   add_subplot()
		
		Parameters
		----------
		*args : int, (int, int, *index*), or `.SubplotSpec`, default: (1, 1, 1)
		    The position of the subplot described by one of
		
		    - Three integers (*nrows*, *ncols*, *index*). The subplot will
		      take the *index* position on a grid with *nrows* rows and
		      *ncols* columns. *index* starts at 1 in the upper left corner
		      and increases to the right.  *index* can also be a two-tuple
		      specifying the (*first*, *last*) indices (1-based, and including
		      *last*) of the subplot, e.g., ``fig.add_subplot(3, 1, (1, 2))``
		      makes a subplot that spans the upper 2/3 of the figure.
		    - A 3-digit integer. The digits are interpreted as if given
		      separately as three single-digit integers, i.e.
		      ``fig.add_subplot(235)`` is the same as
		      ``fig.add_subplot(2, 3, 5)``. Note that this can only be used
		      if there are no more than 9 subplots.
		    - A `.SubplotSpec`.
		
		    In rare circumstances, `.add_subplot` may be called with a single
		    argument, a subplot Axes instance already created in the
		    present figure but not in the figure's list of Axes.
		
		projection : {None, 'aitoff', 'hammer', 'lambert', 'mollweide', 'polar', 'rectilinear', str}, optional
		    The projection type of the subplot (`~.axes.Axes`). *str* is the
		    name of a custom projection, see `~matplotlib.projections`. The
		    default None results in a 'rectilinear' projection.
		
		polar : bool, default: False
		    If True, equivalent to projection='polar'.
		
		axes_class : subclass type of `~.axes.Axes`, optional
		    The `.axes.Axes` subclass that is instantiated.  This parameter
		    is incompatible with *projection* and *polar*.  See
		    :ref:`axisartist_users-guide-index` for examples.
		
		sharex, sharey : `~.axes.Axes`, optional
		    Share the x or y `~matplotlib.axis` with sharex and/or sharey.
		    The axis will have the same limits, ticks, and scale as the axis
		    of the shared axes.
		
		label : str
		    A label for the returned Axes.
		
		Returns
		-------
		`.axes.SubplotBase`, or another subclass of `~.axes.Axes`
		
		    The Axes of the subplot. The returned Axes base class depends on
		    the projection used. It is `~.axes.Axes` if rectilinear projection
		    is used and `.projections.polar.PolarAxes` if polar projection
		    is used. The returned Axes is then a subplot subclass of the
		    base class.
		
		Other Parameters
		----------------
		**kwargs
		    This method also takes the keyword arguments for the returned Axes
		    base class; except for the *figure* argument. The keyword arguments
		    for the rectilinear base class `~.axes.Axes` can be found in
		    the following table but there might also be other keyword
		    arguments if another projection is used.
		
		    Properties:
		    adjustable: {'box', 'datalim'}
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    anchor: (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
		    animated: bool
		    aspect: {'auto', 'equal'} or float
		    autoscale_on: bool
		    autoscalex_on: bool
		    autoscaley_on: bool
		    axes_locator: Callable[[Axes, Renderer], Bbox]
		    axisbelow: bool or 'line'
		    box_aspect: float or None
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    facecolor or fc: color
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
		    prop_cycle: unknown
		    rasterization_zorder: float or None
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    title: str
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xbound: unknown
		    xlabel: str
		    xlim: (bottom: float, top: float)
		    xmargin: float greater than -0.5
		    xscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    xticklabels: unknown
		    xticks: unknown
		    ybound: unknown
		    ylabel: str
		    ylim: (bottom: float, top: float)
		    ymargin: float greater than -0.5
		    yscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    yticklabels: unknown
		    yticks: unknown
		    zorder: float
		
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
		
		    fig = plt.figure()
		
		    fig.add_subplot(231)
		    ax1 = fig.add_subplot(2, 3, 1)  # equivalent but more general
		
		    fig.add_subplot(232, frameon=False)  # subplot with no frame
		    fig.add_subplot(233, projection='polar')  # polar subplot
		    fig.add_subplot(234, sharex=ax1)  # subplot sharing x-axis with ax1
		    fig.add_subplot(235, facecolor="red")  # red subplot
		
		    ax1.remove()  # delete ax1 from the figure
		    fig.add_subplot(ax1)  # add ax1 back to the figure
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
		    Default is to align all Axes on the figure.
		
		See Also
		--------
		matplotlib.figure.Figure.align_xlabels
		
		matplotlib.figure.Figure.align_ylabels
	**/
	public function align_labels(?axs:Dynamic):Dynamic;
	/**
		Align the xlabels of subplots in the same subplot column if label
		alignment is being done automatically (i.e. the label position is
		not manually set).
		
		Alignment persists for draw events after this is called.
		
		If a label is on the bottom, it is aligned with labels on Axes that
		also have their label on the bottom and that have the same
		bottom-most subplot row.  If the label is on the top,
		it is aligned with labels on Axes with the same top-most row.
		
		Parameters
		----------
		axs : list of `~matplotlib.axes.Axes`
		    Optional list of (or ndarray) `~matplotlib.axes.Axes`
		    to align the xlabels.
		    Default is to align all Axes on the figure.
		
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
		
		If a label is on the left, it is aligned with labels on Axes that
		also have their label on the left and that have the same
		left-most subplot column.  If the label is on the right,
		it is aligned with labels on Axes with the same right-most column.
		
		Parameters
		----------
		axs : list of `~matplotlib.axes.Axes`
		    Optional list (or ndarray) of `~matplotlib.axes.Axes`
		    to align the ylabels.
		    Default is to align all Axes on the figure.
		
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
	/**
		Date ticklabels often overlap, so it is useful to rotate them
		and right align them.  Also, a common use case is a number of
		subplots with shared x-axis where the x-axis is date data.  The
		ticklabels are often long, and it helps to rotate them on the
		bottom subplot and turn them off on other subplots, as well as
		turn off xlabels.
		
		Parameters
		----------
		bottom : float, default: 0.2
		    The bottom of the subplots for `subplots_adjust`.
		rotation : float, default: 30 degrees
		    The rotation angle of the xtick labels in degrees.
		ha : {'left', 'center', 'right'}, default: 'right'
		    The horizontal alignment of the xticklabels.
		which : {'major', 'minor', 'both'}, default: 'major'
		    Selects which ticklabels to rotate.
	**/
	public function autofmt_xdate(?bottom:Dynamic, ?rotation:Dynamic, ?ha:Dynamic, ?which:Dynamic):Dynamic;
	/**
		List of Axes in the Figure. You can access and modify the Axes in the
		Figure through this list.
		
		Do not modify the list itself. Instead, use `~Figure.add_axes`,
		`~.Figure.add_subplot` or `~.Figure.delaxes` to add or remove an Axes.
		
		Note: The `.Figure.axes` property and `~.Figure.get_axes` method are
		equivalent.
	**/
	public var axes : Dynamic;
	/**
		Clear the figure -- synonym for `clf`.
	**/
	public function clear(?keep_observers:Dynamic):Dynamic;
	/**
		Clear the figure.
		
		Set *keep_observers* to True if, for example,
		a gui widget is tracking the Axes in the figure.
	**/
	public function clf(?keep_observers:Dynamic):Dynamic;
	/**
		Add a colorbar to a plot.
		
		Parameters
		----------
		mappable
		    The `matplotlib.cm.ScalarMappable` (i.e., `~matplotlib.image.AxesImage`,
		    `~matplotlib.contour.ContourSet`, etc.) described by this colorbar.
		    This argument is mandatory for the `.Figure.colorbar` method but optional
		    for the `.pyplot.colorbar` function, which sets the default to the current
		    image.
		
		    Note that one can create a `.ScalarMappable` "on-the-fly" to generate
		    colorbars not attached to a previously drawn artist, e.g. ::
		
		        fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), ax=ax)
		
		cax : `~matplotlib.axes.Axes`, optional
		    Axes into which the colorbar will be drawn.
		
		ax : `~matplotlib.axes.Axes`, list of Axes, optional
		    One or more parent axes from which space for a new colorbar axes will be
		    stolen, if *cax* is None.  This has no effect if *cax* is set.
		
		use_gridspec : bool, optional
		    If *cax* is ``None``, a new *cax* is created as an instance of Axes.  If
		    *ax* is an instance of Subplot and *use_gridspec* is ``True``, *cax* is
		    created as an instance of Subplot using the :mod:`.gridspec` module.
		
		Returns
		-------
		colorbar : `~matplotlib.colorbar.Colorbar`
		
		Notes
		-----
		Additional keyword arguments are of two kinds:
		
		  axes properties:
		
		    location : None or {'left', 'right', 'top', 'bottom'}
		        The location, relative to the parent axes, where the colorbar axes
		        is created.  It also determines the *orientation* of the colorbar
		        (colorbars on the left and right are vertical, colorbars at the top
		        and bottom are horizontal).  If None, the location will come from the
		        *orientation* if it is set (vertical colorbars on the right, horizontal
		        ones at the bottom), or default to 'right' if *orientation* is unset.
		    orientation : None or {'vertical', 'horizontal'}
		        The orientation of the colorbar.  It is preferable to set the *location*
		        of the colorbar, as that also determines the *orientation*; passing
		        incompatible values for *location* and *orientation* raises an exception.
		    fraction : float, default: 0.15
		        Fraction of original axes to use for colorbar.
		    shrink : float, default: 1.0
		        Fraction by which to multiply the size of the colorbar.
		    aspect : float, default: 20
		        Ratio of long to short dimensions.
		
		
		    pad : float, default: 0.05 if vertical, 0.15 if horizontal
		        Fraction of original axes between colorbar and new image axes.
		    anchor : (float, float), optional
		        The anchor point of the colorbar axes.
		        Defaults to (0.0, 0.5) if vertical; (0.5, 1.0) if horizontal.
		    panchor : (float, float), or *False*, optional
		        The anchor point of the colorbar parent axes. If *False*, the parent
		        axes' anchor will be unchanged.
		        Defaults to (1.0, 0.5) if vertical; (0.5, 0.0) if horizontal.
		
		  colorbar properties:
		
		
		    ============  ====================================================
		    Property      Description
		    ============  ====================================================
		    *extend*      {'neither', 'both', 'min', 'max'}
		                  If not 'neither', make pointed end(s) for out-of-
		                  range values.  These are set for a given colormap
		                  using the colormap set_under and set_over methods.
		    *extendfrac*  {*None*, 'auto', length, lengths}
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
		    *spacing*     {'uniform', 'proportional'}
		                  Uniform spacing gives each discrete color the same
		                  space; proportional makes the space proportional to
		                  the data interval.
		    *ticks*       *None* or list of ticks or Locator
		                  If None, ticks are determined automatically from the
		                  input.
		    *format*      None or str or Formatter
		                  If None, `~.ticker.ScalarFormatter` is used.
		                  If a format string is given, e.g., '%.3f', that is used.
		                  An alternative `~.ticker.Formatter` may be given instead.
		    *drawedges*   bool
		                  Whether to draw lines at color boundaries.
		    *label*       str
		                  The label on the colorbar's long axis.
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
		                   colormapped to the corresponding value in values
		                   will be used.
		    ============   ===================================================
		
		
		
		If *mappable* is a `~.contour.ContourSet`, its *extend* kwarg is included
		automatically.
		
		The *shrink* kwarg provides a simple way to scale the colorbar with respect
		to the axes. Note that if *cax* is specified, it determines the size of the
		colorbar and *shrink* and *aspect* kwargs are ignored.
		
		For more precise control, you can manually specify the positions of
		the axes objects in which the mappable and the colorbar are drawn.  In
		this case, do not use any of the axes properties kwargs.
		
		It is known that some vector graphics viewers (svg and pdf) renders white gaps
		between segments of the colorbar.  This is due to bugs in the viewers, not
		Matplotlib.  As a workaround, the colorbar can be rendered with overlapping
		segments::
		
		    cbar = colorbar()
		    cbar.solids.set_edgecolor("face")
		    draw()
		
		However this has negative consequences in other circumstances, e.g. with
		semi-transparent images (alpha < 1) and colorbar extensions; therefore, this
		workaround is not used by default (see issue #1188).
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
		Convert *x* using the unit type of the xaxis.
		
		If the artist is not in contained in an Axes or if the xaxis does not
		have units, *x* itself is returned.
	**/
	public function convert_xunits(x:Dynamic):Dynamic;
	/**
		Convert *y* using the unit type of the yaxis.
		
		If the artist is not in contained in an Axes or if the yaxis does not
		have units, *y* itself is returned.
	**/
	public function convert_yunits(y:Dynamic):Dynamic;
	/**
		Remove the `~.axes.Axes` *ax* from the figure; update the current Axes.
	**/
	public function delaxes(ax:Dynamic):Dynamic;
	/**
		The resolution in dots per inch.
	**/
	public var dpi : Dynamic;
	/**
		Draw the Artist (and its children) using the given renderer.
		
		This has no effect if the artist is not visible (`.Artist.get_visible`
		returns False).
		
		Parameters
		----------
		renderer : `.RendererBase` subclass.
		
		Notes
		-----
		This method is overridden in the Artist subclasses.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		Draw `.Artist` *a* only.
		
		This method can only be used after an initial draw of the figure,
		because that creates and caches the renderer needed here.
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Draw the figure with no output.  Useful to get the final size of
		artists that require a draw before their size is known (e.g. text).
	**/
	public function draw_without_rendering():Dynamic;
	/**
		Use ``layoutgrid`` to determine pos positions within Axes.
		
		See also `.set_constrained_layout_pads`.
		
		Returns
		-------
		layoutgrid : private debugging object
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
		
		norm : `matplotlib.colors.Normalize`
		    A `.Normalize` instance to map the luminance to the
		    interval [0, 1].
		
		cmap : str or `matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    The colormap to use.
		
		vmin, vmax : float
		    If *norm* is not given, these values set the data limits for the
		    colormap.
		
		origin : {'upper', 'lower'}, default: :rc:`image.origin`
		    Indicates where the [0, 0] index of the array is in the upper left
		    or lower left corner of the axes.
		
		resize : bool
		    If *True*, resize the figure to match the given image size.
		
		Returns
		-------
		`matplotlib.image.FigureImage`
		
		Other Parameters
		----------------
		**kwargs
		    Additional kwargs are `.Artist` kwargs passed on to `.FigureImage`.
		
		Notes
		-----
		figimage complements the Axes image (`~matplotlib.axes.Axes.imshow`)
		which will be resampled to fit the current Axes.  If you want
		a resampled image to fill the entire figure, you can define an
		`~matplotlib.axes.Axes` with extent [0, 0, 1, 1].
		
		Examples
		--------
		::
		
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
		
		Recursively find all `.Artist` instances contained in the artist.
		
		Parameters
		----------
		match
		    A filter criterion for the matches. This can be
		
		    - *None*: Return all objects contained in artist.
		    - A function with signature ``def match(artist: Artist) -> bool``.
		      The result will only contain artists for which the function
		      returns *True*.
		    - A class instance: e.g., `.Line2D`. The result will only contain
		      artists of this class or its subclasses (``isinstance`` check).
		
		include_self : bool
		    Include *self* in the list to be checked for a match.
		
		Returns
		-------
		list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets,
		unless the artist has an associated colorbar, in which case scalar
		values are formatted using the colorbar's formatter.
		
		See Also
		--------
		get_cursor_data
	**/
	public function format_cursor_data(data:Dynamic):Dynamic;
	/**
		Return the figure's background patch visibility, i.e.
		whether the figure background will be drawn. Equivalent to
		``Figure.patch.get_visible()``.
	**/
	public var frameon : Dynamic;
	/**
		Get the current Axes.
		
		If there is currently no Axes on this Figure, a new one is created
		using `.Figure.add_subplot`.  (To test whether there is currently an
		Axes on a Figure, check whether ``figure.axes`` is empty.  To test
		whether there is currently a Figure on the pyplot figure stack, check
		whether `.pyplot.get_fignums()` is empty.)
		
		The following kwargs are supported for ensuring the returned Axes
		adheres to the given projection etc., and for Axes creation if
		the active Axes does not exist:
		
		Properties:
		    adjustable: {'box', 'datalim'}
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    anchor: (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
		    animated: bool
		    aspect: {'auto', 'equal'} or float
		    autoscale_on: bool
		    autoscalex_on: bool
		    autoscaley_on: bool
		    axes_locator: Callable[[Axes, Renderer], Bbox]
		    axisbelow: bool or 'line'
		    box_aspect: float or None
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    facecolor or fc: color
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
		    prop_cycle: unknown
		    rasterization_zorder: float or None
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    title: str
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xbound: unknown
		    xlabel: str
		    xlim: (bottom: float, top: float)
		    xmargin: float greater than -0.5
		    xscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    xticklabels: unknown
		    xticks: unknown
		    ybound: unknown
		    ylabel: str
		    ylim: (bottom: float, top: float)
		    ymargin: float greater than -0.5
		    yscale: {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    yticklabels: unknown
		    yticks: unknown
		    zorder: float
	**/
	public function gca(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return filter function to be used for agg filter.
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends.
	**/
	public function get_alpha():Dynamic;
	/**
		Return whether the artist is animated.
	**/
	public function get_animated():Dynamic;
	/**
		List of Axes in the Figure. You can access and modify the Axes in the
		Figure through this list.
		
		Do not modify the list itself. Instead, use `~Figure.add_axes`,
		`~.Figure.add_subplot` or `~.Figure.delaxes` to add or remove an Axes.
		
		Note: The `.Figure.axes` property and `~.Figure.get_axes` method are
		equivalent.
	**/
	public function get_axes():Dynamic;
	/**
		Get a list of artists contained in the figure.
	**/
	public function get_children():Dynamic;
	/**
		Return the clipbox.
	**/
	public function get_clip_box():Dynamic;
	/**
		Return whether the artist uses clipping.
	**/
	public function get_clip_on():Dynamic;
	/**
		Return the clip path.
	**/
	public function get_clip_path():Dynamic;
	/**
		Return whether constrained layout is being used.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
	**/
	public function get_constrained_layout():Dynamic;
	/**
		Get padding for ``constrained_layout``.
		
		Returns a list of ``w_pad, h_pad`` in inches and
		``wspace`` and ``hspace`` as fractions of the subplot.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
		
		Parameters
		----------
		relative : bool
		    If `True`, then convert from inches to figure relative.
	**/
	public function get_constrained_layout_pads(?relative:Dynamic):Dynamic;
	/**
		Return the cursor data for a given event.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		Cursor data can be used by Artists to provide additional context
		information for a given event. The default implementation just returns
		*None*.
		
		Subclasses can override the method and return arbitrary data. However,
		when doing so, they must ensure that `.format_cursor_data` can convert
		the data to a string representation.
		
		The only current use case is displaying the z-value of an `.AxesImage`
		in the status bar of a plot window, while moving the mouse.
		
		Parameters
		----------
		event : `matplotlib.backend_bases.MouseEvent`
		
		See Also
		--------
		format_cursor_data
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
		Return the figure height in inches.
	**/
	public function get_figheight():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the figure width in inches.
	**/
	public function get_figwidth():Dynamic;
	/**
		Return the figure's background patch visibility, i.e.
		whether the figure background will be drawn. Equivalent to
		``Figure.patch.get_visible()``.
	**/
	public function get_frameon():Dynamic;
	/**
		Return the group id.
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
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Get the line width of the Figure rectangle.
	**/
	public function get_linewidth():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picking behavior of the artist.
		
		The possible values are described in `.set_picker`.
		
		See Also
		--------
		set_picker, pickable, pick
	**/
	public function get_picker():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Return the current size of the figure in inches.
		
		Returns
		-------
		ndarray
		   The size (width, height) of the figure in inches.
		
		See Also
		--------
		matplotlib.figure.Figure.set_size_inches
		matplotlib.figure.Figure.get_figwidth
		matplotlib.figure.Figure.get_figheight
		
		Notes
		-----
		The size in pixels can be obtained by multiplying with `Figure.dpi`.
	**/
	public function get_size_inches():Dynamic;
	/**
		Return the sketch parameters for the artist.
		
		Returns
		-------
		tuple or None
		
		    A 3-tuple with the following elements:
		
		    - *scale*: The amplitude of the wiggle perpendicular to the
		      source line.
		    - *length*: The length of the wiggle along the line.
		    - *randomness*: The scale factor by which the length is
		      shrunken or expanded.
		
		    Returns *None* if no sketch parameters were set.
	**/
	public function get_sketch_params():Dynamic;
	/**
		Return the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Return whether `.tight_layout` is called when drawing.
	**/
	public function get_tight_layout():Dynamic;
	/**
		Return a (tight) bounding box of the figure *in inches*.
		
		Note that `.FigureBase` differs from all other artists, which return
		their `.Bbox` in pixels.
		
		Artists that have ``artist.set_in_layout(False)`` are not included
		in the bbox.
		
		Parameters
		----------
		renderer : `.RendererBase` subclass
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		bbox_extra_artists : list of `.Artist` or ``None``
		    List of artists to include in the tight bounding box.  If
		    ``None`` (default), then all artist children of each Axes are
		    included in the tight bounding box.
		
		Returns
		-------
		`.BboxBase`
		    containing the bounding box (in figure inches).
	**/
	public function get_tightbbox(renderer:Dynamic, ?bbox_extra_artists:Dynamic):Dynamic;
	/**
		Return the `.Transform` instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Get the artist's bounding box in display space.
		
		The bounding box' width and height are nonnegative.
		
		Subclasses should override for inclusion in the bounding box
		"tight" calculation. Default is to return an empty bounding
		box at 0, 0.
		
		Be careful when using this function, the results will not update
		if the artist window extent of the artist changes.  The extent
		can change due to any changes in the transform stack, such as
		changing the axes limits, the figure size, or the canvas used
		(as is done when saving a figure).  This can lead to unexpected
		behavior where interactive figures will look fine on the screen,
		but will save incorrectly.
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
		
		There are three possible interactions:
		
		- Add a point.
		- Remove the most recently added point.
		- Stop the interaction and return the points added so far.
		
		The actions are assigned to mouse buttons via the arguments
		*mouse_add*, *mouse_pop* and *mouse_stop*.
		
		Parameters
		----------
		n : int, default: 1
		    Number of mouse clicks to accumulate. If negative, accumulate
		    clicks until the input is terminated manually.
		timeout : float, default: 30 seconds
		    Number of seconds to wait before timing out. If zero or negative
		    will never timeout.
		show_clicks : bool, default: True
		    If True, show a red cross at the location of each click.
		mouse_add : `.MouseButton` or None, default: `.MouseButton.LEFT`
		    Mouse button used to add points.
		mouse_pop : `.MouseButton` or None, default: `.MouseButton.RIGHT`
		    Mouse button used to remove the most recently added point.
		mouse_stop : `.MouseButton` or None, default: `.MouseButton.MIDDLE`
		    Mouse button used to stop input.
		
		Returns
		-------
		list of tuples
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
		Return whether units are set on any axis.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	/**
		Place a legend on the figure.
		
		Call signatures::
		
		    legend()
		    legend(handles, labels)
		    legend(handles=handles)
		    legend(labels)
		
		The call signatures correspond to the following different ways to use
		this method:
		
		**1. Automatic detection of elements to be shown in the legend**
		
		The elements to be added to the legend are automatically determined,
		when you do not pass in any extra arguments.
		
		In this case, the labels are taken from the artist. You can specify
		them either at artist creation or by calling the
		:meth:`~.Artist.set_label` method on the artist::
		
		    ax.plot([1, 2, 3], label='Inline label')
		    fig.legend()
		
		or::
		
		    line, = ax.plot([1, 2, 3])
		    line.set_label('Label via method')
		    fig.legend()
		
		Specific lines can be excluded from the automatic legend element
		selection by defining a label starting with an underscore.
		This is default for all artists, so calling `.Figure.legend` without
		any arguments and without setting the labels manually will result in
		no legend being drawn.
		
		
		**2. Explicitly listing the artists and labels in the legend**
		
		For full control of which artists have a legend entry, it is possible
		to pass an iterable of legend artists followed by an iterable of
		legend labels respectively::
		
		    fig.legend([line1, line2, line3], ['label1', 'label2', 'label3'])
		
		
		**3. Explicitly listing the artists in the legend**
		
		This is similar to 2, but the labels are taken from the artists'
		label properties. Example::
		
		    line1, = ax1.plot([1, 2, 3], label='label1')
		    line2, = ax2.plot([1, 2, 3], label='label2')
		    fig.legend(handles=[line1, line2])
		
		
		**4. Labeling existing plot elements**
		
		.. admonition:: Discouraged
		
		    This call signature is discouraged, because the relation between
		    plot elements and labels is only implicit by their order and can
		    easily be mixed up.
		
		To make a legend for all artists on all Axes, call this function with
		an iterable of strings, one for each legend item. For example::
		
		    fig, (ax1, ax2)  = plt.subplots(1, 2)
		    ax1.plot([1, 3, 5], color='blue')
		    ax2.plot([2, 4, 6], color='red')
		    fig.legend(['the blues', 'the reds'])
		
		
		Parameters
		----------
		handles : list of `.Artist`, optional
		    A list of Artists (lines, patches) to be added to the legend.
		    Use this together with *labels*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		    The length of handles and labels should be the same in this
		    case. If they are not, they are truncated to the smaller length.
		
		labels : list of str, optional
		    A list of labels to show next to the artists.
		    Use this together with *handles*, if you need full control on what
		    is shown in the legend and the automatic mechanism described above
		    is not sufficient.
		
		Returns
		-------
		`~matplotlib.legend.Legend`
		
		Other Parameters
		----------------
		
		loc : str or pair of floats, default: :rc:`legend.loc` ('best' for axes, 'upper right' for figures)
		    The location of the legend.
		
		    The strings
		    ``'upper left', 'upper right', 'lower left', 'lower right'``
		    place the legend at the corresponding corner of the axes/figure.
		
		    The strings
		    ``'upper center', 'lower center', 'center left', 'center right'``
		    place the legend at the center of the corresponding edge of the
		    axes/figure.
		
		    The string ``'center'`` places the legend at the center of the axes/figure.
		
		    The string ``'best'`` places the legend at the location, among the nine
		    locations defined so far, with the minimum overlap with other drawn
		    artists.  This option can be quite slow for plots with large amounts of
		    data; your plotting speed may benefit from providing a specific location.
		
		    The location can also be a 2-tuple giving the coordinates of the lower-left
		    corner of the legend in axes coordinates (in which case *bbox_to_anchor*
		    will be ignored).
		
		    For back-compatibility, ``'center right'`` (but no other location) can also
		    be spelled ``'right'``, and each "string" locations can also be given as a
		    numeric value:
		
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
		
		bbox_to_anchor : `.BboxBase`, 2-tuple, or 4-tuple of floats
		    Box that is used to position the legend in conjunction with *loc*.
		    Defaults to `axes.bbox` (if called as a method to `.Axes.legend`) or
		    `figure.bbox` (if `.Figure.legend`).  This argument allows arbitrary
		    placement of the legend.
		
		    Bbox coordinates are interpreted in the coordinate system given by
		    *bbox_transform*, with the default transform
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
		
		ncol : int, default: 1
		    The number of columns that the legend has.
		
		prop : None or `matplotlib.font_manager.FontProperties` or dict
		    The font properties of the legend. If None (default), the current
		    :data:`matplotlib.rcParams` will be used.
		
		fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    The font size of the legend. If the value is numeric the size will be the
		    absolute font size in points. String values are relative to the current
		    default font size. This argument is only used if *prop* is not specified.
		
		labelcolor : str or list, default: :rc:`legend.labelcolor`
		    The color of the text in the legend. Either a valid color string
		    (for example, 'red'), or a list of color strings. The labelcolor can
		    also be made to match the color of the line or marker using 'linecolor',
		    'markerfacecolor' (or 'mfc'), or 'markeredgecolor' (or 'mec').
		
		    Labelcolor can be set globally using :rc:`legend.labelcolor`. If None,
		    use :rc:`text.color`.
		
		numpoints : int, default: :rc:`legend.numpoints`
		    The number of marker points in the legend when creating a legend
		    entry for a `.Line2D` (line).
		
		scatterpoints : int, default: :rc:`legend.scatterpoints`
		    The number of marker points in the legend when creating
		    a legend entry for a `.PathCollection` (scatter plot).
		
		scatteryoffsets : iterable of floats, default: ``[0.375, 0.5, 0.3125]``
		    The vertical offset (relative to the font size) for the markers
		    created for a scatter plot legend entry. 0.0 is at the base the
		    legend text, and 1.0 is at the top. To draw all markers at the
		    same height, set to ``[0.5]``.
		
		markerscale : float, default: :rc:`legend.markerscale`
		    The relative size of legend markers compared with the originally
		    drawn ones.
		
		markerfirst : bool, default: True
		    If *True*, legend marker is placed to the left of the legend label.
		    If *False*, legend marker is placed to the right of the legend label.
		
		frameon : bool, default: :rc:`legend.frameon`
		    Whether the legend should be drawn on a patch (frame).
		
		fancybox : bool, default: :rc:`legend.fancybox`
		    Whether round edges should be enabled around the `.FancyBboxPatch` which
		    makes up the legend's background.
		
		shadow : bool, default: :rc:`legend.shadow`
		    Whether to draw a shadow behind the legend.
		
		framealpha : float, default: :rc:`legend.framealpha`
		    The alpha transparency of the legend's background.
		    If *shadow* is activated and *framealpha* is ``None``, the default value is
		    ignored.
		
		facecolor : "inherit" or color, default: :rc:`legend.facecolor`
		    The legend's background color.
		    If ``"inherit"``, use :rc:`axes.facecolor`.
		
		edgecolor : "inherit" or color, default: :rc:`legend.edgecolor`
		    The legend's background patch edge color.
		    If ``"inherit"``, use take :rc:`axes.edgecolor`.
		
		mode : {"expand", None}
		    If *mode* is set to ``"expand"`` the legend will be horizontally
		    expanded to fill the axes area (or *bbox_to_anchor* if defines
		    the legend's size).
		
		bbox_transform : None or `matplotlib.transforms.Transform`
		    The transform for the bounding box (*bbox_to_anchor*). For a value
		    of ``None`` (default) the Axes'
		    :data:`~matplotlib.axes.Axes.transAxes` transform will be used.
		
		title : str or None
		    The legend's title. Default is no title (``None``).
		
		title_fontproperties : None or `matplotlib.font_manager.FontProperties` or dict
		    The font properties of the legend's title. If None (default), the
		    *title_fontsize* argument will be used if present; if *title_fontsize* is
		    also None, the current :rc:`legend.title_fontsize` will be used.
		
		title_fontsize : int or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}, default: :rc:`legend.title_fontsize`
		    The font size of the legend's title.
		    Note: This cannot be combined with *title_fontproperties*. If you want
		    to set the fontsize alongside other font properties, use the *size*
		    parameter in *title_fontproperties*.
		
		borderpad : float, default: :rc:`legend.borderpad`
		    The fractional whitespace inside the legend border, in font-size units.
		
		labelspacing : float, default: :rc:`legend.labelspacing`
		    The vertical space between the legend entries, in font-size units.
		
		handlelength : float, default: :rc:`legend.handlelength`
		    The length of the legend handles, in font-size units.
		
		handleheight : float, default: :rc:`legend.handleheight`
		    The height of the legend handles, in font-size units.
		
		handletextpad : float, default: :rc:`legend.handletextpad`
		    The pad between the legend handle and text, in font-size units.
		
		borderaxespad : float, default: :rc:`legend.borderaxespad`
		    The pad between the axes and legend border, in font-size units.
		
		columnspacing : float, default: :rc:`legend.columnspacing`
		    The spacing between columns, in font-size units.
		
		handler_map : dict or None
		    The custom dictionary mapping instances or types to a legend
		    handler. This *handler_map* updates the default handler map
		    found at `matplotlib.legend.Legend.get_legend_handler_map`.
		
		
		See Also
		--------
		.Axes.legend
		
		Notes
		-----
		Some artists are not supported by this function.  See
		:doc:`/tutorials/intermediate/legend_guide` for details.
	**/
	public function legend(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		If this property is set to *True*, the artist will be queried for
		custom context information when the mouse cursor moves over it.
		
		See also :meth:`get_cursor_data`, :class:`.ToolCursorPosition` and
		:class:`.NavigationToolbar2`.
	**/
	public var mouseover : Dynamic;
	/**
		Call all of the registered callbacks.
		
		This function is triggered internally when a property is changed.
		
		See Also
		--------
		add_callback
		remove_callback
	**/
	public function pchanged():Dynamic;
	/**
		Process a pick event.
		
		Each child artist will fire a pick event if *mouseevent* is over
		the artist and the artist has picker set.
		
		See Also
		--------
		set_picker, get_picker, pickable
	**/
	public function pick(mouseevent:Dynamic):Dynamic;
	/**
		Return whether the artist is pickable.
		
		See Also
		--------
		set_picker, get_picker, pick
	**/
	public function pickable():Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	/**
		Remove the artist from the figure if possible.
		
		The effect will not be visible until the figure is redrawn, e.g.,
		with `.FigureCanvasBase.draw_idle`.  Call `~.axes.Axes.relim` to
		update the axes limits if desired.
		
		Note: `~.axes.Axes.relim` will not see collections even if the
		collection was added to the axes with *autolim* = True.
		
		Note: there is no support for removing the artist's legend entry.
	**/
	public function remove():Dynamic;
	/**
		Remove a callback based on its observer id.
		
		See Also
		--------
		add_callback
	**/
	public function remove_callback(oid:Dynamic):Dynamic;
	/**
		Save the current figure.
		
		Call signature::
		
		  savefig(fname, *, dpi='figure', format=None, metadata=None,
		          bbox_inches=None, pad_inches=0.1,
		          facecolor='auto', edgecolor='auto',
		          backend=None, **kwargs
		         )
		
		The available output formats depend on the backend being used.
		
		Parameters
		----------
		fname : str or path-like or binary file-like
		    A path, or a Python file-like object, or
		    possibly some backend-dependent object such as
		    `matplotlib.backends.backend_pdf.PdfPages`.
		
		    If *format* is set, it determines the output format, and the file
		    is saved as *fname*.  Note that *fname* is used verbatim, and there
		    is no attempt to make the extension, if any, of *fname* match
		    *format*, and no extension is appended.
		
		    If *format* is not set, then the format is inferred from the
		    extension of *fname*, if there is one.  If *format* is not
		    set and *fname* has no extension, then the file is saved with
		    :rc:`savefig.format` and the appropriate extension is appended to
		    *fname*.
		
		Other Parameters
		----------------
		dpi : float or 'figure', default: :rc:`savefig.dpi`
		    The resolution in dots per inch.  If 'figure', use the figure's
		    dpi value.
		
		format : str
		    The file format, e.g. 'png', 'pdf', 'svg', ... The behavior when
		    this is unset is documented under *fname*.
		
		metadata : dict, optional
		    Key/value pairs to store in the image metadata. The supported keys
		    and defaults depend on the image format and backend:
		
		    - 'png' with Agg backend: See the parameter ``metadata`` of
		      `~.FigureCanvasAgg.print_png`.
		    - 'pdf' with pdf backend: See the parameter ``metadata`` of
		      `~.backend_pdf.PdfPages`.
		    - 'svg' with svg backend: See the parameter ``metadata`` of
		      `~.FigureCanvasSVG.print_svg`.
		    - 'eps' and 'ps' with PS backend: Only 'Creator' is supported.
		
		bbox_inches : str or `.Bbox`, default: :rc:`savefig.bbox`
		    Bounding box in inches: only the given portion of the figure is
		    saved.  If 'tight', try to figure out the tight bbox of the figure.
		
		pad_inches : float, default: :rc:`savefig.pad_inches`
		    Amount of padding around the figure when bbox_inches is 'tight'.
		
		facecolor : color or 'auto', default: :rc:`savefig.facecolor`
		    The facecolor of the figure.  If 'auto', use the current figure
		    facecolor.
		
		edgecolor : color or 'auto', default: :rc:`savefig.edgecolor`
		    The edgecolor of the figure.  If 'auto', use the current figure
		    edgecolor.
		
		backend : str, optional
		    Use a non-default backend to render the file, e.g. to render a
		    png file with the "cairo" backend rather than the default "agg",
		    or a pdf file with the "pgf" backend rather than the default
		    "pdf".  Note that the default backend is normally sufficient.  See
		    :ref:`the-builtin-backends` for a list of valid backends for each
		    file format.  Custom backends can be referenced as "module://...".
		
		orientation : {'landscape', 'portrait'}
		    Currently only supported by the postscript backend.
		
		papertype : str
		    One of 'letter', 'legal', 'executive', 'ledger', 'a0' through
		    'a10', 'b0' through 'b10'. Only supported for postscript
		    output.
		
		transparent : bool
		    If *True*, the Axes patches will all be transparent; the
		    Figure patch will also be transparent unless *facecolor*
		    and/or *edgecolor* are specified via kwargs.
		
		    If *False* has no effect and the color of the Axes and
		    Figure patches are unchanged (unless the Figure patch
		    is specified via the *facecolor* and/or *edgecolor* keyword
		    arguments in which case those colors are used).
		
		    The transparency of these patches will be restored to their
		    original values upon exit of this function.
		
		    This is useful, for example, for displaying
		    a plot on top of a colored background on a web page.
		
		bbox_extra_artists : list of `~matplotlib.artist.Artist`, optional
		    A list of extra artists that will be considered when the
		    tight bbox is calculated.
		
		pil_kwargs : dict, optional
		    Additional keyword arguments that are passed to
		    `PIL.Image.Image.save` when saving the figure.
	**/
	public function savefig(fname:Dynamic, ?transparent:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the current Axes to be *a* and return *a*.
	**/
	public function sca(a:Dynamic):Dynamic;
	/**
		Set multiple properties at once.
		
		Supported properties are
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    canvas: FigureCanvas
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    constrained_layout: bool or dict or None
		    constrained_layout_pads: float, default: :rc:`figure.constrained_layout.w_pad`
		    dpi: float
		    edgecolor: color
		    facecolor: color
		    figheight: float
		    figure: `.Figure`
		    figwidth: float
		    frameon: bool
		    gid: str
		    in_layout: bool
		    label: object
		    linewidth: number
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    size_inches: (float, float) or float
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    tight_layout: bool or dict with keys "pad", "w_pad", "h_pad", "rect" or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?canvas:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?constrained_layout:Dynamic, ?constrained_layout_pads:Dynamic, ?dpi:Dynamic, ?edgecolor:Dynamic, ?facecolor:Dynamic, ?figheight:Dynamic, ?figwidth:Dynamic, ?frameon:Dynamic, ?gid:Dynamic, ?in_layout:Dynamic, ?label:Dynamic, ?linewidth:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?rasterized:Dynamic, ?size_inches:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?tight_layout:Dynamic, ?transform:Dynamic, ?url:Dynamic, ?visible:Dynamic, ?zorder:Dynamic):Dynamic;
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
		alpha : scalar or None
		    *alpha* must be within the 0-1 range, inclusive.
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set whether the artist is intended to be used in an animation.
		
		If True, the artist is excluded from regular drawing of the figure.
		You have to call `.Figure.draw_artist` / `.Axes.draw_artist`
		explicitly on the artist. This appoach is used to speed up animations
		using blitting.
		
		See also `matplotlib.animation` and
		:doc:`/tutorials/advanced/blitting`.
		
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
		Set whether the artist uses clipping.
		
		When False artists will be visible outside of the axes which
		can lead to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path.
		
		Parameters
		----------
		path : `.Patch` or `.Path` or `.TransformedPath` or None
		    The clip path. If given a `.Path`, *transform* must be provided as
		    well. If *None*, a previously set clip path is removed.
		transform : `~matplotlib.transforms.Transform`, optional
		    Only used if *path* is a `.Path`, in which case the given `.Path`
		    is converted to a `.TransformedPath` using *transform*.
		
		Notes
		-----
		For efficiency, if *path* is a `.Rectangle` this method will set the
		clipping box to the corresponding rectangle and set the clipping path
		to ``None``.
		
		For technical reasons (support of `~.Artist.set`), a tuple
		(*path*, *transform*) is also accepted as a single positional
		parameter.
		
		.. ACCEPTS: Patch or (Path, Transform) or None
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set whether ``constrained_layout`` is used upon drawing. If None,
		:rc:`figure.constrained_layout.use` value will be used.
		
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
		Set padding for ``constrained_layout``.
		
		Tip: The parameters can be passed from a dictionary by using
		``fig.set_constrained_layout(**pad_dict)``.
		
		See :doc:`/tutorials/intermediate/constrainedlayout_guide`.
		
		Parameters
		----------
		w_pad : float, default: :rc:`figure.constrained_layout.w_pad`
		    Width padding in inches.  This is the pad around Axes
		    and is meant to make sure there is enough room for fonts to
		    look good.  Defaults to 3 pts = 0.04167 inches
		
		h_pad : float, default: :rc:`figure.constrained_layout.h_pad`
		    Height padding in inches. Defaults to 3 pts.
		
		wspace : float, default: :rc:`figure.constrained_layout.wspace`
		    Width padding between subplots, expressed as a fraction of the
		    subplot width.  The total padding ends up being w_pad + wspace.
		
		hspace : float, default: :rc:`figure.constrained_layout.hspace`
		    Height padding between subplots, expressed as a fraction of the
		    subplot width. The total padding ends up being h_pad + hspace.
	**/
	public function set_constrained_layout_pads(?w_pad:Dynamic, ?h_pad:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Dynamic;
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
		
		Parameters
		----------
		val : float
		forward : bool
		    See `set_size_inches`.
		
		See Also
		--------
		matplotlib.figure.Figure.set_figwidth
		matplotlib.figure.Figure.set_size_inches
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
		
		Parameters
		----------
		val : float
		forward : bool
		    See `set_size_inches`.
		
		See Also
		--------
		matplotlib.figure.Figure.set_figheight
		matplotlib.figure.Figure.set_size_inches
	**/
	public function set_figwidth(val:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set the figure's background patch visibility, i.e.
		whether the figure background will be drawn. Equivalent to
		``Figure.patch.set_visible()``.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frameon(b:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
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
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the line width of the Figure rectangle.
		
		Parameters
		----------
		linewidth : number
	**/
	public function set_linewidth(linewidth:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Define the picking behavior of the artist.
		
		Parameters
		----------
		picker : None or bool or float or callable
		    This can be one of the following:
		
		    - *None*: Picking is disabled for this artist (default).
		
		    - A boolean: If *True* then picking will be enabled and the
		      artist will fire a pick event if the mouse event is over
		      the artist.
		
		    - A float: If picker is a number it is interpreted as an
		      epsilon tolerance in points and the artist will fire
		      off an event if its data is within epsilon of the mouse
		      event.  For some artists like lines and patch collections,
		      the artist may provide additional data to the pick event
		      that is generated, e.g., the indices of the data within
		      epsilon of the pick event
		
		    - A function: If picker is callable, it is a user supplied
		      function which determines whether the artist is hit by the
		      mouse event::
		
		        hit, props = picker(artist, mouseevent)
		
		      to determine the hit test.  if the mouse event is over the
		      artist, return *hit=True* and props is a dictionary of
		      properties you want added to the PickEvent attributes.
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing for vector graphics output.
		
		Rasterized drawing is not supported by all artists. If you try to
		enable this on an artist that does not support it, the command has no
		effect and a warning will be issued.
		
		This setting is ignored for pixel-based output.
		
		See also :doc:`/gallery/misc/rasterization_demo`.
		
		Parameters
		----------
		rasterized : bool
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the figure size in inches.
		
		Call signatures::
		
		     fig.set_size_inches(w, h)  # OR
		     fig.set_size_inches((w, h))
		
		Parameters
		----------
		w : (float, float) or float
		    Width and height in inches (if height not specified as a separate
		    argument) or width.
		h : float
		    Height in inches.
		forward : bool, default: True
		    If ``True``, the canvas size is automatically updated, e.g.,
		    you can resize the figure window from the shell.
		
		See Also
		--------
		matplotlib.figure.Figure.get_size_inches
		matplotlib.figure.Figure.set_figwidth
		matplotlib.figure.Figure.set_figheight
		
		Notes
		-----
		To transform from pixels to inches divide by `Figure.dpi`.
	**/
	public function set_size_inches(w:Dynamic, ?h:Dynamic, ?forward:Dynamic):Dynamic;
	/**
		Set the sketch parameters.
		
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
		
		    The PGF backend uses this argument as an RNG seed and not as
		    described above. Using the same seed yields the same random shape.
		
		    .. ACCEPTS: (scale: float, length: float, randomness: float)
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Set the snapping behavior.
		
		Snapping aligns positions with the pixel grid, which results in
		clearer images. For example, if a black line of 1px width was
		defined at a position in between two pixels, the resulting image
		would contain the interpolated value of that line in the pixel grid,
		which would be a grey value on both adjacent pixel positions. In
		contrast, snapping will move the line to the nearest integer pixel
		value, so that the resulting image will really contain a 1px wide
		black line.
		
		Snapping is currently only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
		    Possible values:
		
		    - *True*: Snap vertices to the nearest pixel center.
		    - *False*: Do not modify vertex positions.
		    - *None*: (auto) If the path contains only rectilinear line
		      segments, round to the nearest pixel center.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set whether and how `.tight_layout` is called when drawing.
		
		Parameters
		----------
		tight : bool or dict with keys "pad", "w_pad", "h_pad", "rect" or None
		    If a bool, sets whether to call `.tight_layout` upon drawing.
		    If ``None``, use :rc:`figure.autolayout` instead.
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
		Set the url for the artist.
		
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
		
		If the figure was not created using `~.pyplot.figure`, it will lack
		a `~.backend_bases.FigureManagerBase`, and this method will raise an
		AttributeError.
		
		.. warning::
		
		    This does not manage an GUI event loop. Consequently, the figure
		    may only be shown briefly or not shown at all if you or your
		    environment are not managing an event loop.
		
		    Proper use cases for `.Figure.show` include running this from a
		    GUI application or an IPython shell.
		
		    If you're running a pure python shell or executing a non-GUI
		    python script, you should use `matplotlib.pyplot.show` instead,
		    which takes care of managing the event loop for you.
		
		Parameters
		----------
		warn : bool, default: True
		    If ``True`` and we are not running headless (i.e. on Linux with an
		    unset DISPLAY), issue warning when called on a non-GUI backend.
	**/
	public function show(?warn:Dynamic):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		``x`` and ``y`` sticky edge lists for autoscaling.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical use case is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		Moreover, margin expansion "bumps" against sticky edges and cannot
		cross them.  For example, if the upper data limit is 1.0, the upper
		view limit computed by simple margin application is 1.2, but there is a
		sticky edge at 1.1, then the actual upper view limit will be 1.1.
		
		This attribute cannot be assigned to; however, the ``x`` and ``y``
		lists can be modified in place as needed.
		
		Examples
		--------
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Add a subfigure to this figure or subfigure.
		
		A subfigure has the same artist methods as a figure, and is logically
		the same as a figure, but cannot print itself.
		See :doc:`/gallery/subplots_axes_and_figures/subfigures`.
		
		Parameters
		----------
		nrows, ncols : int, default: 1
		    Number of rows/columns of the subfigure grid.
		
		squeeze : bool, default: True
		    If True, extra dimensions are squeezed out from the returned
		    array of subfigures.
		
		wspace, hspace : float, default: None
		    The amount of width/height reserved for space between subfigures,
		    expressed as a fraction of the average subfigure width/height.
		    If not given, the values will be inferred from a figure or
		    rcParams when necessary.
		
		width_ratios : array-like of length *ncols*, optional
		    Defines the relative widths of the columns. Each column gets a
		    relative width of ``width_ratios[i] / sum(width_ratios)``.
		    If not given, all columns will have the same width.
		
		height_ratios : array-like of length *nrows*, optional
		    Defines the relative heights of the rows. Each row gets a
		    relative height of ``height_ratios[i] / sum(height_ratios)``.
		    If not given, all rows will have the same height.
	**/
	public function subfigures(?nrows:Dynamic, ?ncols:Dynamic, ?squeeze:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic, ?width_ratios:Dynamic, ?height_ratios:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Build a layout of Axes based on ASCII art or nested lists.
		
		This is a helper function to build complex GridSpec layouts visually.
		
		.. note ::
		
		   This API is provisional and may be revised in the future based on
		   early user feedback.
		
		Parameters
		----------
		mosaic : list of list of {hashable or nested} or str
		
		    A visual layout of how you want your Axes to be arranged
		    labeled as strings.  For example ::
		
		       x = [['A panel', 'A panel', 'edge'],
		            ['C panel', '.',       'edge']]
		
		    produces 4 Axes:
		
		    - 'A panel' which is 1 row high and spans the first two columns
		    - 'edge' which is 2 rows high and is on the right edge
		    - 'C panel' which in 1 row and 1 column wide in the bottom left
		    - a blank space 1 row and 1 column wide in the bottom center
		
		    Any of the entries in the layout can be a list of lists
		    of the same form to create nested layouts.
		
		    If input is a str, then it can either be a multi-line string of
		    the form ::
		
		      '''
		      AAE
		      C.E
		      '''
		
		    where each character is a column and each line is a row. Or it
		    can be a single-line string where rows are separated by ``;``::
		
		      'AB;CC'
		
		    The string notation allows only single character Axes labels and
		    does not support nesting but is very terse.
		
		sharex, sharey : bool, default: False
		    If True, the x-axis (*sharex*) or y-axis (*sharey*) will be shared
		    among all subplots.  In that case, tick label visibility and axis
		    units behave as for `subplots`.  If False, each subplot's x- or
		    y-axis will be independent.
		
		subplot_kw : dict, optional
		    Dictionary with keywords passed to the `.Figure.add_subplot` call
		    used to create each subplot.
		
		gridspec_kw : dict, optional
		    Dictionary with keywords passed to the `.GridSpec` constructor used
		    to create the grid the subplots are placed on.
		
		empty_sentinel : object, optional
		    Entry in the layout to mean "leave this space empty".  Defaults
		    to ``'.'``. Note, if *layout* is a string, it is processed via
		    `inspect.cleandoc` to remove leading white space, which may
		    interfere with using white-space as the empty sentinel.
		
		Returns
		-------
		dict[label, Axes]
		   A dictionary mapping the labels to the Axes objects.  The order of
		   the axes is left-to-right and top-to-bottom of their position in the
		   total layout.
	**/
	public function subplot_mosaic(mosaic:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?subplot_kw:Dynamic, ?gridspec_kw:Dynamic, ?empty_sentinel:Dynamic):Dynamic;
	/**
		Add a set of subplots to this figure.
		
		This utility wrapper makes it convenient to create common layouts of
		subplots in a single call.
		
		Parameters
		----------
		nrows, ncols : int, default: 1
		    Number of rows/columns of the subplot grid.
		
		sharex, sharey : bool or {'none', 'all', 'row', 'col'}, default: False
		    Controls sharing of x-axis (*sharex*) or y-axis (*sharey*):
		
		    - True or 'all': x- or y-axis will be shared among all subplots.
		    - False or 'none': each subplot x- or y-axis will be independent.
		    - 'row': each subplot row will share an x- or y-axis.
		    - 'col': each subplot column will share an x- or y-axis.
		
		    When subplots have a shared x-axis along a column, only the x tick
		    labels of the bottom subplot are created. Similarly, when subplots
		    have a shared y-axis along a row, only the y tick labels of the
		    first column subplot are created. To later turn other subplots'
		    ticklabels on, use `~matplotlib.axes.Axes.tick_params`.
		
		    When subplots have a shared axis that has units, calling
		    `.Axis.set_units` will update each axis with the new units.
		
		squeeze : bool, default: True
		    - If True, extra dimensions are squeezed out from the returned
		      array of Axes:
		
		      - if only one subplot is constructed (nrows=ncols=1), the
		        resulting single Axes object is returned as a scalar.
		      - for Nx1 or 1xM subplots, the returned object is a 1D numpy
		        object array of Axes objects.
		      - for NxM, subplots with N>1 and M>1 are returned as a 2D array.
		
		    - If False, no squeezing at all is done: the returned Axes object
		      is always a 2D array containing Axes instances, even if it ends
		      up being 1x1.
		
		subplot_kw : dict, optional
		    Dict with keywords passed to the `.Figure.add_subplot` call used to
		    create each subplot.
		
		gridspec_kw : dict, optional
		    Dict with keywords passed to the
		    `~matplotlib.gridspec.GridSpec` constructor used to create
		    the grid the subplots are placed on.
		
		Returns
		-------
		`~.axes.Axes` or array of Axes
		    Either a single `~matplotlib.axes.Axes` object or an array of Axes
		    objects if more than one subplot was created. The dimensions of the
		    resulting array can be controlled with the *squeeze* keyword, see
		    above.
		
		See Also
		--------
		.pyplot.subplots
		.Figure.add_subplot
		.pyplot.subplot
		
		Examples
		--------
		::
		
		    # First create some toy data:
		    x = np.linspace(0, 2*np.pi, 400)
		    y = np.sin(x**2)
		
		    # Create a figure
		    plt.figure()
		
		    # Create a subplot
		    ax = fig.subplots()
		    ax.plot(x, y)
		    ax.set_title('Simple plot')
		
		    # Create two subplots and unpack the output array immediately
		    ax1, ax2 = fig.subplots(1, 2, sharey=True)
		    ax1.plot(x, y)
		    ax1.set_title('Sharing Y axis')
		    ax2.scatter(x, y)
		
		    # Create four polar Axes and access them through the returned array
		    axes = fig.subplots(2, 2, subplot_kw=dict(projection='polar'))
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
	**/
	public function subplots(?nrows:Dynamic, ?ncols:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?squeeze:Dynamic, ?subplot_kw:Dynamic, ?gridspec_kw:Dynamic):Dynamic;
	/**
		Adjust the subplot layout parameters.
		
		Unset parameters are left unmodified; initial values are given by
		:rc:`figure.subplot.[name]`.
		
		Parameters
		----------
		left : float, optional
		    The position of the left edge of the subplots,
		    as a fraction of the figure width.
		right : float, optional
		    The position of the right edge of the subplots,
		    as a fraction of the figure width.
		bottom : float, optional
		    The position of the bottom edge of the subplots,
		    as a fraction of the figure height.
		top : float, optional
		    The position of the top edge of the subplots,
		    as a fraction of the figure height.
		wspace : float, optional
		    The width of the padding between subplots,
		    as a fraction of the average Axes width.
		hspace : float, optional
		    The height of the padding between subplots,
		    as a fraction of the average Axes height.
	**/
	public function subplots_adjust(?left:Dynamic, ?bottom:Dynamic, ?right:Dynamic, ?top:Dynamic, ?wspace:Dynamic, ?hspace:Dynamic):Dynamic;
	/**
		Add a centered suptitle to the figure.
		
		Parameters
		----------
		t : str
		    The suptitle text.
		x : float, default: 0.5
		    The x location of the text in figure coordinates.
		y : float, default: 0.98
		    The y location of the text in figure coordinates.
		horizontalalignment, ha : {'center', 'left', 'right'}, default: center
		    The horizontal alignment of the text relative to (*x*, *y*).
		verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: top
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
		    The `.Text` instance of the suptitle.
		
		Other Parameters
		----------------
		fontproperties : None or dict, optional
		    A dict of font properties. If *fontproperties* is given the
		    default values for font size and weight are taken from the
		    `.FontProperties` defaults. :rc:`figure.titlesize` and
		    :rc:`figure.titleweight` are ignored in this case.
		
		**kwargs
		    Additional kwargs are `matplotlib.text.Text` properties.
	**/
	public function suptitle(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a centered supxlabel to the figure.
		
		Parameters
		----------
		t : str
		    The supxlabel text.
		x : float, default: 0.5
		    The x location of the text in figure coordinates.
		y : float, default: 0.01
		    The y location of the text in figure coordinates.
		horizontalalignment, ha : {'center', 'left', 'right'}, default: center
		    The horizontal alignment of the text relative to (*x*, *y*).
		verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: bottom
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
		    The `.Text` instance of the supxlabel.
		
		Other Parameters
		----------------
		fontproperties : None or dict, optional
		    A dict of font properties. If *fontproperties* is given the
		    default values for font size and weight are taken from the
		    `.FontProperties` defaults. :rc:`figure.titlesize` and
		    :rc:`figure.titleweight` are ignored in this case.
		
		**kwargs
		    Additional kwargs are `matplotlib.text.Text` properties.
	**/
	public function supxlabel(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a centered supylabel to the figure.
		
		Parameters
		----------
		t : str
		    The supylabel text.
		x : float, default: 0.02
		    The x location of the text in figure coordinates.
		y : float, default: 0.5
		    The y location of the text in figure coordinates.
		horizontalalignment, ha : {'center', 'left', 'right'}, default: left
		    The horizontal alignment of the text relative to (*x*, *y*).
		verticalalignment, va : {'top', 'center', 'bottom', 'baseline'}, default: center
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
		    The `.Text` instance of the supylabel.
		
		Other Parameters
		----------------
		fontproperties : None or dict, optional
		    A dict of font properties. If *fontproperties* is given the
		    default values for font size and weight are taken from the
		    `.FontProperties` defaults. :rc:`figure.titlesize` and
		    :rc:`figure.titleweight` are ignored in this case.
		
		**kwargs
		    Additional kwargs are `matplotlib.text.Text` properties.
	**/
	public function supylabel(t:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		
		fontdict : dict, optional
		    A dictionary to override the default text properties. If not given,
		    the defaults are determined by :rc:`font.*`. Properties passed as
		    *kwargs* override the corresponding ones given in *fontdict*.
		
		Returns
		-------
		`~.text.Text`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.text.Text` properties
		    Other miscellaneous text parameters.
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    backgroundcolor: color
		    bbox: dict with properties for `.patches.FancyBboxPatch`
		    clip_box: unknown
		    clip_on: unknown
		    clip_path: unknown
		    color or c: color
		    figure: `.Figure`
		    fontfamily or family: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		    fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
		    fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		    fontstyle or style: {'normal', 'italic', 'oblique'}
		    fontvariant or variant: {'normal', 'small-caps'}
		    fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		    gid: str
		    horizontalalignment or ha: {'center', 'right', 'left'}
		    in_layout: bool
		    label: object
		    linespacing: float (multiple of font size)
		    math_fontfamily: str
		    multialignment or ma: {'left', 'right', 'center'}
		    parse_math: bool
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    position: (float, float)
		    rasterized: bool
		    rotation: float or {'vertical', 'horizontal'}
		    rotation_mode: {None, 'default', 'anchor'}
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    text: object
		    transform: `.Transform`
		    transform_rotates_text: bool
		    url: str
		    usetex: bool or None
		    verticalalignment or va: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    visible: bool
		    wrap: bool
		    x: float
		    y: float
		    zorder: float
		
		See Also
		--------
		.Axes.text
		.pyplot.text
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?fontdict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust the padding between and around subplots.
		
		To exclude an artist on the Axes from the bounding box calculation
		that determines the subplot parameters (i.e. legend, or annotation),
		set ``a.set_in_layout(False)`` for that artist.
		
		Parameters
		----------
		pad : float, default: 1.08
		    Padding between the figure edge and the edges of subplots,
		    as a fraction of the font size.
		h_pad, w_pad : float, default: *pad*
		    Padding (height/width) between edges of adjacent subplots,
		    as a fraction of the font size.
		rect : tuple (left, bottom, right, top), default: (0, 0, 1, 1)
		    A rectangle in normalized figure coordinates into which the whole
		    subplots area (including labels) will fit.
		
		See Also
		--------
		.Figure.set_tight_layout
		.pyplot.tight_layout
	**/
	public function tight_layout(?pad:Dynamic, ?h_pad:Dynamic, ?w_pad:Dynamic, ?rect:Dynamic):Dynamic;
	/**
		Update this artist's properties from the dict *props*.
		
		Parameters
		----------
		props : dict
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Blocking call to interact with the figure.
		
		Wait for user input and return True if a key was pressed, False if a
		mouse button was pressed and None if no input was given within
		*timeout* seconds.  Negative values deactivate *timeout*.
	**/
	public function waitforbuttonpress(?timeout:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}