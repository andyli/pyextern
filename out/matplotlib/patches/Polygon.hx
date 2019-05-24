/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "Polygon") extern class Polygon {
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
		*xy* is a numpy array with shape Nx2.
		
		If *closed* is *True*, the polygon will be closed so the
		starting and ending points are the same.
		
		Valid kwargs are:
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
	**/
	@:native("__init__")
	public function ___init__(xy:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		*xy* is a numpy array with shape Nx2.
		
		If *closed* is *True*, the polygon will be closed so the
		starting and ending points are the same.
		
		Valid kwargs are:
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		  alpha: float or None
		  animated: bool
		  antialiased or aa: unknown
		  capstyle: {'butt', 'round', 'projecting'}
		  clip_box: `.Bbox`
		  clip_on: bool
		  clip_path: [(`~matplotlib.path.Path`, `.Transform`) | `.Patch` | None]
		  color: color
		  contains: callable
		  edgecolor or ec: color or None or 'auto'
		  facecolor or fc: color or None
		  figure: `.Figure`
		  fill: bool
		  gid: str
		  hatch: {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
		  in_layout: bool
		  joinstyle: {'miter', 'round', 'bevel'}
		  label: object
		  linestyle or ls: {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		  linewidth or lw: float or None
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  rasterized: bool or None
		  sketch_params: (scale: float, length: float, randomness: float)
		  snap: bool or None
		  transform: `.Transform`
		  url: str
		  visible: bool
		  zorder: float
	**/
	public function new(xy:Dynamic, ?closed:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	/**
		``draw()`` helper factored out for sharing with `FancyArrowPatch`.
		
		Yields a callable ``dp`` such that calling ``dp(*args, **kwargs)`` is
		equivalent to calling ``renderer1.draw_path(gc, *args, **kwargs)``
		where ``renderer1`` and ``gc`` have been suitably set from ``renderer``
		and the artist's properties.
	**/
	public function _bind_draw_path_function(renderer:Dynamic):Dynamic;
	/**
		Convert x and y units for a tuple (x, y)
	**/
	public function _convert_xy_units(xy:Dynamic):Dynamic;
	static public var _edge_default : Dynamic;
	/**
		Get the vertices of the path.
		
		Returns
		-------
		vertices : (N, 2) numpy array
		    The coordinates of the vertices.
	**/
	public function _get_xy():Dynamic;
	public function _process_radius(radius:Dynamic):Dynamic;
	static public var _prop_order : Dynamic;
	public function _set_edgecolor(color:Dynamic):Dynamic;
	public function _set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Set the vertices of the polygon.
		
		Parameters
		----------
		xy : (N, 2) array-like
		    The coordinates of the vertices.
	**/
	public function _set_xy(xy:Dynamic):Dynamic;
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
		Test whether the mouse event occurred in the patch.
		
		Returns
		-------
		(bool, empty dict)
	**/
	public function contains(mouseevent:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Returns ``True`` if the given *point* is inside the path
		(transformed with its transform attribute).
		
		*radius* allows the path to be made slightly larger or smaller.
	**/
	public function contains_point(point:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Returns a bool array which is ``True`` if the (closed) path
		contains the corresponding point.
		(transformed with its transform attribute).
		
		*points* must be Nx2 array.
		*radius* allows the path to be made slightly larger or smaller.
	**/
	public function contains_points(points:Dynamic, ?radius:Dynamic):Dynamic;
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
		Draw the :class:`Patch` to the given *renderer*.
	**/
	public function draw(renderer:Dynamic):Dynamic;
	/**
		return whether fill is set
	**/
	public var fill : Dynamic;
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
		Returns True if the :class:`Patch` is to be drawn with antialiasing.
	**/
	public function get_antialiased():Dynamic;
	/**
		Return the current capstyle
	**/
	public function get_capstyle():Dynamic;
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
		Returns if the polygon is closed
		
		Returns
		-------
		closed : bool
		    If the path is closed
	**/
	public function get_closed():Bool;
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
		Return the :class:`~matplotlib.transforms.Transform` instance which
		maps data coordinates to physical coordinates.
	**/
	public function get_data_transform():Dynamic;
	/**
		Alias for `get_edgecolor`.
	**/
	public function get_ec():Dynamic;
	/**
		Return the edge color of the :class:`Patch`.
	**/
	public function get_edgecolor():Dynamic;
	/**
		Return a :class:`~matplotlib.transforms.Bbox` object defining
		the axis-aligned extents of the :class:`Patch`.
	**/
	public function get_extents():Dynamic;
	/**
		Return the face color of the :class:`Patch`.
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
		return whether fill is set
	**/
	public function get_fill():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return the current hatching pattern
	**/
	public function get_hatch():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return the current joinstyle
	**/
	public function get_joinstyle():Dynamic;
	/**
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the linestyle.
	**/
	public function get_linestyle():Dynamic;
	/**
		Return the line width in points.
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
		Return the :class:`~matplotlib.transforms.Transform` instance which
		takes patch coordinates to data coordinates.
		
		For example, one may define a patch of a circle which represents a
		radius of 5 by providing coordinates for a unit circle, and a
		transform which scales the coordinates (the patch coordinate) by 5.
	**/
	public function get_patch_transform():Dynamic;
	/**
		Get the path of the polygon
		
		Returns
		-------
		path : Path
		   The :class:`~matplotlib.path.Path` object for
		   the polygon
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
		Return the :class:`~matplotlib.transforms.Transform` applied
		to the :class:`Patch`.
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
		Return a copy of the vertices used in this patch
		
		If the patch contains Bezier curves, the curves will be
		interpolated by line segments.  To access the curves as
		curves, use :meth:`get_path`.
	**/
	public function get_verts():Dynamic;
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
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Get the vertices of the path.
		
		Returns
		-------
		vertices : (N, 2) numpy array
		    The coordinates of the vertices.
	**/
	public function get_xy():Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
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
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Alias for `set_antialiased`.
	**/
	public function set_aa(aa:Dynamic):Dynamic;
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
		Set the alpha transparency of the patch.
		
		Parameters
		----------
		alpha : float or None
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
		b : bool or None
	**/
	public function set_antialiased(aa:Dynamic):Dynamic;
	/**
		Set the patch capstyle
		
		Parameters
		----------
		s : {'butt', 'round', 'projecting'}
	**/
	public function set_capstyle(s:Dynamic):Dynamic;
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
		Set if the polygon is closed
		
		Parameters
		----------
		closed : bool
		   True if the polygon is closed
	**/
	public function set_closed(closed:Dynamic):Dynamic;
	/**
		Set both the edgecolor and the facecolor.
		
		Parameters
		----------
		c : color
		
		See Also
		--------
		Patch.set_facecolor, Patch.set_edgecolor
		    For setting the edge or face color individually.
	**/
	public function set_color(c:Dynamic):Dynamic;
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
		Alias for `set_edgecolor`.
	**/
	public function set_ec(color:Dynamic):Dynamic;
	/**
		Set the patch edge color.
		
		Parameters
		----------
		color : color or None or 'auto'
	**/
	public function set_edgecolor(color:Dynamic):Dynamic;
	/**
		Set the patch face color.
		
		Parameters
		----------
		color : color or None
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
		Set whether to fill the patch.
		
		Parameters
		----------
		b : bool
	**/
	public function set_fill(b:Dynamic):Dynamic;
	/**
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Set the hatching pattern
		
		*hatch* can be one of::
		
		  /   - diagonal hatching
		  \   - back diagonal
		  |   - vertical
		  -   - horizontal
		  +   - crossed
		  x   - crossed diagonal
		  o   - small circle
		  O   - large circle
		  .   - dots
		  *   - stars
		
		Letters can be combined, in which case all the specified
		hatchings are done.  If same letter repeats, it increases the
		density of hatching of that pattern.
		
		Hatching is supported in the PostScript, PDF, SVG and Agg
		backends only.
		
		Parameters
		----------
		hatch : {'/', '\\', '|', '-', '+', 'x', 'o', 'O', '.', '*'}
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
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
		Set the patch joinstyle
		
		Parameters
		----------
		s : {'miter', 'round', 'bevel'}
	**/
	public function set_joinstyle(s:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the patch linestyle.
		
		===========================   =================
		linestyle                     description
		===========================   =================
		``'-'`` or ``'solid'``        solid line
		``'--'`` or  ``'dashed'``     dashed line
		``'-.'`` or  ``'dashdot'``    dash-dotted line
		``':'`` or ``'dotted'``       dotted line
		===========================   =================
		
		Alternatively a dash tuple of the following form can be provided::
		
		    (offset, onoffseq),
		
		where ``onoffseq`` is an even length tuple of on and off ink in points.
		
		Parameters
		----------
		ls : {'-', '--', '-.', ':', '', (offset, on-off-seq), ...}
		    The line style.
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Set the patch linewidth in points.
		
		Parameters
		----------
		w : float or None
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
		      off an event if it's data is within epsilon of the mouse
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
		Set the vertices of the polygon.
		
		Parameters
		----------
		xy : (N, 2) array-like
		    The coordinates of the vertices.
	**/
	public function set_xy(xy:Dynamic):Dynamic;
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
		Updates this :class:`Patch` from the properties of *other*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	/**
		The vertices of the path as (N, 2) numpy array.
	**/
	public var xy : Dynamic;
	static public var zorder : Dynamic;
}