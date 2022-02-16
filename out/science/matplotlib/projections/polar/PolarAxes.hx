/* This file is generated, do not edit! */
package matplotlib.projections.polar;
@:pythonImport("matplotlib.projections.polar", "PolarAxes") extern class PolarAxes {
	/**
		A sublist of Axes children based on their type.
		
		This exists solely to warn on modification. In the future, the
		type-specific children sublists will be immutable tuples.
	**/
	static public function ArtistList(axes:Dynamic, prop_name:Dynamic, add_name:Dynamic, ?valid_types:Dynamic, ?invalid_types:Dynamic):Dynamic;
	/**
		The inverse of the polar transform, mapping Cartesian
		coordinate space *x* and *y* back to *theta* and *r*.
	**/
	static public function InvertedPolarTransform(?axis:Dynamic, ?use_rmin:Dynamic, ?_apply_theta_transforms:Dynamic):Dynamic;
	/**
		The affine part of the polar projection.  Scales the output so
		that maximum radius rests on the edge of the axes circle.
	**/
	static public function PolarAffine(scale_transform:Dynamic, limits:Dynamic):Dynamic;
	/**
		The base polar transform.  This handles projection *theta* and
		*r* into Cartesian coordinate space *x* and *y*, but does not
		perform the ultimate affine transformation into the correct
		position.
	**/
	static public function PolarTransform(?axis:Dynamic, ?use_rmin:Dynamic, ?_apply_theta_transforms:Dynamic):Dynamic;
	/**
		Used to locate radius ticks.
		
		Ensures that all ticks are strictly positive.  For all other tasks, it
		delegates to the base `.Locator` (which may be different depending on the
		scale of the *r*-axis).
	**/
	static public function RadialLocator(base:Dynamic, ?axes:Dynamic):Dynamic;
	/**
		Used to format the *theta* tick labels.  Converts the native
		unit of radians into degrees and adds a degree symbol.
	**/
	static public function ThetaFormatter():Dynamic;
	/**
		Used to locate theta ticks.
		
		This will work the same as the base locator except in the case that the
		view spans the entire circle. In such cases, the previously used default
		locations of every 45 degrees are returned.
	**/
	static public function ThetaLocator(base:Dynamic):Dynamic;
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
		Build an Axes in a figure.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The Axes is built in the `.Figure` *fig*.
		
		rect : [left, bottom, width, height]
		    The Axes is built in the rectangle *rect*. *rect* is in
		    `.Figure` coordinates.
		
		sharex, sharey : `~.axes.Axes`, optional
		    The x or y `~.matplotlib.axis` is shared with the x or
		    y axis in the input `~.axes.Axes`.
		
		frameon : bool, default: True
		    Whether the Axes frame is visible.
		
		box_aspect : float, optional
		    Set a fixed aspect for the Axes box, i.e. the ratio of height to
		    width. See `~.axes.Axes.set_box_aspect` for details.
		
		**kwargs
		    Other optional keyword arguments:
		
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
		
		Returns
		-------
		`~.axes.Axes`
		    The new `~.axes.Axes` object.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?theta_offset:Dynamic, ?theta_direction:Dynamic, ?rlabel_position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Build an Axes in a figure.
		
		Parameters
		----------
		fig : `~matplotlib.figure.Figure`
		    The Axes is built in the `.Figure` *fig*.
		
		rect : [left, bottom, width, height]
		    The Axes is built in the rectangle *rect*. *rect* is in
		    `.Figure` coordinates.
		
		sharex, sharey : `~.axes.Axes`, optional
		    The x or y `~.matplotlib.axis` is shared with the x or
		    y axis in the input `~.axes.Axes`.
		
		frameon : bool, default: True
		    Whether the Axes frame is visible.
		
		box_aspect : float, optional
		    Set a fixed aspect for the Axes box, i.e. the ratio of height to
		    width. See `~.axes.Axes.set_box_aspect` for details.
		
		**kwargs
		    Other optional keyword arguments:
		
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
		
		Returns
		-------
		`~.axes.Axes`
		    The new `~.axes.Axes` object.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?theta_offset:Dynamic, ?theta_direction:Dynamic, ?rlabel_position:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Add a `.Text` to the Axes; return the text.
	**/
	public function _add_text(txt:Dynamic):Dynamic;
	static public var _alias_map : Dynamic;
	static public var _axis_names : Dynamic;
	static public function _check_no_units(vals:Dynamic, names:Dynamic):Dynamic;
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Small helper to do logic of width conversion flexibly.
		
		*dx* and *x0* have units, but *xconv* has already been converted
		to unitless (and is an ndarray).  This allows the *dx* to have units
		that are different from *x0*, but are still accepted by the
		``__add__`` operator of *x0*.
	**/
	static public function _convert_dx(dx:Dynamic, x0:Dynamic, xconv:Dynamic, convert:Dynamic):Dynamic;
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
		For each *key, value* pair in *kwargs*, check that *value* is an
		instance of one of *_types*; if not, raise an appropriate deprecation.
	**/
	public function _deprecate_noninstance(_name:Dynamic, _types:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill the area between two {dir} curves.
		
		The curves are defined by the points (*{ind}*, *{dep}1*) and (*{ind}*,
		*{dep}2*).  This creates one or multiple polygons describing the filled
		area.
		
		You may exclude some {dir} sections from filling using *where*.
		
		By default, the edges connect the given points directly.  Use *step*
		if the filling should be a step function, i.e. constant in between
		*{ind}*.
		
		Parameters
		----------
		{ind} : array (length N)
		    The {ind} coordinates of the nodes defining the curves.
		
		{dep}1 : array (length N) or scalar
		    The {dep} coordinates of the nodes defining the first curve.
		
		{dep}2 : array (length N) or scalar, default: 0
		    The {dep} coordinates of the nodes defining the second curve.
		
		where : array of bool (length N), optional
		    Define *where* to exclude some {dir} regions from being filled.
		    The filled regions are defined by the coordinates ``{ind}[where]``.
		    More precisely, fill between ``{ind}[i]`` and ``{ind}[i+1]`` if
		    ``where[i] and where[i+1]``.  Note that this definition implies
		    that an isolated *True* value between two *False* values in *where*
		    will not result in filling.  Both sides of the *True* position
		    remain unfilled due to the adjacent *False* values.
		
		interpolate : bool, default: False
		    This option is only relevant if *where* is used and the two curves
		    are crossing each other.
		
		    Semantically, *where* is often used for *{dep}1* > *{dep}2* or
		    similar.  By default, the nodes of the polygon defining the filled
		    region will only be placed at the positions in the *{ind}* array.
		    Such a polygon cannot describe the above semantics close to the
		    intersection.  The {ind}-sections containing the intersection are
		    simply clipped.
		
		    Setting *interpolate* to *True* will calculate the actual
		    intersection point and extend the filled region up to this point.
		
		step : {{'pre', 'post', 'mid'}}, optional
		    Define *step* if the filling should be a step function,
		    i.e. constant in between *{ind}*.  The value determines where the
		    step will occur:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Returns
		-------
		`.PolyCollection`
		    A `.PolyCollection` containing the plotted polygons.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    DATA_PARAMETER_PLACEHOLDER
		
		**kwargs
		    All other keyword arguments are passed on to `.PolyCollection`.
		    They control the `.Polygon` properties:
		
		    %(PolyCollection:kwdoc)s
		
		See Also
		--------
		fill_between : Fill between two sets of y-values.
		fill_betweenx : Fill between two sets of x-values.
	**/
	public function _fill_between_x_or_y(ind_dir:Dynamic, ind:Dynamic, dep1:Dynamic, ?dep2:Dynamic, ?where:Dynamic, ?interpolate:Dynamic, ?step:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper for `~matplotlib.pyplot.gci`; do not use elsewhere.
	**/
	public function _gci():Dynamic;
	/**
		Returns
		-------
		Patch
		    The patch used to draw the background of the Axes.  It is also used
		    as the clipping path for any data elements on the Axes.
		
		    In the standard axes, this is a rectangle, but in other projections
		    it may not be.
		
		Notes
		-----
		Intended to be overridden by new projection types.
	**/
	public function _gen_axes_patch():Dynamic;
	/**
		Returns
		-------
		dict
		    Mapping of spine names to `.Line2D` or `.Patch` instances that are
		    used to draw Axes spines.
		
		    In the standard Axes, spines are single line segments, but in other
		    projections they may not be.
		
		Notes
		-----
		Intended to be overridden by new projection types.
	**/
	public function _gen_axes_spines():Dynamic;
	public function _get_axis_list():Dynamic;
	/**
		Return a mapping of `Axis` "names" to `Axis` instances.
		
		The `Axis` name is derived from the attribute under which the instance
		is stored, so e.g. for polar axes, the theta-axis is still named "x"
		and the r-axis is still named "y" (for back-compatibility).
		
		In practice, this means that the entries are typically "x" and "y", and
		additionally "z" for 3D Axes.
	**/
	public function _get_axis_map():Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	/**
		Helper function to return the new points after a pan.
		
		This helper function returns the points on the axis after a pan has
		occurred. This is a convenience method to abstract the pan logic
		out of the base setter.
	**/
	public function _get_pan_points(button:Dynamic, key:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Save information required to reproduce the current view.
		
		Called before a view is changed, such as during a pan or zoom
		initiated by the user. You may return any information you deem
		necessary to describe the view.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation saves the view limits. You *must* implement
		    :meth:`_set_view` if you implement this method.
	**/
	public function _get_view():Dynamic;
	public function _init_axis():Dynamic;
	/**
		Make a twinx Axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to process color related arguments of `.Axes.scatter`.
		
		Argument precedence for facecolors:
		
		- c (if not None)
		- kwargs['facecolor']
		- kwargs['facecolors']
		- kwargs['color'] (==kwcolor)
		- 'b' if in classic mode else the result of ``get_next_color_func()``
		
		Argument precedence for edgecolors:
		
		- kwargs['edgecolor']
		- edgecolors (is an explicit kw argument in scatter())
		- kwargs['color'] (==kwcolor)
		- 'face' if not in classic mode else None
		
		Parameters
		----------
		c : color or sequence or sequence of color or None
		    See argument description of `.Axes.scatter`.
		edgecolors : color or sequence of color or {'face', 'none'} or None
		    See argument description of `.Axes.scatter`.
		kwargs : dict
		    Additional kwargs. If these keys exist, we pop and process them:
		    'facecolors', 'facecolor', 'edgecolor', 'color'
		    Note: The dict is modified by this function.
		xsize : int
		    The size of the x and y arrays passed to `.Axes.scatter`.
		get_next_color_func : callable
		    A callable that returns a color. This color is used as facecolor
		    if no other color is provided.
		
		    Note, that this is a function rather than a fixed color value to
		    support conditional evaluation of the next color.  As of the
		    current implementation obtaining the next color from the
		    property cycle advances the cycle. This must only happen if we
		    actually use the color, which will only be decided within this
		    method.
		
		Returns
		-------
		c
		    The input *c* if it was not *None*, else a color derived from the
		    other inputs or defaults.
		colors : array(N, 4) or None
		    The facecolors as RGBA values, or *None* if a colormap is used.
		edgecolors
		    The edgecolor.
	**/
	static public function _parse_scatter_color_args(c:Dynamic, edgecolors:Dynamic, kwargs:Dynamic, xsize:Dynamic, get_next_color_func:Dynamic):Dynamic;
	public function _pcolor_grid_deprecation_helper():Dynamic;
	public function _pcolorargs(funcname:Dynamic, ?args:python.VarArgs<Dynamic>, ?shading:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Helper function to prepare the new bounds from a bbox.
		
		This helper function returns the new x and y bounds from the zoom
		bbox. This a convenience method to abstract the bbox logic
		out of the base setter.
	**/
	public function _prepare_view_from_bbox(bbox:Dynamic, ?direction:Dynamic, ?mode:Dynamic, ?twinx:Dynamic, ?twiny:Dynamic):Dynamic;
	/**
		Set axis units based on *datasets* and *kwargs*, and optionally apply
		unit conversions to *datasets*.
		
		Parameters
		----------
		datasets : list
		    List of (axis_name, dataset) pairs (where the axis name is defined
		    as in `._get_axis_map`).  Individual datasets can also be None
		    (which gets passed through).
		kwargs : dict
		    Other parameters from which unit info (i.e., the *xunits*,
		    *yunits*, *zunits* (for 3D axes), *runits* and *thetaunits* (for
		    polar axes) entries) is popped, if present.  Note that this dict is
		    mutated in-place!
		convert : bool, default: True
		    Whether to return the original datasets or the converted ones.
		
		Returns
		-------
		list
		    Either the original datasets if *convert* is False, or the
		    converted ones if *convert* is True (the default).
	**/
	public function _process_unit_info(?datasets:Dynamic, ?kwargs:Dynamic, ?convert:Dynamic):Dynamic;
	public function _quiver_units(args:Dynamic, kwargs:Dynamic):Dynamic;
	public function _remove_legend(legend:Dynamic):Dynamic;
	public function _request_autoscale_view(?tight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the current image.
		
		This image will be the target of colormap functions like
		`~.pyplot.viridis`, and other functions such as `~.pyplot.clim`.  The
		current image is an attribute of the current Axes.
	**/
	public function _sci(im:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : array-like or scalar or None
		    All values must be within the 0-1 range, inclusive.
		    Masked values and nans are not supported.
	**/
	public function _set_alpha_for_array(alpha:Dynamic):Dynamic;
	/**
		Set the boilerplate props for artists added to Axes.
	**/
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Set the *_xaxis_transform*, *_yaxis_transform*, *transScale*,
		*transData*, *transLimits* and *transAxes* transformations.
		
		.. note::
		
		    This method is primarily used by rectilinear projections of the
		    `~matplotlib.axes.Axes` class, and is meant to be overridden by
		    new kinds of projection Axes that need different transformations
		    and limits. (See `~matplotlib.projections.polar.PolarAxes` for an
		    example.)
	**/
	public function _set_lim_and_transforms():Dynamic;
	/**
		Private version of set_position.
		
		Call this internally to get the same functionality of `get_position`,
		but not to take the axis out of the constrained_layout hierarchy.
	**/
	public function _set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set the offset for the title either from :rc:`axes.titlepad`
		or from set_title kwarg ``pad``.
	**/
	public function _set_title_offset_trans(title_offset_points:Dynamic):Dynamic;
	/**
		Apply a previously saved view.
		
		Called when restoring a view, such as with the navigation buttons.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation restores the view limits. You *must*
		    implement :meth:`_get_view` if you implement this method.
	**/
	public function _set_view(view:Dynamic):Dynamic;
	/**
		Update view from a selection bbox.
		
		.. note::
		
		    Intended to be overridden by new projection types, but if not, the
		    default implementation sets the view limits to the bbox directly.
		
		Parameters
		----------
		bbox : 4-tuple or 3 tuple
		    * If bbox is a 4 tuple, it is the selected bounding box limits,
		      in *display* coordinates.
		    * If bbox is a 3 tuple, it is an (xp, yp, scl) triple, where
		      (xp, yp) is the center of zooming and scl the scale factor to
		      zoom by.
		
		direction : str
		    The direction to apply the bounding box.
		        * `'in'` - The bounding box describes the view directly, i.e.,
		                   it zooms in.
		        * `'out'` - The bounding box describes the size to make the
		                    existing view, i.e., it zooms out.
		
		mode : str or None
		    The selection mode, whether to apply the bounding box in only the
		    `'x'` direction, `'y'` direction or both (`None`).
		
		twinx : bool
		    Whether this axis is twinned in the *x*-direction.
		
		twiny : bool
		    Whether this axis is twinned in the *y*-direction.
	**/
	public function _set_view_from_bbox(bbox:Dynamic, ?direction:Dynamic, ?mode:Dynamic, ?twinx:Dynamic, ?twiny:Dynamic):Dynamic;
	static public var _shared_axes : Dynamic;
	static public var _twinned_axes : Dynamic;
	/**
		Process axis units changes: requests updates to data and view limits.
	**/
	public function _unit_change_handler(axis_name:Dynamic, ?event:Dynamic):Dynamic;
	public function _unstale_viewLim():Dynamic;
	public function _update_image_limits(image:Dynamic):Dynamic;
	/**
		Figures out the data limit of the given line, updating self.dataLim.
	**/
	public function _update_line_limits(line:Dynamic):Dynamic;
	/**
		Update the data limits for the given patch.
	**/
	public function _update_patch_limits(patch:Dynamic):Dynamic;
	/**
		Update the signature of the set function to list all properties
		as keyword arguments.
		
		Property aliases are not listed in the signature for brevity, but
		are still accepted as keyword arguments.
	**/
	static public function _update_set_signature_and_docstring():Dynamic;
	/**
		Update the title position based on the bounding box enclosing
		all the ticklabels and x-axis spine and xlabel...
	**/
	public function _update_title_position(renderer:Dynamic):Dynamic;
	public function _update_transScale():Dynamic;
	/**
		Raise ValueError if converted limits are non-finite.
		
		Note that this function also accepts None as a limit argument.
		
		Returns
		-------
		The limit value after call to convert(), or None if limit is None.
	**/
	public function _validate_converted_limits(limit:Dynamic, convert:Dynamic):Dynamic;
	/**
		Plot the autocorrelation of *x*.
		
		Parameters
		----------
		x : array-like
		
		detrend : callable, default: `.mlab.detrend_none` (no detrending)
		    A detrending function applied to *x*.  It must have the
		    signature ::
		
		        detrend(x: np.ndarray) -> np.ndarray
		
		normed : bool, default: True
		    If ``True``, input vectors are normalised to unit length.
		
		usevlines : bool, default: True
		    Determines the plot style.
		
		    If ``True``, vertical lines are plotted from 0 to the acorr value
		    using `.Axes.vlines`. Additionally, a horizontal line is plotted
		    at y=0 using `.Axes.axhline`.
		
		    If ``False``, markers are plotted at the acorr values using
		    `.Axes.plot`.
		
		maxlags : int, default: 10
		    Number of lags to show. If ``None``, will return all
		    ``2 * len(x) - 1`` lags.
		
		Returns
		-------
		lags : array (length ``2*maxlags+1``)
		    The lag vector.
		c : array  (length ``2*maxlags+1``)
		    The auto correlation vector.
		line : `.LineCollection` or `.Line2D`
		    `.Artist` added to the Axes of the correlation:
		
		    - `.LineCollection` if *usevlines* is True.
		    - `.Line2D` if *usevlines* is False.
		b : `.Line2D` or None
		    Horizontal line at 0 if *usevlines* is True
		    None *usevlines* is False.
		
		Other Parameters
		----------------
		linestyle : `.Line2D` property, optional
		    The linestyle for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		marker : str, default: 'o'
		    The marker for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Additional parameters are passed to `.Axes.vlines` and
		    `.Axes.axhline` if *usevlines* is ``True``; otherwise they are
		    passed to `.Axes.plot`.
		
		Notes
		-----
		The cross correlation is performed with `numpy.correlate` with
		``mode = "full"``.
	**/
	public function acorr(x:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an `.Artist` to the Axes; return the artist.
		
		Use `add_artist` only for artists for which there is no dedicated
		"add" method; and if necessary, use a method such as `update_datalim`
		to manually update the dataLim if the artist is to be included in
		autoscaling.
		
		If no ``transform`` has been specified when creating the artist (e.g.
		``artist.get_transform() == None``) then the transform is set to
		``ax.transData``.
	**/
	public function add_artist(a:Dynamic):Dynamic;
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
		Add an `.AxesBase` to the Axes' children; return the child Axes.
		
		This is the lowlevel version.  See `.axes.Axes.inset_axes`.
	**/
	public function add_child_axes(ax:Dynamic):Dynamic;
	/**
		Add a `.Collection` to the Axes; return the collection.
	**/
	public function add_collection(collection:Dynamic, ?autolim:Dynamic):Dynamic;
	/**
		Add a `.Container` to the axes' containers; return the container.
	**/
	public function add_container(container:Dynamic):Dynamic;
	/**
		Add an `.AxesImage` to the Axes; return the image.
	**/
	public function add_image(image:Dynamic):Dynamic;
	/**
		Add a `.Line2D` to the Axes; return the line.
	**/
	public function add_line(line:Dynamic):Dynamic;
	/**
		Add a `.Patch` to the Axes; return the patch.
	**/
	public function add_patch(p:Dynamic):Dynamic;
	/**
		Add a `.Table` to the Axes; return the table.
	**/
	public function add_table(tab:Dynamic):Dynamic;
	/**
		Plot the angle spectrum.
		
		Compute the angle spectrum (wrapped phase spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the angle spectrum in radians (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : `~matplotlib.lines.Line2D`
		    The line created by this function.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		magnitude_spectrum
		    Plots the magnitudes of the corresponding frequencies.
		phase_spectrum
		    Plots the unwrapped version of this function.
		specgram
		    Can plot the angle spectrum of segments within the signal in a
		    colormap.
	**/
	public function angle_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Annotate the point *xy* with text *text*.
		
		In the simplest form, the text is placed at *xy*.
		
		Optionally, the text can be displayed in another position *xytext*.
		An arrow pointing from the text to the annotated point *xy* can then
		be added by defining *arrowprops*.
		
		Parameters
		----------
		text : str
		    The text of the annotation.
		
		xy : (float, float)
		    The point *(x, y)* to annotate. The coordinate system is determined
		    by *xycoords*.
		
		xytext : (float, float), default: *xy*
		    The position *(x, y)* to place the text at. The coordinate system
		    is determined by *textcoords*.
		
		xycoords : str or `.Artist` or `.Transform` or callable or (float, float), default: 'data'
		
		    The coordinate system that *xy* is given in. The following types
		    of values are supported:
		
		    - One of the following strings:
		
		      ==================== ============================================
		      Value                Description
		      ==================== ============================================
		      'figure points'      Points from the lower left of the figure
		      'figure pixels'      Pixels from the lower left of the figure
		      'figure fraction'    Fraction of figure from lower left
		      'subfigure points'   Points from the lower left of the subfigure
		      'subfigure pixels'   Pixels from the lower left of the subfigure
		      'subfigure fraction' Fraction of subfigure from lower left
		      'axes points'        Points from lower left corner of axes
		      'axes pixels'        Pixels from lower left corner of axes
		      'axes fraction'      Fraction of axes from lower left
		      'data'               Use the coordinate system of the object
		                           being annotated (default)
		      'polar'              *(theta, r)* if not native 'data'
		                           coordinates
		      ==================== ============================================
		
		      Note that 'subfigure pixels' and 'figure pixels' are the same
		      for the parent figure, so users who want code that is usable in
		      a subfigure can use 'subfigure pixels'.
		
		    - An `.Artist`: *xy* is interpreted as a fraction of the artist's
		      `~matplotlib.transforms.Bbox`. E.g. *(0, 0)* would be the lower
		      left corner of the bounding box and *(0.5, 1)* would be the
		      center top of the bounding box.
		
		    - A `.Transform` to transform *xy* to screen coordinates.
		
		    - A function with one of the following signatures::
		
		        def transform(renderer) -> Bbox
		        def transform(renderer) -> Transform
		
		      where *renderer* is a `.RendererBase` subclass.
		
		      The result of the function is interpreted like the `.Artist` and
		      `.Transform` cases above.
		
		    - A tuple *(xcoords, ycoords)* specifying separate coordinate
		      systems for *x* and *y*. *xcoords* and *ycoords* must each be
		      of one of the above described types.
		
		    See :ref:`plotting-guide-annotation` for more details.
		
		textcoords : str or `.Artist` or `.Transform` or callable or (float, float), default: value of *xycoords*
		    The coordinate system that *xytext* is given in.
		
		    All *xycoords* values are valid as well as the following
		    strings:
		
		    =================   =========================================
		    Value               Description
		    =================   =========================================
		    'offset points'     Offset (in points) from the *xy* value
		    'offset pixels'     Offset (in pixels) from the *xy* value
		    =================   =========================================
		
		arrowprops : dict, optional
		    The properties used to draw a `.FancyArrowPatch` arrow between the
		    positions *xy* and *xytext*.  Defaults to None, i.e. no arrow is
		    drawn.
		
		    For historical reasons there are two different ways to specify
		    arrows, "simple" and "fancy":
		
		    **Simple arrow:**
		
		    If *arrowprops* does not contain the key 'arrowstyle' the
		    allowed keys are:
		
		    ==========   ======================================================
		    Key          Description
		    ==========   ======================================================
		    width        The width of the arrow in points
		    headwidth    The width of the base of the arrow head in points
		    headlength   The length of the arrow head in points
		    shrink       Fraction of total length to shrink from both ends
		    ?            Any key to :class:`matplotlib.patches.FancyArrowPatch`
		    ==========   ======================================================
		
		    The arrow is attached to the edge of the text box, the exact
		    position (corners or centers) depending on where it's pointing to.
		
		    **Fancy arrow:**
		
		    This is used if 'arrowstyle' is provided in the *arrowprops*.
		
		    Valid keys are the following `~matplotlib.patches.FancyArrowPatch`
		    parameters:
		
		    ===============  ==================================================
		    Key              Description
		    ===============  ==================================================
		    arrowstyle       the arrow style
		    connectionstyle  the connection style
		    relpos           see below; default is (0.5, 0.5)
		    patchA           default is bounding box of the text
		    patchB           default is None
		    shrinkA          default is 2 points
		    shrinkB          default is 2 points
		    mutation_scale   default is text size (in points)
		    mutation_aspect  default is 1.
		    ?                any key for :class:`matplotlib.patches.PathPatch`
		    ===============  ==================================================
		
		    The exact starting point position of the arrow is defined by
		    *relpos*. It's a tuple of relative coordinates of the text box,
		    where (0, 0) is the lower left corner and (1, 1) is the upper
		    right corner. Values <0 and >1 are supported and specify points
		    outside the text box. By default (0.5, 0.5) the starting point is
		    centered in the text box.
		
		annotation_clip : bool or None, default: None
		    Whether to draw the annotation when the annotation point *xy* is
		    outside the axes area.
		
		    - If *True*, the annotation will only be drawn when *xy* is
		      within the axes.
		    - If *False*, the annotation will always be drawn.
		    - If *None*, the annotation will only be drawn when *xy* is
		      within the axes and *xycoords* is 'data'.
		
		**kwargs
		    Additional kwargs are passed to `~matplotlib.text.Text`.
		
		Returns
		-------
		`.Annotation`
		
		See Also
		--------
		:ref:`plotting-guide-annotation`
	**/
	public function annotate(text:Dynamic, xy:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Adjust the Axes for a specified data aspect ratio.
		
		Depending on `.get_adjustable` this will modify either the
		Axes box (position) or the view limits. In the former case,
		`~matplotlib.axes.Axes.get_anchor` will affect the position.
		
		Notes
		-----
		This is called automatically when each Axes is drawn.  You may need
		to call it yourself if you need to update the Axes position and/or
		view limits before the Figure is drawn.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    For a description of aspect ratio handling.
		matplotlib.axes.Axes.set_adjustable
		    Set how the Axes adjusts to achieve the required aspect ratio.
		matplotlib.axes.Axes.set_anchor
		    Set the position in case of extra space.
	**/
	public function apply_aspect(?position:Dynamic):Dynamic;
	/**
		Add an arrow to the Axes.
		
		This draws an arrow from ``(x, y)`` to ``(x+dx, y+dy)``.
		
		Parameters
		----------
		x, y : float
		    The x and y coordinates of the arrow base.
		
		dx, dy : float
		    The length of the arrow along x and y direction.
		
		width : float, default: 0.001
		    Width of full arrow tail.
		
		length_includes_head : bool, default: False
		    True if head is to be counted in calculating the length.
		
		head_width : float or None, default: 3*width
		    Total width of the full arrow head.
		
		head_length : float or None, default: 1.5*head_width
		    Length of arrow head.
		
		shape : {'full', 'left', 'right'}, default: 'full'
		    Draw the left-half, right-half, or full arrow.
		
		overhang : float, default: 0
		    Fraction that the arrow is swept back (0 overhang means
		    triangular shape). Can be negative or greater than one.
		
		head_starts_at_zero : bool, default: False
		    If True, the head starts being drawn at coordinate 0
		    instead of ending at coordinate 0.
		
		**kwargs
		    `.Patch` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: unknown
		    animated: bool
		    antialiased or aa: bool or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
		
		Returns
		-------
		`.FancyArrow`
		    The created `.FancyArrow` object.
		
		Notes
		-----
		The resulting arrow is affected by the Axes aspect ratio and limits.
		This may produce an arrow whose head is not square with its stem. To
		create an arrow whose head is square with its stem,
		use :meth:`annotate` for example:
		
		>>> ax.annotate("", xy=(0.5, 0.5), xytext=(0, 0),
		...             arrowprops=dict(arrowstyle="->"))
	**/
	public function arrow(x:Dynamic, y:Dynamic, dx:Dynamic, dy:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var artists : Dynamic;
	/**
		Autoscale the axis view to the data (toggle).
		
		Convenience method for simple axis view autoscaling.
		It turns autoscaling on or off, and then,
		if autoscaling for either axis is on, it performs
		the autoscaling on the specified axis or Axes.
		
		Parameters
		----------
		enable : bool or None, default: True
		    True turns autoscaling on, False turns it off.
		    None leaves the autoscaling state unchanged.
		axis : {'both', 'x', 'y'}, default: 'both'
		    Which axis to operate on.
		tight : bool or None, default: None
		    If True, first set the margins to zero.  Then, this argument is
		    forwarded to `autoscale_view` (regardless of its value); see the
		    description of its behavior there.
	**/
	public function autoscale(?enable:Dynamic, ?axis:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Autoscale the view limits using the data limits.
		
		Parameters
		----------
		tight : bool or None
		    If *True*, only expand the axis limits using the margins.  Note
		    that unlike for `autoscale`, ``tight=True`` does *not* set the
		    margins to zero.
		
		    If *False* and :rc:`axes.autolimit_mode` is 'round_numbers', then
		    after expansion by the margins, further expand the axis limits
		    using the axis major locator.
		
		    If None (the default), reuse the value set in the previous call to
		    `autoscale_view` (the initial value is False, but the default style
		    sets :rc:`axes.autolimit_mode` to 'data', in which case this
		    behaves like True).
		
		scalex : bool, default: True
		    Whether to autoscale the x axis.
		
		scaley : bool, default: True
		    Whether to autoscale the y axis.
		
		Notes
		-----
		The autoscaling preserves any preexisting axis direction reversal.
		
		The data limits are not updated automatically when artist data are
		changed after the artist has been added to an Axes instance.  In that
		case, use :meth:`matplotlib.axes.Axes.relim` prior to calling
		autoscale_view.
		
		If the views of the Axes are fixed, e.g. via `set_xlim`, they will
		not be changed by autoscale_view().
		See :meth:`matplotlib.axes.Axes.autoscale` for an alternative.
	**/
	public function autoscale_view(?tight:Dynamic, ?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Add a horizontal line across the axis.
		
		Parameters
		----------
		y : float, default: 0
		    y position in data coordinates of the horizontal line.
		
		xmin : float, default: 0
		    Should be between 0 and 1, 0 being the far left of the plot, 1 the
		    far right of the plot.
		
		xmax : float, default: 1
		    Should be between 0 and 1, 0 being the far left of the plot, 1 the
		    far right of the plot.
		
		Returns
		-------
		`~matplotlib.lines.Line2D`
		
		Other Parameters
		----------------
		**kwargs
		    Valid keyword arguments are `.Line2D` properties, with the
		    exception of 'transform':
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		hlines : Add horizontal lines in data coordinates.
		axhspan : Add a horizontal span (rectangle) across the axis.
		axline : Add a line with an arbitrary slope.
		
		Examples
		--------
		* draw a thick red hline at 'y' = 0 that spans the xrange::
		
		    >>> axhline(linewidth=4, color='r')
		
		* draw a default hline at 'y' = 1 that spans the xrange::
		
		    >>> axhline(y=1)
		
		* draw a default hline at 'y' = .5 that spans the middle half of
		  the xrange::
		
		    >>> axhline(y=.5, xmin=0.25, xmax=0.75)
	**/
	public function axhline(?y:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a horizontal span (rectangle) across the Axes.
		
		The rectangle spans from *ymin* to *ymax* vertically, and, by default,
		the whole x-axis horizontally.  The x-span can be set using *xmin*
		(default: 0) and *xmax* (default: 1) which are in axis units; e.g.
		``xmin = 0.5`` always refers to the middle of the x-axis regardless of
		the limits set by `~.Axes.set_xlim`.
		
		Parameters
		----------
		ymin : float
		    Lower y-coordinate of the span, in data units.
		ymax : float
		    Upper y-coordinate of the span, in data units.
		xmin : float, default: 0
		    Lower x-coordinate of the span, in x-axis (0-1) units.
		xmax : float, default: 1
		    Upper x-coordinate of the span, in x-axis (0-1) units.
		
		Returns
		-------
		`~matplotlib.patches.Polygon`
		    Horizontal span (rectangle) from (xmin, ymin) to (xmax, ymax).
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.patches.Polygon` properties
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    closed: bool
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xy: (N, 2) array-like
		    zorder: float
		
		See Also
		--------
		axvspan : Add a vertical span across the Axes.
	**/
	public function axhspan(ymin:Dynamic, ymax:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convenience method to get or set some axis properties.
		
		Call signatures::
		
		  xmin, xmax, ymin, ymax = axis()
		  xmin, xmax, ymin, ymax = axis([xmin, xmax, ymin, ymax])
		  xmin, xmax, ymin, ymax = axis(option)
		  xmin, xmax, ymin, ymax = axis(**kwargs)
		
		Parameters
		----------
		xmin, xmax, ymin, ymax : float, optional
		    The axis limits to be set.  This can also be achieved using ::
		
		        ax.set(xlim=(xmin, xmax), ylim=(ymin, ymax))
		
		option : bool or str
		    If a bool, turns axis lines and labels on or off. If a string,
		    possible values are:
		
		    ======== ==========================================================
		    Value    Description
		    ======== ==========================================================
		    'on'     Turn on axis lines and labels. Same as ``True``.
		    'off'    Turn off axis lines and labels. Same as ``False``.
		    'equal'  Set equal scaling (i.e., make circles circular) by
		             changing axis limits. This is the same as
		             ``ax.set_aspect('equal', adjustable='datalim')``.
		             Explicit data limits may not be respected in this case.
		    'scaled' Set equal scaling (i.e., make circles circular) by
		             changing dimensions of the plot box. This is the same as
		             ``ax.set_aspect('equal', adjustable='box', anchor='C')``.
		             Additionally, further autoscaling will be disabled.
		    'tight'  Set limits just large enough to show all data, then
		             disable further autoscaling.
		    'auto'   Automatic scaling (fill plot box with data).
		    'image'  'scaled' with axis limits equal to data limits.
		    'square' Square plot; similar to 'scaled', but initially forcing
		             ``xmax-xmin == ymax-ymin``.
		    ======== ==========================================================
		
		emit : bool, default: True
		    Whether observers are notified of the axis limit change.
		    This option is passed on to `~.Axes.set_xlim` and
		    `~.Axes.set_ylim`.
		
		Returns
		-------
		xmin, xmax, ymin, ymax : float
		    The axis limits.
		
		See Also
		--------
		matplotlib.axes.Axes.set_xlim
		matplotlib.axes.Axes.set_ylim
	**/
	public function axis(?args:python.VarArgs<Dynamic>, ?emit:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Float;
	/**
		Add an infinitely long straight line.
		
		The line can be defined either by two points *xy1* and *xy2*, or
		by one point *xy1* and a *slope*.
		
		This draws a straight line "on the screen", regardless of the x and y
		scales, and is thus also suitable for drawing exponential decays in
		semilog plots, power laws in loglog plots, etc. However, *slope*
		should only be used with linear scales; It has no clear meaning for
		all other scales, and thus the behavior is undefined. Please specify
		the line using the points *xy1*, *xy2* for non-linear scales.
		
		The *transform* keyword argument only applies to the points *xy1*,
		*xy2*. The *slope* (if given) is always in data coordinates. This can
		be used e.g. with ``ax.transAxes`` for drawing grid lines with a fixed
		slope.
		
		Parameters
		----------
		xy1, xy2 : (float, float)
		    Points for the line to pass through.
		    Either *xy2* or *slope* has to be given.
		slope : float, optional
		    The slope of the line. Either *xy2* or *slope* has to be given.
		
		Returns
		-------
		`.Line2D`
		
		Other Parameters
		----------------
		**kwargs
		    Valid kwargs are `.Line2D` properties
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		axhline : for horizontal lines
		axvline : for vertical lines
		
		Examples
		--------
		Draw a thick red line passing through (0, 0) and (1, 1)::
		
		    >>> axline((0, 0), (1, 1), linewidth=4, color='r')
	**/
	public function axline(xy1:Dynamic, ?xy2:Dynamic, ?slope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a vertical line across the Axes.
		
		Parameters
		----------
		x : float, default: 0
		    x position in data coordinates of the vertical line.
		
		ymin : float, default: 0
		    Should be between 0 and 1, 0 being the bottom of the plot, 1 the
		    top of the plot.
		
		ymax : float, default: 1
		    Should be between 0 and 1, 0 being the bottom of the plot, 1 the
		    top of the plot.
		
		Returns
		-------
		`~matplotlib.lines.Line2D`
		
		Other Parameters
		----------------
		**kwargs
		    Valid keyword arguments are `.Line2D` properties, with the
		    exception of 'transform':
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		vlines : Add vertical lines in data coordinates.
		axvspan : Add a vertical span (rectangle) across the axis.
		axline : Add a line with an arbitrary slope.
		
		Examples
		--------
		* draw a thick red vline at *x* = 0 that spans the yrange::
		
		    >>> axvline(linewidth=4, color='r')
		
		* draw a default vline at *x* = 1 that spans the yrange::
		
		    >>> axvline(x=1)
		
		* draw a default vline at *x* = .5 that spans the middle half of
		  the yrange::
		
		    >>> axvline(x=.5, ymin=0.25, ymax=0.75)
	**/
	public function axvline(?x:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a vertical span (rectangle) across the Axes.
		
		The rectangle spans from *xmin* to *xmax* horizontally, and, by
		default, the whole y-axis vertically.  The y-span can be set using
		*ymin* (default: 0) and *ymax* (default: 1) which are in axis units;
		e.g. ``ymin = 0.5`` always refers to the middle of the y-axis
		regardless of the limits set by `~.Axes.set_ylim`.
		
		Parameters
		----------
		xmin : float
		    Lower x-coordinate of the span, in data units.
		xmax : float
		    Upper x-coordinate of the span, in data units.
		ymin : float, default: 0
		    Lower y-coordinate of the span, in y-axis units (0-1).
		ymax : float, default: 1
		    Upper y-coordinate of the span, in y-axis units (0-1).
		
		Returns
		-------
		`~matplotlib.patches.Polygon`
		    Vertical span (rectangle) from (xmin, ymin) to (xmax, ymax).
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.patches.Polygon` properties
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    closed: bool
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xy: (N, 2) array-like
		    zorder: float
		
		See Also
		--------
		axhspan : Add a horizontal span across the Axes.
		
		Examples
		--------
		Draw a vertical, green, translucent rectangle from x = 1.25 to
		x = 1.55 that spans the yrange of the Axes.
		
		>>> axvspan(1.25, 1.55, facecolor='g', alpha=0.5)
	**/
	public function axvspan(xmin:Dynamic, xmax:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a bar plot.
		
		The bars are positioned at *x* with the given *align*\ment. Their
		dimensions are given by *height* and *width*. The vertical baseline
		is *bottom* (default 0).
		
		Many parameters can take either a single value applying to all bars
		or a sequence of values, one for each bar.
		
		Parameters
		----------
		x : float or array-like
		    The x coordinates of the bars. See also *align* for the
		    alignment of the bars to the coordinates.
		
		height : float or array-like
		    The height(s) of the bars.
		
		width : float or array-like, default: 0.8
		    The width(s) of the bars.
		
		bottom : float or array-like, default: 0
		    The y coordinate(s) of the bars bases.
		
		align : {'center', 'edge'}, default: 'center'
		    Alignment of the bars to the *x* coordinates:
		
		    - 'center': Center the base on the *x* positions.
		    - 'edge': Align the left edges of the bars with the *x* positions.
		
		    To align the bars on the right edge pass a negative *width* and
		    ``align='edge'``.
		
		Returns
		-------
		`.BarContainer`
		    Container with all the bars and optionally errorbars.
		
		Other Parameters
		----------------
		color : color or list of color, optional
		    The colors of the bar faces.
		
		edgecolor : color or list of color, optional
		    The colors of the bar edges.
		
		linewidth : float or array-like, optional
		    Width of the bar edge(s). If 0, don't draw edges.
		
		tick_label : str or list of str, optional
		    The tick labels of the bars.
		    Default: None (Use default numeric labels.)
		
		xerr, yerr : float or array-like of shape(N,) or shape(2, N), optional
		    If not *None*, add horizontal / vertical errorbars to the bar tips.
		    The values are +/- sizes relative to the data:
		
		    - scalar: symmetric +/- values for all bars
		    - shape(N,): symmetric +/- values for each bar
		    - shape(2, N): Separate - and + values for each bar. First row
		      contains the lower errors, the second row contains the upper
		      errors.
		    - *None*: No errorbar. (Default)
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		ecolor : color or list of color, default: 'black'
		    The line color of the errorbars.
		
		capsize : float, default: :rc:`errorbar.capsize`
		   The length of the error bar caps in points.
		
		error_kw : dict, optional
		    Dictionary of kwargs to be passed to the `~.Axes.errorbar`
		    method. Values of *ecolor* or *capsize* defined here take
		    precedence over the independent kwargs.
		
		log : bool, default: False
		    If *True*, set the y-axis to be log scale.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs : `.Rectangle` properties
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    angle: unknown
		    animated: bool
		    antialiased or aa: bool or None
		    bounds: (left, bottom, width, height)
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    height: unknown
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    width: unknown
		    x: unknown
		    xy: (float, float)
		    y: unknown
		    zorder: float
		
		See Also
		--------
		barh : Plot a horizontal bar plot.
		
		Notes
		-----
		Stacked bars can be achieved by passing individual *bottom* values per
		bar. See :doc:`/gallery/lines_bars_and_markers/bar_stacked`.
	**/
	public function bar(x:Dynamic, height:Dynamic, ?width:Dynamic, ?bottom:Dynamic, ?align:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Label a bar plot.
		
		Adds labels to bars in the given `.BarContainer`.
		You may need to adjust the axis limits to fit the labels.
		
		Parameters
		----------
		container : `.BarContainer`
		    Container with all the bars and optionally errorbars, likely
		    returned from `.bar` or `.barh`.
		
		labels : array-like, optional
		    A list of label texts, that should be displayed. If not given, the
		    label texts will be the data values formatted with *fmt*.
		
		fmt : str, default: '%g'
		    A format string for the label.
		
		label_type : {'edge', 'center'}, default: 'edge'
		    The label type. Possible values:
		
		    - 'edge': label placed at the end-point of the bar segment, and the
		      value displayed will be the position of that end-point.
		    - 'center': label placed in the center of the bar segment, and the
		      value displayed will be the length of that segment.
		      (useful for stacked bars, i.e.,
		      :doc:`/gallery/lines_bars_and_markers/bar_label_demo`)
		
		padding : float, default: 0
		    Distance of label from the end of the bar, in points.
		
		**kwargs
		    Any remaining keyword arguments are passed through to
		    `.Axes.annotate`.
		
		Returns
		-------
		list of `.Text`
		    A list of `.Text` instances for the labels.
	**/
	public function bar_label(container:Dynamic, ?labels:Dynamic, ?fmt:Dynamic, ?label_type:Dynamic, ?padding:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a 2D field of barbs.
		
		Call signature::
		
		  barbs([X, Y], U, V, [C], **kw)
		
		Where *X*, *Y* define the barb locations, *U*, *V* define the barb
		directions, and *C* optionally sets the color.
		
		All arguments may be 1D or 2D. *U*, *V*, *C* may be masked arrays, but masked
		*X*, *Y* are not supported at present.
		
		Barbs are traditionally used in meteorology as a way to plot the speed
		and direction of wind observations, but can technically be used to
		plot any two dimensional vector quantity.  As opposed to arrows, which
		give vector magnitude by the length of the arrow, the barbs give more
		quantitative information about the vector magnitude by putting slanted
		lines or a triangle for various increments in magnitude, as show
		schematically below::
		
		  :                   /\    \
		  :                  /  \    \
		  :                 /    \    \    \
		  :                /      \    \    \
		  :               ------------------------------
		
		The largest increment is given by a triangle (or "flag"). After those
		come full lines (barbs). The smallest increment is a half line.  There
		is only, of course, ever at most 1 half line.  If the magnitude is
		small and only needs a single half-line and no full lines or
		triangles, the half-line is offset from the end of the barb so that it
		can be easily distinguished from barbs with a single full line.  The
		magnitude for the barb shown above would nominally be 65, using the
		standard increments of 50, 10, and 5.
		
		See also https://en.wikipedia.org/wiki/Wind_barb.
		
		Parameters
		----------
		X, Y : 1D or 2D array-like, optional
		    The x and y coordinates of the barb locations. See *pivot* for how the
		    barbs are drawn to the x, y positions.
		
		    If not given, they will be generated as a uniform integer meshgrid based
		    on the dimensions of *U* and *V*.
		
		    If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
		    using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
		    must match the column and row dimensions of *U* and *V*.
		
		U, V : 1D or 2D array-like
		    The x and y components of the barb shaft.
		
		C : 1D or 2D array-like, optional
		    Numeric data that defines the barb colors by colormapping via *norm* and
		    *cmap*.
		
		    This does not support explicit colors. If you want to set colors directly,
		    use *barbcolor* instead.
		
		length : float, default: 7
		    Length of the barb in points; the other parts of the barb
		    are scaled against this.
		
		pivot : {'tip', 'middle'} or float, default: 'tip'
		    The part of the arrow that is anchored to the *X*, *Y* grid. The barb
		    rotates about this point. This can also be a number, which shifts the
		    start of the barb that many points away from grid point.
		
		barbcolor : color or color sequence
		    The color of all parts of the barb except for the flags.  This parameter
		    is analogous to the *edgecolor* parameter for polygons, which can be used
		    instead. However this parameter will override facecolor.
		
		flagcolor : color or color sequence
		    The color of any flags on the barb.  This parameter is analogous to the
		    *facecolor* parameter for polygons, which can be used instead. However,
		    this parameter will override facecolor.  If this is not set (and *C* has
		    not either) then *flagcolor* will be set to match *barbcolor* so that the
		    barb has a uniform color. If *C* has been set, *flagcolor* has no effect.
		
		sizes : dict, optional
		    A dictionary of coefficients specifying the ratio of a given
		    feature to the length of the barb. Only those values one wishes to
		    override need to be included.  These features include:
		
		    - 'spacing' - space between features (flags, full/half barbs)
		    - 'height' - height (distance from shaft to top) of a flag or full barb
		    - 'width' - width of a flag, twice the width of a full barb
		    - 'emptybarb' - radius of the circle used for low magnitudes
		
		fill_empty : bool, default: False
		    Whether the empty barbs (circles) that are drawn should be filled with
		    the flag color.  If they are not filled, the center is transparent.
		
		rounding : bool, default: True
		    Whether the vector magnitude should be rounded when allocating barb
		    components.  If True, the magnitude is rounded to the nearest multiple
		    of the half-barb increment.  If False, the magnitude is simply truncated
		    to the next lowest multiple.
		
		barb_increments : dict, optional
		    A dictionary of increments specifying values to associate with
		    different parts of the barb. Only those values one wishes to
		    override need to be included.
		
		    - 'half' - half barbs (Default is 5)
		    - 'full' - full barbs (Default is 10)
		    - 'flag' - flags (default is 50)
		
		flip_barb : bool or array-like of bool, default: False
		    Whether the lines and flags should point opposite to normal.
		    Normal behavior is for the barbs and lines to point right (comes from wind
		    barbs having these features point towards low pressure in the Northern
		    Hemisphere).
		
		    A single value is applied to all barbs. Individual barbs can be flipped by
		    passing a bool array of the same size as *U* and *V*.
		
		Returns
		-------
		barbs : `~matplotlib.quiver.Barbs`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    The barbs can further be customized using `.PolyCollection` keyword
		    arguments:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
	**/
	public function barbs(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a horizontal bar plot.
		
		The bars are positioned at *y* with the given *align*\ment. Their
		dimensions are given by *width* and *height*. The horizontal baseline
		is *left* (default 0).
		
		Many parameters can take either a single value applying to all bars
		or a sequence of values, one for each bar.
		
		Parameters
		----------
		y : float or array-like
		    The y coordinates of the bars. See also *align* for the
		    alignment of the bars to the coordinates.
		
		width : float or array-like
		    The width(s) of the bars.
		
		height : float or array-like, default: 0.8
		    The heights of the bars.
		
		left : float or array-like, default: 0
		    The x coordinates of the left sides of the bars.
		
		align : {'center', 'edge'}, default: 'center'
		    Alignment of the base to the *y* coordinates*:
		
		    - 'center': Center the bars on the *y* positions.
		    - 'edge': Align the bottom edges of the bars with the *y*
		      positions.
		
		    To align the bars on the top edge pass a negative *height* and
		    ``align='edge'``.
		
		Returns
		-------
		`.BarContainer`
		    Container with all the bars and optionally errorbars.
		
		Other Parameters
		----------------
		color : color or list of color, optional
		    The colors of the bar faces.
		
		edgecolor : color or list of color, optional
		    The colors of the bar edges.
		
		linewidth : float or array-like, optional
		    Width of the bar edge(s). If 0, don't draw edges.
		
		tick_label : str or list of str, optional
		    The tick labels of the bars.
		    Default: None (Use default numeric labels.)
		
		xerr, yerr : float or array-like of shape(N,) or shape(2, N), optional
		    If not ``None``, add horizontal / vertical errorbars to the
		    bar tips. The values are +/- sizes relative to the data:
		
		    - scalar: symmetric +/- values for all bars
		    - shape(N,): symmetric +/- values for each bar
		    - shape(2, N): Separate - and + values for each bar. First row
		      contains the lower errors, the second row contains the upper
		      errors.
		    - *None*: No errorbar. (default)
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		ecolor : color or list of color, default: 'black'
		    The line color of the errorbars.
		
		capsize : float, default: :rc:`errorbar.capsize`
		   The length of the error bar caps in points.
		
		error_kw : dict, optional
		    Dictionary of kwargs to be passed to the `~.Axes.errorbar`
		    method. Values of *ecolor* or *capsize* defined here take
		    precedence over the independent kwargs.
		
		log : bool, default: False
		    If ``True``, set the x-axis to be log scale.
		
		**kwargs : `.Rectangle` properties
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    angle: unknown
		    animated: bool
		    antialiased or aa: bool or None
		    bounds: (left, bottom, width, height)
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    height: unknown
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    width: unknown
		    x: unknown
		    xy: (float, float)
		    y: unknown
		    zorder: float
		
		See Also
		--------
		bar : Plot a vertical bar plot.
		
		Notes
		-----
		Stacked bars can be achieved by passing individual *left* values per
		bar. See
		:doc:`/gallery/lines_bars_and_markers/horizontal_barchart_distribution`
		.
	**/
	public function barh(y:Dynamic, width:Dynamic, ?height:Dynamic, ?left:Dynamic, ?align:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a box and whisker plot.
		
		The box extends from the first quartile (Q1) to the third
		quartile (Q3) of the data, with a line at the median.  The
		whiskers extend from the box by 1.5x the inter-quartile range
		(IQR).  Flier points are those past the end of the whiskers.
		See https://en.wikipedia.org/wiki/Box_plot for reference.
		
		.. code-block:: none
		
		          Q1-1.5IQR   Q1   median  Q3   Q3+1.5IQR
		                       |-----:-----|
		       o      |--------|     :     |--------|    o  o
		                       |-----:-----|
		     flier             <----------->            fliers
		                            IQR
		
		
		Parameters
		----------
		x : Array or a sequence of vectors.
		    The input data.  If a 2D array, a boxplot is drawn for each column
		    in *x*.  If a sequence of 1D arrays, a boxplot is drawn for each
		    array in *x*.
		
		notch : bool, default: False
		    Whether to draw a notched boxplot (`True`), or a rectangular
		    boxplot (`False`).  The notches represent the confidence interval
		    (CI) around the median.  The documentation for *bootstrap*
		    describes how the locations of the notches are computed by
		    default, but their locations may also be overridden by setting the
		    *conf_intervals* parameter.
		
		    .. note::
		
		        In cases where the values of the CI are less than the
		        lower quartile or greater than the upper quartile, the
		        notches will extend beyond the box, giving it a
		        distinctive "flipped" appearance. This is expected
		        behavior and consistent with other statistical
		        visualization packages.
		
		sym : str, optional
		    The default symbol for flier points.  An empty string ('') hides
		    the fliers.  If `None`, then the fliers default to 'b+'.  More
		    control is provided by the *flierprops* parameter.
		
		vert : bool, default: True
		    If `True`, draws vertical boxes.
		    If `False`, draw horizontal boxes.
		
		whis : float or (float, float), default: 1.5
		    The position of the whiskers.
		
		    If a float, the lower whisker is at the lowest datum above
		    ``Q1 - whis*(Q3-Q1)``, and the upper whisker at the highest datum
		    below ``Q3 + whis*(Q3-Q1)``, where Q1 and Q3 are the first and
		    third quartiles.  The default value of ``whis = 1.5`` corresponds
		    to Tukey's original definition of boxplots.
		
		    If a pair of floats, they indicate the percentiles at which to
		    draw the whiskers (e.g., (5, 95)).  In particular, setting this to
		    (0, 100) results in whiskers covering the whole range of the data.
		
		    In the edge case where ``Q1 == Q3``, *whis* is automatically set
		    to (0, 100) (cover the whole range of the data) if *autorange* is
		    True.
		
		    Beyond the whiskers, data are considered outliers and are plotted
		    as individual points.
		
		bootstrap : int, optional
		    Specifies whether to bootstrap the confidence intervals
		    around the median for notched boxplots. If *bootstrap* is
		    None, no bootstrapping is performed, and notches are
		    calculated using a Gaussian-based asymptotic approximation
		    (see McGill, R., Tukey, J.W., and Larsen, W.A., 1978, and
		    Kendall and Stuart, 1967). Otherwise, bootstrap specifies
		    the number of times to bootstrap the median to determine its
		    95% confidence intervals. Values between 1000 and 10000 are
		    recommended.
		
		usermedians : 1D array-like, optional
		    A 1D array-like of length ``len(x)``.  Each entry that is not
		    `None` forces the value of the median for the corresponding
		    dataset.  For entries that are `None`, the medians are computed
		    by Matplotlib as normal.
		
		conf_intervals : array-like, optional
		    A 2D array-like of shape ``(len(x), 2)``.  Each entry that is not
		    None forces the location of the corresponding notch (which is
		    only drawn if *notch* is `True`).  For entries that are `None`,
		    the notches are computed by the method specified by the other
		    parameters (e.g., *bootstrap*).
		
		positions : array-like, optional
		    The positions of the boxes. The ticks and limits are
		    automatically set to match the positions. Defaults to
		    ``range(1, N+1)`` where N is the number of boxes to be drawn.
		
		widths : float or array-like
		    The widths of the boxes.  The default is 0.5, or ``0.15*(distance
		    between extreme positions)``, if that is smaller.
		
		patch_artist : bool, default: False
		    If `False` produces boxes with the Line2D artist. Otherwise,
		    boxes are drawn with Patch artists.
		
		labels : sequence, optional
		    Labels for each dataset (one per dataset).
		
		manage_ticks : bool, default: True
		    If True, the tick locations and labels will be adjusted to match
		    the boxplot positions.
		
		autorange : bool, default: False
		    When `True` and the data are distributed such that the 25th and
		    75th percentiles are equal, *whis* is set to (0, 100) such
		    that the whisker ends are at the minimum and maximum of the data.
		
		meanline : bool, default: False
		    If `True` (and *showmeans* is `True`), will try to render the
		    mean as a line spanning the full width of the box according to
		    *meanprops* (see below).  Not recommended if *shownotches* is also
		    True.  Otherwise, means will be shown as points.
		
		zorder : float, default: ``Line2D.zorder = 2``
		    The zorder of the boxplot.
		
		Returns
		-------
		dict
		  A dictionary mapping each component of the boxplot to a list
		  of the `.Line2D` instances created. That dictionary has the
		  following keys (assuming vertical boxplots):
		
		  - ``boxes``: the main body of the boxplot showing the
		    quartiles and the median's confidence intervals if
		    enabled.
		
		  - ``medians``: horizontal lines at the median of each box.
		
		  - ``whiskers``: the vertical lines extending to the most
		    extreme, non-outlier data points.
		
		  - ``caps``: the horizontal lines at the ends of the
		    whiskers.
		
		  - ``fliers``: points representing data that extend beyond
		    the whiskers (fliers).
		
		  - ``means``: points or lines representing the means.
		
		Other Parameters
		----------------
		showcaps : bool, default: True
		    Show the caps on the ends of whiskers.
		showbox : bool, default: True
		    Show the central box.
		showfliers : bool, default: True
		    Show the outliers beyond the caps.
		showmeans : bool, default: False
		    Show the arithmetic means.
		capprops : dict, default: None
		    The style of the caps.
		boxprops : dict, default: None
		    The style of the box.
		whiskerprops : dict, default: None
		    The style of the whiskers.
		flierprops : dict, default: None
		    The style of the fliers.
		medianprops : dict, default: None
		    The style of the median.
		meanprops : dict, default: None
		    The style of the mean.
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		See Also
		--------
		violinplot : Draw an estimate of the probability density function.
	**/
	public function boxplot(x:Dynamic, ?notch:Dynamic, ?sym:Dynamic, ?vert:Dynamic, ?whis:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?patch_artist:Dynamic, ?bootstrap:Dynamic, ?usermedians:Dynamic, ?conf_intervals:Dynamic, ?meanline:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?labels:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?meanprops:Dynamic, ?capprops:Dynamic, ?whiskerprops:Dynamic, ?manage_ticks:Dynamic, ?autorange:Dynamic, ?zorder:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Plot a horizontal sequence of rectangles.
		
		A rectangle is drawn for each element of *xranges*. All rectangles
		have the same vertical position and size defined by *yrange*.
		
		This is a convenience function for instantiating a
		`.BrokenBarHCollection`, adding it to the Axes and autoscaling the
		view.
		
		Parameters
		----------
		xranges : sequence of tuples (*xmin*, *xwidth*)
		    The x-positions and extends of the rectangles. For each tuple
		    (*xmin*, *xwidth*) a rectangle is drawn from *xmin* to *xmin* +
		    *xwidth*.
		yrange : (*ymin*, *yheight*)
		    The y-position and extend for all the rectangles.
		
		Returns
		-------
		`~.collections.BrokenBarHCollection`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		**kwargs : `.BrokenBarHCollection` properties
		
		    Each *kwarg* can be either a single argument applying to all
		    rectangles, e.g.::
		
		        facecolors='black'
		
		    or a sequence of arguments over which is cycled, e.g.::
		
		        facecolors=('black', 'blue')
		
		    would create interleaving black and blue rectangles.
		
		    Supported keywords:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
	**/
	public function broken_barh(xranges:Dynamic, yrange:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Drawing function for box and whisker plots.
		
		Make a box and whisker plot for each column of *x* or each
		vector in sequence *x*.  The box extends from the lower to
		upper quartile values of the data, with a line at the median.
		The whiskers extend from the box to show the range of the
		data.  Flier points are those past the end of the whiskers.
		
		Parameters
		----------
		bxpstats : list of dicts
		  A list of dictionaries containing stats for each boxplot.
		  Required keys are:
		
		  - ``med``: Median (scalar).
		  - ``q1``, ``q3``: First & third quartiles (scalars).
		  - ``whislo``, ``whishi``: Lower & upper whisker positions (scalars).
		
		  Optional keys are:
		
		  - ``mean``: Mean (scalar).  Needed if ``showmeans=True``.
		  - ``fliers``: Data beyond the whiskers (array-like).
		    Needed if ``showfliers=True``.
		  - ``cilo``, ``cihi``: Lower & upper confidence intervals
		    about the median. Needed if ``shownotches=True``.
		  - ``label``: Name of the dataset (str).  If available,
		    this will be used a tick label for the boxplot
		
		positions : array-like, default: [1, 2, ..., n]
		  The positions of the boxes. The ticks and limits
		  are automatically set to match the positions.
		
		widths : float or array-like, default: None
		  The widths of the boxes.  The default is
		  ``clip(0.15*(distance between extreme positions), 0.15, 0.5)``.
		
		vert : bool, default: True
		  If `True` (default), makes the boxes vertical.
		  If `False`, makes horizontal boxes.
		
		patch_artist : bool, default: False
		  If `False` produces boxes with the `.Line2D` artist.
		  If `True` produces boxes with the `~matplotlib.patches.Patch` artist.
		
		shownotches, showmeans, showcaps, showbox, showfliers : bool
		  Whether to draw the CI notches, the mean value (both default to
		  False), the caps, the box, and the fliers (all three default to
		  True).
		
		boxprops, whiskerprops, capprops, flierprops, medianprops, meanprops : dict, optional
		  Artist properties for the boxes, whiskers, caps, fliers, medians, and
		  means.
		
		meanline : bool, default: False
		  If `True` (and *showmeans* is `True`), will try to render the mean
		  as a line spanning the full width of the box according to
		  *meanprops*. Not recommended if *shownotches* is also True.
		  Otherwise, means will be shown as points.
		
		manage_ticks : bool, default: True
		  If True, the tick locations and labels will be adjusted to match the
		  boxplot positions.
		
		zorder : float, default: ``Line2D.zorder = 2``
		  The zorder of the resulting boxplot.
		
		Returns
		-------
		dict
		  A dictionary mapping each component of the boxplot to a list
		  of the `.Line2D` instances created. That dictionary has the
		  following keys (assuming vertical boxplots):
		
		  - ``boxes``: main bodies of the boxplot showing the quartiles, and
		    the median's confidence intervals if enabled.
		  - ``medians``: horizontal lines at the median of each box.
		  - ``whiskers``: vertical lines up to the last non-outlier data.
		  - ``caps``: horizontal lines at the ends of the whiskers.
		  - ``fliers``: points representing data beyond the whiskers (fliers).
		  - ``means``: points or lines representing the means.
		
		Examples
		--------
		.. plot:: gallery/statistics/bxp.py
	**/
	public function bxp(bxpstats:Dynamic, ?positions:Dynamic, ?widths:Dynamic, ?vert:Dynamic, ?patch_artist:Dynamic, ?shownotches:Dynamic, ?showmeans:Dynamic, ?showcaps:Dynamic, ?showbox:Dynamic, ?showfliers:Dynamic, ?boxprops:Dynamic, ?whiskerprops:Dynamic, ?flierprops:Dynamic, ?medianprops:Dynamic, ?capprops:Dynamic, ?meanprops:Dynamic, ?meanline:Dynamic, ?manage_ticks:Dynamic, ?zorder:Dynamic):Dynamic;
	/**
		Return whether this axes supports the pan/zoom button functionality.
		
		For polar axes, this is slightly misleading. Both panning and
		zooming are performed by the same button. Panning is performed
		in azimuth while zooming is done along the radial.
	**/
	public function can_pan():Dynamic;
	/**
		Return whether this axes supports the zoom box button functionality.
		
		Polar axes do not support zoom boxes.
	**/
	public function can_zoom():Dynamic;
	/**
		Clear the Axes.
	**/
	public function cla():Dynamic;
	/**
		Label a contour plot.
		
		Adds labels to line contours in given `.ContourSet`.
		
		Parameters
		----------
		CS : `.ContourSet` instance
		    Line contours to label.
		
		levels : array-like, optional
		    A list of level values, that should be labeled. The list must be
		    a subset of ``CS.levels``. If not given, all levels are labeled.
		
		**kwargs
		    All other parameters are documented in `~.ContourLabeler.clabel`.
	**/
	public function clabel(CS:Dynamic, ?levels:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Clear the Axes.
	**/
	public function clear():Dynamic;
	/**
		Plot the coherence between *x* and *y*.
		
		Plot the coherence between *x* and *y*.  Coherence is the
		normalized cross spectral density:
		
		.. math::
		
		  C_{xy} = \frac{|P_{xy}|^2}{P_{xx}P_{yy}}
		
		Parameters
		----------
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between blocks.
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		Returns
		-------
		Cxy : 1-D array
		    The coherence vector.
		
		freqs : 1-D array
		    The frequencies for the elements in *Cxy*.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
	**/
	public function cohere(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var collections : Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Parameters
		----------
		mouseevent : `matplotlib.backend_bases.MouseEvent`
		
		Returns
		-------
		contains : bool
		    Whether any values are within the radius.
		details : dict
		    An artist-specific dictionary of details of the event context,
		    such as which points are contained in the pick radius. See the
		    individual Artist subclasses for details.
	**/
	public function contains(mouseevent:Dynamic):Bool;
	/**
		Return whether *point* (pair of pixel coordinates) is inside the axes
		patch.
	**/
	public function contains_point(point:Dynamic):Dynamic;
	/**
		Plot contour lines.
		
		Call signature::
		
		    contour([X, Y,] Z, [levels], **kwargs)
		
		`.contour` and `.contourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values
		are the same for both versions.
		
		Parameters
		----------
		X, Y : array-like, optional
		    The coordinates of the values in *Z*.
		
		    *X* and *Y* must both be 2D with the same shape as *Z* (e.g.
		    created via `numpy.meshgrid`), or they must both be 1-D such
		    that ``len(X) == N`` is the number of columns in *Z* and
		    ``len(Y) == M`` is the number of rows in *Z*.
		
		    *X* and *Y* must both be ordered monotonically.
		
		    If not given, they are assumed to be integer indices, i.e.
		    ``X = range(N)``, ``Y = range(M)``.
		
		Z : (M, N) array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries
		    to automatically choose no more than *n+1* "nice" contour levels
		    between *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.
		    The values must be in increasing order.
		
		Returns
		-------
		`~.contour.QuadContourSet`
		
		Other Parameters
		----------------
		corner_mask : bool, default: :rc:`contour.corner_mask`
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If ``False``, any quad touching a masked point is
		    masked out.  If ``True``, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e. the lines for `.contour` and the
		    areas for `.contourf`.
		
		    The sequence is cycled for the levels in ascending order. If the
		    sequence is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of
		    one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
		    all levels with the same color. This shortcut does only work for
		    color strings, not for other ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap*
		    will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap
		    maps the level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level
		    values to the canonical colormap range [0, 1] for mapping to
		    colors. If not given, the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying
		    the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
		    are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
		      corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in
		    `.imshow`: it gives the outer pixel boundaries. In this case, the
		    position of Z[0, 0] is the center of the pixel, not a corner. If
		    *origin* is *None*, then (*x0*, *y0*) is the position of Z[0, 0],
		    and (*x1*, *y1*) is the position of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call
		    to contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they
		    are not given explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``contourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.
		    If 'min', 'max' or 'both', color the values below, above or below
		    and above the *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped
		    to the under/over values of the `.Colormap`. Note that most
		    colormaps do not have dedicated colors for these by default, so
		    that the over and under values are the edge values of the colormap.
		    You may want to set these values explicitly using
		    `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.QuadContourSet` does not get notified if
		        properties of its colormap are changed. Therefore, an explicit
		        call `.QuadContourSet.changed()` is needed after modifying the
		        colormap. The explicit call can be left out, if a colorbar is
		        assigned to the `.QuadContourSet` because it internally calls
		        `.QuadContourSet.changed()`.
		
		    Example::
		
		        x = np.arange(1, 10)
		        y = x.reshape(-1, 1)
		        h = x * y
		
		        cs = plt.contourf(h, levels=[10, 30, 50],
		            colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
		        cs.cmap.set_over('red')
		        cs.cmap.set_under('blue')
		        cs.changed()
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		nchunk : int >= 0, optional
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		linewidths : float or array-like, default: :rc:`contour.linewidth`
		    *Only applies to* `.contour`.
		
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    If None, this falls back to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    *Only applies to* `.contour`.
		
		    If *linestyles* is *None*, the default is 'solid' unless the lines
		    are monochrome.  In that case, negative contours will take their
		    linestyle from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		hatches : list[str], optional
		    *Only applies to* `.contourf`.
		
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		Notes
		-----
		1. `.contourf` differs from the MATLAB version in that it does not draw
		   the polygon edges. To draw edges, add line contours with calls to
		   `.contour`.
		
		2. `.contourf` fills intervals that are closed at the top; that is, for
		   boundaries *z1* and *z2*, the filled region is::
		
		      z1 < Z <= z2
		
		   except for the lowest interval, which is closed on both sides (i.e.
		   it includes the lowest value).
		
		3. `.contour` and `.contourf` use a `marching squares
		   <https://en.wikipedia.org/wiki/Marching_squares>`_ algorithm to
		   compute contour locations.  More information can be found in
		   the source ``src/_contour.h``.
	**/
	public function contour(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot filled contours.
		
		Call signature::
		
		    contourf([X, Y,] Z, [levels], **kwargs)
		
		`.contour` and `.contourf` draw contour lines and filled contours,
		respectively.  Except as noted, function signatures and return values
		are the same for both versions.
		
		Parameters
		----------
		X, Y : array-like, optional
		    The coordinates of the values in *Z*.
		
		    *X* and *Y* must both be 2D with the same shape as *Z* (e.g.
		    created via `numpy.meshgrid`), or they must both be 1-D such
		    that ``len(X) == N`` is the number of columns in *Z* and
		    ``len(Y) == M`` is the number of rows in *Z*.
		
		    *X* and *Y* must both be ordered monotonically.
		
		    If not given, they are assumed to be integer indices, i.e.
		    ``X = range(N)``, ``Y = range(M)``.
		
		Z : (M, N) array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries
		    to automatically choose no more than *n+1* "nice" contour levels
		    between *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.
		    The values must be in increasing order.
		
		Returns
		-------
		`~.contour.QuadContourSet`
		
		Other Parameters
		----------------
		corner_mask : bool, default: :rc:`contour.corner_mask`
		    Enable/disable corner masking, which only has an effect if *Z* is
		    a masked array.  If ``False``, any quad touching a masked point is
		    masked out.  If ``True``, only the triangular corners of quads
		    nearest those points are always masked out, other triangular
		    corners comprising three unmasked points are contoured as usual.
		
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e. the lines for `.contour` and the
		    areas for `.contourf`.
		
		    The sequence is cycled for the levels in ascending order. If the
		    sequence is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of
		    one-element lists, i.e. ``'red'`` instead of ``['red']`` to color
		    all levels with the same color. This shortcut does only work for
		    color strings, not for other ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap*
		    will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap
		    maps the level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level
		    values to the canonical colormap range [0, 1] for mapping to
		    colors. If not given, the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying
		    the position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y*
		    are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left
		      corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in
		    `.imshow`: it gives the outer pixel boundaries. In this case, the
		    position of Z[0, 0] is the center of the pixel, not a corner. If
		    *origin* is *None*, then (*x0*, *y0*) is the position of Z[0, 0],
		    and (*x1*, *y1*) is the position of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call
		    to contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they
		    are not given explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``contourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.
		    If 'min', 'max' or 'both', color the values below, above or below
		    and above the *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped
		    to the under/over values of the `.Colormap`. Note that most
		    colormaps do not have dedicated colors for these by default, so
		    that the over and under values are the edge values of the colormap.
		    You may want to set these values explicitly using
		    `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.QuadContourSet` does not get notified if
		        properties of its colormap are changed. Therefore, an explicit
		        call `.QuadContourSet.changed()` is needed after modifying the
		        colormap. The explicit call can be left out, if a colorbar is
		        assigned to the `.QuadContourSet` because it internally calls
		        `.QuadContourSet.changed()`.
		
		    Example::
		
		        x = np.arange(1, 10)
		        y = x.reshape(-1, 1)
		        h = x * y
		
		        cs = plt.contourf(h, levels=[10, 30, 50],
		            colors=['#808080', '#A0A0A0', '#C0C0C0'], extend='both')
		        cs.cmap.set_over('red')
		        cs.cmap.set_under('blue')
		        cs.changed()
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		nchunk : int >= 0, optional
		    If 0, no subdivision of the domain.  Specify a positive integer to
		    divide the domain into subdomains of *nchunk* by *nchunk* quads.
		    Chunking reduces the maximum length of polygons generated by the
		    contouring algorithm which reduces the rendering workload passed
		    on to the backend and also requires slightly less RAM.  It can
		    however introduce rendering artifacts at chunk boundaries depending
		    on the backend, the *antialiased* flag and value of *alpha*.
		
		linewidths : float or array-like, default: :rc:`contour.linewidth`
		    *Only applies to* `.contour`.
		
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    If None, this falls back to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    *Only applies to* `.contour`.
		
		    If *linestyles* is *None*, the default is 'solid' unless the lines
		    are monochrome.  In that case, negative contours will take their
		    linestyle from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings
		    specifying a set of linestyles to be used. If this
		    iterable is shorter than the number of contour levels
		    it will be repeated as necessary.
		
		hatches : list[str], optional
		    *Only applies to* `.contourf`.
		
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		Notes
		-----
		1. `.contourf` differs from the MATLAB version in that it does not draw
		   the polygon edges. To draw edges, add line contours with calls to
		   `.contour`.
		
		2. `.contourf` fills intervals that are closed at the top; that is, for
		   boundaries *z1* and *z2*, the filled region is::
		
		      z1 < Z <= z2
		
		   except for the lowest interval, which is closed on both sides (i.e.
		   it includes the lowest value).
		
		3. `.contour` and `.contourf` use a `marching squares
		   <https://en.wikipedia.org/wiki/Marching_squares>`_ algorithm to
		   compute contour locations.  More information can be found in
		   the source ``src/_contour.h``.
	**/
	public function contourf(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot the cross-spectral density.
		
		The cross spectral density :math:`P_{xy}` by Welch's average
		periodogram method.  The vectors *x* and *y* are divided into
		*NFFT* length segments.  Each segment is detrended by function
		*detrend* and windowed by function *window*.  *noverlap* gives
		the length of the overlap between segments.  The product of
		the direct FFTs of *x* and *y* are averaged over each segment
		to compute :math:`P_{xy}`, with a scaling to correct for power
		loss due to windowing.
		
		If len(*x*) < *NFFT* or len(*y*) < *NFFT*, they will be zero
		padded to *NFFT*.
		
		Parameters
		----------
		x, y : 1-D arrays or sequences
		    Arrays or sequences containing the data.
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between segments.
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		return_line : bool, default: False
		    Whether to include the line object plotted in the returned values.
		
		Returns
		-------
		Pxy : 1-D array
		    The values for the cross spectrum :math:`P_{xy}` before scaling
		    (complex valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxy*.
		
		line : `~matplotlib.lines.Line2D`
		    The line created by this function.
		    Only returned if *return_line* is True.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		psd : is equivalent to setting ``y = x``.
		
		Notes
		-----
		For plotting, the power is plotted as
		:math:`10 \log_{10}(P_{xy})` for decibels, though :math:`P_{xy}` itself
		is returned.
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
	**/
	public function csd(x:Dynamic, y:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?return_line:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Called when the mouse moves during a pan operation.
		
		Parameters
		----------
		button : `.MouseButton`
		    The pressed mouse button.
		key : str or None
		    The pressed key, if any.
		x, y : float
		    The mouse coordinates in display coords.
		
		Notes
		-----
		This is intended to be overridden by new projection types.
	**/
	public function drag_pan(button:Dynamic, key:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
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
		Efficiently redraw a single artist.
		
		This method can only be used after an initial draw of the figure,
		because that creates and caches the renderer needed here.
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Called when a pan operation completes (when the mouse button is up.)
		
		Notes
		-----
		This is intended to be overridden by new projection types.
	**/
	public function end_pan():Dynamic;
	/**
		Plot y versus x as lines and/or markers with attached errorbars.
		
		*x*, *y* define the data locations, *xerr*, *yerr* define the errorbar
		sizes. By default, this draws the data markers/lines as well the
		errorbars. Use fmt='none' to draw errorbars without any data markers.
		
		Parameters
		----------
		x, y : float or array-like
		    The data positions.
		
		xerr, yerr : float or array-like, shape(N,) or shape(2, N), optional
		    The errorbar sizes:
		
		    - scalar: Symmetric +/- values for all data points.
		    - shape(N,): Symmetric +/-values for each data point.
		    - shape(2, N): Separate - and + values for each bar. First row
		      contains the lower errors, the second row contains the upper
		      errors.
		    - *None*: No errorbar.
		
		    Note that all error arrays should have *positive* values.
		
		    See :doc:`/gallery/statistics/errorbar_features`
		    for an example on the usage of ``xerr`` and ``yerr``.
		
		fmt : str, default: ''
		    The format for the data points / data lines. See `.plot` for
		    details.
		
		    Use 'none' (case insensitive) to plot errorbars without any data
		    markers.
		
		ecolor : color, default: None
		    The color of the errorbar lines.  If None, use the color of the
		    line connecting the markers.
		
		elinewidth : float, default: None
		    The linewidth of the errorbar lines. If None, the linewidth of
		    the current style is used.
		
		capsize : float, default: :rc:`errorbar.capsize`
		    The length of the error bar caps in points.
		
		capthick : float, default: None
		    An alias to the keyword argument *markeredgewidth* (a.k.a. *mew*).
		    This setting is a more sensible name for the property that
		    controls the thickness of the error bar cap in points. For
		    backwards compatibility, if *mew* or *markeredgewidth* are given,
		    then they will over-ride *capthick*. This may change in future
		    releases.
		
		barsabove : bool, default: False
		    If True, will plot the errorbars above the plot
		    symbols. Default is below.
		
		lolims, uplims, xlolims, xuplims : bool, default: False
		    These arguments can be used to indicate that a value gives only
		    upper/lower limits.  In that case a caret symbol is used to
		    indicate this. *lims*-arguments may be scalars, or array-likes of
		    the same length as *xerr* and *yerr*.  To use limits with inverted
		    axes, `~.Axes.set_xlim` or `~.Axes.set_ylim` must be called before
		    :meth:`errorbar`.  Note the tricky parameter names: setting e.g.
		    *lolims* to True means that the y-value is a *lower* limit of the
		    True value, so, only an *upward*-pointing arrow will be drawn!
		
		errorevery : int or (int, int), default: 1
		    draws error bars on a subset of the data. *errorevery* =N draws
		    error bars on the points (x[::N], y[::N]).
		    *errorevery* =(start, N) draws error bars on the points
		    (x[start::N], y[start::N]). e.g. errorevery=(6, 3)
		    adds error bars to the data at (x[6], x[9], x[12], x[15], ...).
		    Used to avoid overlapping error bars when two series share x-axis
		    values.
		
		Returns
		-------
		`.ErrorbarContainer`
		    The container contains:
		
		    - plotline: `.Line2D` instance of x, y plot markers and/or line.
		    - caplines: A tuple of `.Line2D` instances of the error bar caps.
		    - barlinecols: A tuple of `.LineCollection` with the horizontal and
		      vertical error ranges.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*, *xerr*, *yerr*
		
		**kwargs
		    All other keyword arguments are passed on to the `~.Axes.plot` call
		    drawing the markers. For example, this code makes big red squares
		    with thick green edges::
		
		        x, y, yerr = rand(3, 10)
		        errorbar(x, y, yerr, marker='s', mfc='red',
		                 mec='green', ms=20, mew=4)
		
		    where *mfc*, *mec*, *ms* and *mew* are aliases for the longer
		    property names, *markerfacecolor*, *markeredgecolor*, *markersize*
		    and *markeredgewidth*.
		
		    Valid kwargs for the marker properties are `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
	**/
	public function errorbar(x:Dynamic, y:Dynamic, ?yerr:Dynamic, ?xerr:Dynamic, ?fmt:Dynamic, ?ecolor:Dynamic, ?elinewidth:Dynamic, ?capsize:Dynamic, ?barsabove:Dynamic, ?lolims:Dynamic, ?uplims:Dynamic, ?xlolims:Dynamic, ?xuplims:Dynamic, ?errorevery:Dynamic, ?capthick:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot identical parallel lines at the given positions.
		
		This type of plot is commonly used in neuroscience for representing
		neural events, where it is usually called a spike raster, dot raster,
		or raster plot.
		
		However, it is useful in any situation where you wish to show the
		timing or position of multiple sets of discrete events, such as the
		arrival times of people to a business on each day of the month or the
		date of hurricanes each year of the last century.
		
		Parameters
		----------
		positions : array-like or list of array-like
		    A 1D array-like defines the positions of one sequence of events.
		
		    Multiple groups of events may be passed as a list of array-likes.
		    Each group can be styled independently by passing lists of values
		    to *lineoffsets*, *linelengths*, *linewidths*, *colors* and
		    *linestyles*.
		
		    Note that *positions* can be a 2D array, but in practice different
		    event groups usually have different counts so that one will use a
		    list of different-length arrays rather than a 2D array.
		
		orientation : {'horizontal', 'vertical'}, default: 'horizontal'
		    The direction of the event sequence:
		
		    - 'horizontal': the events are arranged horizontally.
		      The indicator lines are vertical.
		    - 'vertical': the events are arranged vertically.
		      The indicator lines are horizontal.
		
		lineoffsets : float or array-like, default: 1
		    The offset of the center of the lines from the origin, in the
		    direction orthogonal to *orientation*.
		
		    If *positions* is 2D, this can be a sequence with length matching
		    the length of *positions*.
		
		linelengths : float or array-like, default: 1
		    The total height of the lines (i.e. the lines stretches from
		    ``lineoffset - linelength/2`` to ``lineoffset + linelength/2``).
		
		    If *positions* is 2D, this can be a sequence with length matching
		    the length of *positions*.
		
		linewidths : float or array-like, default: :rc:`lines.linewidth`
		    The line width(s) of the event lines, in points.
		
		    If *positions* is 2D, this can be a sequence with length matching
		    the length of *positions*.
		
		colors : color or list of colors, default: :rc:`lines.color`
		    The color(s) of the event lines.
		
		    If *positions* is 2D, this can be a sequence with length matching
		    the length of *positions*.
		
		linestyles : str or tuple or list of such values, default: 'solid'
		    Default is 'solid'. Valid strings are ['solid', 'dashed',
		    'dashdot', 'dotted', '-', '--', '-.', ':']. Dash tuples
		    should be of the form::
		
		        (offset, onoffseq),
		
		    where *onoffseq* is an even length tuple of on and off ink
		    in points.
		
		    If *positions* is 2D, this can be a sequence with length matching
		    the length of *positions*.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *positions*, *lineoffsets*, *linelengths*, *linewidths*, *colors*, *linestyles*
		
		**kwargs
		    Other keyword arguments are line collection properties.  See
		    `.LineCollection` for a list of the valid properties.
		
		Returns
		-------
		list of `.EventCollection`
		    The `.EventCollection` that were added.
		
		Notes
		-----
		For *linelengths*, *linewidths*, *colors*, and *linestyles*, if only
		a single value is given, that value is applied to all lines.  If an
		array-like is given, it must have the same length as *positions*, and
		each value will be applied to the corresponding row of the array.
		
		Examples
		--------
		.. plot:: gallery/lines_bars_and_markers/eventplot_demo.py
	**/
	public function eventplot(positions:Dynamic, ?orientation:Dynamic, ?lineoffsets:Dynamic, ?linelengths:Dynamic, ?linewidths:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot filled polygons.
		
		Parameters
		----------
		*args : sequence of x, y, [color]
		    Each polygon is defined by the lists of *x* and *y* positions of
		    its nodes, optionally followed by a *color* specifier. See
		    :mod:`matplotlib.colors` for supported color specifiers. The
		    standard color cycle is used for polygons without a color
		    specifier.
		
		    You can plot multiple polygons by providing multiple *x*, *y*,
		    *[color]* groups.
		
		    For example, each of the following is legal::
		
		        ax.fill(x, y)                    # a polygon with default color
		        ax.fill(x, y, "b")               # a blue polygon
		        ax.fill(x, y, x2, y2)            # two polygons
		        ax.fill(x, y, "b", x2, y2, "r")  # a blue and a red polygon
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*, e.g.::
		
		        ax.fill("time", "signal",
		                data={"time": [0, 1, 2], "signal": [0, 1, 0]})
		
		Returns
		-------
		list of `~matplotlib.patches.Polygon`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.patches.Polygon` properties
		
		Notes
		-----
		Use :meth:`fill_between` if you would like to fill the region between
		two curves.
	**/
	public function fill(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill the area between two horizontal curves.
		
		The curves are defined by the points (*x*, *y1*) and (*x*,
		*y2*).  This creates one or multiple polygons describing the filled
		area.
		
		You may exclude some horizontal sections from filling using *where*.
		
		By default, the edges connect the given points directly.  Use *step*
		if the filling should be a step function, i.e. constant in between
		*x*.
		
		Parameters
		----------
		x : array (length N)
		    The x coordinates of the nodes defining the curves.
		
		y1 : array (length N) or scalar
		    The y coordinates of the nodes defining the first curve.
		
		y2 : array (length N) or scalar, default: 0
		    The y coordinates of the nodes defining the second curve.
		
		where : array of bool (length N), optional
		    Define *where* to exclude some horizontal regions from being filled.
		    The filled regions are defined by the coordinates ``x[where]``.
		    More precisely, fill between ``x[i]`` and ``x[i+1]`` if
		    ``where[i] and where[i+1]``.  Note that this definition implies
		    that an isolated *True* value between two *False* values in *where*
		    will not result in filling.  Both sides of the *True* position
		    remain unfilled due to the adjacent *False* values.
		
		interpolate : bool, default: False
		    This option is only relevant if *where* is used and the two curves
		    are crossing each other.
		
		    Semantically, *where* is often used for *y1* > *y2* or
		    similar.  By default, the nodes of the polygon defining the filled
		    region will only be placed at the positions in the *x* array.
		    Such a polygon cannot describe the above semantics close to the
		    intersection.  The x-sections containing the intersection are
		    simply clipped.
		
		    Setting *interpolate* to *True* will calculate the actual
		    intersection point and extend the filled region up to this point.
		
		step : {'pre', 'post', 'mid'}, optional
		    Define *step* if the filling should be a step function,
		    i.e. constant in between *x*.  The value determines where the
		    step will occur:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Returns
		-------
		`.PolyCollection`
		    A `.PolyCollection` containing the plotted polygons.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y1*, *y2*, *where*
		
		**kwargs
		    All other keyword arguments are passed on to `.PolyCollection`.
		    They control the `.Polygon` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
		
		See Also
		--------
		fill_between : Fill between two sets of y-values.
		fill_betweenx : Fill between two sets of x-values.
	**/
	public function fill_between(x:Dynamic, y1:Dynamic, ?y2:Dynamic, ?where:Dynamic, ?interpolate:Dynamic, ?step:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Fill the area between two vertical curves.
		
		The curves are defined by the points (*y*, *x1*) and (*y*,
		*x2*).  This creates one or multiple polygons describing the filled
		area.
		
		You may exclude some vertical sections from filling using *where*.
		
		By default, the edges connect the given points directly.  Use *step*
		if the filling should be a step function, i.e. constant in between
		*y*.
		
		Parameters
		----------
		y : array (length N)
		    The y coordinates of the nodes defining the curves.
		
		x1 : array (length N) or scalar
		    The x coordinates of the nodes defining the first curve.
		
		x2 : array (length N) or scalar, default: 0
		    The x coordinates of the nodes defining the second curve.
		
		where : array of bool (length N), optional
		    Define *where* to exclude some vertical regions from being filled.
		    The filled regions are defined by the coordinates ``y[where]``.
		    More precisely, fill between ``y[i]`` and ``y[i+1]`` if
		    ``where[i] and where[i+1]``.  Note that this definition implies
		    that an isolated *True* value between two *False* values in *where*
		    will not result in filling.  Both sides of the *True* position
		    remain unfilled due to the adjacent *False* values.
		
		interpolate : bool, default: False
		    This option is only relevant if *where* is used and the two curves
		    are crossing each other.
		
		    Semantically, *where* is often used for *x1* > *x2* or
		    similar.  By default, the nodes of the polygon defining the filled
		    region will only be placed at the positions in the *y* array.
		    Such a polygon cannot describe the above semantics close to the
		    intersection.  The y-sections containing the intersection are
		    simply clipped.
		
		    Setting *interpolate* to *True* will calculate the actual
		    intersection point and extend the filled region up to this point.
		
		step : {'pre', 'post', 'mid'}, optional
		    Define *step* if the filling should be a step function,
		    i.e. constant in between *y*.  The value determines where the
		    step will occur:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		Returns
		-------
		`.PolyCollection`
		    A `.PolyCollection` containing the plotted polygons.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *y*, *x1*, *x2*, *where*
		
		**kwargs
		    All other keyword arguments are passed on to `.PolyCollection`.
		    They control the `.Polygon` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
		
		See Also
		--------
		fill_between : Fill between two sets of y-values.
		fill_betweenx : Fill between two sets of x-values.
	**/
	public function fill_betweenx(y:Dynamic, x1:Dynamic, ?x2:Dynamic, ?where:Dynamic, ?step:Dynamic, ?interpolate:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return a format string formatting the *x*, *y* coordinates.
	**/
	public function format_coord(theta:Dynamic, r:Dynamic):Dynamic;
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
		Return *x* formatted as an x-value.
		
		This function will use the `.fmt_xdata` attribute if it is not None,
		else will fall back on the xaxis major formatter.
	**/
	public function format_xdata(x:Dynamic):Dynamic;
	/**
		Return *y* formatted as an y-value.
		
		This function will use the `.fmt_ydata` attribute if it is not None,
		else will fall back on the yaxis major formatter.
	**/
	public function format_ydata(y:Dynamic):Dynamic;
	/**
		Return whether the Axes will adjust its physical dimension ('box') or
		its data limits ('datalim') to achieve the desired aspect ratio.
		
		See Also
		--------
		matplotlib.axes.Axes.set_adjustable
		    Set how the Axes adjusts to achieve the required aspect ratio.
		matplotlib.axes.Axes.set_aspect
		    For a description of aspect handling.
	**/
	public function get_adjustable():Dynamic;
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
		Get the anchor location.
		
		See Also
		--------
		matplotlib.axes.Axes.set_anchor
		    for a description of the anchor.
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function get_anchor():Dynamic;
	/**
		Return whether the artist is animated.
	**/
	public function get_animated():Dynamic;
	/**
		Return the aspect ratio of the axes scaling.
		
		This is either "auto" or a float giving the ratio of y/x-scale.
	**/
	public function get_aspect():Dynamic;
	/**
		Return True if each axis is autoscaled, False otherwise.
	**/
	public function get_autoscale_on():Dynamic;
	/**
		Return whether the x-axis is autoscaled.
	**/
	public function get_autoscalex_on():Dynamic;
	/**
		Return whether the y-axis is autoscaled.
	**/
	public function get_autoscaley_on():Dynamic;
	/**
		Return the axes_locator.
	**/
	public function get_axes_locator():Dynamic;
	/**
		Get whether axis ticks and gridlines are above or below most artists.
		
		Returns
		-------
		bool or 'line'
		
		See Also
		--------
		set_axisbelow
	**/
	public function get_axisbelow():Dynamic;
	/**
		Return the Axes box aspect, i.e. the ratio of height to width.
		
		The box aspect is ``None`` (i.e. chosen depending on the available
		figure space) unless explicitly specified.
		
		See Also
		--------
		matplotlib.axes.Axes.set_box_aspect
		    for a description of box aspect.
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function get_box_aspect():Dynamic;
	/**
		Return a list of the child `.Artist`\s of this `.Artist`.
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
	/**
		Return the aspect ratio of the data itself.  For a polar plot,
		this should always be 1.0
	**/
	public function get_data_ratio():Dynamic;
	/**
		Return a default list of artists that are used for the bounding box
		calculation.
		
		Artists are excluded either by not being visible or
		``artist.set_in_layout(False)``.
	**/
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Get the facecolor of the Axes.
	**/
	public function get_facecolor():Dynamic;
	/**
		Alias for `get_facecolor`.
	**/
	public function get_fc():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Get whether the Axes rectangle patch is drawn.
	**/
	public function get_frame_on():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return a list of `.AxesImage`\s contained by the Axes.
	**/
	public function get_images():Dynamic;
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
		Return the `.Legend` instance, or None if no legend is defined.
	**/
	public function get_legend():Dynamic;
	/**
		Return handles and labels for legend
		
		``ax.legend()`` is equivalent to ::
		
		  h, l = ax.get_legend_handles_labels()
		  ax.legend(h, l)
	**/
	public function get_legend_handles_labels(?legend_handler_map:Dynamic):Dynamic;
	/**
		Return a list of lines contained by the Axes.
	**/
	public function get_lines():Dynamic;
	/**
		Get whether the Axes responds to navigation commands.
	**/
	public function get_navigate():Dynamic;
	/**
		Get the navigation toolbar button status: 'PAN', 'ZOOM', or None.
	**/
	public function get_navigate_mode():Dynamic;
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
		Return the position of the Axes within the figure as a `.Bbox`.
		
		Parameters
		----------
		original : bool
		    If ``True``, return the original position. Otherwise return the
		    active position. For an explanation of the positions see
		    `.set_position`.
		
		Returns
		-------
		`.Bbox`
	**/
	public function get_position(?original:Dynamic):Dynamic;
	/**
		Return the zorder value below which artists will be rasterized.
	**/
	public function get_rasterization_zorder():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	public function get_renderer_cache():Dynamic;
	/**
		Returns
		-------
		float
		    The theta position of the radius labels in degrees.
	**/
	public function get_rlabel_position():Dynamic;
	/**
		Returns
		-------
		float
		    Outer radial limit.
	**/
	public function get_rmax():Dynamic;
	/**
		Returns
		-------
		float
		    The inner radial limit.
	**/
	public function get_rmin():Dynamic;
	/**
		Returns
		-------
		float
	**/
	public function get_rorigin():Dynamic;
	public function get_rsign():Dynamic;
	/**
		Return a reference to the shared axes Grouper object for x axes.
	**/
	public function get_shared_x_axes():Dynamic;
	/**
		Return a reference to the shared axes Grouper object for y axes.
	**/
	public function get_shared_y_axes():Dynamic;
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
		Get the direction in which theta increases.
		
		-1:
		   Theta increases in the clockwise direction
		
		1:
		   Theta increases in the counterclockwise direction
	**/
	public function get_theta_direction():Dynamic;
	/**
		Get the offset for the location of 0 in radians.
	**/
	public function get_theta_offset():Dynamic;
	/**
		Return the maximum theta limit in degrees.
	**/
	public function get_thetamax():Dynamic;
	/**
		Get the minimum theta limit in degrees.
	**/
	public function get_thetamin():Dynamic;
	/**
		Return the tight bounding box of the axes, including axis and their
		decorators (xlabel, title, etc).
		
		Artists that have ``artist.set_in_layout(False)`` are not included
		in the bbox.
		
		Parameters
		----------
		renderer : `.RendererBase` subclass
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		bbox_extra_artists : list of `.Artist` or ``None``
		    List of artists to include in the tight bounding box.  If
		    ``None`` (default), then all artist children of the Axes are
		    included in the tight bounding box.
		
		call_axes_locator : bool, default: True
		    If *call_axes_locator* is ``False``, it does not call the
		    ``_axes_locator`` attribute, which is necessary to get the correct
		    bounding box. ``call_axes_locator=False`` can be used if the
		    caller is only interested in the relative size of the tightbbox
		    compared to the Axes bbox.
		
		for_layout_only : default: False
		    The bounding box will *not* include the x-extent of the title and
		    the xlabel, or the y-extent of the ylabel.
		
		Returns
		-------
		`.BboxBase`
		    Bounding box in figure pixel coordinates.
		
		See Also
		--------
		matplotlib.axes.Axes.get_window_extent
		matplotlib.axis.Axis.get_tightbbox
		matplotlib.spines.Spine.get_window_extent
	**/
	public function get_tightbbox(renderer:Dynamic, ?call_axes_locator:Dynamic, ?bbox_extra_artists:Dynamic, ?for_layout_only:Dynamic):Dynamic;
	/**
		Get an Axes title.
		
		Get one of the three available Axes titles. The available titles
		are positioned above the Axes in the center, flush with the left
		edge, and flush with the right edge.
		
		Parameters
		----------
		loc : {'center', 'left', 'right'}, str, default: 'center'
		    Which title to return.
		
		Returns
		-------
		str
		    The title text string.
	**/
	public function get_title(?loc:Dynamic):Dynamic;
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
		Return the Axes bounding box in display space; *args* and *kwargs*
		are empty.
		
		This bounding box does not include the spines, ticks, ticklables,
		or other labels.  For a bounding box including these elements use
		`~matplotlib.axes.Axes.get_tightbbox`.
		
		See Also
		--------
		matplotlib.axes.Axes.get_tightbbox
		matplotlib.axis.Axis.get_tightbbox
		matplotlib.spines.Spine.get_window_extent
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the XAxis instance.
		
		The use of this function is discouraged. You should instead directly
		access the attribute ``ax.xaxis``.
	**/
	public function get_xaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing x-axis labels, which will add
		    *pad_points* of padding (in points) between the axis and the label.
		    The x-direction is in data coordinates and the y-direction is in
		    axis coordinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_xaxis_text1_transform(pad:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondary x-axis labels, which will
		    add *pad_points* of padding (in points) between the axis and the
		    label.  The x-direction is in data coordinates and the y-direction
		    is in axis coordinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_xaxis_text2_transform(pad:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, ticks
		and gridlines.  The x-direction is in data coordinates and the
		y-direction is in axis coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    `~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return the lower and upper x-axis bounds, in increasing order.
		
		See Also
		--------
		set_xbound
		get_xlim, set_xlim
		invert_xaxis, xaxis_inverted
	**/
	public function get_xbound():Dynamic;
	/**
		Return the xaxis' grid lines as a list of `.Line2D`\s.
	**/
	public function get_xgridlines():Dynamic;
	/**
		Get the xlabel text string.
	**/
	public function get_xlabel():Dynamic;
	/**
		Return the x-axis view limits.
		
		Returns
		-------
		left, right : (float, float)
		    The current x-axis limits in data coordinates.
		
		See Also
		--------
		set_xlim
		set_xbound, get_xbound
		invert_xaxis, xaxis_inverted
		
		Notes
		-----
		The x-axis may be inverted, in which case the *left* value will
		be greater than the *right* value.
	**/
	public function get_xlim():Dynamic;
	/**
		Return the xaxis' major tick labels, as a list of `~.text.Text`.
	**/
	public function get_xmajorticklabels():Dynamic;
	/**
		Return the xaxis' minor tick labels, as a list of `~.text.Text`.
	**/
	public function get_xminorticklabels():Dynamic;
	/**
		Return the xaxis' scale (as a str).
	**/
	public function get_xscale():Dynamic;
	/**
		Get the xaxis' tick labels.
		
		Parameters
		----------
		minor : bool
		   Whether to return the minor or the major ticklabels.
		
		which : None, ('minor', 'major', 'both')
		   Overrides *minor*.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		list of `~matplotlib.text.Text`
		
		Notes
		-----
		The tick label strings are not populated until a ``draw`` method has
		been called.
		
		See also: `~.pyplot.draw` and `~.FigureCanvasBase.draw`.
	**/
	public function get_xticklabels(?minor:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Return the xaxis' tick lines as a list of `.Line2D`\s.
	**/
	public function get_xticklines(?minor:Dynamic):Dynamic;
	/**
		Return the xaxis' tick locations in data coordinates.
	**/
	public function get_xticks(?minor:Dynamic):Dynamic;
	/**
		Return the YAxis instance.
		
		The use of this function is discouraged. You should instead directly
		access the attribute ``ax.yaxis``.
	**/
	public function get_yaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing y-axis labels, which will add
		    *pad_points* of padding (in points) between the axis and the label.
		    The x-direction is in axis coordinates and the y-direction is in
		    data coordinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_yaxis_text1_transform(pad:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondart y-axis labels, which will
		    add *pad_points* of padding (in points) between the axis and the
		    label.  The x-direction is in axis coordinates and the y-direction
		    is in data coordinates
		valign : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    The text vertical alignment.
		halign : {'center', 'left', 'right'}
		    The text horizontal alignment.
		
		Notes
		-----
		This transformation is primarily used by the `~matplotlib.axis.Axis`
		class, and is meant to be overridden by new kinds of projections that
		may need to place axis elements in different locations.
	**/
	public function get_yaxis_text2_transform(pad:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, ticks
		and gridlines.  The x-direction is in axis coordinates and the
		y-direction is in data coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    `~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return the lower and upper y-axis bounds, in increasing order.
		
		See Also
		--------
		set_ybound
		get_ylim, set_ylim
		invert_yaxis, yaxis_inverted
	**/
	public function get_ybound():Dynamic;
	/**
		Return the yaxis' grid lines as a list of `.Line2D`\s.
	**/
	public function get_ygridlines():Dynamic;
	/**
		Get the ylabel text string.
	**/
	public function get_ylabel():Dynamic;
	/**
		Return the y-axis view limits.
		
		Returns
		-------
		bottom, top : (float, float)
		    The current y-axis limits in data coordinates.
		
		See Also
		--------
		set_ylim
		set_ybound, get_ybound
		invert_yaxis, yaxis_inverted
		
		Notes
		-----
		The y-axis may be inverted, in which case the *bottom* value
		will be greater than the *top* value.
	**/
	public function get_ylim():Dynamic;
	/**
		Return the yaxis' major tick labels, as a list of `~.text.Text`.
	**/
	public function get_ymajorticklabels():Dynamic;
	/**
		Return the yaxis' minor tick labels, as a list of `~.text.Text`.
	**/
	public function get_yminorticklabels():Dynamic;
	/**
		Return the yaxis' scale (as a str).
	**/
	public function get_yscale():Dynamic;
	/**
		Get the yaxis' tick labels.
		
		Parameters
		----------
		minor : bool
		   Whether to return the minor or the major ticklabels.
		
		which : None, ('minor', 'major', 'both')
		   Overrides *minor*.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		list of `~matplotlib.text.Text`
		
		Notes
		-----
		The tick label strings are not populated until a ``draw`` method has
		been called.
		
		See also: `~.pyplot.draw` and `~.FigureCanvasBase.draw`.
	**/
	public function get_yticklabels(?minor:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Return the yaxis' tick lines as a list of `.Line2D`\s.
	**/
	public function get_yticklines(?minor:Dynamic):Dynamic;
	/**
		Return the yaxis' tick locations in data coordinates.
	**/
	public function get_yticks(?minor:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Configure the grid lines.
		
		Parameters
		----------
		visible : bool or None, optional
		    Whether to show the grid lines.  If any *kwargs* are supplied, it
		    is assumed you want the grid on and *visible* will be set to True.
		
		    If *visible* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}, optional
		    The grid lines to apply the changes on.
		
		axis : {'both', 'x', 'y'}, optional
		    The axis to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
		
		    Valid keyword arguments are:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		Notes
		-----
		The axis is drawn as a unit, so the effective zorder for drawing the
		grid is determined by the zorder of each axis, not by the zorder of the
		`.Line2D` objects comprising the grid.  Therefore, to set grid zorder,
		use `.set_axisbelow` or, for more control, call the
		`~.Artist.set_zorder` method of each axis.
	**/
	public function grid(?visible:Dynamic, ?which:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether any artists have been added to the Axes.
		
		This should not be used to determine whether the *dataLim*
		need to be updated, and may not actually be useful for
		anything.
	**/
	public function has_data():Dynamic;
	/**
		Return whether units are set on any axis.
	**/
	public function have_units():Dynamic;
	/**
		Make a 2D hexagonal binning plot of points *x*, *y*.
		
		If *C* is *None*, the value of the hexagon is determined by the number
		of points in the hexagon. Otherwise, *C* specifies values at the
		coordinate (x[i], y[i]). For each hexagon, these values are reduced
		using *reduce_C_function*.
		
		Parameters
		----------
		x, y : array-like
		    The data positions. *x* and *y* must be of the same length.
		
		C : array-like, optional
		    If given, these values are accumulated in the bins. Otherwise,
		    every point has a value of 1. Must be of the same length as *x*
		    and *y*.
		
		gridsize : int or (int, int), default: 100
		    If a single int, the number of hexagons in the *x*-direction.
		    The number of hexagons in the *y*-direction is chosen such that
		    the hexagons are approximately regular.
		
		    Alternatively, if a tuple (*nx*, *ny*), the number of hexagons
		    in the *x*-direction and the *y*-direction.
		
		bins : 'log' or int or sequence, default: None
		    Discretization of the hexagon values.
		
		    - If *None*, no binning is applied; the color of each hexagon
		      directly corresponds to its count value.
		    - If 'log', use a logarithmic scale for the colormap.
		      Internally, :math:`log_{10}(i+1)` is used to determine the
		      hexagon color. This is equivalent to ``norm=LogNorm()``.
		    - If an integer, divide the counts in the specified number
		      of bins, and color the hexagons accordingly.
		    - If a sequence of values, the values of the lower bound of
		      the bins to be used.
		
		xscale : {'linear', 'log'}, default: 'linear'
		    Use a linear or log10 scale on the horizontal axis.
		
		yscale : {'linear', 'log'}, default: 'linear'
		    Use a linear or log10 scale on the vertical axis.
		
		mincnt : int > 0, default: *None*
		    If not *None*, only display cells with more than *mincnt*
		    number of points in the cell.
		
		marginals : bool, default: *False*
		    If marginals is *True*, plot the marginal density as
		    colormapped rectangles along the bottom of the x-axis and
		    left of the y-axis.
		
		extent : 4-tuple of float, default: *None*
		    The limits of the bins (xmin, xmax, ymin, ymax).
		    The default assigns the limits based on
		    *gridsize*, *x*, *y*, *xscale* and *yscale*.
		
		    If *xscale* or *yscale* is set to 'log', the limits are
		    expected to be the exponent for a power of 10. E.g. for
		    x-limits of 1 and 50 in 'linear' scale and y-limits
		    of 10 and 1000 in 'log' scale, enter (1, 50, 1, 3).
		
		Returns
		-------
		`~matplotlib.collections.PolyCollection`
		    A `.PolyCollection` defining the hexagonal bins.
		
		    - `.PolyCollection.get_offsets` contains a Mx2 array containing
		      the x, y positions of the M hexagon centers.
		    - `.PolyCollection.get_array` contains the values of the M
		      hexagons.
		
		    If *marginals* is *True*, horizontal
		    bar and vertical bar (both PolyCollections) will be attached
		    to the return collection as attributes *hbar* and *vbar*.
		
		Other Parameters
		----------------
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    The Colormap instance or registered colormap name used to map
		    the bin values to colors.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the bin values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : float, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `.Normalize` instance (defaults to
		    the respective min/max values of the bins in case of the default
		    linear scaling).
		    It is an error to use *vmin* /*vmax* when *norm* is given.
		
		alpha : float between 0 and 1, optional
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		linewidths : float, default: *None*
		    If *None*, defaults to 1.0.
		
		edgecolors : {'face', 'none', *None*} or color, default: 'face'
		    The color of the hexagon edges. Possible values are:
		
		    - 'face': Draw the edges in the same color as the fill color.
		    - 'none': No edges are drawn. This can sometimes lead to unsightly
		      unpainted pixels between the hexagons.
		    - *None*: Draw outlines in the default color.
		    - An explicit color.
		
		reduce_C_function : callable, default: `numpy.mean`
		    The function to aggregate *C* within the bins. It is ignored if
		    *C* is not given. This must have the signature::
		
		        def reduce_C_function(C: array) -> float
		
		    Commonly used functions are:
		
		    - `numpy.mean`: average of the points
		    - `numpy.sum`: integral of the point values
		    - `numpy.amax`: value taken from the largest point
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*, *C*
		
		**kwargs : `~matplotlib.collections.PolyCollection` properties
		    All other keyword arguments are passed on to `.PolyCollection`:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
		
		See Also
		--------
		hist2d : 2D histogram rectangular bins
	**/
	public function hexbin(x:Dynamic, y:Dynamic, ?C:Dynamic, ?gridsize:Dynamic, ?bins:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, ?extent:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?edgecolors:Dynamic, ?reduce_C_function:Dynamic, ?mincnt:Dynamic, ?marginals:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a histogram.
		
		Compute and draw the histogram of *x*.  The return value is a tuple
		(*n*, *bins*, *patches*) or ([*n0*, *n1*, ...], *bins*, [*patches0*,
		*patches1*, ...]) if the input contains multiple data.  See the
		documentation of the *weights* parameter to draw a histogram of
		already-binned data.
		
		Multiple data can be provided via *x* as a list of datasets
		of potentially different length ([*x0*, *x1*, ...]), or as
		a 2D ndarray in which each column is a dataset.  Note that
		the ndarray form is transposed relative to the list form.
		
		Masked arrays are not supported.
		
		The *bins*, *range*, *weights*, and *density* parameters behave as in
		`numpy.histogram`.
		
		Parameters
		----------
		x : (n,) array or sequence of (n,) arrays
		    Input values, this takes either a single array or a sequence of
		    arrays which are not required to be of the same length.
		
		bins : int or sequence or str, default: :rc:`hist.bins`
		    If *bins* is an integer, it defines the number of equal-width bins
		    in the range.
		
		    If *bins* is a sequence, it defines the bin edges, including the
		    left edge of the first bin and the right edge of the last bin;
		    in this case, bins may be unequally spaced.  All but the last
		    (righthand-most) bin is half-open.  In other words, if *bins* is::
		
		        [1, 2, 3, 4]
		
		    then the first bin is ``[1, 2)`` (including 1, but excluding 2) and
		    the second ``[2, 3)``.  The last bin, however, is ``[3, 4]``, which
		    *includes* 4.
		
		    If *bins* is a string, it is one of the binning strategies
		    supported by `numpy.histogram_bin_edges`: 'auto', 'fd', 'doane',
		    'scott', 'stone', 'rice', 'sturges', or 'sqrt'.
		
		range : tuple or None, default: None
		    The lower and upper range of the bins. Lower and upper outliers
		    are ignored. If not provided, *range* is ``(x.min(), x.max())``.
		    Range has no effect if *bins* is a sequence.
		
		    If *bins* is a sequence or *range* is specified, autoscaling
		    is based on the specified bin range instead of the
		    range of x.
		
		density : bool, default: False
		    If ``True``, draw and return a probability density: each bin
		    will display the bin's raw count divided by the total number of
		    counts *and the bin width*
		    (``density = counts / (sum(counts) * np.diff(bins))``),
		    so that the area under the histogram integrates to 1
		    (``np.sum(density * np.diff(bins)) == 1``).
		
		    If *stacked* is also ``True``, the sum of the histograms is
		    normalized to 1.
		
		weights : (n,) array-like or None, default: None
		    An array of weights, of the same shape as *x*.  Each value in
		    *x* only contributes its associated weight towards the bin count
		    (instead of 1).  If *density* is ``True``, the weights are
		    normalized, so that the integral of the density over the range
		    remains 1.
		
		    This parameter can be used to draw a histogram of data that has
		    already been binned, e.g. using `numpy.histogram` (by treating each
		    bin as a single point with a weight equal to its count) ::
		
		        counts, bins = np.histogram(data)
		        plt.hist(bins[:-1], bins, weights=counts)
		
		    (or you may alternatively use `~.bar()`).
		
		cumulative : bool or -1, default: False
		    If ``True``, then a histogram is computed where each bin gives the
		    counts in that bin plus all bins for smaller values. The last bin
		    gives the total number of datapoints.
		
		    If *density* is also ``True`` then the histogram is normalized such
		    that the last bin equals 1.
		
		    If *cumulative* is a number less than 0 (e.g., -1), the direction
		    of accumulation is reversed.  In this case, if *density* is also
		    ``True``, then the histogram is normalized such that the first bin
		    equals 1.
		
		bottom : array-like, scalar, or None, default: None
		    Location of the bottom of each bin, ie. bins are drawn from
		    ``bottom`` to ``bottom + hist(x, bins)`` If a scalar, the bottom
		    of each bin is shifted by the same amount. If an array, each bin
		    is shifted independently and the length of bottom must match the
		    number of bins. If None, defaults to 0.
		
		histtype : {'bar', 'barstacked', 'step', 'stepfilled'}, default: 'bar'
		    The type of histogram to draw.
		
		    - 'bar' is a traditional bar-type histogram.  If multiple data
		      are given the bars are arranged side by side.
		    - 'barstacked' is a bar-type histogram where multiple
		      data are stacked on top of each other.
		    - 'step' generates a lineplot that is by default unfilled.
		    - 'stepfilled' generates a lineplot that is by default filled.
		
		align : {'left', 'mid', 'right'}, default: 'mid'
		    The horizontal alignment of the histogram bars.
		
		    - 'left': bars are centered on the left bin edges.
		    - 'mid': bars are centered between the bin edges.
		    - 'right': bars are centered on the right bin edges.
		
		orientation : {'vertical', 'horizontal'}, default: 'vertical'
		    If 'horizontal', `~.Axes.barh` will be used for bar-type histograms
		    and the *bottom* kwarg will be the left edges.
		
		rwidth : float or None, default: None
		    The relative width of the bars as a fraction of the bin width.  If
		    ``None``, automatically compute the width.
		
		    Ignored if *histtype* is 'step' or 'stepfilled'.
		
		log : bool, default: False
		    If ``True``, the histogram axis will be set to a log scale.
		
		color : color or array-like of colors or None, default: None
		    Color or sequence of colors, one per dataset.  Default (``None``)
		    uses the standard line color sequence.
		
		label : str or None, default: None
		    String, or sequence of strings to match multiple datasets.  Bar
		    charts yield multiple patches per dataset, but only the first gets
		    the label, so that `~.Axes.legend` will work as expected.
		
		stacked : bool, default: False
		    If ``True``, multiple data are stacked on top of each other If
		    ``False`` multiple data are arranged side by side if histtype is
		    'bar' or on top of each other if histtype is 'step'
		
		Returns
		-------
		n : array or list of arrays
		    The values of the histogram bins. See *density* and *weights* for a
		    description of the possible semantics.  If input *x* is an array,
		    then this is an array of length *nbins*. If input is a sequence of
		    arrays ``[data1, data2, ...]``, then this is a list of arrays with
		    the values of the histograms for each of the arrays in the same
		    order.  The dtype of the array *n* (or of its element arrays) will
		    always be float even if no weighting or normalization is used.
		
		bins : array
		    The edges of the bins. Length nbins + 1 (nbins left edges and right
		    edge of last bin).  Always a single array even when multiple data
		    sets are passed in.
		
		patches : `.BarContainer` or list of a single `.Polygon` or list of such objects
		    Container of individual artists used to create the histogram
		    or list of such containers if there are multiple input datasets.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *weights*
		
		**kwargs
		    `~matplotlib.patches.Patch` properties
		
		See Also
		--------
		hist2d : 2D histogram with rectangular bins
		hexbin : 2D histogram with hexagonal bins
		
		Notes
		-----
		For large numbers of bins (>1000), 'step' and 'stepfilled' can be
		significantly faster than 'bar' and 'barstacked'.
	**/
	public function hist(x:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?density:Dynamic, ?weights:Dynamic, ?cumulative:Dynamic, ?bottom:Dynamic, ?histtype:Dynamic, ?align:Dynamic, ?orientation:Dynamic, ?rwidth:Dynamic, ?log:Dynamic, ?color:Dynamic, ?label:Dynamic, ?stacked:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a 2D histogram plot.
		
		Parameters
		----------
		x, y : array-like, shape (n, )
		    Input values
		
		bins : None or int or [int, int] or array-like or [array, array]
		
		    The bin specification:
		
		    - If int, the number of bins for the two dimensions
		      (nx=ny=bins).
		    - If ``[int, int]``, the number of bins in each dimension
		      (nx, ny = bins).
		    - If array-like, the bin edges for the two dimensions
		      (x_edges=y_edges=bins).
		    - If ``[array, array]``, the bin edges in each dimension
		      (x_edges, y_edges = bins).
		
		    The default value is 10.
		
		range : array-like shape(2, 2), optional
		    The leftmost and rightmost edges of the bins along each dimension
		    (if not specified explicitly in the bins parameters): ``[[xmin,
		    xmax], [ymin, ymax]]``. All values outside of this range will be
		    considered outliers and not tallied in the histogram.
		
		density : bool, default: False
		    Normalize histogram.  See the documentation for the *density*
		    parameter of `~.Axes.hist` for more details.
		
		weights : array-like, shape (n, ), optional
		    An array of values w_i weighing each sample (x_i, y_i).
		
		cmin, cmax : float, default: None
		    All bins that has count less than *cmin* or more than *cmax* will
		    not be displayed (set to NaN before passing to imshow) and these
		    count values in the return value count histogram will also be set
		    to nan upon return.
		
		Returns
		-------
		h : 2D array
		    The bi-dimensional histogram of samples x and y. Values in x are
		    histogrammed along the first dimension and values in y are
		    histogrammed along the second dimension.
		xedges : 1D array
		    The bin edges along the x axis.
		yedges : 1D array
		    The bin edges along the y axis.
		image : `~.matplotlib.collections.QuadMesh`
		
		Other Parameters
		----------------
		cmap : Colormap or str, optional
		    A `.colors.Colormap` instance.  If not set, use rc settings.
		
		norm : Normalize, optional
		    A `.colors.Normalize` instance is used to
		    scale luminance data to ``[0, 1]``. If not set, defaults to
		    `.colors.Normalize()`.
		
		vmin/vmax : None or scalar, optional
		    Arguments passed to the `~.colors.Normalize` instance.
		
		alpha : ``0 <= scalar <= 1`` or ``None``, optional
		    The alpha blending value.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*, *weights*
		
		**kwargs
		    Additional parameters are passed along to the
		    `~.Axes.pcolormesh` method and `~matplotlib.collections.QuadMesh`
		    constructor.
		
		See Also
		--------
		hist : 1D histogram plotting
		hexbin : 2D histogram with hexagonal bins
		
		Notes
		-----
		- Currently ``hist2d`` calculates its own axis limits, and any limits
		  previously set are ignored.
		- Rendering the histogram with a logarithmic color scale is
		  accomplished by passing a `.colors.LogNorm` instance to the *norm*
		  keyword argument. Likewise, power-law normalization (similar
		  in effect to gamma correction) can be accomplished with
		  `.colors.PowerNorm`.
	**/
	public function hist2d(x:Dynamic, y:Dynamic, ?bins:Dynamic, ?range:Dynamic, ?density:Dynamic, ?weights:Dynamic, ?cmin:Dynamic, ?cmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot horizontal lines at each *y* from *xmin* to *xmax*.
		
		Parameters
		----------
		y : float or array-like
		    y-indexes where to plot the lines.
		
		xmin, xmax : float or array-like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : list of colors, default: :rc:`lines.color`
		
		linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, optional
		
		label : str, default: ''
		
		Returns
		-------
		`~matplotlib.collections.LineCollection`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *y*, *xmin*, *xmax*, *colors*
		**kwargs :  `~matplotlib.collections.LineCollection` properties.
		
		See Also
		--------
		vlines : vertical lines
		axhline : horizontal line across the Axes
	**/
	public function hlines(y:Dynamic, xmin:Dynamic, xmax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var images : Dynamic;
	/**
		Display data as an image, i.e., on a 2D regular raster.
		
		The input may either be actual RGB(A) data, or 2D scalar data, which
		will be rendered as a pseudocolor image. For displaying a grayscale
		image set up the colormapping using the parameters
		``cmap='gray', vmin=0, vmax=255``.
		
		The number of pixels used to render an image is set by the Axes size
		and the *dpi* of the figure. This can lead to aliasing artifacts when
		the image is resampled because the displayed image size will usually
		not match the size of *X* (see
		:doc:`/gallery/images_contours_and_fields/image_antialiasing`).
		The resampling can be controlled via the *interpolation* parameter
		and/or :rc:`image.interpolation`.
		
		Parameters
		----------
		X : array-like or PIL image
		    The image data. Supported array shapes are:
		
		    - (M, N): an image with scalar data. The values are mapped to
		      colors using normalization and a colormap. See parameters *norm*,
		      *cmap*, *vmin*, *vmax*.
		    - (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
		    - (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
		      i.e. including transparency.
		
		    The first two dimensions (M, N) define the rows and columns of
		    the image.
		
		    Out-of-range RGB(A) values are clipped.
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    The Colormap instance or registered colormap name used to map
		    scalar data to colors. This parameter is ignored for RGB(A) data.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The `.Normalize` instance used to scale scalar data to the [0, 1]
		    range before mapping to colors using *cmap*. By default, a linear
		    scaling mapping the lowest value to 0 and the highest to 1 is used.
		    This parameter is ignored for RGB(A) data.
		
		aspect : {'equal', 'auto'} or float, default: :rc:`image.aspect`
		    The aspect ratio of the Axes.  This parameter is particularly
		    relevant for images since it determines whether data pixels are
		    square.
		
		    This parameter is a shortcut for explicitly calling
		    `.Axes.set_aspect`. See there for further details.
		
		    - 'equal': Ensures an aspect ratio of 1. Pixels will be square
		      (unless pixel sizes are explicitly made non-square in data
		      coordinates using *extent*).
		    - 'auto': The Axes is kept fixed and the aspect is adjusted so
		      that the data fit in the Axes. In general, this will result in
		      non-square pixels.
		
		interpolation : str, default: :rc:`image.interpolation`
		    The interpolation method used.
		
		    Supported values are 'none', 'antialiased', 'nearest', 'bilinear',
		    'bicubic', 'spline16', 'spline36', 'hanning', 'hamming', 'hermite',
		    'kaiser', 'quadric', 'catrom', 'gaussian', 'bessel', 'mitchell',
		    'sinc', 'lanczos', 'blackman'.
		
		    If *interpolation* is 'none', then no interpolation is performed
		    on the Agg, ps, pdf and svg backends. Other backends will fall back
		    to 'nearest'. Note that most SVG renderers perform interpolation at
		    rendering and that the default interpolation method they implement
		    may differ.
		
		    If *interpolation* is the default 'antialiased', then 'nearest'
		    interpolation is used if the image is upsampled by more than a
		    factor of three (i.e. the number of display pixels is at least
		    three times the size of the data array).  If the upsampling rate is
		    smaller than 3, or the image is downsampled, then 'hanning'
		    interpolation is used to act as an anti-aliasing filter, unless the
		    image happens to be upsampled by exactly a factor of two or one.
		
		    See
		    :doc:`/gallery/images_contours_and_fields/interpolation_methods`
		    for an overview of the supported interpolation methods, and
		    :doc:`/gallery/images_contours_and_fields/image_antialiasing` for
		    a discussion of image antialiasing.
		
		    Some interpolation methods require an additional radius parameter,
		    which can be set by *filterrad*. Additionally, the antigrain image
		    resize filter is controlled by the parameter *filternorm*.
		
		interpolation_stage : {'data', 'rgba'}, default: 'data'
		    If 'data', interpolation
		    is carried out on the data provided by the user.  If 'rgba', the
		    interpolation is carried out after the colormapping has been
		    applied (visual interpolation).
		
		alpha : float or array-like, optional
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		    If *alpha* is an array, the alpha blending values are applied pixel
		    by pixel, and *alpha* must have the same shape as *X*.
		
		vmin, vmax : float, optional
		    When using scalar data and no explicit *norm*, *vmin* and *vmax*
		    define the data range that the colormap covers. By default,
		    the colormap covers the complete value range of the supplied
		    data. It is an error to use *vmin* /*vmax* when *norm* is given.
		    When using RGB(A) data, parameters *vmin* /*vmax* are ignored.
		
		origin : {'upper', 'lower'}, default: :rc:`image.origin`
		    Place the [0, 0] index of the array in the upper left or lower
		    left corner of the Axes. The convention (the default) 'upper' is
		    typically used for matrices and images.
		
		    Note that the vertical axis points upward for 'lower'
		    but downward for 'upper'.
		
		    See the :doc:`/tutorials/intermediate/imshow_extent` tutorial for
		    examples and a more detailed description.
		
		extent : floats (left, right, bottom, top), optional
		    The bounding box in data coordinates that the image will fill.
		    The image is stretched individually along x and y to fill the box.
		
		    The default extent is determined by the following conditions.
		    Pixels have unit size in data coordinates. Their centers are on
		    integer coordinates, and their center coordinates range from 0 to
		    columns-1 horizontally and from 0 to rows-1 vertically.
		
		    Note that the direction of the vertical axis and thus the default
		    values for top and bottom depend on *origin*:
		
		    - For ``origin == 'upper'`` the default is
		      ``(-0.5, numcols-0.5, numrows-0.5, -0.5)``.
		    - For ``origin == 'lower'`` the default is
		      ``(-0.5, numcols-0.5, -0.5, numrows-0.5)``.
		
		    See the :doc:`/tutorials/intermediate/imshow_extent` tutorial for
		    examples and a more detailed description.
		
		filternorm : bool, default: True
		    A parameter for the antigrain image resize filter (see the
		    antigrain documentation).  If *filternorm* is set, the filter
		    normalizes integer values and corrects the rounding errors. It
		    doesn't do anything with the source floating point values, it
		    corrects only integers according to the rule of 1.0 which means
		    that any sum of pixel weights must be equal to 1.0.  So, the
		    filter function must produce a graph of the proper shape.
		
		filterrad : float > 0, default: 4.0
		    The filter radius for filters that have a radius parameter, i.e.
		    when interpolation is one of: 'sinc', 'lanczos' or 'blackman'.
		
		resample : bool, default: :rc:`image.resample`
		    When *True*, use a full resampling method.  When *False*, only
		    resample when the output image is larger than the input image.
		
		url : str, optional
		    Set the url of the created `.AxesImage`. See `.Artist.set_url`.
		
		Returns
		-------
		`~matplotlib.image.AxesImage`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs : `~matplotlib.artist.Artist` properties
		    These parameters are passed on to the constructor of the
		    `.AxesImage` artist.
		
		See Also
		--------
		matshow : Plot a matrix or an array as an image.
		
		Notes
		-----
		Unless *extent* is used, pixel centers will be located at integer
		coordinates. In other words: the origin will coincide with the center
		of pixel (0, 0).
		
		There are two common representations for RGB images with an alpha
		channel:
		
		-   Straight (unassociated) alpha: R, G, and B channels represent the
		    color of the pixel, disregarding its opacity.
		-   Premultiplied (associated) alpha: R, G, and B channels represent
		    the color of the pixel, adjusted for its opacity by multiplication.
		
		`~matplotlib.pyplot.imshow` expects RGB images adopting the straight
		(unassociated) alpha representation.
	**/
	public function imshow(X:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?aspect:Dynamic, ?interpolation:Dynamic, ?alpha:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?origin:Dynamic, ?extent:Dynamic, ?interpolation_stage:Dynamic, ?filternorm:Dynamic, ?filterrad:Dynamic, ?resample:Dynamic, ?url:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether the given event (in display coords) is in the Axes.
	**/
	public function in_axes(mouseevent:Dynamic):Dynamic;
	/**
		Add an inset indicator to the Axes.  This is a rectangle on the plot
		at the position indicated by *bounds* that optionally has lines that
		connect the rectangle to an inset Axes (`.Axes.inset_axes`).
		
		Warnings
		--------
		This method is experimental as of 3.0, and the API may change.
		
		Parameters
		----------
		bounds : [x0, y0, width, height]
		    Lower-left corner of rectangle to be marked, and its width
		    and height.
		
		inset_ax : `.Axes`
		    An optional inset Axes to draw connecting lines to.  Two lines are
		    drawn connecting the indicator box to the inset Axes on corners
		    chosen so as to not overlap with the indicator box.
		
		transform : `.Transform`
		    Transform for the rectangle coordinates. Defaults to
		    `ax.transAxes`, i.e. the units of *rect* are in Axes-relative
		    coordinates.
		
		facecolor : color, default: 'none'
		    Facecolor of the rectangle.
		
		edgecolor : color, default: '0.5'
		    Color of the rectangle and color of the connecting lines.
		
		alpha : float, default: 0.5
		    Transparency of the rectangle and connector lines.
		
		zorder : float, default: 4.99
		    Drawing order of the rectangle and connector lines.  The default,
		    4.99, is just below the default level of inset Axes.
		
		**kwargs
		    Other keyword arguments are passed on to the `.Rectangle` patch:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    angle: unknown
		    animated: bool
		    antialiased or aa: bool or None
		    bounds: (left, bottom, width, height)
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color: color
		    edgecolor or ec: color or None
		    facecolor or fc: color or None
		    figure: `.Figure`
		    fill: bool
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    height: unknown
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float or None
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    width: unknown
		    x: unknown
		    xy: (float, float)
		    y: unknown
		    zorder: float
		
		Returns
		-------
		rectangle_patch : `.patches.Rectangle`
		     The indicator frame.
		
		connector_lines : 4-tuple of `.patches.ConnectionPatch`
		    The four connector lines connecting to (lower_left, upper_left,
		    lower_right upper_right) corners of *inset_ax*. Two lines are
		    set with visibility to *False*,  but the user can set the
		    visibility to True if the automatic choice is not deemed correct.
	**/
	public function indicate_inset(bounds:Dynamic, ?inset_ax:Dynamic, ?transform:Dynamic, ?facecolor:Dynamic, ?edgecolor:Dynamic, ?alpha:Dynamic, ?zorder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add an inset indicator rectangle to the Axes based on the axis
		limits for an *inset_ax* and draw connectors between *inset_ax*
		and the rectangle.
		
		Warnings
		--------
		This method is experimental as of 3.0, and the API may change.
		
		Parameters
		----------
		inset_ax : `.Axes`
		    Inset Axes to draw connecting lines to.  Two lines are
		    drawn connecting the indicator box to the inset Axes on corners
		    chosen so as to not overlap with the indicator box.
		
		**kwargs
		    Other keyword arguments are passed on to `.Axes.indicate_inset`
		
		Returns
		-------
		rectangle_patch : `.patches.Rectangle`
		     Rectangle artist.
		
		connector_lines : 4-tuple of `.patches.ConnectionPatch`
		    Each of four connector lines coming from the rectangle drawn on
		    this axis, in the order lower left, upper left, lower right,
		    upper right.
		    Two are set with visibility to *False*,  but the user can
		    set the visibility to *True* if the automatic choice is not deemed
		    correct.
	**/
	public function indicate_inset_zoom(inset_ax:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a child inset Axes to this existing Axes.
		
		Warnings
		--------
		This method is experimental as of 3.0, and the API may change.
		
		Parameters
		----------
		bounds : [x0, y0, width, height]
		    Lower-left corner of inset Axes, and its width and height.
		
		transform : `.Transform`
		    Defaults to `ax.transAxes`, i.e. the units of *rect* are in
		    Axes-relative coordinates.
		
		zorder : number
		    Defaults to 5 (same as `.Axes.legend`).  Adjust higher or lower
		    to change whether it is above or below data plotted on the
		    parent Axes.
		
		**kwargs
		    Other keyword arguments are passed on to the child `.Axes`.
		
		Returns
		-------
		ax
		    The created `~.axes.Axes` instance.
		
		Examples
		--------
		This example makes two inset Axes, the first is in Axes-relative
		coordinates, and the second in data-coordinates::
		
		    fig, ax = plt.subplots()
		    ax.plot(range(10))
		    axin1 = ax.inset_axes([0.8, 0.1, 0.15, 0.15])
		    axin2 = ax.inset_axes(
		            [5, 7, 2.3, 2.3], transform=ax.transData)
	**/
	public function inset_axes(bounds:Dynamic, ?transform:Dynamic, ?zorder:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Invert the x-axis.
		
		See Also
		--------
		xaxis_inverted
		get_xlim, set_xlim
		get_xbound, set_xbound
	**/
	public function invert_xaxis():Dynamic;
	/**
		Invert the y-axis.
		
		See Also
		--------
		yaxis_inverted
		get_ylim, set_ylim
		get_ybound, set_ybound
	**/
	public function invert_yaxis():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	/**
		Place a legend on the Axes.
		
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
		    ax.legend()
		
		or::
		
		    line, = ax.plot([1, 2, 3])
		    line.set_label('Label via method')
		    ax.legend()
		
		Specific lines can be excluded from the automatic legend element
		selection by defining a label starting with an underscore.
		This is default for all artists, so calling `.Axes.legend` without
		any arguments and without setting the labels manually will result in
		no legend being drawn.
		
		
		**2. Explicitly listing the artists and labels in the legend**
		
		For full control of which artists have a legend entry, it is possible
		to pass an iterable of legend artists followed by an iterable of
		legend labels respectively::
		
		    ax.legend([line1, line2, line3], ['label1', 'label2', 'label3'])
		
		
		**3. Explicitly listing the artists in the legend**
		
		This is similar to 2, but the labels are taken from the artists'
		label properties. Example::
		
		    line1, = ax.plot([1, 2, 3], label='label1')
		    line2, = ax.plot([1, 2, 3], label='label2')
		    ax.legend(handles=[line1, line2])
		
		
		**4. Labeling existing plot elements**
		
		.. admonition:: Discouraged
		
		    This call signature is discouraged, because the relation between
		    plot elements and labels is only implicit by their order and can
		    easily be mixed up.
		
		To make a legend for all artists on an Axes, call this function with
		an iterable of strings, one for each legend item. For example::
		
		    ax.plot([1, 2, 3])
		    ax.plot([5, 6, 7])
		    ax.legend(['First line', 'Second line'])
		
		
		Parameters
		----------
		handles : sequence of `.Artist`, optional
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
		.Figure.legend
		
		Notes
		-----
		Some artists are not supported by this function.  See
		:doc:`/tutorials/intermediate/legend_guide` for details.
		
		Examples
		--------
		.. plot:: gallery/text_labels_and_annotations/legend.py
	**/
	public function legend(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var lines : Dynamic;
	/**
		Control behavior of major tick locators.
		
		Because the locator is involved in autoscaling, `~.Axes.autoscale_view`
		is called automatically after the parameters are changed.
		
		Parameters
		----------
		axis : {'both', 'x', 'y'}, default: 'both'
		    The axis on which to operate.
		
		tight : bool or None, optional
		    Parameter passed to `~.Axes.autoscale_view`.
		    Default is None, for no change.
		
		Other Parameters
		----------------
		**kwargs
		    Remaining keyword arguments are passed to directly to the
		    ``set_params()`` method of the locator. Supported keywords depend
		    on the type of the locator. See for example
		    `~.ticker.MaxNLocator.set_params` for the `.ticker.MaxNLocator`
		    used by default for linear axes.
		
		Examples
		--------
		When plotting small subplots, one might want to reduce the maximum
		number of ticks and use tight bounds, for example::
		
		    ax.locator_params(tight=True, nbins=4)
	**/
	public function locator_params(?axis:Dynamic, ?tight:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on both the x and y axis.
		
		Call signatures::
		
		    loglog([x], y, [fmt], data=None, **kwargs)
		    loglog([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		both the x-axis and the y-axis to log scaling. All of the concepts and
		parameters of plot can be used here as well.
		
		The additional parameters *base*, *subs* and *nonpositive* control the
		x/y-axis properties. They are just forwarded to `.Axes.set_xscale` and
		`.Axes.set_yscale`. To use different properties on the x-axis and the
		y-axis, use e.g.
		``ax.set_xscale("log", base=10); ax.set_yscale("log", base=2)``.
		
		Parameters
		----------
		base : float, default: 10
		    Base of the logarithm.
		
		subs : sequence, optional
		    The location of the minor ticks. If *None*, reasonable locations
		    are automatically chosen depending on the number of decades in the
		    plot. See `.Axes.set_xscale`/`.Axes.set_yscale` for details.
		
		nonpositive : {'mask', 'clip'}, default: 'mask'
		    Non-positive values can be masked as invalid, or clipped to a very
		    small positive number.
		
		**kwargs
		    All parameters supported by `.plot`.
		
		Returns
		-------
		list of `.Line2D`
		    Objects representing the plotted data.
	**/
	public function loglog(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the magnitude spectrum.
		
		Compute the magnitude spectrum of *x*.  Data is padded to a
		length of *pad_to* and the windowing function *window* is applied to
		the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		scale : {'default', 'linear', 'dB'}
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale, i.e., the dB amplitude
		    (20 * log10). 'default' is 'linear'.
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the magnitude spectrum before scaling (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : `~matplotlib.lines.Line2D`
		    The line created by this function.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		psd
		    Plots the power spectral density.
		angle_spectrum
		    Plots the angles of the corresponding frequencies.
		phase_spectrum
		    Plots the phase (unwrapped angle) of the corresponding frequencies.
		specgram
		    Can plot the magnitude spectrum of segments within the signal in a
		    colormap.
	**/
	public function magnitude_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set or retrieve autoscaling margins.
		
		The padding added to each limit of the Axes is the *margin*
		times the data interval. All input parameters must be floats
		within the range [0, 1]. Passing both positional and keyword
		arguments is invalid and will raise a TypeError. If no
		arguments (positional or otherwise) are provided, the current
		margins will remain in place and simply be returned.
		
		Specifying any margin changes only the autoscaling; for example,
		if *xmargin* is not None, then *xmargin* times the X data
		interval will be added to each end of that interval before
		it is used in autoscaling.
		
		Parameters
		----------
		*margins : float, optional
		    If a single positional argument is provided, it specifies
		    both margins of the x-axis and y-axis limits. If two
		    positional arguments are provided, they will be interpreted
		    as *xmargin*, *ymargin*. If setting the margin on a single
		    axis is desired, use the keyword arguments described below.
		
		x, y : float, optional
		    Specific margin values for the x-axis and y-axis,
		    respectively. These cannot be used with positional
		    arguments, but can be used individually to alter on e.g.,
		    only the y-axis.
		
		tight : bool or None, default: True
		    The *tight* parameter is passed to :meth:`autoscale_view`,
		    which is executed after a margin is changed; the default
		    here is *True*, on the assumption that when margins are
		    specified, no additional padding to match tick marks is
		    usually desired.  Set *tight* to *None* will preserve
		    the previous setting.
		
		Returns
		-------
		xmargin, ymargin : float
		
		Notes
		-----
		If a previously used Axes method such as :meth:`pcolor` has set
		:attr:`use_sticky_edges` to `True`, only the limits not set by
		the "sticky artists" will be modified. To force all of the
		margins to be set, set :attr:`use_sticky_edges` to `False`
		before calling :meth:`margins`.
	**/
	public function margins(?margins:python.VarArgs<Dynamic>, ?x:Dynamic, ?y:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Plot the values of a 2D matrix or array as color-coded image.
		
		The matrix will be shown the way it would be printed, with the first
		row at the top.  Row and column numbering is zero-based.
		
		Parameters
		----------
		Z : (M, N) array-like
		    The matrix to be displayed.
		
		Returns
		-------
		`~matplotlib.image.AxesImage`
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.axes.Axes.imshow` arguments
		
		See Also
		--------
		imshow : More general function to plot data on a 2D regular raster.
		
		Notes
		-----
		This is just a convenience function wrapping `.imshow` to set useful
		defaults for displaying a matrix. In particular:
		
		- Set ``origin='upper'``.
		- Set ``interpolation='nearest'``.
		- Set ``aspect='equal'``.
		- Ticks are placed to the left and above.
		- Ticks are formatted to show integer indices.
	**/
	public function matshow(Z:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Remove minor ticks from the Axes.
	**/
	public function minorticks_off():Dynamic;
	/**
		Display minor ticks on the Axes.
		
		Displaying minor ticks may reduce performance; you may turn them off
		using `minorticks_off()` if drawing speed is a problem.
	**/
	public function minorticks_on():Dynamic;
	/**
		If this property is set to *True*, the artist will be queried for
		custom context information when the mouse cursor moves over it.
		
		See also :meth:`get_cursor_data`, :class:`.ToolCursorPosition` and
		:class:`.NavigationToolbar2`.
	**/
	public var mouseover : Dynamic;
	static public var name : Dynamic;
	public var patches : Dynamic;
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
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		    pcolor([X, Y,] C, **kwargs)
		
		*X* and *Y* can be used to specify the corners of the quadrilaterals.
		
		.. hint::
		
		    ``pcolor()`` can be very slow for large arrays. In most
		    cases you should use the similar but much faster
		    `~.Axes.pcolormesh` instead. See
		    :ref:`Differences between pcolor() and pcolormesh()
		    <differences-pcolor-pcolormesh>` for a discussion of the
		    differences.
		
		Parameters
		----------
		C : 2D array-like
		    The color-mapped values.
		
		X, Y : array-like, optional
		    The coordinates of the corners of quadrilaterals of a pcolormesh::
		
		        (X[i+1, j], Y[i+1, j])       (X[i+1, j+1], Y[i+1, j+1])
		                              +-----+
		                              |     |
		                              +-----+
		            (X[i, j], Y[i, j])       (X[i, j+1], Y[i, j+1])
		
		    Note that the column index corresponds to the x-coordinate, and
		    the row index corresponds to y. For details, see the
		    :ref:`Notes <axes-pcolormesh-grid-orientation>` section below.
		
		    If ``shading='flat'`` the dimensions of *X* and *Y* should be one
		    greater than those of *C*, and the quadrilateral is colored due
		    to the value at ``C[i, j]``.  If *X*, *Y* and *C* have equal
		    dimensions, a warning will be raised and the last row and column
		    of *C* will be ignored.
		
		    If ``shading='nearest'``, the dimensions of *X* and *Y* should be
		    the same as those of *C* (if not, a ValueError will be raised). The
		    color ``C[i, j]`` will be centered on ``(X[i, j], Y[i, j])``.
		
		    If *X* and/or *Y* are 1-D arrays or column vectors they will be
		    expanded as needed into the appropriate 2D arrays, making a
		    rectangular grid.
		
		shading : {'flat', 'nearest', 'auto'}, default: :rc:`pcolor.shading`
		    The fill style for the quadrilateral. Possible values:
		
		    - 'flat': A solid color is used for each quad. The color of the
		      quad (i, j), (i+1, j), (i, j+1), (i+1, j+1) is given by
		      ``C[i, j]``. The dimensions of *X* and *Y* should be
		      one greater than those of *C*; if they are the same as *C*,
		      then a deprecation warning is raised, and the last row
		      and column of *C* are dropped.
		    - 'nearest': Each grid point will have a color centered on it,
		      extending halfway between the adjacent grid centers.  The
		      dimensions of *X* and *Y* must be the same as *C*.
		    - 'auto': Choose 'flat' if dimensions of *X* and *Y* are one
		      larger than *C*.  Choose 'nearest' if dimensions are the same.
		
		    See :doc:`/gallery/images_contours_and_fields/pcolormesh_grids`
		    for more description.
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : float, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		    It is an error to use *vmin* /*vmax* when *norm* is given.
		
		edgecolors : {'none', None, 'face', color, color sequence}, optional
		    The color of the edges. Defaults to 'none'. Possible values:
		
		    - 'none' or '': No edge.
		    - *None*: :rc:`patch.edgecolor` will be used. Note that currently
		      :rc:`patch.force_edgecolor` has to be True for this to work.
		    - 'face': Use the adjacent face color.
		    - A color or sequence of colors will set the edge color.
		
		    The singular form *edgecolor* works as an alias.
		
		alpha : float, default: None
		    The alpha blending value of the face color, between 0 (transparent)
		    and 1 (opaque). Note: The edgecolor is currently not affected by
		    this.
		
		snap : bool, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		Returns
		-------
		`matplotlib.collections.Collection`
		
		Other Parameters
		----------------
		antialiaseds : bool, default: False
		    The default *antialiaseds* is False if the default
		    *edgecolors*\ ="none" is used.  This eliminates artificial lines
		    at patch boundaries, and works regardless of the value of alpha.
		    If *edgecolors* is not "none", then the default *antialiaseds*
		    is taken from :rc:`patch.antialiased`.
		    Stroking the edges may be preferred if *alpha* is 1, but will
		    cause artifacts otherwise.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    Additionally, the following arguments are allowed. They are passed
		    along to the `~matplotlib.collections.PolyCollection` constructor:
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
		
		See Also
		--------
		pcolormesh : for an explanation of the differences between
		    pcolor and pcolormesh.
		imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
		    faster alternative.
		
		Notes
		-----
		**Masked arrays**
		
		*X*, *Y* and *C* may be masked arrays. If either ``C[i, j]``, or one
		of the vertices surrounding ``C[i, j]`` (*X* or *Y* at
		``[i, j], [i+1, j], [i, j+1], [i+1, j+1]``) is masked, nothing is
		plotted.
		
		.. _axes-pcolor-grid-orientation:
		
		**Grid orientation**
		
		The grid orientation follows the standard matrix convention: An array
		*C* with shape (nrows, ncolumns) is plotted with the column number as
		*X* and the row number as *Y*.
	**/
	public function pcolor(?args:python.VarArgs<Dynamic>, ?shading:Dynamic, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		  ax.pcolorfast([X, Y], C, /, **kwargs)
		
		This method is similar to `~.Axes.pcolor` and `~.Axes.pcolormesh`.
		It's designed to provide the fastest pcolor-type plotting with the
		Agg backend. To achieve this, it uses different algorithms internally
		depending on the complexity of the input grid (regular rectangular,
		non-regular rectangular or arbitrary quadrilateral).
		
		.. warning::
		
		   This method is experimental. Compared to `~.Axes.pcolor` or
		   `~.Axes.pcolormesh` it has some limitations:
		
		   - It supports only flat shading (no outlines)
		   - It lacks support for log scaling of the axes.
		   - It does not have a have a pyplot wrapper.
		
		Parameters
		----------
		C : array-like
		    The image data. Supported array shapes are:
		
		    - (M, N): an image with scalar data. The data is visualized
		      using a colormap.
		    - (M, N, 3): an image with RGB values (0-1 float or 0-255 int).
		    - (M, N, 4): an image with RGBA values (0-1 float or 0-255 int),
		      i.e. including transparency.
		
		    The first two dimensions (M, N) define the rows and columns of
		    the image.
		
		    This parameter can only be passed positionally.
		
		X, Y : tuple or array-like, default: ``(0, N)``, ``(0, M)``
		    *X* and *Y* are used to specify the coordinates of the
		    quadrilaterals. There are different ways to do this:
		
		    - Use tuples ``X=(xmin, xmax)`` and ``Y=(ymin, ymax)`` to define
		      a *uniform rectangular grid*.
		
		      The tuples define the outer edges of the grid. All individual
		      quadrilaterals will be of the same size. This is the fastest
		      version.
		
		    - Use 1D arrays *X*, *Y* to specify a *non-uniform rectangular
		      grid*.
		
		      In this case *X* and *Y* have to be monotonic 1D arrays of length
		      *N+1* and *M+1*, specifying the x and y boundaries of the cells.
		
		      The speed is intermediate. Note: The grid is checked, and if
		      found to be uniform the fast version is used.
		
		    - Use 2D arrays *X*, *Y* if you need an *arbitrary quadrilateral
		      grid* (i.e. if the quadrilaterals are not rectangular).
		
		      In this case *X* and *Y* are 2D arrays with shape (M + 1, N + 1),
		      specifying the x and y coordinates of the corners of the colored
		      quadrilaterals.
		
		      This is the most general, but the slowest to render.  It may
		      produce faster and more compact output using ps, pdf, and
		      svg backends, however.
		
		    These arguments can only be passed positionally.
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : float, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		    It is an error to use *vmin* /*vmax* when *norm* is given.
		
		alpha : float, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		snap : bool, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		Returns
		-------
		`.AxesImage` or `.PcolorImage` or `.QuadMesh`
		    The return type depends on the type of grid:
		
		    - `.AxesImage` for a regular rectangular grid.
		    - `.PcolorImage` for a non-regular rectangular grid.
		    - `.QuadMesh` for a non-rectangular grid.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    Supported additional parameters depend on the type of grid.
		    See return types of *image* for further description.
	**/
	public function pcolorfast(?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot with a non-regular rectangular grid.
		
		Call signature::
		
		    pcolormesh([X, Y,] C, **kwargs)
		
		*X* and *Y* can be used to specify the corners of the quadrilaterals.
		
		.. hint::
		
		   `~.Axes.pcolormesh` is similar to `~.Axes.pcolor`. It is much faster
		   and preferred in most cases. For a detailed discussion on the
		   differences see :ref:`Differences between pcolor() and pcolormesh()
		   <differences-pcolor-pcolormesh>`.
		
		Parameters
		----------
		C : 2D array-like
		    The color-mapped values.
		
		X, Y : array-like, optional
		    The coordinates of the corners of quadrilaterals of a pcolormesh::
		
		        (X[i+1, j], Y[i+1, j])       (X[i+1, j+1], Y[i+1, j+1])
		                              +-----+
		                              |     |
		                              +-----+
		            (X[i, j], Y[i, j])       (X[i, j+1], Y[i, j+1])
		
		    Note that the column index corresponds to the x-coordinate, and
		    the row index corresponds to y. For details, see the
		    :ref:`Notes <axes-pcolormesh-grid-orientation>` section below.
		
		    If ``shading='flat'`` the dimensions of *X* and *Y* should be one
		    greater than those of *C*, and the quadrilateral is colored due
		    to the value at ``C[i, j]``.  If *X*, *Y* and *C* have equal
		    dimensions, a warning will be raised and the last row and column
		    of *C* will be ignored.
		
		    If ``shading='nearest'`` or ``'gouraud'``, the dimensions of *X*
		    and *Y* should be the same as those of *C* (if not, a ValueError
		    will be raised).  For ``'nearest'`` the color ``C[i, j]`` is
		    centered on ``(X[i, j], Y[i, j])``.  For ``'gouraud'``, a smooth
		    interpolation is caried out between the quadrilateral corners.
		
		    If *X* and/or *Y* are 1-D arrays or column vectors they will be
		    expanded as needed into the appropriate 2D arrays, making a
		    rectangular grid.
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    A Colormap instance or registered colormap name. The colormap
		    maps the *C* values to colors.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    The Normalize instance scales the data values to the canonical
		    colormap range [0, 1] for mapping to colors. By default, the data
		    range is mapped to the colorbar range using linear scaling.
		
		vmin, vmax : float, default: None
		    The colorbar range. If *None*, suitable min/max values are
		    automatically chosen by the `.Normalize` instance (defaults to
		    the respective min/max values of *C* in case of the default linear
		    scaling).
		    It is an error to use *vmin* /*vmax* when *norm* is given.
		
		edgecolors : {'none', None, 'face', color, color sequence}, optional
		    The color of the edges. Defaults to 'none'. Possible values:
		
		    - 'none' or '': No edge.
		    - *None*: :rc:`patch.edgecolor` will be used. Note that currently
		      :rc:`patch.force_edgecolor` has to be True for this to work.
		    - 'face': Use the adjacent face color.
		    - A color or sequence of colors will set the edge color.
		
		    The singular form *edgecolor* works as an alias.
		
		alpha : float, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		shading : {'flat', 'nearest', 'gouraud', 'auto'}, optional
		    The fill style for the quadrilateral; defaults to
		    'flat' or :rc:`pcolor.shading`. Possible values:
		
		    - 'flat': A solid color is used for each quad. The color of the
		      quad (i, j), (i+1, j), (i, j+1), (i+1, j+1) is given by
		      ``C[i, j]``. The dimensions of *X* and *Y* should be
		      one greater than those of *C*; if they are the same as *C*,
		      then a deprecation warning is raised, and the last row
		      and column of *C* are dropped.
		    - 'nearest': Each grid point will have a color centered on it,
		      extending halfway between the adjacent grid centers.  The
		      dimensions of *X* and *Y* must be the same as *C*.
		    - 'gouraud': Each quad will be Gouraud shaded: The color of the
		      corners (i', j') are given by ``C[i', j']``. The color values of
		      the area in between is interpolated from the corner values.
		      The dimensions of *X* and *Y* must be the same as *C*. When
		      Gouraud shading is used, *edgecolors* is ignored.
		    - 'auto': Choose 'flat' if dimensions of *X* and *Y* are one
		      larger than *C*.  Choose 'nearest' if dimensions are the same.
		
		    See :doc:`/gallery/images_contours_and_fields/pcolormesh_grids`
		    for more description.
		
		snap : bool, default: False
		    Whether to snap the mesh to pixel boundaries.
		
		rasterized : bool, optional
		    Rasterize the pcolormesh when drawing vector graphics.  This can
		    speed up rendering and produce smaller files for large data sets.
		    See also :doc:`/gallery/misc/rasterization_demo`.
		
		Returns
		-------
		`matplotlib.collections.QuadMesh`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    Additionally, the following arguments are allowed. They are passed
		    along to the `~matplotlib.collections.QuadMesh` constructor:
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: (M, N) array-like or M*N array-like
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    visible: bool
		    zorder: float
		
		See Also
		--------
		pcolor : An alternative implementation with slightly different
		    features. For a detailed discussion on the differences see
		    :ref:`Differences between pcolor() and pcolormesh()
		    <differences-pcolor-pcolormesh>`.
		imshow : If *X* and *Y* are each equidistant, `~.Axes.imshow` can be a
		    faster alternative.
		
		Notes
		-----
		**Masked arrays**
		
		*C* may be a masked array. If ``C[i, j]`` is masked, the corresponding
		quadrilateral will be transparent. Masking of *X* and *Y* is not
		supported. Use `~.Axes.pcolor` if you need this functionality.
		
		.. _axes-pcolormesh-grid-orientation:
		
		**Grid orientation**
		
		The grid orientation follows the standard matrix convention: An array
		*C* with shape (nrows, ncolumns) is plotted with the column number as
		*X* and the row number as *Y*.
		
		.. _differences-pcolor-pcolormesh:
		
		**Differences between pcolor() and pcolormesh()**
		
		Both methods are used to create a pseudocolor plot of a 2D array
		using quadrilaterals.
		
		The main difference lies in the created object and internal data
		handling:
		While `~.Axes.pcolor` returns a `.PolyCollection`, `~.Axes.pcolormesh`
		returns a `.QuadMesh`. The latter is more specialized for the given
		purpose and thus is faster. It should almost always be preferred.
		
		There is also a slight difference in the handling of masked arrays.
		Both `~.Axes.pcolor` and `~.Axes.pcolormesh` support masked arrays
		for *C*. However, only `~.Axes.pcolor` supports masked arrays for *X*
		and *Y*. The reason lies in the internal handling of the masked values.
		`~.Axes.pcolor` leaves out the respective polygons from the
		PolyCollection. `~.Axes.pcolormesh` sets the facecolor of the masked
		elements to transparent. You can see the difference when using
		edgecolors. While all edges are drawn irrespective of masking in a
		QuadMesh, the edge between two adjacent masked quadrilaterals in
		`~.Axes.pcolor` is not drawn as the corresponding polygons do not
		exist in the PolyCollection.
		
		Another difference is the support of Gouraud shading in
		`~.Axes.pcolormesh`, which is not available with `~.Axes.pcolor`.
	**/
	public function pcolormesh(?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?shading:Dynamic, ?antialiased:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the phase spectrum.
		
		Compute the phase spectrum (unwrapped angle spectrum) of *x*.
		Data is padded to a length of *pad_to* and the windowing function
		*window* is applied to the signal.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  While not increasing the actual resolution of the spectrum (the
		    minimum distance between resolvable peaks), this can give more points in
		    the plot, allowing for more detail. This corresponds to the *n* parameter
		    in the call to fft().  The default is None, which sets *pad_to* equal to
		    the length of the input signal (i.e. no padding).
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		Returns
		-------
		spectrum : 1-D array
		    The values for the phase spectrum in radians (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *spectrum*.
		
		line : `~matplotlib.lines.Line2D`
		    The line created by this function.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		magnitude_spectrum
		    Plots the magnitudes of the corresponding frequencies.
		angle_spectrum
		    Plots the wrapped version of this function.
		specgram
		    Can plot the phase spectrum of segments within the signal in a
		    colormap.
	**/
	public function phase_spectrum(x:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?window:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Plot a pie chart.
		
		Make a pie chart of array *x*.  The fractional area of each wedge is
		given by ``x/sum(x)``.  If ``sum(x) < 1``, then the values of *x* give
		the fractional area directly and the array will not be normalized. The
		resulting pie will have an empty wedge of size ``1 - sum(x)``.
		
		The wedges are plotted counterclockwise, by default starting from the
		x-axis.
		
		Parameters
		----------
		x : 1D array-like
		    The wedge sizes.
		
		explode : array-like, default: None
		    If not *None*, is a ``len(x)`` array which specifies the fraction
		    of the radius with which to offset each wedge.
		
		labels : list, default: None
		    A sequence of strings providing the labels for each wedge
		
		colors : array-like, default: None
		    A sequence of colors through which the pie chart will cycle.  If
		    *None*, will use the colors in the currently active cycle.
		
		autopct : None or str or callable, default: None
		    If not *None*, is a string or function used to label the wedges
		    with their numeric value.  The label will be placed inside the
		    wedge.  If it is a format string, the label will be ``fmt % pct``.
		    If it is a function, it will be called.
		
		pctdistance : float, default: 0.6
		    The ratio between the center of each pie slice and the start of
		    the text generated by *autopct*.  Ignored if *autopct* is *None*.
		
		shadow : bool, default: False
		    Draw a shadow beneath the pie.
		
		normalize : bool, default: True
		    When *True*, always make a full pie by normalizing x so that
		    ``sum(x) == 1``. *False* makes a partial pie if ``sum(x) <= 1``
		    and raises a `ValueError` for ``sum(x) > 1``.
		
		labeldistance : float or None, default: 1.1
		    The radial distance at which the pie labels are drawn.
		    If set to ``None``, label are not drawn, but are stored for use in
		    ``legend()``
		
		startangle : float, default: 0 degrees
		    The angle by which the start of the pie is rotated,
		    counterclockwise from the x-axis.
		
		radius : float, default: 1
		    The radius of the pie.
		
		counterclock : bool, default: True
		    Specify fractions direction, clockwise or counterclockwise.
		
		wedgeprops : dict, default: None
		    Dict of arguments passed to the wedge objects making the pie.
		    For example, you can pass in ``wedgeprops = {'linewidth': 3}``
		    to set the width of the wedge border lines equal to 3.
		    For more details, look at the doc/arguments of the wedge object.
		    By default ``clip_on=False``.
		
		textprops : dict, default: None
		    Dict of arguments to pass to the text objects.
		
		center : (float, float), default: (0, 0)
		    The coordinates of the center of the chart.
		
		frame : bool, default: False
		    Plot Axes frame with the chart if true.
		
		rotatelabels : bool, default: False
		    Rotate each label to the angle of the corresponding slice if true.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *explode*, *labels*, *colors*
		
		Returns
		-------
		patches : list
		    A sequence of `matplotlib.patches.Wedge` instances
		
		texts : list
		    A list of the label `.Text` instances.
		
		autotexts : list
		    A list of `.Text` instances for the numeric labels. This will only
		    be returned if the parameter *autopct* is not *None*.
		
		Notes
		-----
		The pie chart will probably look best if the figure and Axes are
		square, or the Axes aspect is equal.
		This method sets the aspect ratio of the axis to "equal".
		The Axes aspect ratio can be controlled with `.Axes.set_aspect`.
	**/
	public function pie(x:Dynamic, ?explode:Dynamic, ?labels:Dynamic, ?colors:Dynamic, ?autopct:Dynamic, ?pctdistance:Dynamic, ?shadow:Dynamic, ?labeldistance:Dynamic, ?startangle:Dynamic, ?radius:Dynamic, ?counterclock:Dynamic, ?wedgeprops:Dynamic, ?textprops:Dynamic, ?center:Dynamic, ?frame:Dynamic, ?rotatelabels:Dynamic, ?normalize:Dynamic, ?data:Dynamic):Array<Dynamic>;
	/**
		Plot y versus x as lines and/or markers.
		
		Call signatures::
		
		    plot([x], y, [fmt], *, data=None, **kwargs)
		    plot([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		The coordinates of the points or line nodes are given by *x*, *y*.
		
		The optional parameter *fmt* is a convenient way for defining basic
		formatting like color, marker and linestyle. It's a shortcut string
		notation described in the *Notes* section below.
		
		>>> plot(x, y)        # plot x and y using default line style and color
		>>> plot(x, y, 'bo')  # plot x and y using blue circle markers
		>>> plot(y)           # plot y using x as index array 0..N-1
		>>> plot(y, 'r+')     # ditto, but with red plusses
		
		You can use `.Line2D` properties as keyword arguments for more
		control on the appearance. Line properties and *fmt* can be mixed.
		The following two calls yield identical results:
		
		>>> plot(x, y, 'go--', linewidth=2, markersize=12)
		>>> plot(x, y, color='green', marker='o', linestyle='dashed',
		...      linewidth=2, markersize=12)
		
		When conflicting with *fmt*, keyword arguments take precedence.
		
		
		**Plotting labelled data**
		
		There's a convenient way for plotting objects with labelled data (i.e.
		data that can be accessed by index ``obj['y']``). Instead of giving
		the data in *x* and *y*, you can provide the object in the *data*
		parameter and just give the labels for *x* and *y*::
		
		>>> plot('xlabel', 'ylabel', data=obj)
		
		All indexable objects are supported. This could e.g. be a `dict`, a
		`pandas.DataFrame` or a structured numpy array.
		
		
		**Plotting multiple sets of data**
		
		There are various ways to plot multiple sets of data.
		
		- The most straight forward way is just to call `plot` multiple times.
		  Example:
		
		  >>> plot(x1, y1, 'bo')
		  >>> plot(x2, y2, 'go')
		
		- If *x* and/or *y* are 2D arrays a separate data set will be drawn
		  for every column. If both *x* and *y* are 2D, they must have the
		  same shape. If only one of them is 2D with shape (N, m) the other
		  must have length N and will be used for every data set m.
		
		  Example:
		
		  >>> x = [1, 2, 3]
		  >>> y = np.array([[1, 2], [3, 4], [5, 6]])
		  >>> plot(x, y)
		
		  is equivalent to:
		
		  >>> for col in range(y.shape[1]):
		  ...     plot(x, y[:, col])
		
		- The third way is to specify multiple sets of *[x]*, *y*, *[fmt]*
		  groups::
		
		  >>> plot(x1, y1, 'g^', x2, y2, 'g-')
		
		  In this case, any additional keyword argument applies to all
		  datasets. Also this syntax cannot be combined with the *data*
		  parameter.
		
		By default, each line is assigned a different style specified by a
		'style cycle'. The *fmt* and line property parameters are only
		necessary if you want explicit deviations from these defaults.
		Alternatively, you can also change the style cycle using
		:rc:`axes.prop_cycle`.
		
		
		Parameters
		----------
		x, y : array-like or scalar
		    The horizontal / vertical coordinates of the data points.
		    *x* values are optional and default to ``range(len(y))``.
		
		    Commonly, these parameters are 1D arrays.
		
		    They can also be scalars, or two-dimensional (in that case, the
		    columns represent separate data sets).
		
		    These arguments cannot be passed as keywords.
		
		fmt : str, optional
		    A format string, e.g. 'ro' for red circles. See the *Notes*
		    section for a full description of the format strings.
		
		    Format strings are just an abbreviation for quickly setting
		    basic line properties. All of these and more can also be
		    controlled by keyword arguments.
		
		    This argument cannot be passed as keyword.
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*.
		
		    .. note::
		        Technically there's a slight ambiguity in calls where the
		        second label is a valid *fmt*. ``plot('n', 'o', data=obj)``
		        could be ``plt(x, y)`` or ``plt(y, fmt)``. In such cases,
		        the former interpretation is chosen, but a warning is issued.
		        You may suppress the warning by adding an empty format string
		        ``plot('n', 'o', '', data=obj)``.
		
		Returns
		-------
		list of `.Line2D`
		    A list of lines representing the plotted data.
		
		Other Parameters
		----------------
		scalex, scaley : bool, default: True
		    These parameters determine if the view limits are adapted to the
		    data limits. The values are passed on to `autoscale_view`.
		
		**kwargs : `.Line2D` properties, optional
		    *kwargs* are used to specify properties like a line label (for
		    auto legends), linewidth, antialiasing, marker face color.
		    Example::
		
		    >>> plot([1, 2, 3], [1, 2, 3], 'go-', label='line 1', linewidth=2)
		    >>> plot([1, 2, 3], [1, 4, 9], 'rs', label='line 2')
		
		    If you specify multiple lines with one plot call, the kwargs apply
		    to all those lines. In case the label object is iterable, each
		    element is used as labels for each set of data.
		
		    Here is a list of available `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		scatter : XY scatter plot with markers of varying size and/or color (
		    sometimes also called bubble chart).
		
		Notes
		-----
		**Format Strings**
		
		A format string consists of a part for color, marker and line::
		
		    fmt = '[marker][line][color]'
		
		Each of them is optional. If not provided, the value from the style
		cycle is used. Exception: If ``line`` is given, but no ``marker``,
		the data will be a line without markers.
		
		Other combinations such as ``[color][marker][line]`` are also
		supported, but note that their parsing may be ambiguous.
		
		**Markers**
		
		=============   ===============================
		character       description
		=============   ===============================
		``'.'``         point marker
		``','``         pixel marker
		``'o'``         circle marker
		``'v'``         triangle_down marker
		``'^'``         triangle_up marker
		``'<'``         triangle_left marker
		``'>'``         triangle_right marker
		``'1'``         tri_down marker
		``'2'``         tri_up marker
		``'3'``         tri_left marker
		``'4'``         tri_right marker
		``'8'``         octagon marker
		``'s'``         square marker
		``'p'``         pentagon marker
		``'P'``         plus (filled) marker
		``'*'``         star marker
		``'h'``         hexagon1 marker
		``'H'``         hexagon2 marker
		``'+'``         plus marker
		``'x'``         x marker
		``'X'``         x (filled) marker
		``'D'``         diamond marker
		``'d'``         thin_diamond marker
		``'|'``         vline marker
		``'_'``         hline marker
		=============   ===============================
		
		**Line Styles**
		
		=============    ===============================
		character        description
		=============    ===============================
		``'-'``          solid line style
		``'--'``         dashed line style
		``'-.'``         dash-dot line style
		``':'``          dotted line style
		=============    ===============================
		
		Example format strings::
		
		    'b'    # blue markers with default shape
		    'or'   # red circles
		    '-g'   # green solid line
		    '--'   # dashed line with default color
		    '^k:'  # black triangle_up markers connected by a dotted line
		
		**Colors**
		
		The supported color abbreviations are the single letter codes
		
		=============    ===============================
		character        color
		=============    ===============================
		``'b'``          blue
		``'g'``          green
		``'r'``          red
		``'c'``          cyan
		``'m'``          magenta
		``'y'``          yellow
		``'k'``          black
		``'w'``          white
		=============    ===============================
		
		and the ``'CN'`` colors that index into the default property cycle.
		
		If the color is the only part of the format string, you can
		additionally use any  `matplotlib.colors` spec, e.g. full names
		(``'green'``) or hex strings (``'#008000'``).
	**/
	public function plot(?args:python.VarArgs<Dynamic>, ?scalex:Dynamic, ?scaley:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot coercing the axis to treat floats as dates.
		
		.. admonition:: Discouraged
		
		    This method exists for historic reasons and will be deprecated in
		    the future.
		
		    - ``datetime``-like data should directly be plotted using
		      `~.Axes.plot`.
		    -  If you need to plot plain numeric data as :ref:`date-format` or
		       need to set a timezone, call ``ax.xaxis.axis_date`` /
		       ``ax.yaxis.axis_date`` before `~.Axes.plot`. See
		       `.Axis.axis_date`.
		
		Similar to `.plot`, this plots *y* vs. *x* as lines or markers.
		However, the axis labels are formatted as dates depending on *xdate*
		and *ydate*.  Note that `.plot` will work with `datetime` and
		`numpy.datetime64` objects without resorting to this method.
		
		Parameters
		----------
		x, y : array-like
		    The coordinates of the data points. If *xdate* or *ydate* is
		    *True*, the respective values *x* or *y* are interpreted as
		    :ref:`Matplotlib dates <date-format>`.
		
		fmt : str, optional
		    The plot format string. For details, see the corresponding
		    parameter in `.plot`.
		
		tz : timezone string or `datetime.tzinfo`, default: :rc:`timezone`
		    The time zone to use in labeling dates.
		
		xdate : bool, default: True
		    If *True*, the *x*-axis will be interpreted as Matplotlib dates.
		
		ydate : bool, default: False
		    If *True*, the *y*-axis will be interpreted as Matplotlib dates.
		
		Returns
		-------
		list of `.Line2D`
		    Objects representing the plotted data.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		matplotlib.dates : Helper functions on dates.
		matplotlib.dates.date2num : Convert dates to num.
		matplotlib.dates.num2date : Convert num to dates.
		matplotlib.dates.drange : Create an equally spaced sequence of dates.
		
		Notes
		-----
		If you are using custom date tickers and formatters, it may be
		necessary to set the formatters/locators after the call to
		`.plot_date`. `.plot_date` will set the default tick locator to
		`.AutoDateLocator` (if the tick locator is not already set to a
		`.DateLocator` instance) and the default tick formatter to
		`.AutoDateFormatter` (if the tick formatter is not already set to a
		`.DateFormatter` instance).
	**/
	public function plot_date(x:Dynamic, y:Dynamic, ?fmt:Dynamic, ?tz:Dynamic, ?xdate:Dynamic, ?ydate:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	/**
		Plot the power spectral density.
		
		The power spectral density :math:`P_{xx}` by Welch's average
		periodogram method.  The vector *x* is divided into *NFFT* length
		segments.  Each segment is detrended by function *detrend* and
		windowed by function *window*.  *noverlap* gives the length of
		the overlap between segments.  The :math:`|\mathrm{fft}(i)|^2`
		of each segment :math:`i` are averaged to compute :math:`P_{xx}`,
		with a scaling to correct for power loss due to windowing.
		
		If len(*x*) < *NFFT*, it will be zero padded to *NFFT*.
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		noverlap : int, default: 0 (no overlap)
		    The number of points of overlap between segments.
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		return_line : bool, default: False
		    Whether to include the line object plotted in the returned values.
		
		Returns
		-------
		Pxx : 1-D array
		    The values for the power spectrum :math:`P_{xx}` before scaling
		    (real valued).
		
		freqs : 1-D array
		    The frequencies corresponding to the elements in *Pxx*.
		
		line : `~matplotlib.lines.Line2D`
		    The line created by this function.
		    Only returned if *return_line* is True.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Keyword arguments control the `.Line2D` properties:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
		
		See Also
		--------
		specgram
		    Differs in the default overlap; in not returning the mean of the
		    segment periodograms; in returning the times of the segments; and
		    in plotting a colormap instead of a line.
		magnitude_spectrum
		    Plots the magnitude spectrum.
		csd
		    Plots the spectral density between two signals.
		
		Notes
		-----
		For plotting, the power is plotted as
		:math:`10\log_{10}(P_{xx})` for decibels, though *Pxx* itself
		is returned.
		
		References
		----------
		Bendat & Piersol -- Random Data: Analysis and Measurement Procedures,
		John Wiley & Sons (1986)
	**/
	public function psd(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?return_line:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot a 2D field of arrows.
		
		Call signature::
		
		  quiver([X, Y], U, V, [C], **kw)
		
		*X*, *Y* define the arrow locations, *U*, *V* define the arrow directions, and
		*C* optionally sets the color.
		
		Each arrow is internally represented by a filled polygon with a default edge
		linewidth of 0. As a result, an arrow is rather a filled area, not a line with
		a head, and `.PolyCollection` properties like *linewidth*, *linestyle*,
		*facecolor*, etc. act accordingly.
		
		**Arrow size**
		
		The default settings auto-scales the length of the arrows to a reasonable size.
		To change this behavior see the *scale* and *scale_units* parameters.
		
		**Arrow shape**
		
		The defaults give a slightly swept-back arrow; to make the head a
		triangle, make *headaxislength* the same as *headlength*. To make the
		arrow more pointed, reduce *headwidth* or increase *headlength* and
		*headaxislength*. To make the head smaller relative to the shaft,
		scale down all the head parameters. You will probably do best to leave
		minshaft alone.
		
		**Arrow outline**
		
		*linewidths* and *edgecolors* can be used to customize the arrow
		outlines.
		
		Parameters
		----------
		X, Y : 1D or 2D array-like, optional
		    The x and y coordinates of the arrow locations.
		
		    If not given, they will be generated as a uniform integer meshgrid based
		    on the dimensions of *U* and *V*.
		
		    If *X* and *Y* are 1D but *U*, *V* are 2D, *X*, *Y* are expanded to 2D
		    using ``X, Y = np.meshgrid(X, Y)``. In this case ``len(X)`` and ``len(Y)``
		    must match the column and row dimensions of *U* and *V*.
		
		U, V : 1D or 2D array-like
		    The x and y direction components of the arrow vectors.
		
		    They must have the same number of elements, matching the number of arrow
		    locations. *U* and *V* may be masked. Only locations unmasked in
		    *U*, *V*, and *C* will be drawn.
		
		C : 1D or 2D array-like, optional
		    Numeric data that defines the arrow colors by colormapping via *norm* and
		    *cmap*.
		
		    This does not support explicit colors. If you want to set colors directly,
		    use *color* instead.  The size of *C* must match the number of arrow
		    locations.
		
		units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, default: 'width'
		    The arrow dimensions (except for *length*) are measured in multiples of
		    this unit.
		
		    The following values are supported:
		
		    - 'width', 'height': The width or height of the axis.
		    - 'dots', 'inches': Pixels or inches based on the figure dpi.
		    - 'x', 'y', 'xy': *X*, *Y* or :math:`\sqrt{X^2 + Y^2}` in data units.
		
		    The arrows scale differently depending on the units.  For
		    'x' or 'y', the arrows get larger as one zooms in; for other
		    units, the arrow size is independent of the zoom state.  For
		    'width or 'height', the arrow size increases with the width and
		    height of the axes, respectively, when the window is resized;
		    for 'dots' or 'inches', resizing does not change the arrows.
		
		angles : {'uv', 'xy'} or array-like, default: 'uv'
		    Method for determining the angle of the arrows.
		
		    - 'uv': The arrow axis aspect ratio is 1 so that
		      if *U* == *V* the orientation of the arrow on the plot is 45 degrees
		      counter-clockwise from the horizontal axis (positive to the right).
		
		      Use this if the arrows symbolize a quantity that is not based on
		      *X*, *Y* data coordinates.
		
		    - 'xy': Arrows point from (x, y) to (x+u, y+v).
		      Use this for plotting a gradient field, for example.
		
		    - Alternatively, arbitrary angles may be specified explicitly as an array
		      of values in degrees, counter-clockwise from the horizontal axis.
		
		      In this case *U*, *V* is only used to determine the length of the
		      arrows.
		
		    Note: inverting a data axis will correspondingly invert the
		    arrows only with ``angles='xy'``.
		
		scale : float, optional
		    Number of data units per arrow length unit, e.g., m/s per plot width; a
		    smaller scale parameter makes the arrow longer. Default is *None*.
		
		    If *None*, a simple autoscaling algorithm is used, based on the average
		    vector length and the number of vectors. The arrow length unit is given by
		    the *scale_units* parameter.
		
		scale_units : {'width', 'height', 'dots', 'inches', 'x', 'y', 'xy'}, optional
		    If the *scale* kwarg is *None*, the arrow length unit. Default is *None*.
		
		    e.g. *scale_units* is 'inches', *scale* is 2.0, and ``(u, v) = (1, 0)``,
		    then the vector will be 0.5 inches long.
		
		    If *scale_units* is 'width' or 'height', then the vector will be half the
		    width/height of the axes.
		
		    If *scale_units* is 'x' then the vector will be 0.5 x-axis
		    units. To plot vectors in the x-y plane, with u and v having
		    the same units as x and y, use
		    ``angles='xy', scale_units='xy', scale=1``.
		
		width : float, optional
		    Shaft width in arrow units; default depends on choice of units,
		    above, and number of vectors; a typical starting value is about
		    0.005 times the width of the plot.
		
		headwidth : float, default: 3
		    Head width as multiple of shaft width.
		
		headlength : float, default: 5
		    Head length as multiple of shaft width.
		
		headaxislength : float, default: 4.5
		    Head length at shaft intersection.
		
		minshaft : float, default: 1
		    Length below which arrow scales, in units of head length. Do not
		    set this to less than 1, or small arrows will look terrible!
		
		minlength : float, default: 1
		    Minimum length as a multiple of shaft width; if an arrow length
		    is less than this, plot a dot (hexagon) of this diameter instead.
		
		pivot : {'tail', 'mid', 'middle', 'tip'}, default: 'tail'
		    The part of the arrow that is anchored to the *X*, *Y* grid. The arrow
		    rotates about this point.
		
		    'mid' is a synonym for 'middle'.
		
		color : color or color sequence, optional
		    Explicit color(s) for the arrows. If *C* has been set, *color* has no
		    effect.
		
		    This is a synonym for the `.PolyCollection` *facecolor* parameter.
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs : `~matplotlib.collections.PolyCollection` properties, optional
		    All other keyword arguments are passed on to `.PolyCollection`:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: array-like or scalar or None
		    animated: bool
		    antialiased or aa or antialiaseds: bool or list of bools
		    array: array-like or None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clim: (vmin: float, vmax: float)
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    cmap: `.Colormap` or str or None
		    color: color or list of rgba tuples
		    edgecolor or ec or edgecolors: color or list of colors or 'face'
		    facecolor or facecolors or fc: color or list of colors
		    figure: `.Figure`
		    gid: str
		    hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		    in_layout: bool
		    joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    label: object
		    linestyle or dashes or linestyles or ls: str or tuple or list thereof
		    linewidth or linewidths or lw: float or list of floats
		    norm: `.Normalize` or None
		    offset_transform: `.Transform`
		    offsets: (N, 2) or (2,) array-like
		    path_effects: `.AbstractPathEffect`
		    paths: list of array-like
		    picker: None or bool or float or callable
		    pickradius: float
		    rasterized: bool
		    sizes: ndarray or None
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    urls: list of str or None
		    verts: list of array-like
		    verts_and_codes: unknown
		    visible: bool
		    zorder: float
		
		Returns
		-------
		`~matplotlib.quiver.Quiver`
		
		See Also
		--------
		.Axes.quiverkey : Add a key to a quiver plot.
	**/
	public function quiver(?args:python.VarArgs<Dynamic>, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a key to a quiver plot.
		
		The positioning of the key depends on *X*, *Y*, *coordinates*, and
		*labelpos*.  If *labelpos* is 'N' or 'S', *X*, *Y* give the position of
		the middle of the key arrow.  If *labelpos* is 'E', *X*, *Y* positions
		the head, and if *labelpos* is 'W', *X*, *Y* positions the tail; in
		either of these two cases, *X*, *Y* is somewhere in the middle of the
		arrow+label key object.
		
		Parameters
		----------
		Q : `matplotlib.quiver.Quiver`
		    A `.Quiver` object as returned by a call to `~.Axes.quiver()`.
		X, Y : float
		    The location of the key.
		U : float
		    The length of the key.
		label : str
		    The key label (e.g., length and units of the key).
		angle : float, default: 0
		    The angle of the key arrow, in degrees anti-clockwise from the
		    x-axis.
		coordinates : {'axes', 'figure', 'data', 'inches'}, default: 'axes'
		    Coordinate system and units for *X*, *Y*: 'axes' and 'figure' are
		    normalized coordinate systems with (0, 0) in the lower left and
		    (1, 1) in the upper right; 'data' are the axes data coordinates
		    (used for the locations of the vectors in the quiver plot itself);
		    'inches' is position in the figure in inches, with (0, 0) at the
		    lower left corner.
		color : color
		    Overrides face and edge colors from *Q*.
		labelpos : {'N', 'S', 'E', 'W'}
		    Position the label above, below, to the right, to the left of the
		    arrow, respectively.
		labelsep : float, default: 0.1
		    Distance in inches between the arrow and the label.
		labelcolor : color, default: :rc:`text.color`
		    Label color.
		fontproperties : dict, optional
		    A dictionary with keyword arguments accepted by the
		    `~matplotlib.font_manager.FontProperties` initializer:
		    *family*, *style*, *variant*, *size*, *weight*.
		**kwargs
		    Any additional keyword arguments are used to override vector
		    properties taken from *Q*.
	**/
	public function quiverkey(Q:Dynamic, X:Dynamic, Y:Dynamic, U:Dynamic, label:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Efficiently redraw Axes data, but not axis ticks, labels, etc.
		
		This method can only be used after an initial draw which caches the
		renderer.
	**/
	public function redraw_in_frame():Dynamic;
	/**
		Recompute the data limits based on current artists.
		
		At present, `.Collection` instances are not supported.
		
		Parameters
		----------
		visible_only : bool, default: False
		    Whether to exclude invisible artists.
	**/
	public function relim(?visible_only:Dynamic):Dynamic;
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
		Reset the active position to the original position.
		
		This resets the a possible position change due to aspect constraints.
		For an explanation of the positions see `.set_position`.
	**/
	public function reset_position():Dynamic;
	/**
		A scatter plot of *y* vs. *x* with varying marker size and/or color.
		
		Parameters
		----------
		x, y : float or array-like, shape (n, )
		    The data positions.
		
		s : float or array-like, shape (n, ), optional
		    The marker size in points**2.
		    Default is ``rcParams['lines.markersize'] ** 2``.
		
		c : array-like or list of colors or color, optional
		    The marker colors. Possible values:
		
		    - A scalar or sequence of n numbers to be mapped to colors using
		      *cmap* and *norm*.
		    - A 2D array in which the rows are RGB or RGBA.
		    - A sequence of colors of length n.
		    - A single color format string.
		
		    Note that *c* should not be a single numeric RGB or RGBA sequence
		    because that is indistinguishable from an array of values to be
		    colormapped. If you want to specify the same RGB or RGBA value for
		    all points, use a 2D array with a single row.  Otherwise, value-
		    matching will have precedence in case of a size matching with *x*
		    and *y*.
		
		    If you wish to specify a single color for all points
		    prefer the *color* keyword argument.
		
		    Defaults to `None`. In that case the marker color is determined
		    by the value of *color*, *facecolor* or *facecolors*. In case
		    those are not specified or `None`, the marker color is determined
		    by the next color of the ``Axes``' current "shape and fill" color
		    cycle. This cycle defaults to :rc:`axes.prop_cycle`.
		
		marker : `~.markers.MarkerStyle`, default: :rc:`scatter.marker`
		    The marker style. *marker* can be either an instance of the class
		    or the text shorthand for a particular marker.
		    See :mod:`matplotlib.markers` for more information about marker
		    styles.
		
		cmap : str or `~matplotlib.colors.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. *cmap* is only
		    used if *c* is an array of floats.
		
		norm : `~matplotlib.colors.Normalize`, default: None
		    If *c* is an array of floats, *norm* is used to scale the color
		    data, *c*, in the range 0 to 1, in order to map into the colormap
		    *cmap*.
		    If *None*, use the default `.colors.Normalize`.
		
		vmin, vmax : float, default: None
		    *vmin* and *vmax* are used in conjunction with the default norm to
		    map the color array *c* to the colormap *cmap*. If None, the
		    respective min and max of the color array is used.
		    It is an error to use *vmin* /*vmax* when *norm* is given.
		
		alpha : float, default: None
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		linewidths : float or array-like, default: :rc:`lines.linewidth`
		    The linewidth of the marker edges. Note: The default *edgecolors*
		    is 'face'. You may want to change this as well.
		
		edgecolors : {'face', 'none', *None*} or color or sequence of color, default: :rc:`scatter.edgecolors`
		    The edge color of the marker. Possible values:
		
		    - 'face': The edge color will always be the same as the face color.
		    - 'none': No patch boundary will be drawn.
		    - A color or sequence of colors.
		
		    For non-filled markers, *edgecolors* is ignored. Instead, the color
		    is determined like with 'face', i.e. from *c*, *colors*, or
		    *facecolors*.
		
		plotnonfinite : bool, default: False
		    Whether to plot points with nonfinite *c* (i.e. ``inf``, ``-inf``
		    or ``nan``). If ``True`` the points are drawn with the *bad*
		    colormap color (see `.Colormap.set_bad`).
		
		Returns
		-------
		`~matplotlib.collections.PathCollection`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*, *s*, *linewidths*, *edgecolors*, *c*, *facecolor*, *facecolors*, *color*
		**kwargs : `~matplotlib.collections.Collection` properties
		
		See Also
		--------
		plot : To plot scatter plots when markers are identical in size and
		    color.
		
		Notes
		-----
		* The `.plot` function will be faster for scatterplots where markers
		  don't vary in size or color.
		
		* Any or all of *x*, *y*, *s*, and *c* may be masked arrays, in which
		  case all masks will be combined and only unmasked points will be
		  plotted.
		
		* Fundamentally, scatter works with 1D arrays; *x*, *y*, *s*, and *c*
		  may be input as N-D arrays, but within scatter they will be
		  flattened. The exception is *c*, which will be flattened only if its
		  size matches the size of *x* and *y*.
	**/
	public function scatter(x:Dynamic, y:Dynamic, ?s:Dynamic, ?c:Dynamic, ?marker:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?alpha:Dynamic, ?linewidths:Dynamic, ?edgecolors:Dynamic, ?plotnonfinite:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a second x-axis to this Axes.
		
		For example if we want to have a second scale for the data plotted on
		the xaxis.
		
		
		Warnings
		--------
		This method is experimental as of 3.1, and the API may change.
		
		Parameters
		----------
		location : {'top', 'bottom', 'left', 'right'} or float
		    The position to put the secondary axis.  Strings can be 'top' or
		    'bottom' for orientation='x' and 'right' or 'left' for
		    orientation='y'. A float indicates the relative position on the
		    parent axes to put the new axes, 0.0 being the bottom (or left)
		    and 1.0 being the top (or right).
		
		functions : 2-tuple of func, or Transform with an inverse
		
		    If a 2-tuple of functions, the user specifies the transform
		    function and its inverse.  i.e.
		    ``functions=(lambda x: 2 / x, lambda x: 2 / x)`` would be an
		    reciprocal transform with a factor of 2.
		
		    The user can also directly supply a subclass of
		    `.transforms.Transform` so long as it has an inverse.
		
		    See :doc:`/gallery/subplots_axes_and_figures/secondary_axis`
		    for examples of making these conversions.
		
		Returns
		-------
		ax : axes._secondary_axes.SecondaryAxis
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.axes.Axes` properties.
		    Other miscellaneous axes parameters.
		
		
		Examples
		--------
		The main axis shows frequency, and the secondary axis shows period.
		
		.. plot::
		
		    fig, ax = plt.subplots()
		    ax.loglog(range(1, 360, 5), range(1, 360, 5))
		    ax.set_xlabel('frequency [Hz]')
		
		    def invert(x):
		        # 1/x with special treatment of x == 0
		        x = np.array(x).astype(float)
		        near_zero = np.isclose(x, 0)
		        x[near_zero] = np.inf
		        x[~near_zero] = 1 / x[~near_zero]
		        return x
		
		    # the inverse of 1/x is itself
		    secax = ax.secondary_xaxis('top', functions=(invert, invert))
		    secax.set_xlabel('Period [s]')
		    plt.show()
	**/
	public function secondary_xaxis(location:Dynamic, ?functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Add a second y-axis to this Axes.
		
		For example if we want to have a second scale for the data plotted on
		the yaxis.
		
		
		Warnings
		--------
		This method is experimental as of 3.1, and the API may change.
		
		Parameters
		----------
		location : {'top', 'bottom', 'left', 'right'} or float
		    The position to put the secondary axis.  Strings can be 'top' or
		    'bottom' for orientation='x' and 'right' or 'left' for
		    orientation='y'. A float indicates the relative position on the
		    parent axes to put the new axes, 0.0 being the bottom (or left)
		    and 1.0 being the top (or right).
		
		functions : 2-tuple of func, or Transform with an inverse
		
		    If a 2-tuple of functions, the user specifies the transform
		    function and its inverse.  i.e.
		    ``functions=(lambda x: 2 / x, lambda x: 2 / x)`` would be an
		    reciprocal transform with a factor of 2.
		
		    The user can also directly supply a subclass of
		    `.transforms.Transform` so long as it has an inverse.
		
		    See :doc:`/gallery/subplots_axes_and_figures/secondary_axis`
		    for examples of making these conversions.
		
		Returns
		-------
		ax : axes._secondary_axes.SecondaryAxis
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.axes.Axes` properties.
		    Other miscellaneous axes parameters.
		
		
		Examples
		--------
		Add a secondary Axes that converts from radians to degrees
		
		.. plot::
		
		    fig, ax = plt.subplots()
		    ax.plot(range(1, 360, 5), range(1, 360, 5))
		    ax.set_ylabel('degrees')
		    secax = ax.secondary_yaxis('right', functions=(np.deg2rad,
		                                                   np.rad2deg))
		    secax.set_ylabel('radians')
	**/
	public function secondary_yaxis(location:Dynamic, ?functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the x axis.
		
		Call signatures::
		
		    semilogx([x], y, [fmt], data=None, **kwargs)
		    semilogx([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		the x-axis to log scaling. All of the concepts and parameters of plot
		can be used here as well.
		
		The additional parameters *base*, *subs*, and *nonpositive* control the
		x-axis properties. They are just forwarded to `.Axes.set_xscale`.
		
		Parameters
		----------
		base : float, default: 10
		    Base of the x logarithm.
		
		subs : array-like, optional
		    The location of the minor xticks. If *None*, reasonable locations
		    are automatically chosen depending on the number of decades in the
		    plot. See `.Axes.set_xscale` for details.
		
		nonpositive : {'mask', 'clip'}, default: 'mask'
		    Non-positive values in x can be masked as invalid, or clipped to a
		    very small positive number.
		
		**kwargs
		    All parameters supported by `.plot`.
		
		Returns
		-------
		list of `.Line2D`
		    Objects representing the plotted data.
	**/
	public function semilogx(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Make a plot with log scaling on the y axis.
		
		Call signatures::
		
		    semilogy([x], y, [fmt], data=None, **kwargs)
		    semilogy([x], y, [fmt], [x2], y2, [fmt2], ..., **kwargs)
		
		This is just a thin wrapper around `.plot` which additionally changes
		the y-axis to log scaling. All of the concepts and parameters of plot
		can be used here as well.
		
		The additional parameters *base*, *subs*, and *nonpositive* control the
		y-axis properties. They are just forwarded to `.Axes.set_yscale`.
		
		Parameters
		----------
		base : float, default: 10
		    Base of the y logarithm.
		
		subs : array-like, optional
		    The location of the minor yticks. If *None*, reasonable locations
		    are automatically chosen depending on the number of decades in the
		    plot. See `.Axes.set_yscale` for details.
		
		nonpositive : {'mask', 'clip'}, default: 'mask'
		    Non-positive values in y can be masked as invalid, or clipped to a
		    very small positive number.
		
		**kwargs
		    All parameters supported by `.plot`.
		
		Returns
		-------
		list of `.Line2D`
		    Objects representing the plotted data.
	**/
	public function semilogy(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set multiple properties at once.
		
		Supported properties are
		
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
		    rgrids: tuple with floats
		    rlabel_position: number
		    rlim: unknown
		    rmax: float
		    rmin: float
		    rorigin: float
		    rscale: unknown
		    rticks: unknown
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    theta_direction: unknown
		    theta_offset: unknown
		    theta_zero_location: str
		    thetagrids: tuple with floats, degrees
		    thetalim: unknown
		    thetamax: unknown
		    thetamin: unknown
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
		    ylim: float, optional
		    ymargin: float greater than -0.5
		    yscale: unknown
		    yticklabels: unknown
		    yticks: unknown
		    zorder: float
	**/
	public function set(?adjustable:Dynamic, ?agg_filter:Dynamic, ?alpha:Dynamic, ?anchor:Dynamic, ?animated:Dynamic, ?aspect:Dynamic, ?autoscale_on:Dynamic, ?autoscalex_on:Dynamic, ?autoscaley_on:Dynamic, ?axes_locator:Dynamic, ?axisbelow:Dynamic, ?box_aspect:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?facecolor:Dynamic, ?frame_on:Dynamic, ?gid:Dynamic, ?in_layout:Dynamic, ?label:Dynamic, ?navigate:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?position:Dynamic, ?prop_cycle:Dynamic, ?rasterization_zorder:Dynamic, ?rasterized:Dynamic, ?rgrids:Dynamic, ?rlabel_position:Dynamic, ?rlim:Dynamic, ?rmax:Dynamic, ?rmin:Dynamic, ?rorigin:Dynamic, ?rscale:Dynamic, ?rticks:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?theta_direction:Dynamic, ?theta_offset:Dynamic, ?theta_zero_location:Dynamic, ?thetagrids:Dynamic, ?thetalim:Dynamic, ?thetamax:Dynamic, ?thetamin:Dynamic, ?title:Dynamic, ?transform:Dynamic, ?url:Dynamic, ?visible:Dynamic, ?xbound:Dynamic, ?xlabel:Dynamic, ?xlim:Dynamic, ?xmargin:Dynamic, ?xscale:Dynamic, ?xticklabels:Dynamic, ?xticks:Dynamic, ?ybound:Dynamic, ?ylabel:Dynamic, ?ylim:Dynamic, ?ymargin:Dynamic, ?yscale:Dynamic, ?yticklabels:Dynamic, ?yticks:Dynamic, ?zorder:Dynamic):Dynamic;
	/**
		Set how the Axes adjusts to achieve the required aspect ratio.
		
		Parameters
		----------
		adjustable : {'box', 'datalim'}
		    If 'box', change the physical dimensions of the Axes.
		    If 'datalim', change the ``x`` or ``y`` data limits.
		
		share : bool, default: False
		    If ``True``, apply the settings to all shared Axes.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    For a description of aspect handling.
		
		Notes
		-----
		Shared Axes (of which twinned Axes are a special case)
		impose restrictions on how aspect ratios can be imposed.
		For twinned Axes, use 'datalim'.  For Axes that share both
		x and y, use 'box'.  Otherwise, either 'datalim' or 'box'
		may be used.  These limitations are partly a requirement
		to avoid over-specification, and partly a result of the
		particular implementation we are currently using, in
		which the adjustments for aspect ratios are done sequentially
		and independently on each Axes as it is drawn.
	**/
	public function set_adjustable(adjustable:Dynamic, ?share:Dynamic):Dynamic;
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
		Define the anchor location.
		
		The actual drawing area (active position) of the Axes may be smaller
		than the Bbox (original position) when a fixed aspect is required. The
		anchor defines where the drawing area will be located within the
		available space.
		
		Parameters
		----------
		anchor : (float, float) or {'C', 'SW', 'S', 'SE', 'E', 'NE', ...}
		    Either an (*x*, *y*) pair of relative coordinates (0 is left or
		    bottom, 1 is right or top), 'C' (center), or a cardinal direction
		    ('SW', southwest, is bottom left, etc.).  str inputs are shorthands
		    for (*x*, *y*) coordinates, as shown in the following table::
		
		    .. code-block:: none
		
		       +-----------------+-----------------+-----------------+
		       | 'NW' (0.0, 1.0) | 'N' (0.5, 1.0)  | 'NE' (1.0, 1.0) |
		       +-----------------+-----------------+-----------------+
		       | 'W'  (0.0, 0.5) | 'C' (0.5, 0.5)  | 'E'  (1.0, 0.5) |
		       +-----------------+-----------------+-----------------+
		       | 'SW' (0.0, 0.0) | 'S' (0.5, 0.0)  | 'SE' (1.0, 0.0) |
		       +-----------------+-----------------+-----------------+
		
		share : bool, default: False
		    If ``True``, apply the settings to all shared Axes.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function set_anchor(anchor:Dynamic, ?share:Dynamic):Dynamic;
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
		Set the aspect ratio of the axes scaling, i.e. y/x-scale.
		
		Parameters
		----------
		aspect : {'auto', 'equal'} or float
		    Possible values:
		
		    - 'auto': fill the position rectangle with data.
		    - 'equal': same as ``aspect=1``, i.e. same scaling for x and y.
		    - *float*: The displayed size of 1 unit in y-data coordinates will
		      be *aspect* times the displayed size of 1 unit in x-data
		      coordinates; e.g. for ``aspect=2`` a square in data coordinates
		      will be rendered with a height of twice its width.
		
		adjustable : None or {'box', 'datalim'}, optional
		    If not ``None``, this defines which parameter will be adjusted to
		    meet the required aspect. See `.set_adjustable` for further
		    details.
		
		anchor : None or str or (float, float), optional
		    If not ``None``, this defines where the Axes will be drawn if there
		    is extra space due to aspect constraints. The most common way to
		    to specify the anchor are abbreviations of cardinal directions:
		
		    =====   =====================
		    value   description
		    =====   =====================
		    'C'     centered
		    'SW'    lower left corner
		    'S'     middle of bottom edge
		    'SE'    lower right corner
		    etc.
		    =====   =====================
		
		    See `~.Axes.set_anchor` for further details.
		
		share : bool, default: False
		    If ``True``, apply the settings to all shared Axes.
		
		See Also
		--------
		matplotlib.axes.Axes.set_adjustable
		    Set how the Axes adjusts to achieve the required aspect ratio.
		matplotlib.axes.Axes.set_anchor
		    Set the position in case of extra space.
	**/
	public function set_aspect(aspect:Dynamic, ?adjustable:Dynamic, ?anchor:Dynamic, ?share:Dynamic):Dynamic;
	/**
		Set whether autoscaling is applied to each axis on the next draw or
		call to `.Axes.autoscale_view`.
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscale_on(b:Dynamic):Dynamic;
	/**
		Set whether the x-axis is autoscaled on the next draw or call to
		`.Axes.autoscale_view`.
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscalex_on(b:Dynamic):Dynamic;
	/**
		Set whether the y-axis is autoscaled on the next draw or call to
		`.Axes.autoscale_view`.
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscaley_on(b:Dynamic):Dynamic;
	/**
		Set the Axes locator.
		
		Parameters
		----------
		locator : Callable[[Axes, Renderer], Bbox]
	**/
	public function set_axes_locator(locator:Dynamic):Dynamic;
	/**
		Turn the x- and y-axis off.
		
		This affects the axis lines, ticks, ticklabels, grid and axis labels.
	**/
	public function set_axis_off():Dynamic;
	/**
		Turn the x- and y-axis on.
		
		This affects the axis lines, ticks, ticklabels, grid and axis labels.
	**/
	public function set_axis_on():Dynamic;
	/**
		Set whether axis ticks and gridlines are above or below most artists.
		
		This controls the zorder of the ticks and gridlines. For more
		information on the zorder see :doc:`/gallery/misc/zorder_demo`.
		
		Parameters
		----------
		b : bool or 'line'
		    Possible values:
		
		    - *True* (zorder = 0.5): Ticks and gridlines are below all Artists.
		    - 'line' (zorder = 1.5): Ticks and gridlines are above patches
		      (e.g. rectangles, with default zorder = 1) but still below lines
		      and markers (with their default zorder = 2).
		    - *False* (zorder = 2.5): Ticks and gridlines are above patches
		      and lines / markers.
		
		See Also
		--------
		get_axisbelow
	**/
	public function set_axisbelow(b:Dynamic):Dynamic;
	/**
		Set the Axes box aspect, i.e. the ratio of height to width.
		
		This defines the aspect of the Axes in figure space and is not to be
		confused with the data aspect (see `~.Axes.set_aspect`).
		
		Parameters
		----------
		aspect : float or None
		    Changes the physical dimensions of the Axes, such that the ratio
		    of the Axes height to the Axes width in physical units is equal to
		    *aspect*. Defining a box aspect will change the *adjustable*
		    property to 'datalim' (see `~.Axes.set_adjustable`).
		
		    *None* will disable a fixed box aspect so that height and width
		    of the Axes are chosen independently.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function set_box_aspect(?aspect:Dynamic):Dynamic;
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
		Set the facecolor of the Axes.
		
		Parameters
		----------
		color : color
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		Alias for `set_facecolor`.
	**/
	public function set_fc(color:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the Axes rectangle patch is drawn.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
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
		Set whether the Axes responds to navigation toolbar commands.
		
		Parameters
		----------
		b : bool
	**/
	public function set_navigate(b:Dynamic):Dynamic;
	/**
		Set the navigation toolbar button status.
		
		.. warning ::
		    this is not a user-API function.
	**/
	public function set_navigate_mode(b:Dynamic):Dynamic;
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
		Set the Axes position.
		
		Axes have two position attributes. The 'original' position is the
		position allocated for the Axes. The 'active' position is the
		position the Axes is actually drawn at. These positions are usually
		the same unless a fixed aspect is set to the Axes. See
		`.Axes.set_aspect` for details.
		
		Parameters
		----------
		pos : [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		    The new position of the in `.Figure` coordinates.
		
		which : {'both', 'active', 'original'}, default: 'both'
		    Determines which position variables to change.
		
		See Also
		--------
		matplotlib.transforms.Bbox.from_bounds
		matplotlib.transforms.Bbox.from_extents
	**/
	public function set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set the property cycle of the Axes.
		
		The property cycle controls the style properties such as color,
		marker and linestyle of future plot commands. The style properties
		of data already added to the Axes are not modified.
		
		Call signatures::
		
		  set_prop_cycle(cycler)
		  set_prop_cycle(label=values[, label2=values2[, ...]])
		  set_prop_cycle(label, values)
		
		Form 1 sets given `~cycler.Cycler` object.
		
		Form 2 creates a `~cycler.Cycler` which cycles over one or more
		properties simultaneously and set it as the property cycle of the
		Axes. If multiple properties are given, their value lists must have
		the same length. This is just a shortcut for explicitly creating a
		cycler and passing it to the function, i.e. it's short for
		``set_prop_cycle(cycler(label=values label2=values2, ...))``.
		
		Form 3 creates a `~cycler.Cycler` for a single property and set it
		as the property cycle of the Axes. This form exists for compatibility
		with the original `cycler.cycler` interface. Its use is discouraged
		in favor of the kwarg form, i.e. ``set_prop_cycle(label=values)``.
		
		Parameters
		----------
		cycler : Cycler
		    Set the given Cycler. *None* resets to the cycle defined by the
		    current style.
		
		label : str
		    The property key. Must be a valid `.Artist` property.
		    For example, 'color' or 'linestyle'. Aliases are allowed,
		    such as 'c' for 'color' and 'lw' for 'linewidth'.
		
		values : iterable
		    Finite-length iterable of the property values. These values
		    are validated and will raise a ValueError if invalid.
		
		See Also
		--------
		matplotlib.rcsetup.cycler
		    Convenience function for creating validated cyclers for properties.
		cycler.cycler
		    The original function for creating unvalidated cyclers.
		
		Examples
		--------
		Setting the property cycle for a single property:
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'])
		
		Setting the property cycle for simultaneously cycling over multiple
		properties (e.g. red circle, green plus, blue cross):
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'],
		...                   marker=['o', '+', 'x'])
	**/
	public function set_prop_cycle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the zorder threshold for rasterization for vector graphics output.
		
		All artists with a zorder below the given value will be rasterized if
		they support rasterization.
		
		This setting is ignored for pixel-based output.
		
		See also :doc:`/gallery/misc/rasterization_demo`.
		
		Parameters
		----------
		z : float or None
		    The zorder below which artists are rasterized.
		    If ``None`` rasterization based on zorder is deactivated.
	**/
	public function set_rasterization_zorder(z:Dynamic):Dynamic;
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
		Set the radial gridlines on a polar plot.
		
		Parameters
		----------
		radii : tuple with floats
		    The radii for the radial gridlines
		
		labels : tuple with strings or None
		    The labels to use at each radial gridline. The
		    `matplotlib.ticker.ScalarFormatter` will be used if None.
		
		angle : float
		    The angular position of the radius labels in degrees.
		
		fmt : str or None
		    Format string used in `matplotlib.ticker.FormatStrFormatter`.
		    For example '%f'.
		
		Returns
		-------
		lines : list of `.lines.Line2D`
		    The radial gridlines.
		
		labels : list of `.text.Text`
		    The tick labels.
		
		Other Parameters
		----------------
		**kwargs
		    *kwargs* are optional `.Text` properties for the labels.
		
		See Also
		--------
		.PolarAxes.set_thetagrids
		.Axis.get_gridlines
		.Axis.get_ticklabels
	**/
	public function set_rgrids(radii:Dynamic, ?labels:Dynamic, ?angle:Dynamic, ?fmt:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Update the theta position of the radius labels.
		
		Parameters
		----------
		value : number
		    The angular position of the radius labels in degrees.
	**/
	public function set_rlabel_position(value:Dynamic):Dynamic;
	/**
		See `~.polar.PolarAxes.set_ylim`.
	**/
	public function set_rlim(?bottom:Dynamic, ?top:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the outer radial limit.
		
		Parameters
		----------
		rmax : float
	**/
	public function set_rmax(rmax:Dynamic):Dynamic;
	/**
		Set the inner radial limit.
		
		Parameters
		----------
		rmin : float
	**/
	public function set_rmin(rmin:Dynamic):Dynamic;
	/**
		Update the radial origin.
		
		Parameters
		----------
		rorigin : float
	**/
	public function set_rorigin(rorigin:Dynamic):Dynamic;
	public function set_rscale(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function set_rticks(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the direction in which theta increases.
		
		clockwise, -1:
		   Theta increases in the clockwise direction
		
		counterclockwise, anticlockwise, 1:
		   Theta increases in the counterclockwise direction
	**/
	public function set_theta_direction(direction:Dynamic):Dynamic;
	/**
		Set the offset for the location of 0 in radians.
	**/
	public function set_theta_offset(offset:Dynamic):Dynamic;
	/**
		Set the location of theta's zero.
		
		This simply calls `set_theta_offset` with the correct value in radians.
		
		Parameters
		----------
		loc : str
		    May be one of "N", "NW", "W", "SW", "S", "SE", "E", or "NE".
		offset : float, default: 0
		    An offset in degrees to apply from the specified *loc*. **Note:**
		    this offset is *always* applied counter-clockwise regardless of
		    the direction setting.
	**/
	public function set_theta_zero_location(loc:Dynamic, ?offset:Dynamic):Dynamic;
	/**
		Set the theta gridlines in a polar plot.
		
		Parameters
		----------
		angles : tuple with floats, degrees
		    The angles of the theta gridlines.
		
		labels : tuple with strings or None
		    The labels to use at each theta gridline. The
		    `.projections.polar.ThetaFormatter` will be used if None.
		
		fmt : str or None
		    Format string used in `matplotlib.ticker.FormatStrFormatter`.
		    For example '%f'. Note that the angle that is used is in
		    radians.
		
		Returns
		-------
		lines : list of `.lines.Line2D`
		    The theta gridlines.
		
		labels : list of `.text.Text`
		    The tick labels.
		
		Other Parameters
		----------------
		**kwargs
		    *kwargs* are optional `.Text` properties for the labels.
		
		See Also
		--------
		.PolarAxes.set_rgrids
		.Axis.get_gridlines
		.Axis.get_ticklabels
	**/
	public function set_thetagrids(angles:Dynamic, ?labels:Dynamic, ?fmt:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the minimum and maximum theta values.
		
		Can take the following signatures:
		
		- ``set_thetalim(minval, maxval)``: Set the limits in radians.
		- ``set_thetalim(thetamin=minval, thetamax=maxval)``: Set the limits
		  in degrees.
		
		where minval and maxval are the minimum and maximum limits. Values are
		wrapped in to the range :math:`[0, 2\pi]` (in radians), so for example
		it is possible to do ``set_thetalim(-np.pi / 2, np.pi / 2)`` to have
		an axes symmetric around 0. A ValueError is raised if the absolute
		angle difference is larger than a full circle.
	**/
	public function set_thetalim(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the maximum theta limit in degrees.
	**/
	public function set_thetamax(thetamax:Dynamic):Dynamic;
	/**
		Set the minimum theta limit in degrees.
	**/
	public function set_thetamin(thetamin:Dynamic):Dynamic;
	/**
		Set a title for the Axes.
		
		Set one of the three available Axes titles. The available titles
		are positioned above the Axes in the center, flush with the left
		edge, and flush with the right edge.
		
		Parameters
		----------
		label : str
		    Text to use for the title
		
		fontdict : dict
		    A dictionary controlling the appearance of the title text,
		    the default *fontdict* is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'color': rcParams['axes.titlecolor'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		loc : {'center', 'left', 'right'}, default: :rc:`axes.titlelocation`
		    Which title to set.
		
		y : float, default: :rc:`axes.titley`
		    Vertical Axes loation for the title (1.0 is the top).  If
		    None (the default), y is determined automatically to avoid
		    decorators on the Axes.
		
		pad : float, default: :rc:`axes.titlepad`
		    The offset of the title from the top of the Axes, in points.
		
		Returns
		-------
		`.Text`
		    The matplotlib text instance representing the title
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    Other keyword arguments are text properties, see `.Text` for a list
		    of valid text properties.
	**/
	public function set_title(label:Dynamic, ?fontdict:Dynamic, ?loc:Dynamic, ?pad:Dynamic, ?y:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the lower and upper numerical bounds of the x-axis.
		
		This method will honor axis inversion regardless of parameter order.
		It will not change the autoscaling setting (`.get_autoscalex_on()`).
		
		Parameters
		----------
		lower, upper : float or None
		    The lower and upper bounds. If *None*, the respective axis bound
		    is not modified.
		
		See Also
		--------
		get_xbound
		get_xlim, set_xlim
		invert_xaxis, xaxis_inverted
	**/
	public function set_xbound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the x-axis.
		
		Parameters
		----------
		xlabel : str
		    The label text.
		
		labelpad : float, default: :rc:`axes.labelpad`
		    Spacing in points from the Axes bounding box including ticks
		    and tick labels.  If None, the previous value is left as is.
		
		loc : {'left', 'center', 'right'}, default: :rc:`xaxis.labellocation`
		    The label position. This is a high-level alternative for passing
		    parameters *x* and *horizontalalignment*.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See Also
		--------
		text : Documents the properties supported by `.Text`.
	**/
	public function set_xlabel(xlabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x-axis view limits.
		
		Parameters
		----------
		left : float, optional
		    The left xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		    The left and right xlims may also be passed as the tuple
		    (*left*, *right*) as the first positional argument (or as
		    the *left* keyword argument).
		
		    .. ACCEPTS: (bottom: float, top: float)
		
		right : float, optional
		    The right xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		emit : bool, default: True
		    Whether to notify observers of limit change.
		
		auto : bool or None, default: False
		    Whether to turn on autoscaling of the x-axis. True turns on,
		    False turns off, None leaves unchanged.
		
		xmin, xmax : float, optional
		    They are equivalent to left and right respectively,
		    and it is an error to pass both *xmin* and *left* or
		    *xmax* and *right*.
		
		Returns
		-------
		left, right : (float, float)
		    The new x-axis limits in data coordinates.
		
		See Also
		--------
		get_xlim
		set_xbound, get_xbound
		invert_xaxis, xaxis_inverted
		
		Notes
		-----
		The *left* value may be greater than the *right* value, in which
		case the x-axis values will decrease from left to right.
		
		Examples
		--------
		>>> set_xlim(left, right)
		>>> set_xlim((left, right))
		>>> left, right = set_xlim(left, right)
		
		One limit may be left unchanged.
		
		>>> set_xlim(right=right_lim)
		
		Limits may be passed in reverse order to flip the direction of
		the x-axis. For example, suppose *x* represents the number of
		years before present. The x-axis limits might be set like the
		following so 5000 years ago is on the left of the plot and the
		present is on the right.
		
		>>> set_xlim(5000, 0)
	**/
	public function set_xlim(?left:Dynamic, ?right:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?xmin:Dynamic, ?xmax:Dynamic):Dynamic;
	/**
		Set padding of X data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		For example, if your data is in the range [0, 2], a factor of
		``m = 0.1`` will result in a range [-0.2, 2.2].
		
		Negative values -0.5 < m < 0 will result in clipping of the data range.
		I.e. for a data range [0, 2], a factor of ``m = -0.1`` will result in
		a range [0.2, 1.8].
		
		Parameters
		----------
		m : float greater than -0.5
	**/
	public function set_xmargin(m:Dynamic):Dynamic;
	/**
		Set the x-axis scale.
		
		Parameters
		----------
		value : {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		    - `matplotlib.scale.FuncScale`
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_xscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the xaxis' labels with list of string labels.
		
		.. warning::
		    This method should only be used after fixing the tick positions
		    using `.Axes.set_xticks`. Otherwise, the labels may end up in
		    unexpected positions.
		
		Parameters
		----------
		labels : list of str
		    The label texts.
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default *fontdict* is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, default: False
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		list of `.Text`
		    The labels.
		
		Other Parameters
		----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_xticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the xaxis' tick locations and optionally labels.
		
		If necessary, the view limits of the Axis are expanded so that all
		given ticks are visible.
		
		Parameters
		----------
		ticks : list of floats
		    List of tick locations.
		labels : list of str, optional
		    List of tick labels. If not set, the labels show the data value.
		minor : bool, default: False
		    If ``False``, set the major ticks; if ``True``, the minor ticks.
		**kwargs
		    `.Text` properties for the labels. These take effect only if you
		    pass *labels*. In other cases, please use `~.Axes.tick_params`.
		
		Notes
		-----
		The mandatory expansion of the view limits is an intentional design
		choice to prevent the surprise of a non-visible tick. If you need
		other limits, you should set the limits explicitly after setting the
		ticks.
	**/
	public function set_xticks(ticks:Dynamic, ?labels:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the lower and upper numerical bounds of the y-axis.
		
		This method will honor axis inversion regardless of parameter order.
		It will not change the autoscaling setting (`.get_autoscaley_on()`).
		
		Parameters
		----------
		lower, upper : float or None
		    The lower and upper bounds. If *None*, the respective axis bound
		    is not modified.
		
		See Also
		--------
		get_ybound
		get_ylim, set_ylim
		invert_yaxis, yaxis_inverted
	**/
	public function set_ybound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Set the label for the y-axis.
		
		Parameters
		----------
		ylabel : str
		    The label text.
		
		labelpad : float, default: :rc:`axes.labelpad`
		    Spacing in points from the Axes bounding box including ticks
		    and tick labels.  If None, the previous value is left as is.
		
		loc : {'bottom', 'center', 'top'}, default: :rc:`yaxis.labellocation`
		    The label position. This is a high-level alternative for passing
		    parameters *y* and *horizontalalignment*.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See Also
		--------
		text : Documents the properties supported by `.Text`.
	**/
	public function set_ylabel(ylabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?loc:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the data limits for the radial axis.
		
		Parameters
		----------
		bottom : float, optional
		    The bottom limit (default: None, which leaves the bottom
		    limit unchanged).
		    The bottom and top ylims may be passed as the tuple
		    (*bottom*, *top*) as the first positional argument (or as
		    the *bottom* keyword argument).
		
		top : float, optional
		    The top limit (default: None, which leaves the top limit
		    unchanged).
		
		emit : bool, default: True
		    Whether to notify observers of limit change.
		
		auto : bool or None, default: False
		    Whether to turn on autoscaling of the y-axis. True turns on,
		    False turns off, None leaves unchanged.
		
		ymin, ymax : float, optional
		    These arguments are deprecated and will be removed in a future
		    version.  They are equivalent to *bottom* and *top* respectively,
		    and it is an error to pass both *ymin* and *bottom* or
		    *ymax* and *top*.
		
		Returns
		-------
		bottom, top : (float, float)
		    The new y-axis limits in data coordinates.
	**/
	public function set_ylim(?bottom:Dynamic, ?top:Dynamic, ?emit:Dynamic, ?auto:Dynamic, ?ymin:Dynamic, ?ymax:Dynamic):Dynamic;
	/**
		Set padding of Y data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		For example, if your data is in the range [0, 2], a factor of
		``m = 0.1`` will result in a range [-0.2, 2.2].
		
		Negative values -0.5 < m < 0 will result in clipping of the data range.
		I.e. for a data range [0, 2], a factor of ``m = -0.1`` will result in
		a range [0.2, 1.8].
		
		Parameters
		----------
		m : float greater than -0.5
	**/
	public function set_ymargin(m:Dynamic):Dynamic;
	/**
		Set the y-axis scale.
		
		Parameters
		----------
		value : {"linear", "log", "symlog", "logit", ...} or `.ScaleBase`
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		    - `matplotlib.scale.FuncScale`
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_yscale(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the yaxis' labels with list of string labels.
		
		.. warning::
		    This method should only be used after fixing the tick positions
		    using `.Axes.set_yticks`. Otherwise, the labels may end up in
		    unexpected positions.
		
		Parameters
		----------
		labels : list of str
		    The label texts.
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default *fontdict* is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, default: False
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		list of `.Text`
		    The labels.
		
		Other Parameters
		----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_yticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the yaxis' tick locations and optionally labels.
		
		If necessary, the view limits of the Axis are expanded so that all
		given ticks are visible.
		
		Parameters
		----------
		ticks : list of floats
		    List of tick locations.
		labels : list of str, optional
		    List of tick labels. If not set, the labels show the data value.
		minor : bool, default: False
		    If ``False``, set the major ticks; if ``True``, the minor ticks.
		**kwargs
		    `.Text` properties for the labels. These take effect only if you
		    pass *labels*. In other cases, please use `~.Axes.tick_params`.
		
		Notes
		-----
		The mandatory expansion of the view limits is an intentional design
		choice to prevent the surprise of a non-visible tick. If you need
		other limits, you should set the limits explicitly after setting the
		ticks.
	**/
	public function set_yticks(ticks:Dynamic, ?labels:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Share the x-axis with *other*.
		
		This is equivalent to passing ``sharex=other`` when constructing the
		axes, and cannot be used if the x-axis is already being shared with
		another Axes.
	**/
	public function sharex(other:Dynamic):Dynamic;
	/**
		Share the y-axis with *other*.
		
		This is equivalent to passing ``sharey=other`` when constructing the
		axes, and cannot be used if the y-axis is already being shared with
		another Axes.
	**/
	public function sharey(other:Dynamic):Dynamic;
	/**
		Plot a spectrogram.
		
		Compute and plot a spectrogram of data in *x*.  Data are split into
		*NFFT* length segments and the spectrum of each section is
		computed.  The windowing function *window* is applied to each
		segment, and the amount of overlap of each segment is
		specified with *noverlap*. The spectrogram is plotted as a colormap
		(using imshow).
		
		Parameters
		----------
		x : 1-D array or sequence
		    Array or sequence containing the data.
		
		Fs : float, default: 2
		    The sampling frequency (samples per time unit).  It is used to calculate
		    the Fourier frequencies, *freqs*, in cycles per time unit.
		
		window : callable or ndarray, default: `.window_hanning`
		    A function or a vector of length *NFFT*.  To create window vectors see
		    `.window_hanning`, `.window_none`, `numpy.blackman`, `numpy.hamming`,
		    `numpy.bartlett`, `scipy.signal`, `scipy.signal.get_window`, etc.  If a
		    function is passed as the argument, it must take a data segment as an
		    argument and return the windowed version of the segment.
		
		sides : {'default', 'onesided', 'twosided'}, optional
		    Which sides of the spectrum to return. 'default' is one-sided for real
		    data and two-sided for complex data. 'onesided' forces the return of a
		    one-sided spectrum, while 'twosided' forces two-sided.
		
		pad_to : int, optional
		    The number of points to which the data segment is padded when performing
		    the FFT.  This can be different from *NFFT*, which specifies the number
		    of data points used.  While not increasing the actual resolution of the
		    spectrum (the minimum distance between resolvable peaks), this can give
		    more points in the plot, allowing for more detail. This corresponds to
		    the *n* parameter in the call to fft(). The default is None, which sets
		    *pad_to* equal to *NFFT*
		
		NFFT : int, default: 256
		    The number of data points used in each block for the FFT.  A power 2 is
		    most efficient.  This should *NOT* be used to get zero padding, or the
		    scaling of the result will be incorrect; use *pad_to* for this instead.
		
		detrend : {'none', 'mean', 'linear'} or callable, default: 'none'
		    The function applied to each segment before fft-ing, designed to remove
		    the mean or linear trend.  Unlike in MATLAB, where the *detrend* parameter
		    is a vector, in Matplotlib it is a function.  The :mod:`~matplotlib.mlab`
		    module defines `.detrend_none`, `.detrend_mean`, and `.detrend_linear`,
		    but you can use a custom function as well.  You can also use a string to
		    choose one of the functions: 'none' calls `.detrend_none`. 'mean' calls
		    `.detrend_mean`. 'linear' calls `.detrend_linear`.
		
		scale_by_freq : bool, default: True
		    Whether the resulting density values should be scaled by the scaling
		    frequency, which gives density in units of Hz^-1.  This allows for
		    integration over the returned frequency values.  The default is True for
		    MATLAB compatibility.
		
		mode : {'default', 'psd', 'magnitude', 'angle', 'phase'}
		    What sort of spectrum to use.  Default is 'psd', which takes the
		    power spectral density.  'magnitude' returns the magnitude
		    spectrum.  'angle' returns the phase spectrum without unwrapping.
		    'phase' returns the phase spectrum with unwrapping.
		
		noverlap : int, default: 128
		    The number of points of overlap between blocks.
		
		scale : {'default', 'linear', 'dB'}
		    The scaling of the values in the *spec*.  'linear' is no scaling.
		    'dB' returns the values in dB scale.  When *mode* is 'psd',
		    this is dB power (10 * log10).  Otherwise this is dB amplitude
		    (20 * log10). 'default' is 'dB' if *mode* is 'psd' or
		    'magnitude' and 'linear' otherwise.  This must be 'linear'
		    if *mode* is 'angle' or 'phase'.
		
		Fc : int, default: 0
		    The center frequency of *x*, which offsets the x extents of the
		    plot to reflect the frequency range used when a signal is acquired
		    and then filtered and downsampled to baseband.
		
		cmap : `.Colormap`, default: :rc:`image.cmap`
		
		xextent : *None* or (xmin, xmax)
		    The image extent along the x-axis. The default sets *xmin* to the
		    left border of the first bin (*spectrum* column) and *xmax* to the
		    right border of the last bin. Note that for *noverlap>0* the width
		    of the bins is smaller than those of the segments.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*
		
		**kwargs
		    Additional keyword arguments are passed on to `~.axes.Axes.imshow`
		    which makes the specgram image. The origin keyword argument
		    is not supported.
		
		Returns
		-------
		spectrum : 2D array
		    Columns are the periodograms of successive segments.
		
		freqs : 1-D array
		    The frequencies corresponding to the rows in *spectrum*.
		
		t : 1-D array
		    The times corresponding to midpoints of segments (i.e., the columns
		    in *spectrum*).
		
		im : `.AxesImage`
		    The image created by imshow containing the spectrogram.
		
		See Also
		--------
		psd
		    Differs in the default overlap; in returning the mean of the
		    segment periodograms; in not returning times; and in generating a
		    line plot instead of colormap.
		magnitude_spectrum
		    A single spectrum, similar to having a single segment when *mode*
		    is 'magnitude'. Plots a line instead of a colormap.
		angle_spectrum
		    A single spectrum, similar to having a single segment when *mode*
		    is 'angle'. Plots a line instead of a colormap.
		phase_spectrum
		    A single spectrum, similar to having a single segment when *mode*
		    is 'phase'. Plots a line instead of a colormap.
		
		Notes
		-----
		The parameters *detrend* and *scale_by_freq* do only apply when *mode*
		is set to 'psd'.
	**/
	public function specgram(x:Dynamic, ?NFFT:Dynamic, ?Fs:Dynamic, ?Fc:Dynamic, ?detrend:Dynamic, ?window:Dynamic, ?noverlap:Dynamic, ?cmap:Dynamic, ?xextent:Dynamic, ?pad_to:Dynamic, ?sides:Dynamic, ?scale_by_freq:Dynamic, ?mode:Dynamic, ?scale:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Plot the sparsity pattern of a 2D array.
		
		This visualizes the non-zero values of the array.
		
		Two plotting styles are available: image and marker. Both
		are available for full arrays, but only the marker style
		works for `scipy.sparse.spmatrix` instances.
		
		**Image style**
		
		If *marker* and *markersize* are *None*, `~.Axes.imshow` is used. Any
		extra remaining keyword arguments are passed to this method.
		
		**Marker style**
		
		If *Z* is a `scipy.sparse.spmatrix` or *marker* or *markersize* are
		*None*, a `.Line2D` object will be returned with the value of marker
		determining the marker type, and any remaining keyword arguments
		passed to `~.Axes.plot`.
		
		Parameters
		----------
		Z : (M, N) array-like
		    The array to be plotted.
		
		precision : float or 'present', default: 0
		    If *precision* is 0, any non-zero value will be plotted. Otherwise,
		    values of :math:`|Z| > precision` will be plotted.
		
		    For `scipy.sparse.spmatrix` instances, you can also
		    pass 'present'. In this case any value present in the array
		    will be plotted, even if it is identically zero.
		
		aspect : {'equal', 'auto', None} or float, default: 'equal'
		    The aspect ratio of the Axes.  This parameter is particularly
		    relevant for images since it determines whether data pixels are
		    square.
		
		    This parameter is a shortcut for explicitly calling
		    `.Axes.set_aspect`. See there for further details.
		
		    - 'equal': Ensures an aspect ratio of 1. Pixels will be square.
		    - 'auto': The Axes is kept fixed and the aspect is adjusted so
		      that the data fit in the Axes. In general, this will result in
		      non-square pixels.
		    - *None*: Use :rc:`image.aspect`.
		
		origin : {'upper', 'lower'}, default: :rc:`image.origin`
		    Place the [0, 0] index of the array in the upper left or lower left
		    corner of the Axes. The convention 'upper' is typically used for
		    matrices and images.
		
		Returns
		-------
		`~matplotlib.image.AxesImage` or `.Line2D`
		    The return type depends on the plotting style (see above).
		
		Other Parameters
		----------------
		**kwargs
		    The supported additional parameters depend on the plotting style.
		
		    For the image style, you can pass the following additional
		    parameters of `~.Axes.imshow`:
		
		    - *cmap*
		    - *alpha*
		    - *url*
		    - any `.Artist` properties (passed on to the `.AxesImage`)
		
		    For the marker style, you can pass any `.Line2D` property except
		    for *linestyle*:
		
		    Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    antialiased or aa: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    dash_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    dash_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    dashes: sequence of floats (on/off ink in points) or (None, None)
		    data: (2, N) array or two 1D arrays
		    drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    figure: `.Figure`
		    fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    gid: str
		    in_layout: bool
		    label: object
		    linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    linewidth or lw: float
		    marker: marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    markeredgecolor or mec: color
		    markeredgewidth or mew: float
		    markerfacecolor or mfc: color
		    markerfacecoloralt or mfcalt: color
		    markersize or ms: float
		    markevery: None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    path_effects: `.AbstractPathEffect`
		    picker: float or callable[[Artist, Event], tuple[bool, dict]]
		    pickradius: float
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    solid_capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    solid_joinstyle: `.JoinStyle` or {'miter', 'round', 'bevel'}
		    transform: unknown
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
	**/
	public function spy(Z:Dynamic, ?precision:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?aspect:Dynamic, ?origin:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a stacked area plot.
		
		Parameters
		----------
		x : (N,) array-like
		
		y : (M, N) array-like
		    The data is assumed to be unstacked. Each of the following
		    calls is legal::
		
		        stackplot(x, y)           # where y has shape (M, N)
		        stackplot(x, y1, y2, y3)  # where y1, y2, y3, y4 have length N
		
		baseline : {'zero', 'sym', 'wiggle', 'weighted_wiggle'}
		    Method used to calculate the baseline:
		
		    - ``'zero'``: Constant zero baseline, i.e. a simple stacked plot.
		    - ``'sym'``:  Symmetric around zero and is sometimes called
		      'ThemeRiver'.
		    - ``'wiggle'``: Minimizes the sum of the squared slopes.
		    - ``'weighted_wiggle'``: Does the same but weights to account for
		      size of each layer. It is also called 'Streamgraph'-layout. More
		      details can be found at http://leebyron.com/streamgraph/.
		
		labels : list of str, optional
		    A sequence of labels to assign to each data series. If unspecified,
		    then no labels will be applied to artists.
		
		colors : list of color, optional
		    A sequence of colors to be cycled through and used to color the stacked
		    areas. The sequence need not be exactly the same length as the number
		    of provided *y*, in which case the colors will repeat from the
		    beginning.
		
		    If not specified, the colors from the Axes property cycle will be used.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    All other keyword arguments are passed to `.Axes.fill_between`.
		
		Returns
		-------
		list of `.PolyCollection`
		    A list of `.PolyCollection` instances, one for each element in the
		    stacked area plot.
	**/
	static public function stackplot(axes:Dynamic, x:Dynamic, ?args:python.VarArgs<Dynamic>, ?labels:Dynamic, ?colors:Dynamic, ?baseline:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		A stepwise constant function as a line with bounding edges
		or a filled plot.
		
		Parameters
		----------
		values : array-like
		    The step heights.
		
		edges : array-like
		    The edge positions, with ``len(edges) == len(vals) + 1``,
		    between which the curve takes on vals values.
		
		orientation : {'vertical', 'horizontal'}, default: 'vertical'
		    The direction of the steps. Vertical means that *values* are along
		    the y-axis, and edges are along the x-axis.
		
		baseline : float, array-like or None, default: 0
		    The bottom value of the bounding edges or when
		    ``fill=True``, position of lower edge. If *fill* is
		    True or an array is passed to *baseline*, a closed
		    path is drawn.
		
		fill : bool, default: False
		    Whether the area under the step curve should be filled.
		
		Returns
		-------
		StepPatch : `matplotlib.patches.StepPatch`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		**kwargs
		    `~matplotlib.patches.StepPatch` properties
	**/
	public function stairs(values:Dynamic, ?edges:Dynamic, ?orientation:Dynamic, ?baseline:Dynamic, ?fill:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Whether the artist is 'stale' and needs to be re-drawn for the output
		to match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		Called when a pan operation has started.
		
		Parameters
		----------
		x, y : float
		    The mouse coordinates in display coords.
		button : `.MouseButton`
		    The pressed mouse button.
		
		Notes
		-----
		This is intended to be overridden by new projection types.
	**/
	public function start_pan(x:Dynamic, y:Dynamic, button:Dynamic):Dynamic;
	/**
		Create a stem plot.
		
		A stem plot draws lines perpendicular to a baseline at each location
		*locs* from the baseline to *heads*, and places a marker there. For
		vertical stem plots (the default), the *locs* are *x* positions, and
		the *heads* are *y* values. For horizontal stem plots, the *locs* are
		*y* positions, and the *heads* are *x* values.
		
		Call signature::
		
		  stem([locs,] heads, linefmt=None, markerfmt=None, basefmt=None)
		
		The *locs*-positions are optional. The formats may be provided either
		as positional or as keyword-arguments.
		
		Parameters
		----------
		locs : array-like, default: (0, 1, ..., len(heads) - 1)
		    For vertical stem plots, the x-positions of the stems.
		    For horizontal stem plots, the y-positions of the stems.
		
		heads : array-like
		    For vertical stem plots, the y-values of the stem heads.
		    For horizontal stem plots, the x-values of the stem heads.
		
		linefmt : str, optional
		    A string defining the color and/or linestyle of the vertical lines:
		
		    =========  =============
		    Character  Line Style
		    =========  =============
		    ``'-'``    solid line
		    ``'--'``   dashed line
		    ``'-.'``   dash-dot line
		    ``':'``    dotted line
		    =========  =============
		
		    Default: 'C0-', i.e. solid line with the first color of the color
		    cycle.
		
		    Note: Markers specified through this parameter (e.g. 'x') will be
		    silently ignored (unless using ``use_line_collection=False``).
		    Instead, markers should be specified using *markerfmt*.
		
		markerfmt : str, optional
		    A string defining the color and/or shape of the markers at the stem
		    heads.  Default: 'C0o', i.e. filled circles with the first color of
		    the color cycle.
		
		basefmt : str, default: 'C3-' ('C2-' in classic mode)
		    A format string defining the properties of the baseline.
		
		orientation : str, default: 'vertical'
		    If 'vertical', will produce a plot with stems oriented vertically,
		    otherwise the stems will be oriented horizontally.
		
		bottom : float, default: 0
		    The y/x-position of the baseline (depending on orientation).
		
		label : str, default: None
		    The label to use for the stems in legends.
		
		use_line_collection : bool, default: True
		    If ``True``, store and plot the stem lines as a
		    `~.collections.LineCollection` instead of individual lines, which
		    significantly increases performance.  If ``False``, defaults to the
		    old behavior of using a list of `.Line2D` objects.  This parameter
		    may be deprecated in the future.
		
		data : indexable object, optional
		    If given, all parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception).
		
		Returns
		-------
		`.StemContainer`
		    The container may be treated like a tuple
		    (*markerline*, *stemlines*, *baseline*)
		
		Notes
		-----
		.. seealso::
		    The MATLAB function
		    `stem <https://www.mathworks.com/help/matlab/ref/stem.html>`_
		    which inspired this method.
	**/
	public function stem(?args:python.VarArgs<Dynamic>, ?linefmt:Dynamic, ?markerfmt:Dynamic, ?basefmt:Dynamic, ?bottom:Dynamic, ?label:Dynamic, ?use_line_collection:Dynamic, ?orientation:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Make a step plot.
		
		Call signatures::
		
		    step(x, y, [fmt], *, data=None, where='pre', **kwargs)
		    step(x, y, [fmt], x2, y2, [fmt2], ..., *, where='pre', **kwargs)
		
		This is just a thin wrapper around `.plot` which changes some
		formatting options. Most of the concepts and parameters of plot can be
		used here as well.
		
		.. note::
		
		    This method uses a standard plot with a step drawstyle: The *x*
		    values are the reference positions and steps extend left/right/both
		    directions depending on *where*.
		
		    For the common case where you know the values and edges of the
		    steps, use `~.Axes.stairs` instead.
		
		Parameters
		----------
		x : array-like
		    1D sequence of x positions. It is assumed, but not checked, that
		    it is uniformly increasing.
		
		y : array-like
		    1D sequence of y levels.
		
		fmt : str, optional
		    A format string, e.g. 'g' for a green line. See `.plot` for a more
		    detailed description.
		
		    Note: While full format strings are accepted, it is recommended to
		    only specify the color. Line styles are currently ignored (use
		    the keyword argument *linestyle* instead). Markers are accepted
		    and plotted on the given positions, however, this is a rarely
		    needed feature for step plots.
		
		where : {'pre', 'post', 'mid'}, default: 'pre'
		    Define where the steps should be placed:
		
		    - 'pre': The y value is continued constantly to the left from
		      every *x* position, i.e. the interval ``(x[i-1], x[i]]`` has the
		      value ``y[i]``.
		    - 'post': The y value is continued constantly to the right from
		      every *x* position, i.e. the interval ``[x[i], x[i+1])`` has the
		      value ``y[i]``.
		    - 'mid': Steps occur half-way between the *x* positions.
		
		data : indexable object, optional
		    An object with labelled data. If given, provide the label names to
		    plot in *x* and *y*.
		
		**kwargs
		    Additional parameters are the same as those for `.plot`.
		
		Returns
		-------
		list of `.Line2D`
		    Objects representing the plotted data.
	**/
	public function step(x:Dynamic, y:Dynamic, ?args:python.VarArgs<Dynamic>, ?where:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Draw streamlines of a vector flow.
		
		Parameters
		----------
		x, y : 1D/2D arrays
		    Evenly spaced strictly increasing arrays to make a grid.  If 2D, all
		    rows of *x* must be equal and all columns of *y* must be equal; i.e.,
		    they must be as if generated by ``np.meshgrid(x_1d, y_1d)``.
		u, v : 2D arrays
		    *x* and *y*-velocities. The number of rows and columns must match
		    the length of *y* and *x*, respectively.
		density : float or (float, float)
		    Controls the closeness of streamlines. When ``density = 1``, the domain
		    is divided into a 30x30 grid. *density* linearly scales this grid.
		    Each cell in the grid can have, at most, one traversing streamline.
		    For different densities in each direction, use a tuple
		    (density_x, density_y).
		linewidth : float or 2D array
		    The width of the stream lines. With a 2D array the line width can be
		    varied across the grid. The array must have the same shape as *u*
		    and *v*.
		color : color or 2D array
		    The streamline color. If given an array, its values are converted to
		    colors using *cmap* and *norm*.  The array must have the same shape
		    as *u* and *v*.
		cmap : `~matplotlib.colors.Colormap`
		    Colormap used to plot streamlines and arrows. This is only used if
		    *color* is an array.
		norm : `~matplotlib.colors.Normalize`
		    Normalize object used to scale luminance data to 0, 1. If ``None``,
		    stretch (min, max) to (0, 1). This is only used if *color* is an array.
		arrowsize : float
		    Scaling factor for the arrow size.
		arrowstyle : str
		    Arrow style specification.
		    See `~matplotlib.patches.FancyArrowPatch`.
		minlength : float
		    Minimum length of streamline in axes coordinates.
		start_points : Nx2 array
		    Coordinates of starting points for the streamlines in data coordinates
		    (the same coordinates as the *x* and *y* arrays).
		zorder : int
		    The zorder of the stream lines and arrows.
		    Artists with lower zorder values are drawn first.
		maxlength : float
		    Maximum length of streamline in axes coordinates.
		integration_direction : {'forward', 'backward', 'both'}, default: 'both'
		    Integrate the streamline in forward, backward or both directions.
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*, *u*, *v*, *start_points*
		
		Returns
		-------
		StreamplotSet
		    Container object with attributes
		
		    - ``lines``: `.LineCollection` of streamlines
		
		    - ``arrows``: `.PatchCollection` containing `.FancyArrowPatch`
		      objects representing the arrows half-way along stream lines.
		
		    This container will probably change in the future to allow changes
		    to the colormap, alpha, etc. for both lines and arrows, but these
		    changes should be backward compatible.
	**/
	static public function streamplot(axes:Dynamic, x:Dynamic, y:Dynamic, u:Dynamic, v:Dynamic, ?density:Dynamic, ?linewidth:Dynamic, ?color:Dynamic, ?cmap:Dynamic, ?norm:Dynamic, ?arrowsize:Dynamic, ?arrowstyle:Dynamic, ?minlength:Dynamic, ?transform:Dynamic, ?zorder:Dynamic, ?start_points:Dynamic, ?maxlength:Dynamic, ?integration_direction:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Add a table to an `~.axes.Axes`.
		
		At least one of *cellText* or *cellColours* must be specified. These
		parameters must be 2D lists, in which the outer lists define the rows and
		the inner list define the column values per row. Each row must have the
		same number of elements.
		
		The table can optionally have row and column headers, which are configured
		using *rowLabels*, *rowColours*, *rowLoc* and *colLabels*, *colColours*,
		*colLoc* respectively.
		
		For finer grained control over tables, use the `.Table` class and add it to
		the axes with `.Axes.add_table`.
		
		Parameters
		----------
		cellText : 2D list of str, optional
		    The texts to place into the table cells.
		
		    *Note*: Line breaks in the strings are currently not accounted for and
		    will result in the text exceeding the cell boundaries.
		
		cellColours : 2D list of colors, optional
		    The background colors of the cells.
		
		cellLoc : {'left', 'center', 'right'}, default: 'right'
		    The alignment of the text within the cells.
		
		colWidths : list of float, optional
		    The column widths in units of the axes. If not given, all columns will
		    have a width of *1 / ncols*.
		
		rowLabels : list of str, optional
		    The text of the row header cells.
		
		rowColours : list of colors, optional
		    The colors of the row header cells.
		
		rowLoc : {'left', 'center', 'right'}, default: 'left'
		    The text alignment of the row header cells.
		
		colLabels : list of str, optional
		    The text of the column header cells.
		
		colColours : list of colors, optional
		    The colors of the column header cells.
		
		colLoc : {'left', 'center', 'right'}, default: 'left'
		    The text alignment of the column header cells.
		
		loc : str, optional
		    The position of the cell with respect to *ax*. This must be one of
		    the `~.Table.codes`.
		
		bbox : `.Bbox`, optional
		    A bounding box to draw the table into. If this is not *None*, this
		    overrides *loc*.
		
		edges : substring of 'BRTL' or {'open', 'closed', 'horizontal', 'vertical'}
		    The cell edges to be drawn with a line. See also
		    `~.Cell.visible_edges`.
		
		Returns
		-------
		`~matplotlib.table.Table`
		    The created table.
		
		Other Parameters
		----------------
		**kwargs
		    `.Table` properties.
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    figure: `.Figure`
		    fontsize: float
		    gid: str
		    in_layout: bool
		    label: object
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	static public function table(ax:Dynamic, ?cellText:Dynamic, ?cellColours:Dynamic, ?cellLoc:Dynamic, ?colWidths:Dynamic, ?rowLabels:Dynamic, ?rowColours:Dynamic, ?rowLoc:Dynamic, ?colLabels:Dynamic, ?colColours:Dynamic, ?colLoc:Dynamic, ?loc:Dynamic, ?bbox:Dynamic, ?edges:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var tables : Dynamic;
	/**
		Add text to the Axes.
		
		Add the text *s* to the Axes at location *x*, *y* in data coordinates.
		
		Parameters
		----------
		x, y : float
		    The position to place the text. By default, this is in data
		    coordinates. The coordinate system can be changed using the
		    *transform* parameter.
		
		s : str
		    The text.
		
		fontdict : dict, default: None
		    A dictionary to override the default text properties. If fontdict
		    is None, the defaults are determined by `.rcParams`.
		
		Returns
		-------
		`.Text`
		    The created `.Text` instance.
		
		Other Parameters
		----------------
		**kwargs : `~matplotlib.text.Text` properties.
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
		
		Examples
		--------
		Individual keyword arguments can be used to override any given
		parameter::
		
		    >>> text(x, y, s, fontsize=12)
		
		The default transform specifies that text is in data coords,
		alternatively, you can specify text in axis coords ((0, 0) is
		lower-left and (1, 1) is upper-right).  The example below places
		text in the center of the Axes::
		
		    >>> text(0.5, 0.5, 'matplotlib', horizontalalignment='center',
		    ...      verticalalignment='center', transform=ax.transAxes)
		
		You can put a rectangular box around the text instance (e.g., to
		set a background color) by using the keyword *bbox*.  *bbox* is
		a dictionary of `~matplotlib.patches.Rectangle`
		properties.  For example::
		
		    >>> text(x, y, s, bbox=dict(facecolor='red', alpha=0.5))
	**/
	public function text(x:Dynamic, y:Dynamic, s:Dynamic, ?fontdict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public var texts : Dynamic;
	/**
		Change the appearance of ticks, tick labels, and gridlines.
		
		Tick properties that are not explicitly set using the keyword
		arguments remain unchanged unless *reset* is True.
		
		Parameters
		----------
		axis : {'x', 'y', 'both'}, default: 'both'
		    The axis to which the parameters are applied.
		which : {'major', 'minor', 'both'}, default: 'major'
		    The group of ticks to which the parameters are applied.
		reset : bool, default: False
		    Whether to reset the ticks to defaults before updating them.
		
		Other Parameters
		----------------
		direction : {'in', 'out', 'inout'}
		    Puts ticks inside the axes, outside the axes, or both.
		length : float
		    Tick length in points.
		width : float
		    Tick width in points.
		color : color
		    Tick color.
		pad : float
		    Distance in points between tick and label.
		labelsize : float or str
		    Tick label font size in points or as a string (e.g., 'large').
		labelcolor : color
		    Tick label color.
		colors : color
		    Tick color and label color.
		zorder : float
		    Tick and label zorder.
		bottom, top, left, right : bool
		    Whether to draw the respective ticks.
		labelbottom, labeltop, labelleft, labelright : bool
		    Whether to draw the respective tick labels.
		labelrotation : float
		    Tick label rotation
		grid_color : color
		    Gridline color.
		grid_alpha : float
		    Transparency of gridlines: 0 (transparent) to 1 (opaque).
		grid_linewidth : float
		    Width of gridlines in points.
		grid_linestyle : str
		    Any valid `.Line2D` line style spec.
		
		Examples
		--------
		::
		
		    ax.tick_params(direction='out', length=6, width=2, colors='r',
		                   grid_color='r', grid_alpha=0.5)
		
		This will make all major ticks be red, pointing out of the box,
		and with dimensions 6 points by 2 points.  Tick labels will
		also be red.  Gridlines will be red and translucent.
	**/
	public function tick_params(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Configure the `.ScalarFormatter` used by default for linear axes.
		
		If a parameter is not set, the corresponding property of the formatter
		is left unchanged.
		
		Parameters
		----------
		axis : {'x', 'y', 'both'}, default: 'both'
		    The axis to configure.  Only major ticks are affected.
		
		style : {'sci', 'scientific', 'plain'}
		    Whether to use scientific notation.
		    The formatter default is to use scientific notation.
		
		scilimits : pair of ints (m, n)
		    Scientific notation is used only for numbers outside the range
		    10\ :sup:`m` to 10\ :sup:`n` (and only if the formatter is
		    configured to use scientific notation at all).  Use (0, 0) to
		    include all numbers.  Use (m, m) where m != 0 to fix the order of
		    magnitude to 10\ :sup:`m`.
		    The formatter default is :rc:`axes.formatter.limits`.
		
		useOffset : bool or float
		    If True, the offset is calculated as needed.
		    If False, no offset is used.
		    If a numeric value, it sets the offset.
		    The formatter default is :rc:`axes.formatter.useoffset`.
		
		useLocale : bool
		    Whether to format the number using the current locale or using the
		    C (English) locale.  This affects e.g. the decimal separator.  The
		    formatter default is :rc:`axes.formatter.use_locale`.
		
		useMathText : bool
		    Render the offset and scientific notation in mathtext.
		    The formatter default is :rc:`axes.formatter.use_mathtext`.
		
		Raises
		------
		AttributeError
		    If the current formatter is not a `.ScalarFormatter`.
	**/
	public function ticklabel_format(?axis:Dynamic, ?style:Dynamic, ?scilimits:Dynamic, ?useOffset:Dynamic, ?useLocale:Dynamic, ?useMathText:Dynamic):Dynamic;
	/**
		Draw contour lines on an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontour(triangulation, ...)
		
		where *triangulation* is a `.Triangulation` object, or ::
		
		    tricontour(x, y, ...)
		    tricontour(x, y, triangles, ...)
		    tricontour(x, y, triangles=triangles, ...)
		    tricontour(x, y, mask=mask, ...)
		    tricontour(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontour(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontour(..., Z, levels)
		
		contour up to *levels+1* automatically chosen contour levels (*levels*
		intervals).
		
		::
		
		    tricontour(..., Z, levels)
		
		draw contour lines at the values specified in sequence *levels*, which must
		be in increasing order.
		
		::
		
		    tricontour(Z, **kwargs)
		
		Use keyword arguments to control colors, linewidth, origin, cmap ... see below
		for more details.
		
		Parameters
		----------
		triangulation : `.Triangulation`, optional
		    The unstructured triangular grid.
		
		    If specified, then *x*, *y*, *triangles*, and *mask* are not accepted.
		
		x, y : array-like, optional
		    The coordinates of the values in *Z*.
		
		triangles : (ntri, 3) array-like of int, optional
		    For each triangle, the indices of the three points that make up the
		    triangle, ordered in an anticlockwise manner.  If not specified, the
		    Delaunay triangulation is calculated.
		
		mask : (ntri,) array-like of bool, optional
		    Which triangles are masked out.
		
		Z : 2D array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
		    automatically choose no more than *n+1* "nice" contour levels between
		    *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.  The values must
		    be in increasing order.
		
		Returns
		-------
		`~matplotlib.tri.TriContourSet`
		
		Other Parameters
		----------------
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e., the contour lines.
		
		    The sequence is cycled for the levels in ascending order. If the sequence
		    is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of one-element
		    lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
		    same color. This shortcut does only work for color strings, not for other
		    ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap* will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap maps the
		    level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level values to
		    the canonical colormap range [0, 1] for mapping to colors. If not given,
		    the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying the
		    position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
		    gives the outer pixel boundaries. In this case, the position of Z[0, 0] is
		    the center of the pixel, not a corner. If *origin* is *None*, then
		    (*x0*, *y0*) is the position of Z[0, 0], and (*x1*, *y1*) is the position
		    of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call to
		    contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they are not given
		    explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``tricontour``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.  If 'min',
		    'max' or 'both', color the values below, above or below and above the
		    *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
		    under/over values of the `.Colormap`. Note that most colormaps do not have
		    dedicated colors for these by default, so that the over and under values
		    are the edge values of the colormap.  You may want to set these values
		    explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.TriContourSet` does not get notified if properties of its
		        colormap are changed. Therefore, an explicit call to
		        `.ContourSet.changed()` is needed after modifying the colormap. The
		        explicit call can be left out, if a colorbar is assigned to the
		        `.TriContourSet` because it internally calls `.ContourSet.changed()`.
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		linewidths : float or array-like, default: :rc:`contour.linewidth`
		    The line width of the contour lines.
		
		    If a number, all levels will be plotted with this linewidth.
		
		    If a sequence, the levels in ascending order will be plotted with
		    the linewidths in the order specified.
		
		    If None, this falls back to :rc:`lines.linewidth`.
		
		linestyles : {*None*, 'solid', 'dashed', 'dashdot', 'dotted'}, optional
		    If *linestyles* is *None*, the default is 'solid' unless the lines are
		    monochrome.  In that case, negative contours will take their linestyle
		    from :rc:`contour.negative_linestyle` setting.
		
		    *linestyles* can also be an iterable of the above strings specifying a
		    set of linestyles to be used. If this iterable is shorter than the
		    number of contour levels it will be repeated as necessary.
	**/
	static public function tricontour(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw contour regions on an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either ::
		
		    tricontourf(triangulation, ...)
		
		where *triangulation* is a `.Triangulation` object, or ::
		
		    tricontourf(x, y, ...)
		    tricontourf(x, y, triangles, ...)
		    tricontourf(x, y, triangles=triangles, ...)
		    tricontourf(x, y, mask=mask, ...)
		    tricontourf(x, y, triangles, mask=mask, ...)
		
		in which case a `.Triangulation` object will be created.  See that class'
		docstring for an explanation of these cases.
		
		The remaining arguments may be::
		
		    tricontourf(..., Z)
		
		where *Z* is the array of values to contour, one per point in the
		triangulation.  The level values are chosen automatically.
		
		::
		
		    tricontourf(..., Z, levels)
		
		contour up to *levels+1* automatically chosen contour levels (*levels*
		intervals).
		
		::
		
		    tricontourf(..., Z, levels)
		
		draw contour regions at the values specified in sequence *levels*, which must
		be in increasing order.
		
		::
		
		    tricontourf(Z, **kwargs)
		
		Use keyword arguments to control colors, linewidth, origin, cmap ... see below
		for more details.
		
		Parameters
		----------
		triangulation : `.Triangulation`, optional
		    The unstructured triangular grid.
		
		    If specified, then *x*, *y*, *triangles*, and *mask* are not accepted.
		
		x, y : array-like, optional
		    The coordinates of the values in *Z*.
		
		triangles : (ntri, 3) array-like of int, optional
		    For each triangle, the indices of the three points that make up the
		    triangle, ordered in an anticlockwise manner.  If not specified, the
		    Delaunay triangulation is calculated.
		
		mask : (ntri,) array-like of bool, optional
		    Which triangles are masked out.
		
		Z : 2D array-like
		    The height values over which the contour is drawn.
		
		levels : int or array-like, optional
		    Determines the number and positions of the contour lines / regions.
		
		    If an int *n*, use `~matplotlib.ticker.MaxNLocator`, which tries to
		    automatically choose no more than *n+1* "nice" contour levels between
		    *vmin* and *vmax*.
		
		    If array-like, draw contour lines at the specified levels.  The values must
		    be in increasing order.
		
		Returns
		-------
		`~matplotlib.tri.TriContourSet`
		
		Other Parameters
		----------------
		colors : color string or sequence of colors, optional
		    The colors of the levels, i.e., the contour regions.
		
		    The sequence is cycled for the levels in ascending order. If the sequence
		    is shorter than the number of levels, it's repeated.
		
		    As a shortcut, single color strings may be used in place of one-element
		    lists, i.e. ``'red'`` instead of ``['red']`` to color all levels with the
		    same color. This shortcut does only work for color strings, not for other
		    ways of specifying colors.
		
		    By default (value *None*), the colormap specified by *cmap* will be used.
		
		alpha : float, default: 1
		    The alpha blending value, between 0 (transparent) and 1 (opaque).
		
		cmap : str or `.Colormap`, default: :rc:`image.cmap`
		    A `.Colormap` instance or registered colormap name. The colormap maps the
		    level values to colors.
		
		    If both *colors* and *cmap* are given, an error is raised.
		
		norm : `~matplotlib.colors.Normalize`, optional
		    If a colormap is used, the `.Normalize` instance scales the level values to
		    the canonical colormap range [0, 1] for mapping to colors. If not given,
		    the default linear scaling is used.
		
		vmin, vmax : float, optional
		    If not *None*, either or both of these values will be supplied to
		    the `.Normalize` instance, overriding the default color scaling
		    based on *levels*.
		
		origin : {*None*, 'upper', 'lower', 'image'}, default: None
		    Determines the orientation and exact position of *Z* by specifying the
		    position of ``Z[0, 0]``.  This is only relevant, if *X*, *Y* are not given.
		
		    - *None*: ``Z[0, 0]`` is at X=0, Y=0 in the lower left corner.
		    - 'lower': ``Z[0, 0]`` is at X=0.5, Y=0.5 in the lower left corner.
		    - 'upper': ``Z[0, 0]`` is at X=N+0.5, Y=0.5 in the upper left corner.
		    - 'image': Use the value from :rc:`image.origin`.
		
		extent : (x0, x1, y0, y1), optional
		    If *origin* is not *None*, then *extent* is interpreted as in `.imshow`: it
		    gives the outer pixel boundaries. In this case, the position of Z[0, 0] is
		    the center of the pixel, not a corner. If *origin* is *None*, then
		    (*x0*, *y0*) is the position of Z[0, 0], and (*x1*, *y1*) is the position
		    of Z[-1, -1].
		
		    This argument is ignored if *X* and *Y* are specified in the call to
		    contour.
		
		locator : ticker.Locator subclass, optional
		    The locator is used to determine the contour levels if they are not given
		    explicitly via *levels*.
		    Defaults to `~.ticker.MaxNLocator`.
		
		extend : {'neither', 'both', 'min', 'max'}, default: 'neither'
		    Determines the ``tricontourf``-coloring of values that are outside the
		    *levels* range.
		
		    If 'neither', values outside the *levels* range are not colored.  If 'min',
		    'max' or 'both', color the values below, above or below and above the
		    *levels* range.
		
		    Values below ``min(levels)`` and above ``max(levels)`` are mapped to the
		    under/over values of the `.Colormap`. Note that most colormaps do not have
		    dedicated colors for these by default, so that the over and under values
		    are the edge values of the colormap.  You may want to set these values
		    explicitly using `.Colormap.set_under` and `.Colormap.set_over`.
		
		    .. note::
		
		        An existing `.TriContourSet` does not get notified if properties of its
		        colormap are changed. Therefore, an explicit call to
		        `.ContourSet.changed()` is needed after modifying the colormap. The
		        explicit call can be left out, if a colorbar is assigned to the
		        `.TriContourSet` because it internally calls `.ContourSet.changed()`.
		
		xunits, yunits : registered units, optional
		    Override axis units by specifying an instance of a
		    :class:`matplotlib.units.ConversionInterface`.
		
		antialiased : bool, optional
		    Enable antialiasing, overriding the defaults.  For
		    filled contours, the default is *True*.  For line contours,
		    it is taken from :rc:`lines.antialiased`.
		
		hatches : list[str], optional
		    A list of cross hatch patterns to use on the filled areas.
		    If None, no hatching will be added to the contour.
		    Hatching is supported in the PostScript, PDF, SVG and Agg
		    backends only.
		
		Notes
		-----
		`.tricontourf` fills intervals that are closed at the top; that is, for
		boundaries *z1* and *z2*, the filled region is::
		
		    z1 < Z <= z2
		
		except for the lowest interval, which is closed on both sides (i.e. it
		includes the lowest value).
	**/
	static public function tricontourf(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a pseudocolor plot of an unstructured triangular grid.
		
		The triangulation can be specified in one of two ways; either::
		
		  tripcolor(triangulation, ...)
		
		where triangulation is a `.Triangulation` object, or
		
		::
		
		  tripcolor(x, y, ...)
		  tripcolor(x, y, triangles, ...)
		  tripcolor(x, y, triangles=triangles, ...)
		  tripcolor(x, y, mask=mask, ...)
		  tripcolor(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See `.Triangulation`
		for a explanation of these possibilities.
		
		The next argument must be *C*, the array of color values, either
		one per point in the triangulation if color values are defined at
		points, or one per triangle in the triangulation if color values
		are defined at triangles. If there are the same number of points
		and triangles in the triangulation it is assumed that color
		values are defined at points; to force the use of color values at
		triangles use the kwarg ``facecolors=C`` instead of just ``C``.
		
		*shading* may be 'flat' (the default) or 'gouraud'. If *shading*
		is 'flat' and C values are defined at points, the color values
		used for each triangle are from the mean C of the triangle's
		three points. If *shading* is 'gouraud' then color values must be
		defined at points.
		
		The remaining kwargs are the same as for `~.Axes.pcolor`.
	**/
	static public function tripcolor(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?alpha:Dynamic, ?norm:Dynamic, ?cmap:Dynamic, ?vmin:Dynamic, ?vmax:Dynamic, ?shading:Dynamic, ?facecolors:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Draw a unstructured triangular grid as lines and/or markers.
		
		The triangulation to plot can be specified in one of two ways; either::
		
		  triplot(triangulation, ...)
		
		where triangulation is a `.Triangulation` object, or
		
		::
		
		  triplot(x, y, ...)
		  triplot(x, y, triangles, ...)
		  triplot(x, y, triangles=triangles, ...)
		  triplot(x, y, mask=mask, ...)
		  triplot(x, y, triangles, mask=mask, ...)
		
		in which case a Triangulation object will be created.  See `.Triangulation`
		for a explanation of these possibilities.
		
		The remaining args and kwargs are the same as for `~.Axes.plot`.
		
		Returns
		-------
		lines : `~matplotlib.lines.Line2D`
		    The drawn triangles edges.
		markers : `~matplotlib.lines.Line2D`
		    The drawn marker nodes.
	**/
	static public function triplot(ax:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a twin Axes sharing the xaxis.
		
		Create a new Axes with an invisible x-axis and an independent
		y-axis positioned opposite to the original one (i.e. at right). The
		x-axis autoscale setting will be inherited from the original
		Axes.  To ensure that the tick marks of both y-axes align, see
		`~matplotlib.ticker.LinearLocator`.
		
		Returns
		-------
		Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twinx, pick
		events are only called for the artists in the top-most Axes.
	**/
	public function twinx():Dynamic;
	/**
		Create a twin Axes sharing the yaxis.
		
		Create a new Axes with an invisible y-axis and an independent
		x-axis positioned opposite to the original one (i.e. at top). The
		y-axis autoscale setting will be inherited from the original Axes.
		To ensure that the tick marks of both x-axes align, see
		`~matplotlib.ticker.LinearLocator`.
		
		Returns
		-------
		Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twiny, pick
		events are only called for the artists in the top-most Axes.
	**/
	public function twiny():Dynamic;
	/**
		Update this artist's properties from the dict *props*.
		
		Parameters
		----------
		props : dict
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Extend the `~.Axes.dataLim` Bbox to include the given points.
		
		If no data is set currently, the Bbox will ignore its limits and set
		the bound to be the bounds of the xydata (*xys*). Otherwise, it will
		compute the bounds of the union of its current data and the data in
		*xys*.
		
		Parameters
		----------
		xys : 2D array-like
		    The points to include in the data limits Bbox. This can be either
		    a list of (x, y) tuples or a Nx2 array.
		
		updatex, updatey : bool, default: True
		    Whether to update the x/y limits.
	**/
	public function update_datalim(xys:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		When autoscaling, whether to obey all `Artist.sticky_edges`.
		
		Default is ``True``.
		
		Setting this to ``False`` ensures that the specified margins
		will be applied, even if the plot includes an image, for
		example, which would otherwise force a view limit to coincide
		with its data limit.
		
		The changing this property does not change the plot until
		`autoscale` or `autoscale_view` is called.
	**/
	public var use_sticky_edges : Dynamic;
	public var viewLim : Dynamic;
	/**
		Drawing function for violin plots.
		
		Draw a violin plot for each column of *vpstats*. Each filled area
		extends to represent the entire data range, with optional lines at the
		mean, the median, the minimum, the maximum, and the quantiles values.
		
		Parameters
		----------
		vpstats : list of dicts
		  A list of dictionaries containing stats for each violin plot.
		  Required keys are:
		
		  - ``coords``: A list of scalars containing the coordinates that
		    the violin's kernel density estimate were evaluated at.
		
		  - ``vals``: A list of scalars containing the values of the
		    kernel density estimate at each of the coordinates given
		    in *coords*.
		
		  - ``mean``: The mean value for this violin's dataset.
		
		  - ``median``: The median value for this violin's dataset.
		
		  - ``min``: The minimum value for this violin's dataset.
		
		  - ``max``: The maximum value for this violin's dataset.
		
		  Optional keys are:
		
		  - ``quantiles``: A list of scalars containing the quantile values
		    for this violin's dataset.
		
		positions : array-like, default: [1, 2, ..., n]
		  The positions of the violins. The ticks and limits are
		  automatically set to match the positions.
		
		vert : bool, default: True.
		  If true, plots the violins vertically.
		  Otherwise, plots the violins horizontally.
		
		widths : array-like, default: 0.5
		  Either a scalar or a vector that sets the maximal width of
		  each violin. The default is 0.5, which uses about half of the
		  available horizontal space.
		
		showmeans : bool, default: False
		  If true, will toggle rendering of the means.
		
		showextrema : bool, default: True
		  If true, will toggle rendering of the extrema.
		
		showmedians : bool, default: False
		  If true, will toggle rendering of the medians.
		
		Returns
		-------
		dict
		  A dictionary mapping each component of the violinplot to a
		  list of the corresponding collection instances created. The
		  dictionary has the following keys:
		
		  - ``bodies``: A list of the `~.collections.PolyCollection`
		    instances containing the filled area of each violin.
		
		  - ``cmeans``: A `~.collections.LineCollection` instance that marks
		    the mean values of each of the violin's distribution.
		
		  - ``cmins``: A `~.collections.LineCollection` instance that marks
		    the bottom of each violin's distribution.
		
		  - ``cmaxes``: A `~.collections.LineCollection` instance that marks
		    the top of each violin's distribution.
		
		  - ``cbars``: A `~.collections.LineCollection` instance that marks
		    the centers of each violin's distribution.
		
		  - ``cmedians``: A `~.collections.LineCollection` instance that
		    marks the median values of each of the violin's distribution.
		
		  - ``cquantiles``: A `~.collections.LineCollection` instance created
		    to identify the quantiles values of each of the violin's
		    distribution.
	**/
	public function violin(vpstats:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic):Dynamic;
	/**
		Make a violin plot.
		
		Make a violin plot for each column of *dataset* or each vector in
		sequence *dataset*.  Each filled area extends to represent the
		entire data range, with optional lines at the mean, the median,
		the minimum, the maximum, and user-specified quantiles.
		
		Parameters
		----------
		dataset : Array or a sequence of vectors.
		  The input data.
		
		positions : array-like, default: [1, 2, ..., n]
		  The positions of the violins. The ticks and limits are
		  automatically set to match the positions.
		
		vert : bool, default: True.
		  If true, creates a vertical violin plot.
		  Otherwise, creates a horizontal violin plot.
		
		widths : array-like, default: 0.5
		  Either a scalar or a vector that sets the maximal width of
		  each violin. The default is 0.5, which uses about half of the
		  available horizontal space.
		
		showmeans : bool, default: False
		  If `True`, will toggle rendering of the means.
		
		showextrema : bool, default: True
		  If `True`, will toggle rendering of the extrema.
		
		showmedians : bool, default: False
		  If `True`, will toggle rendering of the medians.
		
		quantiles : array-like, default: None
		  If not None, set a list of floats in interval [0, 1] for each violin,
		  which stands for the quantiles that will be rendered for that
		  violin.
		
		points : int, default: 100
		  Defines the number of points to evaluate each of the
		  gaussian kernel density estimations at.
		
		bw_method : str, scalar or callable, optional
		  The method used to calculate the estimator bandwidth.  This can be
		  'scott', 'silverman', a scalar constant or a callable.  If a
		  scalar, this will be used directly as `kde.factor`.  If a
		  callable, it should take a `GaussianKDE` instance as its only
		  parameter and return a scalar. If None (default), 'scott' is used.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *dataset*
		
		Returns
		-------
		dict
		  A dictionary mapping each component of the violinplot to a
		  list of the corresponding collection instances created. The
		  dictionary has the following keys:
		
		  - ``bodies``: A list of the `~.collections.PolyCollection`
		    instances containing the filled area of each violin.
		
		  - ``cmeans``: A `~.collections.LineCollection` instance that marks
		    the mean values of each of the violin's distribution.
		
		  - ``cmins``: A `~.collections.LineCollection` instance that marks
		    the bottom of each violin's distribution.
		
		  - ``cmaxes``: A `~.collections.LineCollection` instance that marks
		    the top of each violin's distribution.
		
		  - ``cbars``: A `~.collections.LineCollection` instance that marks
		    the centers of each violin's distribution.
		
		  - ``cmedians``: A `~.collections.LineCollection` instance that
		    marks the median values of each of the violin's distribution.
		
		  - ``cquantiles``: A `~.collections.LineCollection` instance created
		    to identify the quantile values of each of the violin's
		    distribution.
	**/
	public function violinplot(dataset:Dynamic, ?positions:Dynamic, ?vert:Dynamic, ?widths:Dynamic, ?showmeans:Dynamic, ?showextrema:Dynamic, ?showmedians:Dynamic, ?quantiles:Dynamic, ?points:Dynamic, ?bw_method:Dynamic, ?data:Dynamic):Dynamic;
	/**
		Plot vertical lines at each *x* from *ymin* to *ymax*.
		
		Parameters
		----------
		x : float or array-like
		    x-indexes where to plot the lines.
		
		ymin, ymax : float or array-like
		    Respective beginning and end of each line. If scalars are
		    provided, all lines will have same length.
		
		colors : list of colors, default: :rc:`lines.color`
		
		linestyles : {'solid', 'dashed', 'dashdot', 'dotted'}, optional
		
		label : str, default: ''
		
		Returns
		-------
		`~matplotlib.collections.LineCollection`
		
		Other Parameters
		----------------
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *ymin*, *ymax*, *colors*
		**kwargs : `~matplotlib.collections.LineCollection` properties.
		
		See Also
		--------
		hlines : horizontal lines
		axvline : vertical line across the Axes
	**/
	public function vlines(x:Dynamic, ymin:Dynamic, ymax:Dynamic, ?colors:Dynamic, ?linestyles:Dynamic, ?label:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set up axis ticks and labels to treat data along the xaxis as dates.
		
		Parameters
		----------
		tz : str or `datetime.tzinfo`, default: :rc:`timezone`
		    The timezone used to create date labels.
	**/
	public function xaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the xaxis is oriented in the "inverse" direction.
		
		The "normal" direction is increasing to the right for the x-axis and to
		the top for the y-axis; the "inverse" direction is increasing to the
		left for the x-axis and to the bottom for the y-axis.
	**/
	public function xaxis_inverted():Dynamic;
	/**
		Plot the cross correlation between *x* and *y*.
		
		The correlation with lag k is defined as
		:math:`\sum_n x[n+k] \cdot y^*[n]`, where :math:`y^*` is the complex
		conjugate of :math:`y`.
		
		Parameters
		----------
		x, y : array-like of length n
		
		detrend : callable, default: `.mlab.detrend_none` (no detrending)
		    A detrending function applied to *x* and *y*.  It must have the
		    signature ::
		
		        detrend(x: np.ndarray) -> np.ndarray
		
		normed : bool, default: True
		    If ``True``, input vectors are normalised to unit length.
		
		usevlines : bool, default: True
		    Determines the plot style.
		
		    If ``True``, vertical lines are plotted from 0 to the xcorr value
		    using `.Axes.vlines`. Additionally, a horizontal line is plotted
		    at y=0 using `.Axes.axhline`.
		
		    If ``False``, markers are plotted at the xcorr values using
		    `.Axes.plot`.
		
		maxlags : int, default: 10
		    Number of lags to show. If None, will return all ``2 * len(x) - 1``
		    lags.
		
		Returns
		-------
		lags : array (length ``2*maxlags+1``)
		    The lag vector.
		c : array  (length ``2*maxlags+1``)
		    The auto correlation vector.
		line : `.LineCollection` or `.Line2D`
		    `.Artist` added to the Axes of the correlation:
		
		    - `.LineCollection` if *usevlines* is True.
		    - `.Line2D` if *usevlines* is False.
		b : `.Line2D` or None
		    Horizontal line at 0 if *usevlines* is True
		    None *usevlines* is False.
		
		Other Parameters
		----------------
		linestyle : `.Line2D` property, optional
		    The linestyle for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		marker : str, default: 'o'
		    The marker for plotting the data points.
		    Only used if *usevlines* is ``False``.
		
		data : indexable object, optional
		    If given, the following parameters also accept a string ``s``, which is
		    interpreted as ``data[s]`` (unless this raises an exception):
		
		    *x*, *y*
		
		**kwargs
		    Additional parameters are passed to `.Axes.vlines` and
		    `.Axes.axhline` if *usevlines* is ``True``; otherwise they are
		    passed to `.Axes.plot`.
		
		Notes
		-----
		The cross correlation is performed with `numpy.correlate` with
		``mode = "full"``.
	**/
	public function xcorr(x:Dynamic, y:Dynamic, ?normed:Dynamic, ?detrend:Dynamic, ?usevlines:Dynamic, ?maxlags:Dynamic, ?data:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set up axis ticks and labels to treat data along the yaxis as dates.
		
		Parameters
		----------
		tz : str or `datetime.tzinfo`, default: :rc:`timezone`
		    The timezone used to create date labels.
	**/
	public function yaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the yaxis is oriented in the "inverse" direction.
		
		The "normal" direction is increasing to the right for the x-axis and to
		the top for the y-axis; the "inverse" direction is increasing to the
		left for the x-axis and to the bottom for the y-axis.
	**/
	public function yaxis_inverted():Dynamic;
	static public var zorder : Dynamic;
}