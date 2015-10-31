/* This file is generated, do not edit! */
package matplotlib.lines;
@:pythonImport("matplotlib.lines", "Line2D") extern class Line2D {
	static public function __class__(args:haxe.extern.Rest<Dynamic>):Dynamic;
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
		
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  antialiased or aa: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color or c: any matplotlib color         
		  contains: a callable function         
		  dash_capstyle: ['butt' | 'round' | 'projecting']         
		  dash_joinstyle: ['miter' | 'round' | 'bevel']         
		  dashes: sequence of on/off ink in points         
		  drawstyle: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |                   'steps-post']         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fillstyle: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']         
		  gid: an id string         
		  label: string or anything printable with '%s' conversion.         
		  linestyle or ls: ['solid' | 'dashed', 'dashdot', 'dotted' |                    (offset, on-off-dash-seq) |                    ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                    ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  marker: :mod:`A valid marker style <matplotlib.markers>`
		  markeredgecolor or mec: any matplotlib color         
		  markeredgewidth or mew: float value in points         
		  markerfacecolor or mfc: any matplotlib color         
		  markerfacecoloralt or mfcalt: any matplotlib color         
		  markersize or ms: float         
		  markevery: [None | int | length-2 tuple of int | slice |         list/array of int | float | length-2 tuple of float]
		  path_effects: unknown
		  picker: float distance in points or callable pick function         ``fn(artist, event)``         
		  pickradius: float distance in points         
		  rasterized: [True | False | None]         
		  sketch_params: unknown
		  snap: unknown
		  solid_capstyle: ['butt' | 'round' |  'projecting']         
		  solid_joinstyle: ['miter' | 'round' | 'bevel']         
		  transform: a :class:`matplotlib.transforms.Transform` instance         
		  url: a url string         
		  visible: [True | False]         
		  xdata: 1D array         
		  ydata: 1D array         
		  zorder: any number         
		
		See :meth:`set_linestyle` for a decription of the line styles,
		:meth:`set_marker` for a description of the markers, and
		:meth:`set_drawstyle` for a description of the draw styles.
	**/
	@:native("__init__")
	public function ___init__(xdata:Dynamic, ydata:Dynamic, ?linewidth:Dynamic, ?linestyle:Dynamic, ?color:Dynamic, ?marker:Dynamic, ?markersize:Dynamic, ?markeredgewidth:Dynamic, ?markeredgecolor:Dynamic, ?markerfacecolor:Dynamic, ?markerfacecoloralt:Dynamic, ?fillstyle:Dynamic, ?antialiased:Dynamic, ?dash_capstyle:Dynamic, ?solid_capstyle:Dynamic, ?dash_joinstyle:Dynamic, ?solid_joinstyle:Dynamic, ?pickradius:Dynamic, ?drawstyle:Dynamic, ?markevery:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __new__(args:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	public var __weakref__ : Dynamic;
	static public var _drawStyles_l : Dynamic;
	static public var _drawStyles_s : Dynamic;
	public function _draw_dash_dot(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_dashed(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_dotted(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_lines(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_solid(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_steps_mid(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_steps_post(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _draw_steps_pre(renderer:Dynamic, gc:Dynamic, path:Dynamic, trans:Dynamic):Dynamic;
	public function _get_markerfacecolor(?alt:Dynamic):Dynamic;
	public function _get_rgb_face(?alt:Dynamic):Dynamic;
	public function _get_rgba_face(?alt:Dynamic):Dynamic;
	public function _get_rgba_ln_color(?alt:Dynamic):Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.TransformedPath` instance
		of this line.
	**/
	public function _get_transformed_path():Dynamic;
	/**
		return True if x is sorted in ascending order
	**/
	public function _is_sorted(x:Dynamic):Dynamic;
	static public var _lineStyles : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Puts a TransformedPath instance at self._transformed_path;
		all invalidation of the transform is then handled by the
		TransformedPath instance.
	**/
	public function _transform_path(?subslice:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		The :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
	**/
	public var axes : Dynamic;
	/**
		Test whether the mouse event occurred on the line.  The pick
		radius determines the precision of the location test (usually
		within five points of the value).  Use
		:meth:`~matplotlib.lines.Line2D.get_pickradius` or
		:meth:`~matplotlib.lines.Line2D.set_pickradius` to view or
		modify it.
		
		Returns *True* if any values are within the radius along with
		``{'ind': pointlist}``, where *pointlist* is the set of points
		within the radius.
		
		TODO: sort returned indices by distance
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
		draw the Line with `renderer` unless visibility is False
	**/
	public function draw(renderer:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	static public var drawStyleKeys : Dynamic;
	static public var drawStyles : Dynamic;
	static public var fillStyles : Dynamic;
	static public var filled_markers : Dynamic;
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
		alias for get_antialiased
	**/
	public function get_aa():Dynamic;
	/**
		return filter function to be used for agg filter
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
	public function get_antialiased():Dynamic;
	/**
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
	**/
	public function get_axes():Dynamic;
	/**
		alias for get_color
	**/
	public function get_c():Dynamic;
	/**
		Return a list of the child :class:`Artist`s this
		:class:`Artist` contains.
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
	public function get_color():Dynamic;
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Get the cursor data for a given event.
	**/
	public function get_cursor_data(event:Dynamic):Dynamic;
	/**
		Get the cap style for dashed linestyles
	**/
	public function get_dash_capstyle():Dynamic;
	/**
		Get the join style for dashed linestyles
	**/
	public function get_dash_joinstyle():Dynamic;
	/**
		Return the xdata, ydata.
		
		If *orig* is *True*, return the original data.
	**/
	public function get_data(?orig:Dynamic):Dynamic;
	public function get_drawstyle():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		return the marker fillstyle
	**/
	public function get_fillstyle():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	public function get_linestyle():Dynamic;
	public function get_linewidth():Dynamic;
	/**
		alias for get_linestyle
	**/
	public function get_ls():Dynamic;
	/**
		alias for get_linewidth
	**/
	public function get_lw():Dynamic;
	public function get_marker():Dynamic;
	public function get_markeredgecolor():Dynamic;
	public function get_markeredgewidth():Dynamic;
	public function get_markerfacecolor():Dynamic;
	public function get_markerfacecoloralt():Dynamic;
	public function get_markersize():Dynamic;
	/**
		return the markevery setting
	**/
	public function get_markevery():Dynamic;
	/**
		alias for get_markeredgecolor
	**/
	public function get_mec():Dynamic;
	/**
		alias for get_markeredgewidth
	**/
	public function get_mew():Dynamic;
	/**
		alias for get_markerfacecolor
	**/
	public function get_mfc():Dynamic;
	/**
		alias for get_markerfacecoloralt
	**/
	public function get_mfcalt(?alt:Dynamic):Dynamic;
	/**
		alias for get_markersize
	**/
	public function get_ms():Dynamic;
	/**
		Return the :class:`~matplotlib.path.Path` object associated
		with this line.
	**/
	public function get_path():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	/**
		return the pick radius used for containment tests
	**/
	public function get_pickradius():Dynamic;
	/**
		return True if the artist is to be rasterized
	**/
	public function get_rasterized():Dynamic;
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
		Get the cap style for solid linestyles
	**/
	public function get_solid_capstyle():Dynamic;
	/**
		Get the join style for solid linestyles
	**/
	public function get_solid_joinstyle():Dynamic;
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
		Returns the url
	**/
	public function get_url():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Get the axes bounding box in display space.
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
		Return the :class:`Artist`'s zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		return True if line is dashstyle
	**/
	public function is_dashed():Dynamic;
	/**
		Returns True if the artist is assigned to a
		:class:`~matplotlib.figure.Figure`.
	**/
	public function is_figure_set():Dynamic;
	/**
		Returns *True* if :class:`Artist` has a transform explicitly
		set.
	**/
	public function is_transform_set():Dynamic;
	static public var lineStyles : Dynamic;
	static public var markers : Dynamic;
	public var mouseover : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		call signature::
		
		  pick(mouseevent)
		
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
	public function recache(?always:Dynamic):Dynamic;
	public function recache_always():Dynamic;
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
		A property batch setter. Pass *kwargs* to set properties.
		Will handle property name collisions (e.g., if both
		'color' and 'facecolor' are specified, the property
		with higher priority gets set last).
	**/
	public function set(kwargs:Dynamic):Dynamic;
	/**
		alias for set_antialiased
	**/
	public function set_aa(val:Dynamic):Dynamic;
	/**
		set agg_filter fuction.
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on
		all backends.
		
		ACCEPTS: float (0.0 transparent through 1.0 opaque)
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		True if line should be drawin with antialiased rendering
		
		ACCEPTS: [True | False]
	**/
	public function set_antialiased(b:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		This has been deprecated in mpl 1.5, please use the
		axes property.  Will be removed in 1.7 or 2.0.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		alias for set_color
	**/
	public function set_c(val:Dynamic):Dynamic;
	/**
		Set the artist's clip :class:`~matplotlib.transforms.Bbox`.
		
		ACCEPTS: a :class:`matplotlib.transforms.Bbox` instance
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether artist uses clipping.
		
		When False artists will be visible out side of the axes which
		can lead to unexpected results.
		
		ACCEPTS: [True | False]
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		  * a :class:`~matplotlib.patches.Patch` (or subclass) instance
		
		  * a :class:`~matplotlib.path.Path` instance, in which case
		     an optional :class:`~matplotlib.transforms.Transform`
		     instance may be provided, which will be applied to the
		     path before using it for clipping.
		
		  * *None*, to remove the clipping path
		
		For efficiency, if the path happens to be an axis-aligned
		rectangle, this method will set the clipping box to the
		corresponding rectangle and set the clipping path to *None*.
		
		ACCEPTS: [ (:class:`~matplotlib.path.Path`,
		:class:`~matplotlib.transforms.Transform`) |
		:class:`~matplotlib.patches.Patch` | None ]
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the color of the line
		
		ACCEPTS: any matplotlib color
	**/
	public function set_color(color:Dynamic):Dynamic;
	/**
		Replace the contains test used by this artist. The new picker
		should be a callable function which determines whether the
		artist is hit by the mouse event::
		
		    hit, props = picker(artist, mouseevent)
		
		If the mouse event is over the artist, return *hit* = *True*
		and *props* is a dictionary of properties you want returned
		with the contains test.
		
		ACCEPTS: a callable function
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the cap style for dashed linestyles
		
		ACCEPTS: ['butt' | 'round' | 'projecting']
	**/
	public function set_dash_capstyle(s:Dynamic):Dynamic;
	/**
		Set the join style for dashed linestyles
		ACCEPTS: ['miter' | 'round' | 'bevel']
	**/
	public function set_dash_joinstyle(s:Dynamic):Dynamic;
	/**
		Set the dash sequence, sequence of dashes with on off ink in
		points.  If seq is empty or if seq = (None, None), the
		linestyle will be set to solid.
		
		ACCEPTS: sequence of on/off ink in points
	**/
	public function set_dashes(seq:Dynamic):Dynamic;
	/**
		Set the x and y data
		
		ACCEPTS: 2D array (rows are x, y) or two 1D arrays
	**/
	public function set_data(args:Dynamic):Dynamic;
	/**
		Set the drawstyle of the plot
		
		'default' connects the points with lines. The steps variants
		produce step-plots. 'steps' is equivalent to 'steps-pre' and
		is maintained for backward-compatibility.
		
		ACCEPTS: ['default' | 'steps' | 'steps-pre' | 'steps-mid' |
		          'steps-post']
	**/
	public function set_drawstyle(drawstyle:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set the marker fill style; 'full' means fill the whole marker.
		'none' means no filling; other options are for half-filled markers.
		
		ACCEPTS: ['full' | 'left' | 'right' | 'bottom' | 'top' | 'none']
	**/
	public function set_fillstyle(fs:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist
		
		ACCEPTS: an id string
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		ACCEPTS: string or anything printable with '%s' conversion.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the linestyle of the line (also accepts drawstyles,
		e.g., ``'steps--'``)
		
		
		===========================   =================
		linestyle                     description
		===========================   =================
		``'-'`` or ``'solid'``        solid line
		``'--'`` or  ``'dashed'``     dashed line
		``'-.'`` or  ``'dash_dot'``   dash-dotted line
		``':'`` or ``'dotted'``       dotted line
		``'None'``                    draw nothing
		``' '``                       draw nothing
		``''``                        draw nothing
		===========================   =================
		
		'steps' is equivalent to 'steps-pre' and is maintained for
		backward-compatibility.
		
		Alternatively a dash tuple of the following form can be provided::
		
		    (offset, onoffseq),
		
		where ``onoffseq`` is an even length tuple of on and off ink
		in points.
		
		
		ACCEPTS: ['solid' | 'dashed', 'dashdot', 'dotted' |
		           (offset, on-off-dash-seq) |
		           ``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |
		           ``' '`` | ``''``]
		
		.. seealso::
		
		    :meth:`set_drawstyle`
		       To set the drawing style (stepping) of the plot.
		
		Parameters
		----------
		ls : { '-',  '--', '-.', ':'} and more see description
		    The line style.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Set the line width in points
		
		ACCEPTS: float value in points
	**/
	public function set_linewidth(w:Dynamic):Dynamic;
	/**
		alias for set_linestyle
	**/
	public function set_ls(val:Dynamic):Dynamic;
	/**
		alias for set_linewidth
	**/
	public function set_lw(val:Dynamic):Dynamic;
	/**
		Set the line marker
		
		ACCEPTS: :mod:`A valid marker style <matplotlib.markers>`
		
		Parameters
		-----------
		
		marker: marker style
		    See `~matplotlib.markers` for full description of possible
		    argument
	**/
	public function set_marker(marker:Dynamic):Dynamic;
	/**
		Set the marker edge color
		
		ACCEPTS: any matplotlib color
	**/
	public function set_markeredgecolor(ec:Dynamic):Dynamic;
	/**
		Set the marker edge width in points
		
		ACCEPTS: float value in points
	**/
	public function set_markeredgewidth(ew:Dynamic):Dynamic;
	/**
		Set the marker face color.
		
		ACCEPTS: any matplotlib color
	**/
	public function set_markerfacecolor(fc:Dynamic):Dynamic;
	/**
		Set the alternate marker face color.
		
		ACCEPTS: any matplotlib color
	**/
	public function set_markerfacecoloralt(fc:Dynamic):Dynamic;
	/**
		Set the marker size in points
		
		ACCEPTS: float
	**/
	public function set_markersize(sz:Dynamic):Dynamic;
	/**
		Set the markevery property to subsample the plot when using markers.
		
		e.g., if `every=5`, every 5-th marker will be plotted.
		
		ACCEPTS: [None | int | length-2 tuple of int | slice |
		list/array of int | float | length-2 tuple of float]
		
		Parameters
		----------
		every: None | int | length-2 tuple of int | slice | list/array of int |
		float | length-2 tuple of float
		    Which markers to plot.
		
		    - every=None, every point will be plotted.
		    - every=N, every N-th marker will be plotted starting with
		      marker 0.
		    - every=(start, N), every N-th marker, starting at point
		      start, will be plotted.
		    - every=slice(start, end, N), every N-th marker, starting at
		      point start, upto but not including point end, will be plotted.
		    - every=[i, j, m, n], only markers at points i, j, m, and n
		      will be plotted.
		    - every=0.1, (i.e. a float) then markers will be spaced at
		      approximately equal distances along the line; the distance
		      along the line between markers is determined by multiplying the
		      display-coordinate distance of the axes bounding-box diagonal
		      by the value of every.
		    - every=(0.5, 0.1) (i.e. a length-2 tuple of float), the
		      same functionality as every=0.1 is exhibited but the first
		      marker will be 0.5 multiplied by the
		      display-cordinate-diagonal-distance along the line.
		
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
		alias for set_markeredgecolor
	**/
	public function set_mec(val:Dynamic):Dynamic;
	/**
		alias for set_markeredgewidth
	**/
	public function set_mew(val:Dynamic):Dynamic;
	/**
		alias for set_markerfacecolor
	**/
	public function set_mfc(val:Dynamic):Dynamic;
	/**
		alias for set_markerfacecoloralt
	**/
	public function set_mfcalt(val:Dynamic):Dynamic;
	/**
		alias for set_markersize
	**/
	public function set_ms(val:Dynamic):Dynamic;
	/**
		set path_effects, which should be a list of instances of
		matplotlib.patheffect._Base class or its derivatives.
	**/
	public function set_path_effects(path_effects:Dynamic):Dynamic;
	/**
		Sets the event picker details for the line.
		
		ACCEPTS: float distance in points or callable pick function
		``fn(artist, event)``
	**/
	public function set_picker(p:Dynamic):Dynamic;
	/**
		Sets the pick radius used for containment tests
		
		ACCEPTS: float distance in points
	**/
	public function set_pickradius(d:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
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
	**/
	public function set_sketch_params(?scale:Dynamic, ?length:Dynamic, ?randomness:Dynamic):Dynamic;
	/**
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		Set the cap style for solid linestyles
		
		ACCEPTS: ['butt' | 'round' |  'projecting']
	**/
	public function set_solid_capstyle(s:Dynamic):Dynamic;
	/**
		Set the join style for solid linestyles
		ACCEPTS: ['miter' | 'round' | 'bevel']
	**/
	public function set_solid_joinstyle(s:Dynamic):Dynamic;
	/**
		set the Transformation instance used by this artist
		
		ACCEPTS: a :class:`matplotlib.transforms.Transform` instance
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Sets the url for the artist
		
		ACCEPTS: a url string
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Set the artist's visiblity.
		
		ACCEPTS: [True | False]
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		Set the data np.array for x
		
		ACCEPTS: 1D array
	**/
	public function set_xdata(x:Dynamic):Dynamic;
	/**
		Set the data np.array for y
		
		ACCEPTS: 1D array
	**/
	public function set_ydata(y:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		ACCEPTS: any number
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		copy properties from other to self
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	static public var zorder : Dynamic;
}