/* This file is generated, do not edit! */
package matplotlib.axes._secondary_axes;
@:pythonImport("matplotlib.axes._secondary_axes", "SecondaryAxis") extern class SecondaryAxis {
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
		See `.secondary_xaxis` and `.secondary_yaxis` for the doc string.
		While there is no need for this to be private, it should really be
		called by those higher level functions.
	**/
	@:native("__init__")
	public function ___init__(parent:Dynamic, orientation:Dynamic, location:Dynamic, functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		See `.secondary_xaxis` and `.secondary_yaxis` for the doc string.
		While there is no need for this to be private, it should really be
		called by those higher level functions.
	**/
	public function new(parent:Dynamic, orientation:Dynamic, location:Dynamic, functions:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
		Add a `~.Text` to the axes' texts; return the text.
	**/
	public function _add_text(txt:Dynamic):Dynamic;
	/**
		Helper for :func:`~matplotlib.pyplot.gci`;
		do not use elsewhere.
	**/
	public function _gci():Dynamic;
	/**
		Returns
		-------
		Patch
		    The patch used to draw the background of the axes.  It is also used
		    as the clipping path for any data elements on the axes.
		
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
		    Mapping of spine names to `Line2D` or `Patch` instances that are
		    used to draw axes spines.
		
		    In the standard axes, spines are single line segments, but in other
		    projections they may not be.
		
		Notes
		-----
		Intended to be overridden by new projection types.
	**/
	public function _gen_axes_spines(?locations:Dynamic, ?offset:Dynamic, ?units:Dynamic):Dynamic;
	public function _get_axis_list():Dynamic;
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
	/**
		move this out of __init__ because non-separable axes don't use it
	**/
	public function _init_axis():Dynamic;
	/**
		Make a twinx axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(?kl:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Callback for processing changes to axis units.
		
		Currently forces updates of data limits and view limits.
	**/
	public function _on_units_changed(?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		Look for unit *kwargs* and update the axis instances as necessary
	**/
	public function _process_unit_info(?xdata:Dynamic, ?ydata:Dynamic, ?kwargs:Dynamic):Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the current image.
		
		This image will be the target of colormap functions like
		`~.pyplot.viridis`, and other functions such as `~.pyplot.clim`.  The
		current image is an attribute of the current axes.
	**/
	public function _sci(im:Dynamic):Dynamic;
	/**
		set the boilerplate props for artists added to axes
	**/
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Set the *_xaxis_transform*, *_yaxis_transform*, *transScale*,
		*transData*, *transLimits* and *transAxes* transformations.
		
		.. note::
		
		    This method is primarily used by rectilinear projections of the
		    `~matplotlib.axes.Axes` class, and is meant to be overridden by
		    new kinds of projection axes that need different transformations
		    and limits. (See `~matplotlib.projections.polar.PolarAxes` for an
		    example.)
	**/
	public function _set_lim_and_transforms():Dynamic;
	/**
		Set the limits based on parent limits and the convert method
		between the parent and this secondary axes
	**/
	public function _set_lims():Dynamic;
	/**
		private version of set_position.  Call this internally
		to get the same functionality of `get_position`, but not
		to take the axis out of the constrained_layout
		hierarchy.
	**/
	public function _set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Check if parent has set its scale
	**/
	public function _set_scale():Dynamic;
	/**
		Set the offset for the title either from rcParams['axes.titlepad']
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
		        (xp,yp) is the center of zooming and scl the scale factor to
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
	static public var _shared_x_axes : Dynamic;
	static public var _shared_y_axes : Dynamic;
	static public var _twinned_axes : Dynamic;
	public function _update_image_limits(image:Dynamic):Dynamic;
	/**
		Figures out the data limit of the given line, updating self.dataLim.
	**/
	public function _update_line_limits(line:Dynamic):Dynamic;
	/**
		update the data limits for patch *p*
	**/
	public function _update_patch_limits(patch:Dynamic):Dynamic;
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
		Add an `~.Artist` to the axes, and return the artist.
		
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
		oid : int
		    The observer id associated with the callback. This id can be
		    used for removing the callback with `.remove_callback` later.
		
		See Also
		--------
		remove_callback
	**/
	public function add_callback(func:Dynamic):Int;
	/**
		Add an `~.AxesBase` to the axes' children; return the child axes.
		
		This is the lowlevel version.  See `.axes.Axes.inset_axes`.
	**/
	public function add_child_axes(ax:Dynamic):Dynamic;
	/**
		Add a `~.Collection` to the axes' collections; return the collection.
	**/
	public function add_collection(collection:Dynamic, ?autolim:Dynamic):Dynamic;
	/**
		Add a `~.Container` to the axes' containers; return the container.
	**/
	public function add_container(container:Dynamic):Dynamic;
	/**
		Add an `~.AxesImage` to the axes' images; return the image.
	**/
	public function add_image(image:Dynamic):Dynamic;
	/**
		Add a `~.Line2D` to the axes' lines; return the line.
	**/
	public function add_line(line:Dynamic):Dynamic;
	/**
		Add a `~.Patch` to the axes' patches; return the patch.
	**/
	public function add_patch(p:Dynamic):Dynamic;
	/**
		Add a `~.Table` to the axes' tables; return the table.
	**/
	public function add_table(tab:Dynamic):Dynamic;
	public var aname : Dynamic;
	/**
		Adjust the Axes for a specified data aspect ratio.
		
		Depending on `.get_adjustable` this will modify either the Axes box
		(position) or the view limits. In the former case, `.get_anchor`
		will affect the position.
		
		Notes
		-----
		This is called automatically when each Axes is drawn.  You may need
		to call it yourself if you need to update the Axes position and/or
		view limits before the Figure is drawn.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect ratio handling.
		matplotlib.axes.Axes.set_adjustable
		    defining the parameter to adjust in order to meet the required
		    aspect.
		matplotlib.axes.Axes.set_anchor
		    defining the position in case of extra space.
	**/
	public function apply_aspect(?position:Dynamic):Dynamic;
	/**
		Autoscale the axis view to the data (toggle).
		
		Convenience method for simple axis view autoscaling.
		It turns autoscaling on or off, and then,
		if autoscaling for either axis is on, it performs
		the autoscaling on the specified axis or axes.
		
		Parameters
		----------
		enable : bool or None, optional
		    True (default) turns autoscaling on, False turns it off.
		    None leaves the autoscaling state unchanged.
		
		axis : {'both', 'x', 'y'}, optional
		    which axis to operate on; default is 'both'
		
		tight : bool or None, optional
		    If True, set view limits to data limits;
		    if False, let the locator and margins expand the view limits;
		    if None, use tight scaling if the only artist is an image,
		    otherwise treat *tight* as False.
		    The *tight* setting is retained for future autoscaling
		    until it is explicitly changed.
	**/
	public function autoscale(?enable:Dynamic, ?axis:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Autoscale the view limits using the data limits.
		
		You can selectively autoscale only a single axis, e.g., the xaxis by
		setting *scaley* to *False*.  The autoscaling preserves any
		axis direction reversal that has already been done.
		
		If *tight* is *False*, the axis major locator will be used
		to expand the view limits if rcParams['axes.autolimit_mode']
		is 'round_numbers'.  Note that any margins that are in effect
		will be applied first, regardless of whether *tight* is
		*True* or *False*.  Specifying *tight* as *True* or *False*
		saves the setting as a private attribute of the Axes; specifying
		it as *None* (the default) applies the previously saved value.
		
		The data limits are not updated automatically when artist data are
		changed after the artist has been added to an Axes instance.  In that
		case, use :meth:`matplotlib.axes.Axes.relim` prior to calling
		autoscale_view.
	**/
	public function autoscale_view(?tight:Dynamic, ?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		The `~.axes.Axes` instance the artist resides in, or *None*.
	**/
	public var axes : Dynamic;
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
		    The axis limits to be set. Either none or all of the limits must
		    be given.
		
		option : bool or str
		    If a bool, turns axis lines and labels on or off. If a string,
		    possible values are:
		
		    ======== ==========================================================
		    Value    Description
		    ======== ==========================================================
		    'on'     Turn on axis lines and labels. Same as ``True``.
		    'off'    Turn off axis lines and labels. Same as ``False``.
		    'equal'  Set equal scaling (i.e., make circles circular) by
		             changing axis limits.
		    'scaled' Set equal scaling (i.e., make circles circular) by
		             changing dimensions of the plot box.
		    'tight'  Set limits just large enough to show all data.
		    'auto'   Automatic scaling (fill plot box with data).
		    'normal' Same as 'auto'; deprecated.
		    'image'  'scaled' with axis limits equal to data limits.
		    'square' Square plot; similar to 'scaled', but initially forcing
		             ``xmax-xmin = ymax-ymin``.
		    ======== ==========================================================
		
		emit : bool, optional, default *True*
		    Whether observers are notified of the axis limit change.
		    This option is passed on to `~.Axes.set_xlim` and
		    `~.Axes.set_ylim`.
		
		Returns
		-------
		xmin, xmax, ymin, ymax : float
		    The axis limits.
		
		See also
		--------
		matplotlib.axes.Axes.set_xlim
		matplotlib.axes.Axes.set_ylim
	**/
	public function axis(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Float;
	/**
		Return *True* if this axes supports any pan/zoom button functionality.
	**/
	public function can_pan():Dynamic;
	/**
		Return *True* if this axes supports the zoom box button functionality.
	**/
	public function can_zoom():Dynamic;
	/**
		Clear the current axes.
	**/
	public function cla():Dynamic;
	/**
		Clear the axes.
	**/
	public function clear():Dynamic;
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
		
		See Also
		--------
		set_contains, get_contains
	**/
	public function contains(mouseevent:Dynamic):Bool;
	/**
		Return whether *point* (pair of pixel coordinates) is inside the axes
		patch.
	**/
	public function contains_point(point:Dynamic):Dynamic;
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
		Called when the mouse moves during a pan operation.
		
		*button* is the mouse button number:
		
		* 1: LEFT
		* 2: MIDDLE
		* 3: RIGHT
		
		*key* is a "shift" key
		
		*x*, *y* are the mouse coordinates in display coords.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function drag_pan(button:Dynamic, key:Dynamic, x:Dynamic, y:Dynamic):Dynamic;
	/**
		Draw the secondary axes.
		
		Consults the parent axes for its limits and converts them
		using the converter specified by
		`~.axes._secondary_axes.set_functions` (or *functions*
		parameter when axes initialized.)
	**/
	public function draw(?renderer:Dynamic, ?inframe:Dynamic):Dynamic;
	/**
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function draw_artist(a:Dynamic):Dynamic;
	/**
		Called when a pan operation completes (when the mouse button
		is up.)
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function end_pan():Dynamic;
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
		Return a format string formatting the *x*, *y* coordinates.
	**/
	public function format_coord(x:Dynamic, y:Dynamic):Dynamic;
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
	public function get_adjustable():Dynamic;
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
		Return the animated state.
	**/
	public function get_animated():Dynamic;
	public function get_aspect():Dynamic;
	/**
		Get whether autoscaling is applied for both axes on plot commands
	**/
	public function get_autoscale_on():Dynamic;
	/**
		Get whether autoscaling for the x-axis is applied on plot commands
	**/
	public function get_autoscalex_on():Dynamic;
	/**
		Get whether autoscaling for the y-axis is applied on plot commands
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
		axisbelow : bool or 'line'
		
		See Also
		--------
		set_axisbelow
	**/
	public function get_axisbelow():Dynamic;
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
		Return the aspect ratio of the raw data.
		
		Notes
		-----
		This method is intended to be overridden by new projection types.
	**/
	public function get_data_ratio():Dynamic;
	/**
		Return the aspect ratio of the raw data in log scale.
		
		Notes
		-----
		Will be used when both axis are in log scale.
	**/
	public function get_data_ratio_log():Dynamic;
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
		Get the facecolor of the Axes.
	**/
	public function get_fc():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Get whether the axes rectangle patch is drawn.
	**/
	public function get_frame_on():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		return a list of Axes images contained by the Axes
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
		Return the `Legend` instance, or None if no legend is defined.
	**/
	public function get_legend():Dynamic;
	/**
		Return a list of lines contained by the Axes
	**/
	public function get_lines():Dynamic;
	/**
		Get whether the axes responds to navigation commands
	**/
	public function get_navigate():Dynamic;
	/**
		Get the navigation toolbar button status: 'PAN', 'ZOOM', or None
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
		Get a copy of the axes rectangle as a `.Bbox`.
		
		Parameters
		----------
		original : bool
		    If ``True``, return the original position. Otherwise return the
		    active position. For an explanation of the positions see
		    `.set_position`.
		
		Returns
		-------
		pos : `.Bbox`
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
		Return a reference to the shared axes Grouper object for x axes.
	**/
	public function get_shared_x_axes():Dynamic;
	/**
		Return a reference to the shared axes Grouper object for y axes.
	**/
	public function get_shared_y_axes():Dynamic;
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
		Return the tight bounding box of the axes.
		The dimension of the Bbox in canvas coordinate.
		
		If *call_axes_locator* is *False*, it does not call the
		_axes_locator attribute, which is necessary to get the correct
		bounding box. ``call_axes_locator==False`` can be used if the
		caller is only intereted in the relative size of the tightbbox
		compared to the axes bbox.
	**/
	public function get_tightbbox(renderer:Dynamic, ?call_axes_locator:Dynamic):Dynamic;
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
		Return the axes bounding box in display space; *args* and *kwargs*
		are empty.
		
		This bounding box does not include the spines, ticks, ticklables,
		or other labels.  For a bounding box including these elements use
		`~matplotlib.axes.Axes.get_tightbbox`.
		
		See Also
		--------
		matplotlib.axes.Axes.get_tightbbox
		matplotlib.axis.Axis.get_tightbbox
		matplotlib.spines.get_window_extent
	**/
	public function get_window_extent(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the XAxis instance.
	**/
	public function get_xaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing x-axis labels, which will add
		    *pad_points* of padding (in points) between the axes and the label.
		    The x-direction is in data coordinates and the y-direction is in
		    axis corrdinates
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
	public function get_xaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondary x-axis labels, which will
		    add *pad_points* of padding (in points) between the axes and the
		    label.  The x-direction is in data coordinates and the y-direction
		    is in axis corrdinates
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
	public function get_xaxis_text2_transform(pad_points:Dynamic):Dynamic;
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
		Get the x grid lines as a list of `Line2D` instances.
	**/
	public function get_xgridlines():Dynamic;
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
		Get the major x tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_xmajorticklabels():Array<Dynamic>;
	/**
		Get the minor x tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_xminorticklabels():Array<Dynamic>;
	/**
		Return the x-axis scale as string.
		
		See Also
		--------
		set_xscale
	**/
	public function get_xscale():Dynamic;
	/**
		Get the x tick labels as a list of `~matplotlib.text.Text` instances.
		
		Parameters
		----------
		minor : bool, optional
		   If True return the minor ticklabels,
		   else return the major ticklabels.
		
		which : None, ('minor', 'major', 'both')
		   Overrides `minor`.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		ret : list
		   List of `~matplotlib.text.Text` instances.
	**/
	public function get_xticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the x tick lines as a list of `Line2D` instances.
	**/
	public function get_xticklines():Dynamic;
	/**
		Return the x ticks as a list of locations
	**/
	public function get_xticks(?minor:Dynamic):Dynamic;
	/**
		Return the YAxis instance.
	**/
	public function get_yaxis():Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing y-axis labels, which will add
		    *pad_points* of padding (in points) between the axes and the label.
		    The x-direction is in axis coordinates and the y-direction is in
		    data corrdinates
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
	public function get_yaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Returns
		-------
		transform : Transform
		    The transform used for drawing secondart y-axis labels, which will
		    add *pad_points* of padding (in points) between the axes and the
		    label.  The x-direction is in axis coordinates and the y-direction
		    is in data corrdinates
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
	public function get_yaxis_text2_transform(pad_points:Dynamic):Dynamic;
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
		Get the y grid lines as a list of `Line2D` instances.
	**/
	public function get_ygridlines():Dynamic;
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
		Get the major y tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_ymajorticklabels():Array<Dynamic>;
	/**
		Get the minor y tick labels.
		
		Returns
		-------
		labels : list
		    List of `~matplotlib.text.Text` instances
	**/
	public function get_yminorticklabels():Array<Dynamic>;
	/**
		Return the y-axis scale as string.
		
		See Also
		--------
		set_yscale
	**/
	public function get_yscale():Dynamic;
	/**
		Get the y tick labels as a list of `~matplotlib.text.Text` instances.
		
		Parameters
		----------
		minor : bool
		   If True return the minor ticklabels,
		   else return the major ticklabels
		
		which : None, ('minor', 'major', 'both')
		   Overrides `minor`.
		
		   Selects which ticklabels to return
		
		Returns
		-------
		ret : list
		   List of `~matplotlib.text.Text` instances.
	**/
	public function get_yticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Get the y tick lines as a list of `Line2D` instances.
	**/
	public function get_yticklines():Dynamic;
	/**
		Return the y ticks as a list of locations
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
		b : bool or None, optional
		    Whether to show the grid lines. If any *kwargs* are supplied,
		    it is assumed you want the grid on and *b* will be set to True.
		
		    If *b* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}, optional
		    The grid lines to apply the changes on.
		
		axis : {'both', 'x', 'y'}, optional
		    The axis to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
		
		    Valid *kwargs* are
		
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
		
		Notes
		-----
		The axis is drawn as a unit, so the effective zorder for drawing the
		grid is determined by the zorder of each axis, not by the zorder of the
		`.Line2D` objects comprising the grid.  Therefore, to set grid zorder,
		use `.set_axisbelow` or, for more control, call the
		`~matplotlib.axis.Axis.set_zorder` method of each axis.
	**/
	public function grid(?b:Dynamic, ?which:Dynamic, ?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if any artists have been added to axes.
		
		This should not be used to determine whether the *dataLim*
		need to be updated, and may not actually be useful for
		anything.
	**/
	public function has_data():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return *True* if the given *mouseevent* (in display coords)
		is in the Axes
	**/
	public function in_axes(mouseevent:Dynamic):Dynamic;
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
		Control behavior of major tick locators.
		
		Because the locator is involved in autoscaling, `~.Axes.autoscale_view`
		is called automatically after the parameters are changed.
		
		Parameters
		----------
		axis : {'both', 'x', 'y'}, optional
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
		Set or retrieve autoscaling margins.
		
		The padding added to each limit of the axes is the *margin*
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
		
		tight : bool or None, default is True
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
		Remove minor ticks from the axes.
	**/
	public function minorticks_off():Dynamic;
	/**
		Display minor ticks on the axes.
		
		Displaying minor ticks may reduce performance; you may turn them off
		using `minorticks_off()` if drawing speed is a problem.
	**/
	public function minorticks_on():Dynamic;
	public var mouseover : Dynamic;
	public var mouseover_set : Dynamic;
	static public var name : Dynamic;
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
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function redraw_in_frame():Dynamic;
	/**
		Recompute the data limits based on current artists.
		
		At present, `~.Collection` instances are not supported.
		
		Parameters
		----------
		visible_only : bool
		    Whether to exclude invisible artists.  Defaults to False.
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
		A property batch setter.  Pass *kwargs* to set properties.
	**/
	public function set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Define which parameter the Axes will change to achieve a given aspect.
		
		Parameters
		----------
		adjustable : {'box', 'datalim'}
		    If 'box', change the physical dimensions of the Axes.
		    If 'datalim', change the ``x`` or ``y`` data limits.
		
		share : bool, optional
		    If ``True``, apply the settings to all shared Axes.
		    Default is ``False``.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
		
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
		Set if axes spine and labels are drawn at top or bottom (or left/right)
		of the axes.
		
		Parameters
		----------
		align :: string
		    either 'top' or 'bottom' for orientation='x' or
		    'left' or 'right' for orientation='y' axis
	**/
	public function set_alignment(align:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : float
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
		anchor : 2-tuple of floats or {'C', 'SW', 'S', 'SE', ...}
		    The anchor position may be either:
		
		    - a sequence (*cx*, *cy*). *cx* and *cy* may range from 0
		      to 1, where 0 is left or bottom and 1 is right or top.
		
		    - a string using cardinal directions as abbreviation:
		
		      - 'C' for centered
		      - 'S' (south) for bottom-center
		      - 'SW' (south west) for bottom-left
		      - etc.
		
		      Here is an overview of the possible positions:
		
		      +------+------+------+
		      | 'NW' | 'N'  | 'NE' |
		      +------+------+------+
		      | 'W'  | 'C'  | 'E'  |
		      +------+------+------+
		      | 'SW' | 'S'  | 'SE' |
		      +------+------+------+
		
		share : bool, optional
		    If ``True``, apply the settings to all shared Axes.
		    Default is ``False``.
		
		See Also
		--------
		matplotlib.axes.Axes.set_aspect
		    for a description of aspect handling.
	**/
	public function set_anchor(anchor:Dynamic, ?share:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		Parameters
		----------
		b : bool
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Secondary axes cannot set the aspect ratio, so calling this just
		sets a warning.
	**/
	public function set_aspect(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set whether autoscaling is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscale_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the x-axis is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscalex_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the y-axis is applied on plot commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_autoscaley_on(b:Dynamic):Dynamic;
	/**
		Set the axes locator.
		
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
		Change the color of the secondary axes and all decorators
		Parameters
		----------
		color : Matplotlib color
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
		Set the facecolor of the Axes.
		
		Parameters
		----------
		color : color
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		Set the facecolor of the Axes.
		
		Parameters
		----------
		color : color
	**/
	public function set_fc(color:Dynamic):Dynamic;
	/**
		Set the `.Figure` for this `.Axes`.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the axes rectangle patch is drawn.
		
		Parameters
		----------
		b : bool
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
	/**
		Set how the secondary axis converts limits from the parent axes.
		
		Parameters
		----------
		functions : 2-tuple of func, or `Transform` with an inverse.
		    Transform between the parent axis values and the secondary axis
		    values.
		
		    If supplied as a 2-tuple of functions, the first function is
		    the forward transform function and the second is the inverse
		    transform.
		
		    If a transform is supplied, then the transform must have an
		    inverse.
	**/
	public function set_functions(functions:Dynamic):Dynamic;
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
		Set the vertical or horizontal location of the axes in
		parent-normalized co-ordinates.
		
		Parameters
		----------
		location : string or scalar
		    The position to put the secondary axis.  Strings can be 'top' or
		    'bottom' for orientation='x' and 'right' or 'left' for
		    orientation='y', scalar can be a float indicating the relative
		    position on the parent axes to put the new axes, 0.0 being the
		    bottom (or left) and 1.0 being the top (or right).
	**/
	public function set_location(location:Dynamic):Dynamic;
	/**
		Set whether the axes responds to navigation toolbar commands
		
		Parameters
		----------
		b : bool
	**/
	public function set_navigate(b:Dynamic):Dynamic;
	/**
		Set the navigation toolbar button status;
		
		.. warning::
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
		Set the axes position.
		
		Axes have two position attributes. The 'original' position is the
		position allocated for the Axes. The 'active' position is the
		position the Axes is actually drawn at. These positions are usually
		the same unless a fixed aspect is set to the Axes. See `.set_aspect`
		for details.
		
		Parameters
		----------
		pos : [left, bottom, width, height] or `~matplotlib.transforms.Bbox`
		    The new position of the in `.Figure` coordinates.
		
		which : {'both', 'active', 'original'}, optional
		    Determines which position variables to change.
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
		axes. If multiple properties are given, their value lists must have
		the same length. This is just a shortcut for explicitly creating a
		cycler and passing it to the function, i.e. it's short for
		``set_prop_cycle(cycler(label=values label2=values2, ...))``.
		
		Form 3 creates a `~cycler.Cycler` for a single property and set it
		as the property cycle of the axes. This form exists for compatibility
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
		
		Examples
		--------
		Setting the property cycle for a single property:
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'])
		
		Setting the property cycle for simultaneously cycling over multiple
		properties (e.g. red circle, green plus, blue cross):
		
		>>> ax.set_prop_cycle(color=['red', 'green', 'blue'],
		...                   marker=['o', '+', 'x'])
		
		See Also
		--------
		matplotlib.rcsetup.cycler
		    Convenience function for creating validated cyclers for properties.
		cycler.cycler
		    The original function for creating unvalidated cyclers.
	**/
	public function set_prop_cycle(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		z : float or None
		    zorder below which artists are rasterized.  ``None`` means that
		    artists do not get rasterized based on zorder.
	**/
	public function set_rasterization_zorder(z:Dynamic):Dynamic;
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
		Set the x ticks with list of *ticks*
		
		Parameters
		----------
		ticks : list
		    List of x-axis tick locations.
		
		minor : bool, optional
		    If ``False`` sets major ticks, if ``True`` sets minor ticks.
		    Default is ``False``.
	**/
	public function set_ticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
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
		
		This method will honor axes inversion regardless of parameter order.
		It will not change the autoscaling setting (``Axes._autoscaleXon``).
		
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
		
		labelpad : scalar, optional, default: None
		    Spacing in points between the label and the x-axis.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_xlabel(xlabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x-axis view limits.
		
		.. ACCEPTS: (left: float, right: float)
		
		Parameters
		----------
		left : scalar, optional
		    The left xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		    The left and right xlims may be passed as the tuple
		    (*left*, *right*) as the first positional argument (or as
		    the *left* keyword argument).
		
		right : scalar, optional
		    The right xlim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		emit : bool, optional
		    Whether to notify observers of limit change (default: True).
		
		auto : bool or None, optional
		    Whether to turn on autoscaling of the x-axis. True turns on,
		    False turns off (default action), None leaves unchanged.
		
		xmin, xmax : scalar, optional
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
		value : {"linear", "log", "symlog", "logit", ...}
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_xscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x-tick labels with list of string labels.
		
		Parameters
		----------
		labels : List[str]
		    List of string labels.
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default `fontdict` is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, optional
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		A list of `~.text.Text` instances.
		
		Other Parameters
		-----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_xticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the x ticks with list of *ticks*
		
		Parameters
		----------
		ticks : list
		    List of x-axis tick locations.
		
		minor : bool, optional
		    If ``False`` sets major ticks, if ``True`` sets minor ticks.
		    Default is ``False``.
	**/
	public function set_xticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the lower and upper numerical bounds of the y-axis.
		
		This method will honor axes inversion regardless of parameter order.
		It will not change the autoscaling setting (``Axes._autoscaleYon``).
		
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
		Set the label for the x-axis.
		
		Parameters
		----------
		ylabel : str
		    The label text.
		
		labelpad : scalar, optional, default: None
		    Spacing in points between the label and the x-axis.
		
		Other Parameters
		----------------
		**kwargs : `.Text` properties
		    `.Text` properties control the appearance of the label.
		
		See also
		--------
		text : for information on how override and the optional args work
	**/
	public function set_ylabel(ylabel:Dynamic, ?fontdict:Dynamic, ?labelpad:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y-axis view limits.
		
		.. ACCEPTS: (bottom: float, top: float)
		
		Parameters
		----------
		bottom : scalar, optional
		    The bottom ylim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		    The bottom and top ylims may be passed as the tuple
		    (*bottom*, *top*) as the first positional argument (or as
		    the *bottom* keyword argument).
		
		top : scalar, optional
		    The top ylim in data coordinates. Passing *None* leaves the
		    limit unchanged.
		
		emit : bool, optional
		    Whether to notify observers of limit change (default: ``True``).
		
		auto : bool or None, optional
		    Whether to turn on autoscaling of the y-axis. *True* turns on,
		    *False* turns off (default action), *None* leaves unchanged.
		
		ymin, ymax : scalar, optional
		    They are equivalent to bottom and top respectively,
		    and it is an error to pass both *ymin* and *bottom* or
		    *ymax* and *top*.
		
		Returns
		-------
		bottom, top : (float, float)
		    The new y-axis limits in data coordinates.
		
		See Also
		--------
		get_ylim
		set_ybound, get_ybound
		invert_yaxis, yaxis_inverted
		
		Notes
		-----
		The *bottom* value may be greater than the *top* value, in which
		case the y-axis values will decrease from *bottom* to *top*.
		
		Examples
		--------
		>>> set_ylim(bottom, top)
		>>> set_ylim((bottom, top))
		>>> bottom, top = set_ylim(bottom, top)
		
		One limit may be left unchanged.
		
		>>> set_ylim(top=top_lim)
		
		Limits may be passed in reverse order to flip the direction of
		the y-axis. For example, suppose ``y`` represents depth of the
		ocean in m. The y-axis limits might be set like the following
		so 5000 m depth is at the bottom of the plot and the surface,
		0 m, is at the top.
		
		>>> set_ylim(5000, 0)
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
		value : {"linear", "log", "symlog", "logit", ...}
		    The axis scale type to apply.
		
		**kwargs
		    Different keyword arguments are accepted, depending on the scale.
		    See the respective class keyword arguments:
		
		    - `matplotlib.scale.LinearScale`
		    - `matplotlib.scale.LogScale`
		    - `matplotlib.scale.SymmetricalLogScale`
		    - `matplotlib.scale.LogitScale`
		
		
		Notes
		-----
		By default, Matplotlib supports the above mentioned scales.
		Additionally, custom scales may be registered using
		`matplotlib.scale.register_scale`. These scales can then also
		be used here.
	**/
	public function set_yscale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y-tick labels with list of strings labels.
		
		Parameters
		----------
		labels : List[str]
		    list of string labels
		
		fontdict : dict, optional
		    A dictionary controlling the appearance of the ticklabels.
		    The default `fontdict` is::
		
		       {'fontsize': rcParams['axes.titlesize'],
		        'fontweight': rcParams['axes.titleweight'],
		        'verticalalignment': 'baseline',
		        'horizontalalignment': loc}
		
		minor : bool, optional
		    Whether to set the minor ticklabels rather than the major ones.
		
		Returns
		-------
		A list of `~.text.Text` instances.
		
		Other Parameters
		----------------
		**kwargs : `~.text.Text` properties.
	**/
	public function set_yticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the y ticks with list of *ticks*
		
		Parameters
		----------
		ticks : list
		    List of y-axis tick locations
		
		minor : bool, optional
		    If ``False`` sets major ticks, if ``True`` sets minor ticks.
		    Default is ``False``.
	**/
	public function set_yticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
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
		Called when a pan operation has started.
		
		*x*, *y* are the mouse coordinates in display coords.
		button is the mouse button number:
		
		* 1: LEFT
		* 2: MIDDLE
		* 3: RIGHT
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function start_pan(x:Dynamic, y:Dynamic, button:Dynamic):Dynamic;
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
		Change the appearance of ticks, tick labels, and gridlines.
		
		Parameters
		----------
		axis : {'x', 'y', 'both'}, optional
		    Which axis to apply the parameters to.
		
		Other Parameters
		----------------
		
		axis : {'x', 'y', 'both'}
		    Axis on which to operate; default is 'both'.
		
		reset : bool
		    If *True*, set all parameters to defaults
		    before processing other keyword arguments.  Default is
		    *False*.
		
		which : {'major', 'minor', 'both'}
		    Default is 'major'; apply arguments to *which* ticks.
		
		direction : {'in', 'out', 'inout'}
		    Puts ticks inside the axes, outside the axes, or both.
		
		length : float
		    Tick length in points.
		
		width : float
		    Tick width in points.
		
		color : color
		    Tick color; accepts any mpl color spec.
		
		pad : float
		    Distance in points between tick and label.
		
		labelsize : float or str
		    Tick label font size in points or as a string (e.g., 'large').
		
		labelcolor : color
		    Tick label color; mpl color spec.
		
		colors : color
		    Changes the tick color and the label color to the same value:
		    mpl color spec.
		
		zorder : float
		    Tick and label zorder.
		
		bottom, top, left, right : bool
		    Whether to draw the respective ticks.
		
		labelbottom, labeltop, labelleft, labelright : bool
		    Whether to draw the respective tick labels.
		
		labelrotation : float
		    Tick label rotation
		
		grid_color : color
		    Changes the gridline color to the given mpl color spec.
		
		grid_alpha : float
		    Transparency of gridlines: 0 (transparent) to 1 (opaque).
		
		grid_linewidth : float
		    Width of gridlines in points.
		
		grid_linestyle : string
		    Any valid `~matplotlib.lines.Line2D` line style spec.
		
		Examples
		--------
		
		Usage ::
		
		    ax.tick_params(direction='out', length=6, width=2, colors='r',
		                   grid_color='r', grid_alpha=0.5)
		
		This will make all major ticks be red, pointing out of the box,
		and with dimensions 6 points by 2 points.  Tick labels will
		also be red.  Gridlines will be red and translucent.
	**/
	public function tick_params(?axis:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Change the `~matplotlib.ticker.ScalarFormatter` used by
		default for linear axes.
		
		Optional keyword arguments:
		
		  ==============   =========================================
		  Keyword          Description
		  ==============   =========================================
		  *axis*           [ 'x' | 'y' | 'both' ]
		  *style*          [ 'sci' (or 'scientific') | 'plain' ]
		                   plain turns off scientific notation
		  *scilimits*      (m, n), pair of integers; if *style*
		                   is 'sci', scientific notation will
		                   be used for numbers outside the range
		                   10\ :sup:`m` to 10\ :sup:`n`.
		                   Use (0,0) to include all numbers.
		                   Use (m,m) where m <> 0 to fix the order
		                   of magnitude to 10\ :sup:`m`.
		  *useOffset*      [ bool | offset ]; if True,
		                   the offset will be calculated as needed;
		                   if False, no offset will be used; if a
		                   numeric offset is specified, it will be
		                   used.
		  *useLocale*      If True, format the number according to
		                   the current locale.  This affects things
		                   such as the character used for the
		                   decimal separator.  If False, use
		                   C-style (English) formatting.  The
		                   default setting is controlled by the
		                   axes.formatter.use_locale rcparam.
		  *useMathText*    If True, render the offset and scientific
		                   notation in mathtext
		  ==============   =========================================
		
		Only the major ticks are affected.
		If the method is called when the `~matplotlib.ticker.ScalarFormatter`
		is not the `~matplotlib.ticker.Formatter` being used, an
		`AttributeError` will be raised.
	**/
	public function ticklabel_format(?axis:Dynamic, ?style:Dynamic, ?scilimits:Dynamic, ?useOffset:Dynamic, ?useLocale:Dynamic, ?useMathText:Dynamic):Dynamic;
	/**
		Create a twin Axes sharing the xaxis
		
		Create a new Axes instance with an invisible x-axis and an independent
		y-axis positioned opposite to the original one (i.e. at right). The
		x-axis autoscale setting will be inherited from the original Axes.
		To ensure that the tick marks of both y-axes align, see
		`~matplotlib.ticker.LinearLocator`
		
		Returns
		-------
		ax_twin : Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twinx, pick
		events are only called for the artists in the top-most axes.
	**/
	public function twinx():Dynamic;
	/**
		Create a twin Axes sharing the yaxis
		
		Create a new Axes instance with an invisible y-axis and an independent
		x-axis positioned opposite to the original one (i.e. at top). The
		y-axis autoscale setting will be inherited from the original Axes.
		To ensure that the tick marks of both x-axes align, see
		`~matplotlib.ticker.LinearLocator`
		
		Returns
		-------
		ax_twin : Axes
		    The newly created Axes instance
		
		Notes
		-----
		For those who are 'picking' artists while using twiny, pick
		events are only called for the artists in the top-most axes.
	**/
	public function twiny():Dynamic;
	/**
		Update this artist's properties from the dictionary *props*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Extend the `~.Axes.dataLim` BBox to include the given points.
		
		If no data is set currently, the BBox will ignore its limits and set
		the bound to be the bounds of the xydata (*xys*). Otherwise, it will
		compute the bounds of the union of its current data and the data in
		*xys*.
		
		Parameters
		----------
		xys : 2D array-like
		    The points to include in the data limits BBox. This can be either
		    a list of (x, y) tuples or a Nx2 array.
		
		updatex, updatey : bool, optional, default *True*
		    Whether to update the x/y limits.
	**/
	public function update_datalim(xys:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Extend the `~.Axes.datalim` BBox to include the given
		`~matplotlib.transforms.Bbox`.
		
		Parameters
		----------
		bounds : `~matplotlib.transforms.Bbox`
	**/
	public function update_datalim_bounds(bounds:Dynamic):Dynamic;
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
	/**
		Sets up x-axis ticks and labels that treat the x data as dates.
		
		Parameters
		----------
		tz : string or `tzinfo` instance, optional
		    Timezone.  Defaults to :rc:`timezone`.
	**/
	public function xaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the x-axis is inverted.
		
		The axis is inverted if the left value is larger than the right value.
		
		See Also
		--------
		invert_xaxis
		get_xlim, set_xlim
		get_xbound, set_xbound
	**/
	public function xaxis_inverted():Dynamic;
	/**
		Sets up y-axis ticks and labels that treat the y data as dates.
		
		Parameters
		----------
		tz : string or `tzinfo` instance, optional
		    Timezone.  Defaults to :rc:`timezone`.
	**/
	public function yaxis_date(?tz:Dynamic):Dynamic;
	/**
		Return whether the y-axis is inverted.
		
		The axis is inverted if the bottom value is larger than the top value.
		
		See Also
		--------
		invert_yaxis
		get_ylim, set_ylim
		get_ybound, set_ybound
	**/
	public function yaxis_inverted():Dynamic;
	static public var zorder : Dynamic;
}