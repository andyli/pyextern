/* This file is generated, do not edit! */
package matplotlib.lines;
@:pythonImport("matplotlib.lines", "_AxLine") extern class _AxLine {
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
		Create a `.Line2D` instance with *x* and *y* data in sequences of
		*xdata*, *ydata*.
		
		Additional keyword arguments are `.Line2D` properties:
		
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
		
		See :meth:`set_linestyle` for a description of the line styles,
		:meth:`set_marker` for a description of the markers, and
		:meth:`set_drawstyle` for a description of the draw styles.
	**/
	@:native("__init__")
	public function ___init__(xy1:Dynamic, xy2:Dynamic, slope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a `.Line2D` instance with *x* and *y* data in sequences of
		*xdata*, *ydata*.
		
		Additional keyword arguments are `.Line2D` properties:
		
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
		
		See :meth:`set_linestyle` for a description of the line styles,
		:meth:`set_marker` for a description of the markers, and
		:meth:`set_drawstyle` for a description of the draw styles.
	**/
	public function new(xy1:Dynamic, xy2:Dynamic, slope:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _alias_map : Dynamic;
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
	static public var _drawStyles_l : Dynamic;
	static public var _drawStyles_s : Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	public function _get_markerfacecolor(?alt:Dynamic):Dynamic;
	/**
		Return this line's `~matplotlib.transforms.TransformedPath`.
	**/
	public function _get_transformed_path():Dynamic;
	/**
		Return whether x is sorted in ascending order.
	**/
	public function _is_sorted(x:Dynamic):Dynamic;
	static public var _lineStyles : Dynamic;
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
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_markercolor(name:Dynamic, has_rcdefault:Dynamic, val:Dynamic):Dynamic;
	/**
		Put a TransformedPath instance at self._transformed_path;
		all invalidation of the transform is then handled by the
		TransformedPath instance.
	**/
	public function _transform_path(?subslice:Dynamic):Dynamic;
	/**
		Update the signature of the set function to list all properties
		as keyword arguments.
		
		Property aliases are not listed in the signature for brevity, but
		are still accepted as keyword arguments.
	**/
	static public function _update_set_signature_and_docstring():Dynamic;
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
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether *mouseevent* occurred on the line.
		
		An event is deemed to have occurred "on" the line if it is less
		than ``self.pickradius`` (default: 5 points) away from it.  Use
		`~.Line2D.get_pickradius` or `~.Line2D.set_pickradius` to get or set
		the pick radius.
		
		Parameters
		----------
		mouseevent : `matplotlib.backend_bases.MouseEvent`
		
		Returns
		-------
		contains : bool
		    Whether any values are within the radius.
		details : dict
		    A dictionary ``{'ind': pointlist}``, where *pointlist* is a
		    list of points of the line that are within the pickradius around
		    the event position.
		
		    TODO: sort returned indices by distance
	**/
	public function contains(mouseevent:Dynamic):Bool;
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
	static public var drawStyleKeys : Dynamic;
	static public var drawStyles : Dynamic;
	static public var fillStyles : Dynamic;
	static public var filled_markers : Dynamic;
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
		Alias for `get_antialiased`.
	**/
	public function get_aa():Dynamic;
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
		Return whether antialiased rendering is used.
	**/
	public function get_antialiased():Dynamic;
	/**
		Alias for `get_color`.
	**/
	public function get_c():Dynamic;
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
		Return the line color.
		
		See also `~.Line2D.set_color`.
	**/
	public function get_color():Dynamic;
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
		Return the `.CapStyle` for dashed lines.
		
		See also `~.Line2D.set_dash_capstyle`.
	**/
	public function get_dash_capstyle():Dynamic;
	/**
		Return the `.JoinStyle` for dashed lines.
		
		See also `~.Line2D.set_dash_joinstyle`.
	**/
	public function get_dash_joinstyle():Dynamic;
	/**
		Return the line data as an ``(xdata, ydata)`` pair.
		
		If *orig* is *True*, return the original data.
	**/
	public function get_data(?orig:Dynamic):Dynamic;
	/**
		Return the drawstyle.
		
		See also `~.Line2D.set_drawstyle`.
	**/
	public function get_drawstyle():Dynamic;
	/**
		Alias for `get_drawstyle`.
	**/
	public function get_ds():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the marker fill style.
		
		See also `~.Line2D.set_fillstyle`.
	**/
	public function get_fillstyle():Dynamic;
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
		Return the linestyle.
		
		See also `~.Line2D.set_linestyle`.
	**/
	public function get_linestyle():Dynamic;
	/**
		Return the linewidth in points.
		
		See also `~.Line2D.set_linewidth`.
	**/
	public function get_linewidth():Dynamic;
	/**
		Alias for `get_linestyle`.
	**/
	public function get_ls():Dynamic;
	/**
		Alias for `get_linewidth`.
	**/
	public function get_lw():Dynamic;
	/**
		Return the line marker.
		
		See also `~.Line2D.set_marker`.
	**/
	public function get_marker():Dynamic;
	/**
		Return the marker edge color.
		
		See also `~.Line2D.set_markeredgecolor`.
	**/
	public function get_markeredgecolor():Dynamic;
	/**
		Return the marker edge width in points.
		
		See also `~.Line2D.set_markeredgewidth`.
	**/
	public function get_markeredgewidth():Dynamic;
	/**
		Return the marker face color.
		
		See also `~.Line2D.set_markerfacecolor`.
	**/
	public function get_markerfacecolor():Dynamic;
	/**
		Return the alternate marker face color.
		
		See also `~.Line2D.set_markerfacecoloralt`.
	**/
	public function get_markerfacecoloralt():Dynamic;
	/**
		Return the marker size in points.
		
		See also `~.Line2D.set_markersize`.
	**/
	public function get_markersize():Dynamic;
	/**
		Return the markevery setting for marker subsampling.
		
		See also `~.Line2D.set_markevery`.
	**/
	public function get_markevery():Dynamic;
	/**
		Alias for `get_markeredgecolor`.
	**/
	public function get_mec():Dynamic;
	/**
		Alias for `get_markeredgewidth`.
	**/
	public function get_mew():Dynamic;
	/**
		Alias for `get_markerfacecolor`.
	**/
	public function get_mfc():Dynamic;
	/**
		Alias for `get_markerfacecoloralt`.
	**/
	public function get_mfcalt():Dynamic;
	/**
		Alias for `get_markersize`.
	**/
	public function get_ms():Dynamic;
	/**
		Return the `~matplotlib.path.Path` associated with this line.
	**/
	public function get_path():Dynamic;
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
		Return the pick radius used for containment tests.
		
		See `.contains` for more details.
	**/
	public function get_pickradius():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
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
		Return the `.CapStyle` for solid lines.
		
		See also `~.Line2D.set_solid_capstyle`.
	**/
	public function get_solid_capstyle():Dynamic;
	/**
		Return the `.JoinStyle` for solid lines.
		
		See also `~.Line2D.set_solid_joinstyle`.
	**/
	public function get_solid_joinstyle():Dynamic;
	/**
		Like `.Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` subclass
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		`.Bbox`
		    The enclosing bounding box (in figure pixel coordinates).
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
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
	public function get_window_extent(renderer:Dynamic):Dynamic;
	/**
		Return the xdata.
		
		If *orig* is *True*, return the original data, else the
		processed data.
	**/
	public function get_xdata(?orig:Dynamic):Dynamic;
	/**
		Return the *xy* data as a Nx2 numpy array.
	**/
	public function get_xydata():Dynamic;
	/**
		Return the ydata.
		
		If *orig* is *True*, return the original data, else the
		processed data.
	**/
	public function get_ydata(?orig:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return whether units are set on any axis.
	**/
	public function have_units():Dynamic;
	/**
		Return whether line has a dashed linestyle.
		
		A custom linestyle is assumed to be dashed, we do not inspect the
		``onoffseq`` directly.
		
		See also `~.Line2D.set_linestyle`.
	**/
	public function is_dashed():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	static public var lineStyles : Dynamic;
	static public var markers : Dynamic;
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
		Return the pick radius used for containment tests.
		
		See `.contains` for more details.
	**/
	public var pickradius : Dynamic;
	/**
		Return a dictionary of all the properties of the artist.
	**/
	public function properties():Dynamic;
	public function recache(?always:Dynamic):Dynamic;
	public function recache_always():Dynamic;
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
		Set multiple properties at once.
		
		Supported properties are
		
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
		    transform: `.Transform`
		    url: str
		    visible: bool
		    xdata: 1D array
		    ydata: 1D array
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?antialiased:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?color:Dynamic, ?dash_capstyle:Dynamic, ?dash_joinstyle:Dynamic, ?dashes:Dynamic, ?data:Dynamic, ?drawstyle:Dynamic, ?fillstyle:Dynamic, ?gid:Dynamic, ?in_layout:Dynamic, ?label:Dynamic, ?linestyle:Dynamic, ?linewidth:Dynamic, ?marker:Dynamic, ?markeredgecolor:Dynamic, ?markeredgewidth:Dynamic, ?markerfacecolor:Dynamic, ?markerfacecoloralt:Dynamic, ?markersize:Dynamic, ?markevery:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?pickradius:Dynamic, ?rasterized:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?solid_capstyle:Dynamic, ?solid_joinstyle:Dynamic, ?transform:Dynamic, ?url:Dynamic, ?visible:Dynamic, ?xdata:Dynamic, ?ydata:Dynamic, ?zorder:Dynamic):Dynamic;
	/**
		Alias for `set_antialiased`.
	**/
	public function set_aa(b:Dynamic):Dynamic;
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
		Set whether to use antialiased rendering.
		
		Parameters
		----------
		b : bool
	**/
	public function set_antialiased(b:Dynamic):Dynamic;
	/**
		Alias for `set_color`.
	**/
	public function set_c(color:Dynamic):Dynamic;
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
		Set the color of the line.
		
		Parameters
		----------
		color : color
	**/
	public function set_color(color:Dynamic):Dynamic;
	/**
		How to draw the end caps if the line is `~Line2D.is_dashed`.
		
		Parameters
		----------
		s : `.CapStyle` or {'butt', 'projecting', 'round'}
	**/
	public function set_dash_capstyle(s:Dynamic):Dynamic;
	/**
		How to join segments of the line if it `~Line2D.is_dashed`.
		
		Parameters
		----------
		s : `.JoinStyle` or {'miter', 'round', 'bevel'}
	**/
	public function set_dash_joinstyle(s:Dynamic):Dynamic;
	/**
		Set the dash sequence.
		
		The dash sequence is a sequence of floats of even length describing
		the length of dashes and spaces in points.
		
		For example, (5, 2, 1, 2) describes a sequence of 5 point and 1 point
		dashes separated by 2 point spaces.
		
		Parameters
		----------
		seq : sequence of floats (on/off ink in points) or (None, None)
		    If *seq* is empty or ``(None, None)``, the linestyle will be set
		    to solid.
	**/
	public function set_dashes(seq:Dynamic):Dynamic;
	/**
		Set the x and y data.
		
		Parameters
		----------
		*args : (2, N) array or two 1D arrays
	**/
	public function set_data(?args:python.VarArgs<Dynamic>):Dynamic;
	/**
		Set the drawstyle of the plot.
		
		The drawstyle determines how the points are connected.
		
		Parameters
		----------
		drawstyle : {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		    For 'default', the points are connected with straight lines.
		
		    The steps variants connect the points with step-like lines,
		    i.e. horizontal lines with vertical steps. They differ in the
		    location of the step:
		
		    - 'steps-pre': The step is at the beginning of the line segment,
		      i.e. the line will be at the y-value of point to the right.
		    - 'steps-mid': The step is halfway between the points.
		    - 'steps-post: The step is at the end of the line segment,
		      i.e. the line will be at the y-value of the point to the left.
		    - 'steps' is equal to 'steps-pre' and is maintained for
		      backward-compatibility.
		
		    For examples see :doc:`/gallery/lines_bars_and_markers/step_demo`.
	**/
	public function set_drawstyle(drawstyle:Dynamic):Dynamic;
	/**
		Alias for `set_drawstyle`.
	**/
	public function set_ds(drawstyle:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the marker fill style.
		
		Parameters
		----------
		fs : {'full', 'left', 'right', 'bottom', 'top', 'none'}
		    Possible values:
		
		    - 'full': Fill the whole marker with the *markerfacecolor*.
		    - 'left', 'right', 'bottom', 'top': Fill the marker half at
		      the given side with the *markerfacecolor*. The other
		      half of the marker is filled with *markerfacecoloralt*.
		    - 'none': No filling.
		
		    For examples see :ref:`marker_fill_styles`.
	**/
	public function set_fillstyle(fs:Dynamic):Dynamic;
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
		Set the linestyle of the line.
		
		Parameters
		----------
		ls : {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    Possible values:
		
		    - A string:
		
		      ==========================================  =================
		      linestyle                                   description
		      ==========================================  =================
		      ``'-'`` or ``'solid'``                      solid line
		      ``'--'`` or  ``'dashed'``                   dashed line
		      ``'-.'`` or  ``'dashdot'``                  dash-dotted line
		      ``':'`` or ``'dotted'``                     dotted line
		      ``'none'``, ``'None'``, ``' '``, or ``''``  draw nothing
		      ==========================================  =================
		
		    - Alternatively a dash tuple of the following form can be
		      provided::
		
		          (offset, onoffseq)
		
		      where ``onoffseq`` is an even length tuple of on and off ink
		      in points. See also :meth:`set_dashes`.
		
		    For examples see :doc:`/gallery/lines_bars_and_markers/linestyles`.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Set the line width in points.
		
		Parameters
		----------
		w : float
		    Line width, in points.
	**/
	public function set_linewidth(w:Dynamic):Dynamic;
	/**
		Alias for `set_linestyle`.
	**/
	public function set_ls(ls:Dynamic):Dynamic;
	/**
		Alias for `set_linewidth`.
	**/
	public function set_lw(w:Dynamic):Dynamic;
	/**
		Set the line marker.
		
		Parameters
		----------
		marker : marker style string, `~.path.Path` or `~.markers.MarkerStyle`
		    See `~matplotlib.markers` for full description of possible
		    arguments.
	**/
	public function set_marker(marker:Dynamic):Dynamic;
	/**
		Set the marker edge color.
		
		Parameters
		----------
		ec : color
	**/
	public function set_markeredgecolor(ec:Dynamic):Dynamic;
	/**
		Set the marker edge width in points.
		
		Parameters
		----------
		ew : float
		     Marker edge width, in points.
	**/
	public function set_markeredgewidth(ew:Dynamic):Dynamic;
	/**
		Set the marker face color.
		
		Parameters
		----------
		fc : color
	**/
	public function set_markerfacecolor(fc:Dynamic):Dynamic;
	/**
		Set the alternate marker face color.
		
		Parameters
		----------
		fc : color
	**/
	public function set_markerfacecoloralt(fc:Dynamic):Dynamic;
	/**
		Set the marker size in points.
		
		Parameters
		----------
		sz : float
		     Marker size, in points.
	**/
	public function set_markersize(sz:Dynamic):Dynamic;
	/**
		Set the markevery property to subsample the plot when using markers.
		
		e.g., if ``every=5``, every 5-th marker will be plotted.
		
		Parameters
		----------
		every : None or int or (int, int) or slice or list[int] or float or (float, float) or list[bool]
		    Which markers to plot.
		
		    - ``every=None``: every point will be plotted.
		    - ``every=N``: every N-th marker will be plotted starting with
		      marker 0.
		    - ``every=(start, N)``: every N-th marker, starting at index
		      *start*, will be plotted.
		    - ``every=slice(start, end, N)``: every N-th marker, starting at
		      index *start*, up to but not including index *end*, will be
		      plotted.
		    - ``every=[i, j, m, ...]``: only markers at the given indices
		      will be plotted.
		    - ``every=[True, False, True, ...]``: only positions that are True
		      will be plotted. The list must have the same length as the data
		      points.
		    - ``every=0.1``, (i.e. a float): markers will be spaced at
		      approximately equal visual distances along the line; the distance
		      along the line between markers is determined by multiplying the
		      display-coordinate distance of the axes bounding-box diagonal
		      by the value of *every*.
		    - ``every=(0.5, 0.1)`` (i.e. a length-2 tuple of float): similar
		      to ``every=0.1`` but the first marker will be offset along the
		      line by 0.5 multiplied by the
		      display-coordinate-diagonal-distance along the line.
		
		    For examples see
		    :doc:`/gallery/lines_bars_and_markers/markevery_demo`.
		
		Notes
		-----
		Setting *markevery* will still only draw markers at actual data points.
		While the float argument form aims for uniform visual spacing, it has
		to coerce from the ideal spacing to the nearest available data point.
		Depending on the number and distribution of data points, the result
		may still not look evenly spaced.
		
		When using a start offset to specify the first marker, the offset will
		be from the first data point which may be different from the first
		the visible data point if the plot is zoomed in.
		
		If zooming in on a plot when using float arguments then the actual
		data points that have markers will change because the distance between
		markers is always determined from the display-coordinates
		axes-bounding-box-diagonal regardless of the actual axes data limits.
	**/
	public function set_markevery(every:Dynamic):Dynamic;
	/**
		Alias for `set_markeredgecolor`.
	**/
	public function set_mec(ec:Dynamic):Dynamic;
	/**
		Alias for `set_markeredgewidth`.
	**/
	public function set_mew(ew:Dynamic):Dynamic;
	/**
		Alias for `set_markerfacecolor`.
	**/
	public function set_mfc(fc:Dynamic):Dynamic;
	/**
		Alias for `set_markerfacecoloralt`.
	**/
	public function set_mfcalt(fc:Dynamic):Dynamic;
	/**
		Alias for `set_markersize`.
	**/
	public function set_ms(sz:Dynamic):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Set the event picker details for the line.
		
		Parameters
		----------
		p : float or callable[[Artist, Event], tuple[bool, dict]]
		    If a float, it is used as the pick radius in points.
	**/
	public function set_picker(p:Dynamic):Dynamic;
	/**
		Set the pick radius used for containment tests.
		
		See `.contains` for more details.
		
		Parameters
		----------
		d : float
		    Pick radius, in points.
	**/
	public function set_pickradius(d:Dynamic):Dynamic;
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
		How to draw the end caps if the line is solid (not `~Line2D.is_dashed`)
		
		Parameters
		----------
		s : `.CapStyle` or {'butt', 'projecting', 'round'}
	**/
	public function set_solid_capstyle(s:Dynamic):Dynamic;
	/**
		How to join segments if the line is solid (not `~Line2D.is_dashed`).
		
		Parameters
		----------
		s : `.JoinStyle` or {'miter', 'round', 'bevel'}
	**/
	public function set_solid_joinstyle(s:Dynamic):Dynamic;
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
		Set the data array for x.
		
		Parameters
		----------
		x : 1D array
	**/
	public function set_xdata(x:Dynamic):Dynamic;
	/**
		Set the data array for y.
		
		Parameters
		----------
		y : 1D array
	**/
	public function set_ydata(y:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
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
		Update this artist's properties from the dict *props*.
		
		Parameters
		----------
		props : dict
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from *other* to self.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	static public var zorder : Dynamic;
}