/* This file is generated, do not edit! */
package matplotlib.axis;
@:pythonImport("matplotlib.axis", "Axis") extern class Axis {
	static public var OFFSETTEXTPAD : Dynamic;
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
		axes : `matplotlib.axes.Axes`
		    The `~.axes.Axes` to which the created Axis belongs.
		pickradius : float
		    The acceptance radius for containment tests. See also
		    `.Axis.contains`.
	**/
	@:native("__init__")
	public function ___init__(axes:Dynamic, ?pickradius:Dynamic):Dynamic;
	/**
		Parameters
		----------
		axes : `matplotlib.axes.Axes`
		    The `~.axes.Axes` to which the created Axis belongs.
		pickradius : float
		    The acceptance radius for containment tests. See also
		    `.Axis.contains`.
	**/
	public function new(axes:Dynamic, ?pickradius:Dynamic):Void;
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
	/**
		Copy the props from src tick to dest tick
	**/
	public function _copy_tick_props(src:Dynamic, dest:Dynamic):Dynamic;
	public function _get_label():Dynamic;
	public function _get_offset_text():Dynamic;
	/**
		return the default tick instance
	**/
	public function _get_tick(major:Dynamic):Dynamic;
	/**
		Return lists of bboxes for ticks' label1's and label2's.
	**/
	public function _get_tick_bboxes(ticks:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Get the bounding boxes for this `.axis` and its siblings
		as set by `.Figure.align_xlabels` or  `.Figure.align_ylablels`.
		
		By default it just gets bboxes for self.
	**/
	public function _get_tick_boxes_siblings(xdir:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Helper for `XAxis.get_ticks_position` and `YAxis.get_ticks_position`.
		
		Check the visibility of tick1line, label1, tick2line, and label2 on
		the first major and the first minor ticks, and return
		
		- 1 if only tick1line and label1 are visible (which corresponds to
		  "bottom" for the x-axis and "left" for the y-axis);
		- 2 if only tick2line and label2 are visible (which corresponds to
		  "top" for the x-axis and "right" for the y-axis);
		- "default" if only tick1line, tick2line and label1 are visible;
		- "unknown" otherwise.
	**/
	public function _get_ticks_position():Dynamic;
	static public var _prop_order : Dynamic;
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_scale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _translate_tick_kw(kw:Dynamic):Dynamic;
	/**
		check the axis converter for the stored units to see if the
		axis info needs to be updated
	**/
	public function _update_axisinfo():Dynamic;
	/**
		Update the label position based on the bounding box enclosing
		all the ticklabels and axis spine
	**/
	public function _update_label_position(renderer:Dynamic):Dynamic;
	/**
		Update the label position based on the sequence of bounding
		boxes of all the ticklabels
	**/
	public function _update_offset_text_position(bboxes:Dynamic, bboxes2:Dynamic):Dynamic;
	/**
		Update ticks (position and labels) using the current data interval of
		the axes.  Return the list of ticks that will be drawn.
	**/
	public function _update_ticks():Dynamic;
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
		Sets up x-axis ticks and labels that treat the x data as dates.
		
		Parameters
		----------
		tz : tzinfo or str or None
		    The timezone used to create date labels.
	**/
	public function axis_date(?tz:Dynamic):Dynamic;
	/**
		clear the current axis
	**/
	public function cla():Dynamic;
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
	public function convert_units(x:Dynamic):Dynamic;
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
		Draw the axis lines, grid lines, tick lines and labels
	**/
	public function draw(renderer:Dynamic, ?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Return the Interval instance for this axis data limits.
	**/
	public function get_data_interval():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Return the grid lines as a list of Line2D instance
	**/
	public function get_gridlines():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Return whether the axis is oriented in the "inverse" direction.
		
		The "normal" direction is increasing to the right for the x-axis and to
		the top for the y-axis; the "inverse" direction is increasing to the
		left for the x-axis and to the bottom for the y-axis.
	**/
	public function get_inverted():Dynamic;
	/**
		Return the axis label as a Text instance
	**/
	public function get_label():Dynamic;
	/**
		Return the label position (top or bottom)
	**/
	public function get_label_position():Dynamic;
	/**
		Get the text of the label
	**/
	public function get_label_text():Dynamic;
	/**
		Get the formatter of the major ticker
	**/
	public function get_major_formatter():Dynamic;
	/**
		Get the locator of the major ticker
	**/
	public function get_major_locator():Dynamic;
	/**
		Get the tick instances; grow as necessary.
	**/
	public function get_major_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return a list of Text instances for the major ticklabels.
	**/
	public function get_majorticklabels():Dynamic;
	/**
		Return the major tick lines as a list of Line2D instances
	**/
	public function get_majorticklines():Dynamic;
	/**
		Get the array of major tick locations in data coordinates.
	**/
	public function get_majorticklocs():Dynamic;
	/**
		Get the formatter of the minor ticker
	**/
	public function get_minor_formatter():Dynamic;
	/**
		Get the locator of the minor ticker
	**/
	public function get_minor_locator():Dynamic;
	/**
		Get the minor tick instances; grow as necessary.
	**/
	public function get_minor_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return a list of Text instances for the minor ticklabels.
	**/
	public function get_minorticklabels():Dynamic;
	/**
		Return the minor tick lines as a list of Line2D instances
	**/
	public function get_minorticklines():Dynamic;
	/**
		Get the array of minor tick locations in data coordinates.
	**/
	public function get_minorticklocs():Dynamic;
	public function get_minpos():Dynamic;
	/**
		Return the axis offsetText as a Text instance
	**/
	public function get_offset_text():Dynamic;
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
		Return the depth of the axis used by the picker
	**/
	public function get_pickradius():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	public function get_remove_overlapping_locs():Dynamic;
	public function get_scale():Dynamic;
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
		get whether the axis has smart bounds
	**/
	public function get_smart_bounds():Dynamic;
	/**
		Returns the snap setting.
		
		See `.set_snap` for details.
	**/
	public function get_snap():Dynamic;
	public function get_tick_padding():Dynamic;
	/**
		Return the estimated number of ticks that can fit on the axis.
	**/
	public function get_tick_space():Dynamic;
	/**
		Get the extents of the tick labels on either side
		of the axes.
	**/
	public function get_ticklabel_extents(renderer:Dynamic):Dynamic;
	/**
		Get the tick labels as a list of `~matplotlib.text.Text` instances.
		
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
	public function get_ticklabels(?minor:Dynamic, ?which:Dynamic):Array<Dynamic>;
	/**
		Return the tick lines as a list of Line2D instances
	**/
	public function get_ticklines(?minor:Dynamic):Dynamic;
	/**
		Get the array of tick locations in data coordinates.
	**/
	public function get_ticklocs(?minor:Dynamic):Dynamic;
	/**
		Get the tick directions as a numpy array
		
		Parameters
		----------
		minor : boolean
		    True to return the minor tick directions,
		    False to return the major tick directions,
		    Default is False
		
		Returns
		-------
		numpy array of tick directions
	**/
	public function get_ticks_direction(?minor:Dynamic):Dynamic;
	/**
		Return a bounding box that encloses the axis. It only accounts
		tick labels, axis label, and offsetText.
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
		Return the units for axis.
	**/
	public function get_units():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return the Interval instance for this axis view limits.
	**/
	public function get_view_interval():Dynamic;
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
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Configure the grid lines.
		
		Parameters
		----------
		b : bool or None
		    Whether to show the grid lines. If any *kwargs* are supplied,
		    it is assumed you want the grid on and *b* will be set to True.
		
		    If *b* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}
		    The grid lines to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
	**/
	public function grid(?b:Dynamic, ?which:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes.
	**/
	public function have_units():Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	/**
		[*Deprecated*] Yield ``(Tick, location, label)`` tuples for major and minor ticks.
		
		Notes
		-----
		.. deprecated:: 3.1
		   
	**/
	public function iter_ticks():Dynamic;
	public function limit_range_for_scale(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public var majorTicks : Dynamic;
	static public var minorTicks : Dynamic;
	public var mouseover : Dynamic;
	/**
		Pan *numsteps* (can be positive or negative)
	**/
	public function pan(numsteps:Dynamic):Dynamic;
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
		If minor ticker locations that overlap with major ticker locations should be trimmed.
	**/
	public var remove_overlapping_locs : Dynamic;
	/**
		Re-initialize the major and minor Tick lists.
		
		Each list starts with a single fresh Tick.
	**/
	public function reset_ticks():Dynamic;
	/**
		A property batch setter.  Pass *kwargs* to set properties.
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
	public function set_clip_path(clippath:Dynamic, ?transform:Dynamic):Dynamic;
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
		Set the axis data limits.  This method is for internal use.
		
		If *ignore* is False (the default), this method will never reduce the
		preexisting data limits, only expand them if *vmin* or *vmax* are not
		within them.  Moreover, the order of *vmin* and *vmax* does not matter;
		the orientation of the axis will not change.
		
		If *ignore* is True, the data limits will be set exactly to ``(vmin,
		vmax)`` in that order.
	**/
	public function set_data_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic):Dynamic;
	/**
		Set the default limits for the axis data and view interval if they
		have not been not mutated yet.
	**/
	public function set_default_intervals():Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
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
		Set whether the axis is oriented in the "inverse" direction.
		
		The "normal" direction is increasing to the right for the x-axis and to
		the top for the y-axis; the "inverse" direction is increasing to the
		left for the x-axis and to the bottom for the y-axis.
	**/
	public function set_inverted(inverted:Dynamic):Dynamic;
	/**
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the coordinates of the label.
		
		By default, the x coordinate of the y label is determined by the tick
		label bounding boxes, but this can lead to poor alignment of multiple
		ylabels if there are multiple axes.  Ditto for the y coordinate of
		the x label.
		
		You can also specify the coordinate system of the label with
		the transform.  If None, the default coordinate system will be
		the axes coordinate system (0,0) is (left,bottom), (0.5, 0.5)
		is middle, etc
	**/
	public function set_label_coords(x:Dynamic, y:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the label position (top or bottom)
		
		Parameters
		----------
		position : {'top', 'bottom'}
	**/
	public function set_label_position(position:Dynamic):Dynamic;
	/**
		Set the text value of the axis label.
		
		Parameters
		----------
		label : str
		    Text string.
		fontdict : dict
		    Text properties.
		**kwargs
		    Merged into fontdict.
	**/
	public function set_label_text(label:Dynamic, ?fontdict:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the formatter of the major ticker.
		
		Parameters
		----------
		formatter : ~matplotlib.ticker.Formatter
	**/
	public function set_major_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the major ticker.
		
		Parameters
		----------
		locator : ~matplotlib.ticker.Locator
	**/
	public function set_major_locator(locator:Dynamic):Dynamic;
	/**
		Set the formatter of the minor ticker.
		
		Parameters
		----------
		formatter : ~matplotlib.ticker.Formatter
	**/
	public function set_minor_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the minor ticker.
		
		Parameters
		----------
		locator : ~matplotlib.ticker.Locator
	**/
	public function set_minor_locator(locator:Dynamic):Dynamic;
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
		Set the depth of the axis used by the picker.
		
		Parameters
		----------
		pickradius :  float
	**/
	public function set_pickradius(pickradius:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	public function set_remove_overlapping_locs(val:Dynamic):Dynamic;
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
		set the axis to have smart bounds
	**/
	public function set_smart_bounds(value:Dynamic):Dynamic;
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
		Set appearance parameters for ticks, ticklabels, and gridlines.
		
		For documentation of keyword arguments, see
		:meth:`matplotlib.axes.Axes.tick_params`.
	**/
	public function set_tick_params(?which:Dynamic, ?reset:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the text values of the tick labels.
		
		Parameters
		----------
		ticklabels : sequence of str or of `Text`\s
		    List of texts for tick labels; must include values for non-visible
		    labels.
		minor : bool
		    If True, set minor ticks instead of major ticks.
		**kwargs
		    Text properties.
		
		Returns
		-------
		labels : list of `Text`\s
		    For each tick, includes ``tick.label1`` if it is visible, then
		    ``tick.label2`` if it is visible, in that order.
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?args:python.VarArgs<Dynamic>, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the locations of the tick marks from sequence ticks
		
		Parameters
		----------
		ticks : sequence of floats
		minor : bool
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
		Set the units for axis.
		
		Parameters
		----------
		u : units tag
	**/
	public function set_units(u:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Set the axis view limits.  This method is for internal use; Matplotlib
		users should typically use e.g. `~Axes.set_xlim` and `~Axes.set_ylim`.
		
		If *ignore* is False (the default), this method will never reduce the
		preexisting view limits, only expand them if *vmin* or *vmax* are not
		within them.  Moreover, the order of *vmin* and *vmax* does not matter;
		the orientation of the axis will not change.
		
		If *ignore* is True, the view limits will be set exactly to ``(vmin,
		vmax)`` in that order.
	**/
	public function set_view_interval(vmin:Dynamic, vmax:Dynamic, ?ignore:Dynamic):Dynamic;
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
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	/**
		introspect *data* for units converter and update the
		axis.converter instance if necessary. Return *True*
		if *data* is registered for unit conversion.
	**/
	public function update_units(data:Dynamic):Dynamic;
	/**
		Zoom in/out on axis; if *direction* is >0 zoom in, else zoom out
	**/
	public function zoom(direction:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}