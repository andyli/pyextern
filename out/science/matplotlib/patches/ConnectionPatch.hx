/* This file is generated, do not edit! */
package matplotlib.patches;
@:pythonImport("matplotlib.patches", "ConnectionPatch") extern class ConnectionPatch {
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
		Connect point *xyA* in *coordsA* with point *xyB* in *coordsB*.
		
		Valid keys are
		
		===============  ======================================================
		Key              Description
		===============  ======================================================
		arrowstyle       the arrow style
		connectionstyle  the connection style
		relpos           default is (0.5, 0.5)
		patchA           default is bounding box of the text
		patchB           default is None
		shrinkA          default is 2 points
		shrinkB          default is 2 points
		mutation_scale   default is text size (in points)
		mutation_aspect  default is 1.
		?                any key for `matplotlib.patches.PathPatch`
		===============  ======================================================
		
		*coordsA* and *coordsB* are strings that indicate the
		coordinates of *xyA* and *xyB*.
		
		==================== ==================================================
		Property             Description
		==================== ==================================================
		'figure points'      points from the lower left corner of the figure
		'figure pixels'      pixels from the lower left corner of the figure
		'figure fraction'    0, 0 is lower left of figure and 1, 1 is upper
		                     right
		'subfigure points'   points from the lower left corner of the subfigure
		'subfigure pixels'   pixels from the lower left corner of the subfigure
		'subfigure fraction' fraction of the subfigure, 0, 0 is lower left.
		'axes points'        points from lower left corner of axes
		'axes pixels'        pixels from lower left corner of axes
		'axes fraction'      0, 0 is lower left of axes and 1, 1 is upper right
		'data'               use the coordinate system of the object being
		                     annotated (default)
		'offset points'      offset (in points) from the *xy* value
		'polar'              you can specify *theta*, *r* for the annotation,
		                     even in cartesian plots.  Note that if you are
		                     using a polar axes, you do not need to specify
		                     polar for the coordinate system since that is the
		                     native "data" coordinate system.
		==================== ==================================================
		
		Alternatively they can be set to any valid
		`~matplotlib.transforms.Transform`.
		
		Note that 'subfigure pixels' and 'figure pixels' are the same
		for the parent figure, so users who want code that is usable in
		a subfigure can use 'subfigure pixels'.
		
		.. note::
		
		   Using `ConnectionPatch` across two `~.axes.Axes` instances
		   is not directly compatible with :doc:`constrained layout
		   </tutorials/intermediate/constrainedlayout_guide>`. Add the artist
		   directly to the `.Figure` instead of adding it to a specific Axes,
		   or exclude it from the layout using ``con.set_in_layout(False)``.
		
		   .. code-block:: default
		
		      fig, ax = plt.subplots(1, 2, constrained_layout=True)
		      con = ConnectionPatch(..., axesA=ax[0], axesB=ax[1])
		      fig.add_artist(con)
	**/
	@:native("__init__")
	public function ___init__(xyA:Dynamic, xyB:Dynamic, coordsA:Dynamic, ?coordsB:Dynamic, ?axesA:Dynamic, ?axesB:Dynamic, ?arrowstyle:Dynamic, ?connectionstyle:Dynamic, ?patchA:Dynamic, ?patchB:Dynamic, ?shrinkA:Dynamic, ?shrinkB:Dynamic, ?mutation_scale:Dynamic, ?mutation_aspect:Dynamic, ?clip_on:Dynamic, ?dpi_cor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Connect point *xyA* in *coordsA* with point *xyB* in *coordsB*.
		
		Valid keys are
		
		===============  ======================================================
		Key              Description
		===============  ======================================================
		arrowstyle       the arrow style
		connectionstyle  the connection style
		relpos           default is (0.5, 0.5)
		patchA           default is bounding box of the text
		patchB           default is None
		shrinkA          default is 2 points
		shrinkB          default is 2 points
		mutation_scale   default is text size (in points)
		mutation_aspect  default is 1.
		?                any key for `matplotlib.patches.PathPatch`
		===============  ======================================================
		
		*coordsA* and *coordsB* are strings that indicate the
		coordinates of *xyA* and *xyB*.
		
		==================== ==================================================
		Property             Description
		==================== ==================================================
		'figure points'      points from the lower left corner of the figure
		'figure pixels'      pixels from the lower left corner of the figure
		'figure fraction'    0, 0 is lower left of figure and 1, 1 is upper
		                     right
		'subfigure points'   points from the lower left corner of the subfigure
		'subfigure pixels'   pixels from the lower left corner of the subfigure
		'subfigure fraction' fraction of the subfigure, 0, 0 is lower left.
		'axes points'        points from lower left corner of axes
		'axes pixels'        pixels from lower left corner of axes
		'axes fraction'      0, 0 is lower left of axes and 1, 1 is upper right
		'data'               use the coordinate system of the object being
		                     annotated (default)
		'offset points'      offset (in points) from the *xy* value
		'polar'              you can specify *theta*, *r* for the annotation,
		                     even in cartesian plots.  Note that if you are
		                     using a polar axes, you do not need to specify
		                     polar for the coordinate system since that is the
		                     native "data" coordinate system.
		==================== ==================================================
		
		Alternatively they can be set to any valid
		`~matplotlib.transforms.Transform`.
		
		Note that 'subfigure pixels' and 'figure pixels' are the same
		for the parent figure, so users who want code that is usable in
		a subfigure can use 'subfigure pixels'.
		
		.. note::
		
		   Using `ConnectionPatch` across two `~.axes.Axes` instances
		   is not directly compatible with :doc:`constrained layout
		   </tutorials/intermediate/constrainedlayout_guide>`. Add the artist
		   directly to the `.Figure` instead of adding it to a specific Axes,
		   or exclude it from the layout using ``con.set_in_layout(False)``.
		
		   .. code-block:: default
		
		      fig, ax = plt.subplots(1, 2, constrained_layout=True)
		      con = ConnectionPatch(..., axesA=ax[0], axesB=ax[1])
		      fig.add_artist(con)
	**/
	public function new(xyA:Dynamic, xyB:Dynamic, coordsA:Dynamic, ?coordsB:Dynamic, ?axesA:Dynamic, ?axesB:Dynamic, ?arrowstyle:Dynamic, ?connectionstyle:Dynamic, ?patchA:Dynamic, ?patchB:Dynamic, ?shrinkA:Dynamic, ?shrinkB:Dynamic, ?mutation_scale:Dynamic, ?mutation_aspect:Dynamic, ?clip_on:Dynamic, ?dpi_cor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		``draw()`` helper factored out for sharing with `FancyArrowPatch`.
		
		Yields a callable ``dp`` such that calling ``dp(*args, **kwargs)`` is
		equivalent to calling ``renderer1.draw_path(gc, *args, **kwargs)``
		where ``renderer1`` and ``gc`` have been suitably set from ``renderer``
		and the artist's properties.
	**/
	public function _bind_draw_path_function(renderer:Dynamic):Dynamic;
	/**
		Check whether the annotation needs to be drawn.
	**/
	public function _check_xy(renderer:Dynamic):Dynamic;
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Convert x and y units for a tuple (x, y).
	**/
	public function _convert_xy_units(xy:Dynamic):Dynamic;
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
	static public var _edge_default : Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	/**
		Return the mutated path of the arrow in display coordinates.
	**/
	public function _get_path_in_displaycoord():Dynamic;
	/**
		Calculate the pixel position of given point.
	**/
	public function _get_xy(xy:Dynamic, s:Dynamic, ?axes:Dynamic):Dynamic;
	public function _process_radius(radius:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : array-like or scalar or None
		    All values must be within the 0-1 range, inclusive.
		    Masked values and nans are not supported.
	**/
	public function _set_alpha_for_array(alpha:Dynamic):Dynamic;
	public function _set_edgecolor(color:Dynamic):Dynamic;
	public function _set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
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
		Test whether the mouse event occurred in the patch.
		
		Returns
		-------
		(bool, empty dict)
	**/
	public function contains(mouseevent:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Return whether the given point is inside the patch.
		
		Parameters
		----------
		point : (float, float)
		    The point (x, y) to check, in target coordinates of
		    ``self.get_transform()``. These are display coordinates for patches
		    that are added to a figure or axes.
		radius : float, optional
		    Add an additional margin on the patch in target coordinates of
		    ``self.get_transform()``. See `.Path.contains_point` for further
		    details.
		
		Returns
		-------
		bool
		
		Notes
		-----
		The proper use of this method depends on the transform of the patch.
		Isolated patches do not have a transform. In this case, the patch
		creation coordinates and the point coordinates match. The following
		example checks that the center of a circle is within the circle
		
		>>> center = 0, 0
		>>> c = Circle(center, radius=1)
		>>> c.contains_point(center)
		True
		
		The convention of checking against the transformed patch stems from
		the fact that this method is predominantly used to check if display
		coordinates (e.g. from mouse events) are within the patch. If you want
		to do the above check with data coordinates, you have to properly
		transform them first:
		
		>>> center = 0, 0
		>>> c = Circle(center, radius=1)
		>>> plt.gca().add_patch(c)
		>>> transformed_center = c.get_transform().transform(center)
		>>> c.contains_point(transformed_center)
		True
	**/
	public function contains_point(point:Dynamic, ?radius:Dynamic):Dynamic;
	/**
		Return whether the given points are inside the patch.
		
		Parameters
		----------
		points : (N, 2) array
		    The points to check, in target coordinates of
		    ``self.get_transform()``. These are display coordinates for patches
		    that are added to a figure or axes. Columns contain x and y values.
		radius : float, optional
		    Add an additional margin on the patch in target coordinates of
		    ``self.get_transform()``. See `.Path.contains_point` for further
		    details.
		
		Returns
		-------
		length-N bool array
		
		Notes
		-----
		The proper use of this method depends on the transform of the patch.
		See the notes on `.Patch.contains_point`.
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
		Return whether the patch is filled.
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
		Return the clipping behavior.
		
		See `.set_annotation_clip` for the meaning of the return value.
	**/
	public function get_annotation_clip():Dynamic;
	/**
		Return whether antialiasing is used for drawing.
	**/
	public function get_antialiased():Dynamic;
	/**
		Return the arrowstyle object.
	**/
	public function get_arrowstyle():Dynamic;
	/**
		Return the capstyle.
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
		Return the `ConnectionStyle` used.
	**/
	public function get_connectionstyle():Dynamic;
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
		Return the `~.transforms.Transform` mapping data coordinates to
		physical coordinates.
	**/
	public function get_data_transform():Dynamic;
	/**
		[*Deprecated*] dpi_cor is currently used for linewidth-related things and
		shrink factor. Mutation scale is affected by this.
		
		Returns
		-------
		scalar
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function get_dpi_cor():Dynamic;
	/**
		Alias for `get_edgecolor`.
	**/
	public function get_ec():Dynamic;
	/**
		Return the edge color.
	**/
	public function get_edgecolor():Dynamic;
	/**
		Return the `Patch`'s axis-aligned extents as a `~.transforms.Bbox`.
	**/
	public function get_extents():Dynamic;
	/**
		Return the face color.
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
		Return whether the patch is filled.
	**/
	public function get_fill():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return the hatching pattern.
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
		Return the joinstyle.
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
		Return the aspect ratio of the bbox mutation.
	**/
	public function get_mutation_aspect():Dynamic;
	/**
		Return the mutation scale.
		
		Returns
		-------
		scalar
	**/
	public function get_mutation_scale():Dynamic;
	/**
		Return the `~.transforms.Transform` instance mapping patch coordinates
		to data coordinates.
		
		For example, one may define a patch of a circle which represents a
		radius of 5 by providing coordinates for a unit circle, and a
		transform which scales the coordinates (the patch coordinate) by 5.
	**/
	public function get_patch_transform():Dynamic;
	/**
		Return the path of the arrow in the data coordinates.
	**/
	public function get_path():Dynamic;
	public function get_path_effects():Dynamic;
	public var get_path_in_displaycoord : Dynamic;
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
		Return the `~.transforms.Transform` applied to the `Patch`.
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
		Return a copy of the vertices used in this patch.
		
		If the patch contains Bezier curves, the curves will be interpolated by
		line segments.  To access the curves as curves, use `get_path`.
	**/
	public function get_verts():Dynamic;
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
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
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
		Set multiple properties at once.
		
		Supported properties are
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    annotation_clip: bool or None
		    antialiased or aa: bool or None
		    arrowstyle: None or ArrowStyle or str, default: None
		    capstyle: `.CapStyle` or {'butt', 'projecting', 'round'}
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color: color
		    connectionstyle: str or `.ConnectionStyle` or None, optional
		    dpi_cor: unknown
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
		    mutation_aspect: float
		    mutation_scale: float
		    patchA: `.patches.Patch`
		    patchB: `.patches.Patch`
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    positions: unknown
		    rasterized: bool
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    transform: `.Transform`
		    url: str
		    visible: bool
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?annotation_clip:Dynamic, ?antialiased:Dynamic, ?arrowstyle:Dynamic, ?capstyle:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?color:Dynamic, ?connectionstyle:Dynamic, ?dpi_cor:Dynamic, ?edgecolor:Dynamic, ?facecolor:Dynamic, ?fill:Dynamic, ?gid:Dynamic, ?hatch:Dynamic, ?in_layout:Dynamic, ?joinstyle:Dynamic, ?label:Dynamic, ?linestyle:Dynamic, ?linewidth:Dynamic, ?mutation_aspect:Dynamic, ?mutation_scale:Dynamic, ?patchA:Dynamic, ?patchB:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?positions:Dynamic, ?rasterized:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?transform:Dynamic, ?url:Dynamic, ?visible:Dynamic, ?zorder:Dynamic):Dynamic;
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
		Set the clipping behavior.
		
		Parameters
		----------
		b : bool or None
		
		    - *False*: The annotation will always be drawn regardless of its
		      position.
		    - *True*: The annotation will only be drawn if ``self.xy`` is
		      inside the axes.
		    - *None*: The annotation will only be drawn if ``self.xy`` is
		      inside the axes and  ``self.xycoords == "data"``.
	**/
	public function set_annotation_clip(b:Dynamic):Dynamic;
	/**
		Set whether to use antialiased rendering.
		
		Parameters
		----------
		aa : bool or None
	**/
	public function set_antialiased(aa:Dynamic):Dynamic;
	/**
		Set the arrow style. Old attributes are forgotten. Without arguments
		(or with ``arrowstyle=None``) returns available box styles as a list of
		strings.
		
		Parameters
		----------
		arrowstyle : None or ArrowStyle or str, default: None
		    Can be a string with arrowstyle name with optional comma-separated
		    attributes, e.g.::
		
		        set_arrowstyle("Fancy,head_length=0.2")
		
		    Alternatively attributes can be provided as keywords, e.g.::
		
		        set_arrowstyle("fancy", head_length=0.2)
	**/
	public function set_arrowstyle(?arrowstyle:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the `.CapStyle`.
		
		Parameters
		----------
		s : `.CapStyle` or {'butt', 'projecting', 'round'}
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
		Set the connection style. Old attributes are forgotten.
		
		Parameters
		----------
		connectionstyle : str or `.ConnectionStyle` or None, optional
		    Can be a string with connectionstyle name with
		    optional comma-separated attributes, e.g.::
		
		        set_connectionstyle("arc,angleA=0,armA=30,rad=10")
		
		    Alternatively, the attributes can be provided as keywords, e.g.::
		
		        set_connectionstyle("arc", angleA=0,armA=30,rad=10)
		
		    Without any arguments (or with ``connectionstyle=None``), return
		    available styles as a list of strings.
	**/
	public function set_connectionstyle(connectionstyle:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		[*Deprecated*] dpi_cor is currently used for linewidth-related things and
		shrink factor. Mutation scale is affected by this.
		
		Parameters
		----------
		dpi_cor : float
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function set_dpi_cor(dpi_cor:Dynamic):Dynamic;
	/**
		Alias for `set_edgecolor`.
	**/
	public function set_ec(color:Dynamic):Dynamic;
	/**
		Set the patch edge color.
		
		Parameters
		----------
		color : color or None
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
		Set the hatching pattern.
		
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
		Set the `.JoinStyle`.
		
		Parameters
		----------
		s : `.JoinStyle` or {'miter', 'round', 'bevel'}
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
		
		==========================================  =================
		linestyle                                   description
		==========================================  =================
		``'-'`` or ``'solid'``                      solid line
		``'--'`` or  ``'dashed'``                   dashed line
		``'-.'`` or  ``'dashdot'``                  dash-dotted line
		``':'`` or ``'dotted'``                     dotted line
		``'none'``, ``'None'``, ``' '``, or ``''``  draw nothing
		==========================================  =================
		
		Alternatively a dash tuple of the following form can be provided::
		
		    (offset, onoffseq)
		
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
		Set the aspect ratio of the bbox mutation.
		
		Parameters
		----------
		aspect : float
	**/
	public function set_mutation_aspect(aspect:Dynamic):Dynamic;
	/**
		Set the mutation scale.
		
		Parameters
		----------
		scale : float
	**/
	public function set_mutation_scale(scale:Dynamic):Dynamic;
	/**
		Set the tail patch.
		
		Parameters
		----------
		patchA : `.patches.Patch`
	**/
	public function set_patchA(patchA:Dynamic):Dynamic;
	/**
		Set the head patch.
		
		Parameters
		----------
		patchB : `.patches.Patch`
	**/
	public function set_patchB(patchB:Dynamic):Dynamic;
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
		Set the begin and end positions of the connecting path.
		
		Parameters
		----------
		posA, posB : None, tuple
		    (x, y) coordinates of arrow tail and arrow head respectively. If
		    `None` use current value.
	**/
	public function set_positions(posA:Dynamic, posB:Dynamic):Dynamic;
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
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	static public var zorder : Dynamic;
}