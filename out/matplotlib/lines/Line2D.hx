/* This file is generated, do not edit! */
package matplotlib.lines;
@:pythonImport("matplotlib.lines", "Line2D") extern class Line2D {
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
		Create a :class:`~matplotlib.lines.Line2D` instance with *x*
		and *y* data in sequences *xdata*, *ydata*.
		
		The kwargs are :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
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
	public function ___init__(xdata:Dynamic, ydata:Dynamic, ?linewidth:Dynamic, ?linestyle:Dynamic, ?color:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?markeredgewidth:Dynamic, ?markeredgecolor:Dynamic, ?markerfacecolor:Dynamic, ?markerfacecoloralt:Dynamic, ?fillstyle:Dynamic, ?antialiased:Dynamic, ?dash_capstyle:Dynamic, ?solid_capstyle:Dynamic, ?dash_joinstyle:Dynamic, ?solid_joinstyle:Dynamic, ?pickradius:Dynamic, ?drawstyle:Dynamic, ?markevery:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a :class:`~matplotlib.lines.Line2D` instance with *x*
		and *y* data in sequences *xdata*, *ydata*.
		
		The kwargs are :class:`~matplotlib.lines.Line2D` properties:
		
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float
		  animated: bool
		  antialiased or aa: bool
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color or c: color
		  contains: callable
		  dash_capstyle: {'butt', 'round', 'projecting'}
		  dash_joinstyle: {'miter', 'round', 'bevel'}
		  dashes: sequence of floats (on/off ink in points) or (None, None)
		  drawstyle or ds: {'default', 'steps', 'steps-pre', 'steps-mid', 'steps-post'}, default: 'default'
		  figure: `.Figure`
		  fillstyle: {'full', 'left', 'right', 'bottom', 'top', 'none'}
		  gid: str
		  in_layout: bool
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float
		  marker: marker style
		  markeredgecolor or mec: color
		  markeredgewidth or mew: float
		  markerfacecolor or mfc: color
		  markerfacecoloralt or mfcalt: color
		  markersize or ms: float
		  markevery: None or int or (int, int) or slice or List[int] or float or (float, float)
		  path_effects: `.AbstractPathEffect`
		  picker: float or callable[[Artist, Event], Tuple[bool, dict]]
		  pickradius: float
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  solid_capstyle: {'butt', 'round', 'projecting'}
		  solid_joinstyle: {'miter', 'round', 'bevel'}
		  transform: `matplotlib.transforms.Transform`
		  url: str
		  visible: bool
		  xdata: 1D array
		  ydata: 1D array
		  zorder: float
		
		See :meth:`set_linestyle` for a description of the line styles,
		:meth:`set_marker` for a description of the markers, and
		:meth:`set_drawstyle` for a description of the draw styles.
	**/
	public function new(xdata:Dynamic, ydata:Dynamic, ?linewidth:Dynamic, ?linestyle:Dynamic, ?color:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?markeredgewidth:Dynamic, ?markeredgecolor:Dynamic, ?markerfacecolor:Dynamic, ?markerfacecoloralt:Dynamic, ?fillstyle:Dynamic, ?antialiased:Dynamic, ?dash_capstyle:Dynamic, ?solid_capstyle:Dynamic, ?dash_joinstyle:Dynamic, ?solid_joinstyle:Dynamic, ?pickradius:Dynamic, ?drawstyle:Dynamic, ?markevery:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _alias_map : Dynamic;
	static public var _drawStyles_l : Dynamic;
	static public var _drawStyles_s : Dynamic;
	public function _get_markerfacecolor(?alt:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.TransformedPath` instance
		of this line.
	**/
	public function _get_transformed_path():Dynamic;
	/**
		Return whether x is sorted in ascending order.
	**/
	public function _is_sorted(x:Dynamic):Dynamic;
	static public var _lineStyles : Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Split drawstyle from linestyle string.
		
		If *ls* is only a drawstyle default to returning a linestyle
		of '-'.
		
		Parameters
		----------
		ls : str
		    The linestyle to be processed
		
		Returns
		-------
		ret_ds : str or None
		    If the linestyle string does not contain a drawstyle prefix
		    return None, otherwise return it.
		
		ls : str
		    The linestyle with the drawstyle (if any) stripped.
	**/
	public function _split_drawstyle_linestyle(ls:Dynamic):Dynamic;
	/**
		Puts a TransformedPath instance at self._transformed_path;
		all invalidation of the transform is then handled by the
		TransformedPath instance.
	**/
	public function _transform_path(?subslice:Dynamic):Dynamic;
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
		oid : int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Int;
	public var aname : Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether the mouse event occurred on the line.  The pick
		radius determines the precision of the location test (usually
		within five points of the value).  Use
		:meth:`~matplotlib.lines.Line2D.get_pickradius` or
		:meth:`~matplotlib.lines.Line2D.set_pickradius` to view or
		modify it.
		
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
		Draw the Artist using the given renderer.
		
		This method will be overridden in the Artist subclasses. Typically,
		it is implemented to not have any effect if the Artist is not visible
		(`.Artist.get_visible` is *False*).
		
		Parameters
		----------
		renderer : `.RendererBase` subclass.
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
		artists : list of `.Artist`
	**/
	public function findobj(?match:Dynamic, ?include_self:Dynamic):Dynamic;
	/**
		Return a string representation of *data*.
		
		.. note::
		    This method is intended to be overridden by artist subclasses.
		    As an end-user of Matplotlib you will most likely not call this
		    method yourself.
		
		The default implementation converts ints and floats and arrays of ints
		and floats into a comma-separated string enclosed in square brackets.
		
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
		backends
	**/
	public function get_alpha():Dynamic;
	/**
		Return the animated state.
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
		Return the custom contains function of the artist if set, or *None*.
		
		See Also
		--------
		set_contains
	**/
	public function get_contains():Dynamic;
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
		Return the cap style for dashed lines.
		
		See also `~.Line2D.set_dash_capstyle`.
	**/
	public function get_dash_capstyle():Dynamic;
	/**
		Return the join style for dashed lines.
		
		See also `~.Line2D.set_dash_joinstyle`.
	**/
	public function get_dash_joinstyle():Dynamic;
	/**
		Return the xdata, ydata.
		
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
		Return the :class:`~matplotlib.path.Path` object associated
		with this line.
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
		Returns the sketch parameters for the artist.
		
		Returns
		-------
		sketch_params : tuple or None
		
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
		Returns the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	/**
		Return the cap style for solid lines.
		
		See also `~.Line2D.set_solid_capstyle`.
	**/
	public function get_solid_capstyle():Dynamic;
	/**
		Return the join style for solid lines.
		
		See also `~.Line2D.set_solid_joinstyle`.
	**/
	public function get_solid_joinstyle():Dynamic;
	/**
		Like `Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		bbox : `.BBox`
		    The enclosing bounding box (in figure pixel co-ordinates).
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
		Get the axes bounding box in display space.
		
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
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether line has a dashed linestyle.
		
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
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Set the color of the line.
		
		Parameters
		----------
		color : color
	**/
	public function set_color(color:Dynamic):Dynamic;
	/**
		Define a custom contains test for the artist.
		
		The provided callable replaces the default `.contains` method
		of the artist.
		
		Parameters
		----------
		picker : callable
		    A custom picker function to evaluate if an event is within the
		    artist. The function must have the signature::
		
		        def contains(artist: Artist, event: MouseEvent) -> bool, dict
		
		    that returns:
		
		    - a bool indicating if the event is within the artist
		    - a dict of additional information. The dict should at least
		      return the same information as the default ``contains()``
		      implementation of the respective artist, but may provide
		      additional information.
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the cap style for dashed lines.
		
		Parameters
		----------
		s : {'butt', 'round', 'projecting'}
	**/
	public function set_dash_capstyle(s:Dynamic):Dynamic;
	/**
		Set the join style for dashed lines.
		
		Parameters
		----------
		s : {'miter', 'round', 'bevel'}
		    For examples see :doc:`/gallery/lines_bars_and_markers/joinstyle`.
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
		
		    For examples see
		    :doc:`/gallery/lines_bars_and_markers/marker_fillstyle_reference`.
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
		
		      ===============================   =================
		      Linestyle                         Description
		      ===============================   =================
		      ``'-'`` or ``'solid'``            solid line
		      ``'--'`` or  ``'dashed'``         dashed line
		      ``'-.'`` or  ``'dashdot'``        dash-dotted line
		      ``':'`` or ``'dotted'``           dotted line
		      ``'None'`` or ``' '`` or ``''``   draw nothing
		      ===============================   =================
		
		      Optionally, the string may be preceded by a drawstyle, e.g.
		      ``'steps--'``. See :meth:`set_drawstyle` for details.
		
		    - Alternatively a dash tuple of the following form can be
		      provided::
		
		          (offset, onoffseq)
		
		      where ``onoffseq`` is an even length tuple of on and off ink
		      in points. See also :meth:`set_dashes`.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Set the line width in points.
		
		Parameters
		----------
		w : float
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
		marker : marker style
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
	**/
	public function set_markersize(sz:Dynamic):Dynamic;
	/**
		Set the markevery property to subsample the plot when using markers.
		
		e.g., if `every=5`, every 5-th marker will be plotted.
		
		Parameters
		----------
		every : None or int or (int, int) or slice or List[int] or float or (float, float)
		    Which markers to plot.
		
		    - every=None, every point will be plotted.
		    - every=N, every N-th marker will be plotted starting with
		      marker 0.
		    - every=(start, N), every N-th marker, starting at point
		      start, will be plotted.
		    - every=slice(start, end, N), every N-th marker, starting at
		      point start, up to but not including point end, will be plotted.
		    - every=[i, j, m, n], only markers at points i, j, m, and n
		      will be plotted.
		    - every=0.1, (i.e. a float) then markers will be spaced at
		      approximately equal distances along the line; the distance
		      along the line between markers is determined by multiplying the
		      display-coordinate distance of the axes bounding-box diagonal
		      by the value of every.
		    - every=(0.5, 0.1) (i.e. a length-2 tuple of float), the same
		      functionality as every=0.1 is exhibited but the first marker will
		      be 0.5 multiplied by the display-coordinate-diagonal-distance
		      along the line.
		
		Notes
		-----
		Setting the markevery property will only show markers at actual data
		points.  When using float arguments to set the markevery property
		on irregularly spaced data, the markers will likely not appear evenly
		spaced because the actual data points do not coincide with the
		theoretical spacing between markers.
		
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
		Sets the event picker details for the line.
		
		Parameters
		----------
		p : float or callable[[Artist, Event], Tuple[bool, dict]]
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
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
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
		Set the cap style for solid lines.
		
		Parameters
		----------
		s : {'butt', 'round', 'projecting'}
	**/
	public function set_solid_capstyle(s:Dynamic):Dynamic;
	/**
		Set the join style for solid lines.
		
		Parameters
		----------
		s : {'miter', 'round', 'bevel'}
		    For examples see :doc:`/gallery/lines_bars_and_markers/joinstyle`.
	**/
	public function set_solid_joinstyle(s:Dynamic):Dynamic;
	/**
		Set the Transformation instance used by this artist.
		
		Parameters
		----------
		t : `matplotlib.transforms.Transform`
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
		
		This attribute cannot be assigned to; however, the ``x`` and ``y``
		lists can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Copy properties from other to self.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	public var verticalOffset : Dynamic;
	static public var zorder : Dynamic;
}