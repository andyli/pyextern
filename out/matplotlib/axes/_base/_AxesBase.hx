/* This file is generated, do not edit! */
package matplotlib.axes._base;
@:pythonImport("matplotlib.axes._base", "_AxesBase") extern class _AxesBase {
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
		Initialize self.  See help(type(self)) for accurate signature.
	**/
	@:native("__init__")
	public function ___init__(fig:Dynamic, rect:Dynamic, ?axisbg:Dynamic, ?frameon:Dynamic, ?sharex:Dynamic, ?sharey:Dynamic, ?label:Dynamic, ?xscale:Dynamic, ?yscale:Dynamic, kwargs:Dynamic):Dynamic;
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
	static public function __subclasshook__(args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		list of weak references to the object (if defined)
	**/
	static public var __weakref__ : Dynamic;
	/**
		Helper for :func:`~matplotlib.pyplot.gci`;
		do not use elsewhere.
	**/
	public function _gci():Dynamic;
	/**
		Returns the patch used to draw the background of the axes.  It
		is also used as the clipping path for any data elements on the
		axes.
		
		In the standard axes, this is a rectangle, but in other
		projections it may not be.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function _gen_axes_patch():Dynamic;
	/**
		Returns a dict whose keys are spine names and values are
		Line2D or Patch instances. Each element is used to draw a
		spine of the axes.
		
		In the standard axes, this is a single line segment, but in
		other projections it may not be.
		
		.. note::
		
		    Intended to be overridden by new projection types.
	**/
	public function _gen_axes_spines(?locations:Dynamic, ?offset:Dynamic, ?units:Dynamic):Dynamic;
	/**
		move this out of __init__ because non-separable axes don't use it
	**/
	public function _init_axis():Dynamic;
	/**
		make a twinx axes of self. This is used for twinx and twiny.
	**/
	public function _make_twin_axes(kl:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Look for unit *kwargs* and update the axis instances as necessary
	**/
	public function _process_unit_info(?xdata:Dynamic, ?ydata:Dynamic, ?kwargs:Dynamic):Dynamic;
	/**
		helper for :func:`~matplotlib.pyplot.sci`;
		do not use elsewhere.
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
		set the *dataLim* and *viewLim*
		:class:`~matplotlib.transforms.Bbox` attributes and the
		*transScale*, *transData*, *transLimits* and *transAxes*
		transformations.
		
		.. note::
		
		    This method is primarily used by rectilinear projections
		    of the :class:`~matplotlib.axes.Axes` class, and is meant
		    to be overridden by new kinds of projection axes that need
		    different transformations and limits. (See
		    :class:`~matplotlib.projections.polar.PolarAxes` for an
		    example.
	**/
	public function _set_lim_and_transforms():Dynamic;
	static public var _shared_x_axes : Dynamic;
	static public var _shared_y_axes : Dynamic;
	/**
		Figures out the data limit of the given line, updating self.dataLim.
	**/
	public function _update_line_limits(line:Dynamic):Dynamic;
	/**
		update the data limits for patch *p*
	**/
	public function _update_patch_limits(patch:Dynamic):Dynamic;
	public function _update_transScale():Dynamic;
	/**
		Add any :class:`~matplotlib.artist.Artist` to the axes.
		
		Use `add_artist` only for artists for which there is no dedicated
		"add" method; and if necessary, use a method such as
		`update_datalim` or `update_datalim_numerix` to manually update the
		dataLim if the artist is to be included in autoscaling.
		
		Returns the artist.
	**/
	public function add_artist(a:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.collections.Collection` instance
		to the axes.
		
		Returns the collection.
	**/
	public function add_collection(collection:Dynamic, ?autolim:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.container.Container` instance
		to the axes.
		
		Returns the collection.
	**/
	public function add_container(container:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.image.AxesImage` to the axes.
		
		Returns the image.
	**/
	public function add_image(image:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.lines.Line2D` to the list of plot
		lines
		
		Returns the line.
	**/
	public function add_line(line:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.patches.Patch` *p* to the list of
		axes patches; the clipbox will be set to the Axes clipping
		box.  If the transform is not set, it will be set to
		:attr:`transData`.
		
		Returns the patch.
	**/
	public function add_patch(p:Dynamic):Dynamic;
	/**
		Add a :class:`~matplotlib.tables.Table` instance to the
		list of axes tables
		
		Returns the table.
	**/
	public function add_table(tab:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		Use :meth:`_aspect` and :meth:`_adjustable` to modify the
		axes box or the view limits.
	**/
	public function apply_aspect(?position:Dynamic):Dynamic;
	/**
		Autoscale the axis view to the data (toggle).
		
		Convenience method for simple axis view autoscaling.
		It turns autoscaling on or off, and then,
		if autoscaling for either axis is on, it performs
		the autoscaling on the specified axis or axes.
		
		*enable*: [True | False | None]
		    True (default) turns autoscaling on, False turns it off.
		    None leaves the autoscaling state unchanged.
		
		*axis*: ['x' | 'y' | 'both']
		    which axis to operate on; default is 'both'
		
		*tight*: [True | False | None]
		    If True, set view limits to data limits;
		    if False, let the locator and margins expand the view limits;
		    if None, use tight scaling if the only artist is an image,
		    otherwise treat *tight* as False.
		    The *tight* setting is retained for future autoscaling
		    until it is explicitly changed.
		
		
		Returns None.
	**/
	public function autoscale(?enable:Dynamic, ?axis:Dynamic, ?tight:Dynamic):Dynamic;
	/**
		Autoscale the view limits using the data limits. You can
		selectively autoscale only a single axis, e.g., the xaxis by
		setting *scaley* to *False*.  The autoscaling preserves any
		axis direction reversal that has already been done.
		
		The data limits are not updated automatically when artist data are
		changed after the artist has been added to an Axes instance.  In that
		case, use :meth:`matplotlib.axes.Axes.relim` prior to calling
		autoscale_view.
	**/
	public function autoscale_view(?tight:Dynamic, ?scalex:Dynamic, ?scaley:Dynamic):Dynamic;
	/**
		Convenience method for manipulating the x and y view limits
		and the aspect ratio of the plot. For details, see
		:func:`~matplotlib.pyplot.axis`.
		
		*kwargs* are passed on to :meth:`set_xlim` and
		:meth:`set_ylim`
	**/
	public function axis(v:Dynamic, kwargs:Dynamic):Dynamic;
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
		clear the axes
	**/
	public function clear():Dynamic;
	/**
		Test whether the mouse event occured in the axes.
		
		Returns *True* / *False*, {}
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		Returns *True* if the point (tuple of x,y) is inside the axes
		(the area defined by the its patch). A pixel coordinate is
		required.
	**/
	public function contains_point(point:Dynamic):Dynamic;
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
		Draw everything (plot lines, axes, labels)
	**/
	public function draw(renderer:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
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
		Return a format string formatting the *x*, *y* coord
	**/
	public function format_coord(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Return *x* string formatted.  This function will use the attribute
		self.fmt_xdata if it is callable, else will fall back on the xaxis
		major formatter
	**/
	public function format_xdata(x:Dynamic):Dynamic;
	/**
		Return y string formatted.  This function will use the
		:attr:`fmt_ydata` attribute if it is callable, else will fall
		back on the yaxis major formatter
	**/
	public function format_ydata(y:Dynamic):Dynamic;
	public function get_adjustable():Dynamic;
	/**
		return filter function to be used for agg filter
	**/
	public function get_agg_filter():Dynamic;
	/**
		Return the alpha value used for blending - not supported on all
		backends
	**/
	public function get_alpha():Dynamic;
	public function get_anchor():Dynamic;
	/**
		Return the artist's animated state
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
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*
	**/
	public function get_axes():Dynamic;
	/**
		return axes_locator
	**/
	public function get_axes_locator():Dynamic;
	/**
		Return the axis background color
	**/
	public function get_axis_bgcolor():Dynamic;
	/**
		Get whether axis below is true or not
	**/
	public function get_axisbelow():Dynamic;
	/**
		return a list of child artists
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
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Return the cursor propertiess as a (*linewidth*, *color*)
		tuple, where *linewidth* is a float and *color* is an RGBA
		tuple
	**/
	public function get_cursor_props():Dynamic;
	/**
		Returns the aspect ratio of the raw data.
		
		This method is intended to be overridden by new projection
		types.
	**/
	public function get_data_ratio():Dynamic;
	/**
		Returns the aspect ratio of the raw data in log scale.
		Will be used when both axis scales are in log.
	**/
	public function get_data_ratio_log():Dynamic;
	public function get_default_bbox_extra_artists():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Get whether the axes rectangle patch is drawn
	**/
	public function get_frame_on():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		return a list of Axes images contained by the Axes
	**/
	public function get_images():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the legend.Legend instance, or None if no legend is defined
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
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
	/**
		Return the a copy of the axes rectangle as a Bbox
	**/
	public function get_position(?original:Dynamic):Dynamic;
	/**
		Get zorder value below which artists will be rasterized
	**/
	public function get_rasterization_zorder():Dynamic;
	/**
		return True if the artist is to be rasterized
	**/
	public function get_rasterized():Dynamic;
	public function get_renderer_cache():Dynamic;
	/**
		Return a copy of the shared axes Grouper object for x axes
	**/
	public function get_shared_x_axes():Dynamic;
	/**
		Return a copy of the shared axes Grouper object for y axes
	**/
	public function get_shared_y_axes():Dynamic;
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
		get the axes bounding box in display space; *args* and
		*kwargs* are empty
	**/
	public function get_window_extent(args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return the XAxis instance
	**/
	public function get_xaxis():Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, which
		will add the given amount of padding (in points) between the
		axes and the label.  The x-direction is in data coordinates
		and the y-direction is in axis coordinates.  Returns a
		3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing the secondary x-axis
		labels, which will add the given amount of padding (in points)
		between the axes and the label.  The x-direction is in data
		coordinates and the y-direction is in axis coordinates.
		Returns a 3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing x-axis labels, ticks
		and gridlines.  The x-direction is in data coordinates and the
		y-direction is in axis coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_xaxis_transform(?which:Dynamic):Dynamic;
	/**
		Returns the x-axis numerical bounds where::
		
		  lowerBound < upperBound
	**/
	public function get_xbound():Dynamic;
	/**
		Get the x grid lines as a list of Line2D instances
	**/
	public function get_xgridlines():Dynamic;
	/**
		Get the x-axis range [*left*, *right*]
	**/
	public function get_xlim():Dynamic;
	/**
		Get the xtick labels as a list of :class:`~matplotlib.text.Text`
		instances.
	**/
	public function get_xmajorticklabels():Dynamic;
	/**
		Get the x minor tick labels as a list of
		:class:`matplotlib.text.Text` instances.
	**/
	public function get_xminorticklabels():Dynamic;
	/**
		Return the xaxis scale string: linear, log, symlog
	**/
	public function get_xscale():Dynamic;
	/**
		Get the x tick labels as a list of :class:`~matplotlib.text.Text`
		instances.
		
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
		   List of :class:`~matplotlib.text.Text` instances.
	**/
	public function get_xticklabels(?minor:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Get the xtick lines as a list of Line2D instances
	**/
	public function get_xticklines():Dynamic;
	/**
		Return the x ticks as a list of locations
	**/
	public function get_xticks(?minor:Dynamic):Dynamic;
	/**
		Return the YAxis instance
	**/
	public function get_yaxis():Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, which
		will add the given amount of padding (in points) between the
		axes and the label.  The x-direction is in axis coordinates
		and the y-direction is in data coordinates.  Returns a 3-tuple
		of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_text1_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing the secondary y-axis
		labels, which will add the given amount of padding (in points)
		between the axes and the label.  The x-direction is in axis
		coordinates and the y-direction is in data coordinates.
		Returns a 3-tuple of the form::
		
		  (transform, valign, halign)
		
		where *valign* and *halign* are requested alignments for the
		text.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_text2_transform(pad_points:Dynamic):Dynamic;
	/**
		Get the transformation used for drawing y-axis labels, ticks
		and gridlines.  The x-direction is in axis coordinates and the
		y-direction is in data coordinates.
		
		.. note::
		
		    This transformation is primarily used by the
		    :class:`~matplotlib.axis.Axis` class, and is meant to be
		    overridden by new kinds of projections that may need to
		    place axis elements in different locations.
	**/
	public function get_yaxis_transform(?which:Dynamic):Dynamic;
	/**
		Return y-axis numerical bounds in the form of
		``lowerBound < upperBound``
	**/
	public function get_ybound():Dynamic;
	/**
		Get the y grid lines as a list of Line2D instances
	**/
	public function get_ygridlines():Dynamic;
	/**
		Get the y-axis range [*bottom*, *top*]
	**/
	public function get_ylim():Dynamic;
	/**
		Get the major y tick labels as a list of
		:class:`~matplotlib.text.Text` instances.
	**/
	public function get_ymajorticklabels():Dynamic;
	/**
		Get the minor y tick labels as a list of
		:class:`~matplotlib.text.Text` instances.
	**/
	public function get_yminorticklabels():Dynamic;
	/**
		Return the yaxis scale string: linear, log, symlog
	**/
	public function get_yscale():Dynamic;
	/**
		Get the x tick labels as a list of :class:`~matplotlib.text.Text`
		instances.
		
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
		   List of :class:`~matplotlib.text.Text` instances.
	**/
	public function get_yticklabels(?minor:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Get the ytick lines as a list of Line2D instances
	**/
	public function get_yticklines():Dynamic;
	/**
		Return the y ticks as a list of locations
	**/
	public function get_yticks(?minor:Dynamic):Dynamic;
	/**
		Return the :class:`Artist`'s zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Turn the axes grids on or off.
		
		Call signature::
		
		   grid(self, b=None, which='major', axis='both', **kwargs)
		
		Set the axes grids on or off; *b* is a boolean.  (For MATLAB
		compatibility, *b* may also be a string, 'on' or 'off'.)
		
		If *b* is *None* and ``len(kwargs)==0``, toggle the grid state.  If
		*kwargs* are supplied, it is assumed that you want a grid and *b*
		is thus set to *True*.
		
		*which* can be 'major' (default), 'minor', or 'both' to control
		whether major tick grids, minor tick grids, or both are affected.
		
		*axis* can be 'both' (default), 'x', or 'y' to control which
		set of gridlines are drawn.
		
		*kwargs* are used to set the grid line properties, e.g.,::
		
		   ax.grid(color='r', linestyle='-', linewidth=2)
		
		Valid :class:`~matplotlib.lines.Line2D` kwargs are
		
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
		  linestyle or ls: [``'-'`` | ``'--'`` | ``'-.'`` | ``':'`` | ``'None'`` |                   ``' '`` | ``''``]
		  linewidth or lw: float value in points         
		  lod: [True | False]         
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
	**/
	public function grid(?b:Dynamic, ?which:Dynamic, ?axis:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Return *True* if any artists have been added to axes.
		
		This should not be used to determine whether the *dataLim*
		need to be updated, and may not actually be useful for
		anything.
	**/
	public function has_data():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		Call signature::
		
		  hold(b=None)
		
		Set the hold state.  If *hold* is *None* (default), toggle the
		*hold* state.  Else set the *hold* state to boolean value *b*.
		
		Examples::
		
		  # toggle hold
		  hold()
		
		  # turn hold on
		  hold(True)
		
		  # turn hold off
		  hold(False)
		
		When hold is *True*, subsequent plot commands will be added to
		the current axes.  When hold is *False*, the current axes and
		figure will be cleared on the next plot command
	**/
	public function hold(?b:Dynamic):Dynamic;
	/**
		Return *True* if the given *mouseevent* (in display coords)
		is in the Axes
	**/
	public function in_axes(mouseevent:Dynamic):Dynamic;
	/**
		Invert the x-axis.
	**/
	public function invert_xaxis():Dynamic;
	/**
		Invert the y-axis.
	**/
	public function invert_yaxis():Dynamic;
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
	/**
		return the HOLD status of the axes
	**/
	public function ishold():Dynamic;
	/**
		Control behavior of tick locators.
		
		Keyword arguments:
		
		*axis*
		    ['x' | 'y' | 'both']  Axis on which to operate;
		    default is 'both'.
		
		*tight*
		    [True | False | None] Parameter passed to :meth:`autoscale_view`.
		    Default is None, for no change.
		
		Remaining keyword arguments are passed to directly to the
		:meth:`~matplotlib.ticker.MaxNLocator.set_params` method.
		
		Typically one might want to reduce the maximum number
		of ticks and use tight bounds when plotting small
		subplots, for example::
		
		    ax.locator_params(tight=True, nbins=4)
		
		Because the locator is involved in autoscaling,
		:meth:`autoscale_view` is called automatically after
		the parameters are changed.
		
		This presently works only for the
		:class:`~matplotlib.ticker.MaxNLocator` used
		by default on linear axes, but it may be generalized.
	**/
	public function locator_params(?axis:Dynamic, ?tight:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set or retrieve autoscaling margins.
		
		signatures::
		
		    margins()
		
		returns xmargin, ymargin
		
		::
		
		    margins(margin)
		
		    margins(xmargin, ymargin)
		
		    margins(x=xmargin, y=ymargin)
		
		    margins(..., tight=False)
		
		All three forms above set the xmargin and ymargin parameters.
		All keyword parameters are optional.  A single argument
		specifies both xmargin and ymargin.  The *tight* parameter
		is passed to :meth:`autoscale_view`, which is executed after
		a margin is changed; the default here is *True*, on the
		assumption that when margins are specified, no additional
		padding to match tick marks is usually desired.  Setting
		*tight* to *None* will preserve the previous setting.
		
		Specifying any margin changes only the autoscaling; for example,
		if *xmargin* is not None, then *xmargin* times the X data
		interval will be added to each end of that interval before
		it is used in autoscaling.
	**/
	public function margins(args:Dynamic, kw:Dynamic):Dynamic;
	/**
		Remove minor ticks from the axes.
	**/
	public function minorticks_off():Dynamic;
	/**
		Add autoscaling minor ticks to the axes.
	**/
	public function minorticks_on():Dynamic;
	static public var name : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		Call signature::
		
		    pick(mouseevent)
		
		each child artist will fire a pick event if mouseevent is over
		the artist and the artist has picker set
	**/
	public function pick(args:Dynamic):Dynamic;
	/**
		Return *True* if :class:`Artist` is pickable.
	**/
	public function pickable():Dynamic;
	/**
		return a dictionary mapping property name -> value for all Artist props
	**/
	public function properties():Dynamic;
	/**
		This method can only be used after an initial draw which
		caches the renderer.  It is used to efficiently update Axes
		data (axis ticks, labels, etc are not updated)
	**/
	public function redraw_in_frame():Dynamic;
	/**
		Recompute the data limits based on current artists. If you want to
		exclude invisible artists from the calculation, set
		``visible_only=True``
		
		At present, :class:`~matplotlib.collections.Collection`
		instances are not supported.
	**/
	public function relim(?visible_only:Dynamic):Dynamic;
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
		Make the original position the active position
	**/
	public function reset_position():Dynamic;
	/**
		A tkstyle set command, pass *kwargs* to set properties
	**/
	public function set(kwargs:Dynamic):Dynamic;
	/**
		ACCEPTS: [ 'box' | 'datalim' | 'box-forced']
	**/
	public function set_adjustable(adjustable:Dynamic):Dynamic;
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
		*anchor*
		
		  =====  ============
		  value  description
		  =====  ============
		  'C'    Center
		  'SW'   bottom left
		  'S'    bottom
		  'SE'   bottom right
		  'E'    right
		  'NE'   top right
		  'N'    top
		  'NW'   top left
		  'W'    left
		  =====  ============
	**/
	public function set_anchor(anchor:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		*aspect*
		
		  ========   ================================================
		  value      description
		  ========   ================================================
		  'auto'     automatic; fill position rectangle with data
		  'normal'   same as 'auto'; deprecated
		  'equal'    same scaling from data to plot units for x and y
		   num       a circle will be stretched such that the height
		             is num times the width. aspect=1 is the same as
		             aspect='equal'.
		  ========   ================================================
		
		*adjustable*
		
		  ============   =====================================
		  value          description
		  ============   =====================================
		  'box'          change physical size of axes
		  'datalim'      change xlim or ylim
		  'box-forced'   same as 'box', but axes can be shared
		  ============   =====================================
		
		'box' does not allow axes sharing, as this can cause
		unintended side effect. For cases when sharing axes is
		fine, use 'box-forced'.
		
		*anchor*
		
		  =====   =====================
		  value   description
		  =====   =====================
		  'C'     centered
		  'SW'    lower left corner
		  'S'     middle of bottom edge
		  'SE'    lower right corner
		  etc.
		  =====   =====================
		
		.. deprecated:: 1.2
		    the option 'normal' for aspect is deprecated. Use 'auto' instead.
	**/
	public function set_aspect(aspect:Dynamic, ?adjustable:Dynamic, ?anchor:Dynamic):Dynamic;
	/**
		Set whether autoscaling is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscale_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the x-axis is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscalex_on(b:Dynamic):Dynamic;
	/**
		Set whether autoscaling for the y-axis is applied on plot commands
		
		accepts: [ *True* | *False* ]
	**/
	public function set_autoscaley_on(b:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		set axes_locator
		
		ACCEPT: a callable object which takes an axes instance and renderer and
		         returns a bbox.
	**/
	public function set_axes_locator(locator:Dynamic):Dynamic;
	/**
		set the axes background color
		
		ACCEPTS: any matplotlib color - see
		:func:`~matplotlib.pyplot.colors`
	**/
	public function set_axis_bgcolor(color:Dynamic):Dynamic;
	/**
		turn off the axis
	**/
	public function set_axis_off():Dynamic;
	/**
		turn on the axis
	**/
	public function set_axis_on():Dynamic;
	/**
		Set whether the axis ticks and gridlines are above or below most
		artists
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_axisbelow(b:Dynamic):Dynamic;
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
		Set the color cycle for any future plot commands on this Axes.
		
		*clist* is a list of mpl color specifiers.
	**/
	public function set_color_cycle(clist:Dynamic):Dynamic;
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
		Set the cursor property as::
		
		  ax.set_cursor_props(linewidth, color)
		
		or::
		
		  ax.set_cursor_props((linewidth, color))
		
		ACCEPTS: a (*float*, *color*) tuple
	**/
	public function set_cursor_props(args:Dynamic):Dynamic;
	/**
		Set the class:`~matplotlib.axes.Axes` figure
		
		accepts a class:`~matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the axes rectangle patch is drawn
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_frame_on(b:Dynamic):Dynamic;
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
		Set Level of Detail on or off.  If on, the artists may examine
		things like the pixel width of the axes and draw a subset of
		their contents accordingly
		
		ACCEPTS: [True | False]
	**/
	public function set_lod(on:Dynamic):Dynamic;
	/**
		Set whether the axes responds to navigation toolbar commands
		
		ACCEPTS: [ *True* | *False* ]
	**/
	public function set_navigate(b:Dynamic):Dynamic;
	/**
		Set the navigation toolbar button status;
		
		.. warning::
		    this is not a user-API function.
	**/
	public function set_navigate_mode(b:Dynamic):Dynamic;
	/**
		set path_effects, which should be a list of instances of
		matplotlib.patheffect._Base class or its derivatives.
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
		
		ACCEPTS: [None|float|boolean|callable]
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Set the axes position with::
		
		  pos = [left, bottom, width, height]
		
		in relative 0,1 coords, or *pos* can be a
		:class:`~matplotlib.transforms.Bbox`
		
		There are two position variables: one which is ultimately
		used, but which may be modified by :meth:`apply_aspect`, and a
		second which is the starting point for :meth:`apply_aspect`.
		
		
		Optional keyword arguments:
		  *which*
		
		    ==========   ====================
		    value        description
		    ==========   ====================
		    'active'     to change the first
		    'original'   to change the second
		    'both'       to change both
		    ==========   ====================
	**/
	public function set_position(pos:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Set zorder value below which artists will be rasterized.  Set
		to `None` to disable rasterizing of artists below a particular
		zorder.
	**/
	public function set_rasterization_zorder(z:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior
		
		ACCEPTS: [True | False | None]
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Sets the the sketch parameters.
		
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
		Set the :class:`~matplotlib.transforms.Transform` instance
		used by this artist.
		
		ACCEPTS: :class:`~matplotlib.transforms.Transform` instance
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
		Set the lower and upper numerical bounds of the x-axis.
		This method will honor axes inversion regardless of parameter order.
		It will not change the _autoscaleXon attribute.
	**/
	public function set_xbound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_xlim(self, *args, **kwargs):
		
		Set the data limits for the xaxis
		
		Examples::
		
		  set_xlim((left, right))
		  set_xlim(left, right)
		  set_xlim(left=1) # right unchanged
		  set_xlim(right=1) # left unchanged
		
		Keyword arguments:
		
		  *left*: scalar
		    The left xlim; *xmin*, the previous name, may still be used
		
		  *right*: scalar
		    The right xlim; *xmax*, the previous name, may still be used
		
		  *emit*: [ *True* | *False* ]
		    Notify observers of limit change
		
		  *auto*: [ *True* | *False* | *None* ]
		    Turn *x* autoscaling on (*True*), off (*False*; default),
		    or leave unchanged (*None*)
		
		Note, the *left* (formerly *xmin*) value may be greater than
		the *right* (formerly *xmax*).
		For example, suppose *x* is years before present.
		Then one might use::
		
		  set_ylim(5000, 0)
		
		so 5000 years ago is on the left of the plot and the
		present is on the right.
		
		Returns the current xlimits as a length 2 tuple
		
		ACCEPTS: length 2 sequence of floats
	**/
	public function set_xlim(?left:Dynamic, ?right:Dynamic, ?emit:Dynamic, ?auto:Dynamic, kw:Dynamic):Dynamic;
	/**
		Set padding of X data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		
		accepts: float in range 0 to 1
	**/
	public function set_xmargin(m:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_xscale(value)
		
		Set the scaling of the x-axis: 'linear' | 'log' | 'symlog'
		
		ACCEPTS: ['linear' | 'log' | 'symlog']
		
		Different kwargs are accepted, depending on the scale:
		    'linear'
		
		        
		
		
		    'log'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *nonposx* /*nonposy*: ['mask' | 'clip' ]
		          non-positive values in *x* or *y* can be masked as
		          invalid, or clipped to a very small positive number
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		
		
		    'symlog'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *linthreshx* /*linthreshy*:
		          The range (-*x*, *x*) within which the plot is linear (to
		          avoid having the plot go to infinity around zero).
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		        
		        *linscalex* /*linscaley*:
		           This allows the linear range (-*linthresh* to *linthresh*)
		           to be stretched relative to the logarithmic range.  Its
		           value is the number of decades to use for each half of the
		           linear range.  For example, when *linscale* == 1.0 (the
		           default), the space used for the positive and negative
		           halves of the linear range will be equal to one decade in
		           the logarithmic range.
	**/
	public function set_xscale(value:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_xticklabels(labels, fontdict=None, minor=False, **kwargs)
		
		Set the xtick labels with list of strings *labels*. Return a
		list of axis text instances.
		
		*kwargs* set the :class:`~matplotlib.text.Text` properties.
		Valid properties are
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  backgroundcolor: any matplotlib color         
		  bbox: rectangle prop dict         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: any matplotlib color         
		  contains: a callable function         
		  family or name or fontfamily or fontname: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fontproperties or font_properties: a :class:`matplotlib.font_manager.FontProperties` instance         
		  gid: an id string         
		  horizontalalignment or ha: [ 'center' | 'right' | 'left' ]         
		  label: string or anything printable with '%s' conversion.         
		  linespacing: float (multiple of font size)         
		  lod: [True | False]         
		  multialignment: ['left' | 'right' | 'center' ]         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: (x,y)         
		  rasterized: [True | False | None]         
		  rotation: [ angle in degrees | 'vertical' | 'horizontal' ]         
		  rotation_mode: unknown
		  size or fontsize: [size in points | 'xx-small' | 'x-small' | 'small' |                   'medium' | 'large' | 'x-large' | 'xx-large' ]         
		  sketch_params: unknown
		  snap: unknown
		  stretch or fontstretch: [a numeric value in range 0-1000 | 'ultra-condensed' |                   'extra-condensed' | 'condensed' | 'semi-condensed' |                   'normal' | 'semi-expanded' | 'expanded' | 'extra-expanded' |                   'ultra-expanded' ]         
		  style or fontstyle: [ 'normal' | 'italic' | 'oblique']         
		  text: string or anything printable with '%s' conversion.         
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  variant or fontvariant: [ 'normal' | 'small-caps' ]         
		  verticalalignment or ma or va: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  x: float         
		  y: float         
		  zorder: any number         
		
		ACCEPTS: sequence of strings
	**/
	public function set_xticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set the x ticks with list of *ticks*
		
		ACCEPTS: sequence of floats
	**/
	public function set_xticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the lower and upper numerical bounds of the y-axis.
		This method will honor axes inversion regardless of parameter order.
		It will not change the _autoscaleYon attribute.
	**/
	public function set_ybound(?lower:Dynamic, ?upper:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_ylim(self, *args, **kwargs):
		
		Set the data limits for the yaxis
		
		Examples::
		
		  set_ylim((bottom, top))
		  set_ylim(bottom, top)
		  set_ylim(bottom=1) # top unchanged
		  set_ylim(top=1) # bottom unchanged
		
		Keyword arguments:
		
		  *bottom*: scalar
		    The bottom ylim; the previous name, *ymin*, may still be used
		
		  *top*: scalar
		    The top ylim; the previous name, *ymax*, may still be used
		
		  *emit*: [ *True* | *False* ]
		    Notify observers of limit change
		
		  *auto*: [ *True* | *False* | *None* ]
		    Turn *y* autoscaling on (*True*), off (*False*; default),
		    or leave unchanged (*None*)
		
		Note, the *bottom* (formerly *ymin*) value may be greater than
		the *top* (formerly *ymax*).
		For example, suppose *y* is depth in the ocean.
		Then one might use::
		
		  set_ylim(5000, 0)
		
		so 5000 m depth is at the bottom of the plot and the
		surface, 0 m, is at the top.
		
		Returns the current ylimits as a length 2 tuple
		
		ACCEPTS: length 2 sequence of floats
	**/
	public function set_ylim(?bottom:Dynamic, ?top:Dynamic, ?emit:Dynamic, ?auto:Dynamic, kw:Dynamic):Dynamic;
	/**
		Set padding of Y data limits prior to autoscaling.
		
		*m* times the data interval will be added to each
		end of that interval before it is used in autoscaling.
		
		accepts: float in range 0 to 1
	**/
	public function set_ymargin(m:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_yscale(value)
		
		Set the scaling of the y-axis: 'linear' | 'log' | 'symlog'
		
		ACCEPTS: ['linear' | 'log' | 'symlog']
		
		Different kwargs are accepted, depending on the scale:
		    'linear'
		
		        
		
		
		    'log'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *nonposx* /*nonposy*: ['mask' | 'clip' ]
		          non-positive values in *x* or *y* can be masked as
		          invalid, or clipped to a very small positive number
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		
		
		    'symlog'
		
		        *basex* /*basey*:
		           The base of the logarithm
		        
		        *linthreshx* /*linthreshy*:
		          The range (-*x*, *x*) within which the plot is linear (to
		          avoid having the plot go to infinity around zero).
		        
		        *subsx* /*subsy*:
		           Where to place the subticks between each major tick.
		           Should be a sequence of integers.  For example, in a log10
		           scale: ``[2, 3, 4, 5, 6, 7, 8, 9]``
		        
		           will place 8 logarithmically spaced minor ticks between
		           each major tick.
		        
		        *linscalex* /*linscaley*:
		           This allows the linear range (-*linthresh* to *linthresh*)
		           to be stretched relative to the logarithmic range.  Its
		           value is the number of decades to use for each half of the
		           linear range.  For example, when *linscale* == 1.0 (the
		           default), the space used for the positive and negative
		           halves of the linear range will be equal to one decade in
		           the logarithmic range.
	**/
	public function set_yscale(value:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Call signature::
		
		  set_yticklabels(labels, fontdict=None, minor=False, **kwargs)
		
		Set the y tick labels with list of strings *labels*.  Return a list of
		:class:`~matplotlib.text.Text` instances.
		
		*kwargs* set :class:`~matplotlib.text.Text` properties for the labels.
		Valid properties are
		  agg_filter: unknown
		  alpha: float (0.0 transparent through 1.0 opaque)         
		  animated: [True | False]         
		  axes: an :class:`~matplotlib.axes.Axes` instance         
		  backgroundcolor: any matplotlib color         
		  bbox: rectangle prop dict         
		  clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		  clip_on: [True | False]         
		  clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		  color: any matplotlib color         
		  contains: a callable function         
		  family or name or fontfamily or fontname: [FONTNAME | 'serif' | 'sans-serif' | 'cursive' | 'fantasy' |                   'monospace' ]         
		  figure: a :class:`matplotlib.figure.Figure` instance         
		  fontproperties or font_properties: a :class:`matplotlib.font_manager.FontProperties` instance         
		  gid: an id string         
		  horizontalalignment or ha: [ 'center' | 'right' | 'left' ]         
		  label: string or anything printable with '%s' conversion.         
		  linespacing: float (multiple of font size)         
		  lod: [True | False]         
		  multialignment: ['left' | 'right' | 'center' ]         
		  path_effects: unknown
		  picker: [None|float|boolean|callable]         
		  position: (x,y)         
		  rasterized: [True | False | None]         
		  rotation: [ angle in degrees | 'vertical' | 'horizontal' ]         
		  rotation_mode: unknown
		  size or fontsize: [size in points | 'xx-small' | 'x-small' | 'small' |                   'medium' | 'large' | 'x-large' | 'xx-large' ]         
		  sketch_params: unknown
		  snap: unknown
		  stretch or fontstretch: [a numeric value in range 0-1000 | 'ultra-condensed' |                   'extra-condensed' | 'condensed' | 'semi-condensed' |                   'normal' | 'semi-expanded' | 'expanded' | 'extra-expanded' |                   'ultra-expanded' ]         
		  style or fontstyle: [ 'normal' | 'italic' | 'oblique']         
		  text: string or anything printable with '%s' conversion.         
		  transform: :class:`~matplotlib.transforms.Transform` instance         
		  url: a url string         
		  variant or fontvariant: [ 'normal' | 'small-caps' ]         
		  verticalalignment or ma or va: [ 'center' | 'top' | 'bottom' | 'baseline' ]         
		  visible: [True | False]         
		  weight or fontweight: [a numeric value in range 0-1000 | 'ultralight' | 'light' |                   'normal' | 'regular' | 'book' | 'medium' | 'roman' |                   'semibold' | 'demibold' | 'demi' | 'bold' | 'heavy' |                   'extra bold' | 'black' ]         
		  x: float         
		  y: float         
		  zorder: any number         
		
		ACCEPTS: sequence of strings
	**/
	public function set_yticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Set the y ticks with list of *ticks*
		
		ACCEPTS: sequence of floats
		
		Keyword arguments:
		
		  *minor*: [ *False* | *True* ]
		    Sets the minor ticks if *True*
	**/
	public function set_yticks(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		ACCEPTS: any number
	**/
	public function set_zorder(level:Dynamic):Dynamic;
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
		Change the appearance of ticks and tick labels.
		
		Keyword arguments:
		
		*axis* : ['x' | 'y' | 'both']
		    Axis on which to operate; default is 'both'.
		
		*reset* : [True | False]
		    If *True*, set all parameters to defaults
		    before processing other keyword arguments.  Default is
		    *False*.
		
		*which* : ['major' | 'minor' | 'both']
		    Default is 'major'; apply arguments to *which* ticks.
		
		*direction* : ['in' | 'out' | 'inout']
		    Puts ticks inside the axes, outside the axes, or both.
		
		*length*
		    Tick length in points.
		
		*width*
		    Tick width in points.
		
		*color*
		    Tick color; accepts any mpl color spec.
		
		*pad*
		    Distance in points between tick and label.
		
		*labelsize*
		    Tick label font size in points or as a string (e.g., 'large').
		
		*labelcolor*
		    Tick label color; mpl color spec.
		
		*colors*
		    Changes the tick color and the label color to the same value:
		    mpl color spec.
		
		*zorder*
		    Tick and label zorder.
		
		*bottom*, *top*, *left*, *right* : [bool | 'on' | 'off']
		    controls whether to draw the respective ticks.
		
		*labelbottom*, *labeltop*, *labelleft*, *labelright*
		    Boolean or ['on' | 'off'], controls whether to draw the
		    respective tick labels.
		
		Example::
		
		    ax.tick_params(direction='out', length=6, width=2, colors='r')
		
		This will make all major ticks be red, pointing out of the box,
		and with dimensions 6 points by 2 points.  Tick labels will
		also be red.
	**/
	public function tick_params(?axis:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		Change the `~matplotlib.ticker.ScalarFormatter` used by
		default for linear axes.
		
		Optional keyword arguments:
		
		  ============   =========================================
		  Keyword        Description
		  ============   =========================================
		  *style*        [ 'sci' (or 'scientific') | 'plain' ]
		                 plain turns off scientific notation
		  *scilimits*    (m, n), pair of integers; if *style*
		                 is 'sci', scientific notation will
		                 be used for numbers outside the range
		                 10`m`:sup: to 10`n`:sup:.
		                 Use (0,0) to include all numbers.
		  *useOffset*    [True | False | offset]; if True,
		                 the offset will be calculated as needed;
		                 if False, no offset will be used; if a
		                 numeric offset is specified, it will be
		                 used.
		  *axis*         [ 'x' | 'y' | 'both' ]
		  *useLocale*    If True, format the number according to
		                 the current locale.  This affects things
		                 such as the character used for the
		                 decimal separator.  If False, use
		                 C-style (English) formatting.  The
		                 default setting is controlled by the
		                 axes.formatter.use_locale rcparam.
		  ============   =========================================
		
		Only the major ticks are affected.
		If the method is called when the
		:class:`~matplotlib.ticker.ScalarFormatter` is not the
		:class:`~matplotlib.ticker.Formatter` being used, an
		:exc:`AttributeError` will be raised.
	**/
	public function ticklabel_format(kwargs:Dynamic):Dynamic;
	/**
		Call signature::
		
		  ax = twinx()
		
		create a twin of Axes for generating a plot with a sharex
		x-axis but independent y axis.  The y-axis of self will have
		ticks on left and the returned axes will have ticks on the
		right.
		
		.. note::
		    For those who are 'picking' artists while using twinx, pick
		    events are only called for the artists in the top-most axes.
	**/
	public function twinx():Dynamic;
	/**
		Call signature::
		
		  ax = twiny()
		
		create a twin of Axes for generating a plot with a shared
		y-axis but independent x axis.  The x-axis of self will have
		ticks on bottom and the returned axes will have ticks on the
		top.
		
		.. note::
		    For those who are 'picking' artists while using twiny, pick
		    events are only called for the artists in the top-most axes.
	**/
	public function twiny():Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		Update the data lim bbox with seq of xy tups or equiv. 2-D array
	**/
	public function update_datalim(xys:Dynamic, ?updatex:Dynamic, ?updatey:Dynamic):Dynamic;
	/**
		Update the datalim to include the given
		:class:`~matplotlib.transforms.Bbox` *bounds*
	**/
	public function update_datalim_bounds(bounds:Dynamic):Dynamic;
	/**
		Update the data lim bbox with seq of xy tups
	**/
	public function update_datalim_numerix(x:Dynamic, y:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		Sets up x-axis ticks and labels that treat the x data as dates.
		
		*tz* is a timezone string or :class:`tzinfo` instance.
		Defaults to rc value.
	**/
	public function xaxis_date(?tz:Dynamic):Dynamic;
	/**
		Returns *True* if the x-axis is inverted.
	**/
	public function xaxis_inverted():Dynamic;
	/**
		Sets up y-axis ticks and labels that treat the y data as dates.
		
		*tz* is a timezone string or :class:`tzinfo` instance.
		Defaults to rc value.
	**/
	public function yaxis_date(?tz:Dynamic):Dynamic;
	/**
		Returns *True* if the y-axis is inverted.
	**/
	public function yaxis_inverted():Dynamic;
	static public var zorder : Dynamic;
}