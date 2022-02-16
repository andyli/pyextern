/* This file is generated, do not edit! */
package matplotlib.axis;
@:pythonImport("matplotlib.axis", "YAxis") extern class YAxis {
	static public var OFFSETTEXTPAD : Dynamic;
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
		axes : `matplotlib.axes.Axes`
		    The `~.axes.Axes` to which the created Axis belongs.
		pickradius : float
		    The acceptance radius for containment tests. See also
		    `.Axis.contains`.
	**/
	@:native("__init__")
	public function ___init__(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Parameters
		----------
		axes : `matplotlib.axes.Axes`
		    The `~.axes.Axes` to which the created Axis belongs.
		pickradius : float
		    The acceptance radius for containment tests. See also
		    `.Axis.contains`.
	**/
	public function new(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var __name__ : Dynamic;
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
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Copy the properties from *src* tick to *dest* tick.
	**/
	public function _copy_tick_props(src:Dynamic, dest:Dynamic):Dynamic;
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
	static public function _format_with_dict(tickd:Dynamic, x:Dynamic, pos:Dynamic):Dynamic;
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	/**
		Return the default tick instance.
	**/
	public function _get_tick(major:Dynamic):Dynamic;
	/**
		Return lists of bboxes for ticks' label1's and label2's.
	**/
	public function _get_tick_bboxes(ticks:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Get the bounding boxes for this `.axis` and its siblings
		as set by `.Figure.align_xlabels` or  `.Figure.align_ylabels`.
		
		By default it just gets bboxes for self.
	**/
	public function _get_tick_boxes_siblings(renderer:Dynamic):Dynamic;
	/**
		Return the text size of tick labels for this Axis.
		
		This is a convenience function to avoid having to create a `Tick` in
		`.get_tick_space`, since it is expensive.
	**/
	public function _get_tick_label_size(axis_name:Dynamic):Dynamic;
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
	public function _reset_major_tick_kw():Dynamic;
	public function _reset_minor_tick_kw():Dynamic;
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
	public function _set_formatter(formatter:Dynamic, level:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_scale(value:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function _set_tick_locations(ticks:Dynamic, ?minor:Dynamic):Dynamic;
	/**
		Set this Axis' labels with list of string labels.
		
		.. warning::
		    This method should only be used after fixing the tick positions
		    using `.Axis.set_ticks`. Otherwise, the labels may end up in
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
	public function _set_ticklabels(labels:Dynamic, ?fontdict:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	static public function _translate_tick_kw(kw:Dynamic):Dynamic;
	/**
		Check the axis converter for the stored units to see if the
		axis info needs to be updated.
	**/
	public function _update_axisinfo():Dynamic;
	/**
		Update the label position based on the bounding box enclosing
		all the ticklabels and axis spine
	**/
	public function _update_label_position(renderer:Dynamic):Dynamic;
	/**
		Update the offset_text position based on the sequence of bounding
		boxes of all the ticklabels
	**/
	public function _update_offset_text_position(bboxes:Dynamic, bboxes2:Dynamic):Dynamic;
	/**
		Update the signature of the set function to list all properties
		as keyword arguments.
		
		Property aliases are not listed in the signature for brevity, but
		are still accepted as keyword arguments.
	**/
	static public function _update_set_signature_and_docstring():Dynamic;
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
		Set up axis ticks and labels to treat data along this Axis as dates.
		
		Parameters
		----------
		tz : str or `datetime.tzinfo`, default: :rc:`timezone`
		    The timezone used to create date labels.
	**/
	public function axis_date(?tz:Dynamic):Dynamic;
	static public var axis_name : Dynamic;
	/**
		[*Deprecated*] Clear this axis.
		
		Notes
		-----
		.. deprecated:: 3.4
		   
	**/
	public function cla():Dynamic;
	/**
		Clear the axis.
		
		This resets axis properties to their default values:
		
		- the label
		- the scale
		- locators, formatters and ticks
		- major and minor grid
		- units
		- registered callbacks
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
		Return this Axis' grid lines as a list of `.Line2D`\s.
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
		Return whether this Axis is oriented in the "inverse" direction.
		
		The "normal" direction is increasing to the right for the x-axis and to
		the top for the y-axis; the "inverse" direction is increasing to the
		left for the x-axis and to the bottom for the y-axis.
	**/
	public function get_inverted():Dynamic;
	/**
		Return the axis label as a Text instance.
	**/
	public function get_label():Dynamic;
	/**
		Return the label position (top or bottom)
	**/
	public function get_label_position():Dynamic;
	/**
		Get the text of the label.
	**/
	public function get_label_text():Dynamic;
	/**
		Get the formatter of the major ticker.
	**/
	public function get_major_formatter():Dynamic;
	/**
		Get the locator of the major ticker.
	**/
	public function get_major_locator():Dynamic;
	/**
		Return the list of major `.Tick`\s.
	**/
	public function get_major_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return this Axis' major tick labels, as a list of `~.text.Text`.
	**/
	public function get_majorticklabels():Dynamic;
	/**
		Return this Axis' major tick lines as a list of `.Line2D`\s.
	**/
	public function get_majorticklines():Dynamic;
	/**
		Return this Axis' major tick locations in data coordinates.
	**/
	public function get_majorticklocs():Dynamic;
	/**
		Get the formatter of the minor ticker.
	**/
	public function get_minor_formatter():Dynamic;
	/**
		Get the locator of the minor ticker.
	**/
	public function get_minor_locator():Dynamic;
	/**
		Return the list of minor `.Tick`\s.
	**/
	public function get_minor_ticks(?numticks:Dynamic):Dynamic;
	/**
		Return this Axis' minor tick labels, as a list of `~.text.Text`.
	**/
	public function get_minorticklabels():Dynamic;
	/**
		Return this Axis' minor tick lines as a list of `.Line2D`\s.
	**/
	public function get_minorticklines():Dynamic;
	/**
		Return this Axis' minor tick locations in data coordinates.
	**/
	public function get_minorticklocs():Dynamic;
	public function get_minpos():Dynamic;
	/**
		Return the axis offsetText as a Text instance.
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
		Return the depth of the axis used by the picker.
	**/
	public function get_pickradius():Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	public function get_remove_overlapping_locs():Dynamic;
	/**
		Return this Axis' scale (as a str).
	**/
	public function get_scale():Dynamic;
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
	public function get_text_widths(renderer:Dynamic):Dynamic;
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
		Get this Axis' tick labels.
		
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
	public function get_ticklabels(?minor:Dynamic, ?which:Dynamic):Dynamic;
	/**
		Return this Axis' tick lines as a list of `.Line2D`\s.
	**/
	public function get_ticklines(?minor:Dynamic):Dynamic;
	/**
		Return this Axis' tick locations in data coordinates.
	**/
	public function get_ticklocs(?minor:Dynamic):Dynamic;
	/**
		Get the tick directions as a numpy array
		
		Parameters
		----------
		minor : bool, default: False
		    True to return the minor tick directions,
		    False to return the major tick directions.
		
		Returns
		-------
		numpy array of tick directions
	**/
	public function get_ticks_direction(?minor:Dynamic):Dynamic;
	/**
		Return the ticks position ("left", "right", "default", or "unknown").
	**/
	public function get_ticks_position():Dynamic;
	/**
		Return a bounding box that encloses the axis. It only accounts
		tick labels, axis label, and offsetText.
		
		If *for_layout_only* is True, then the width of the label (if this
		is an x-axis) or the height of the label (if this is a y-axis) is
		collapsed to near zero.  This allows tight/constrained_layout to ignore
		too-long labels when doing their layout.
	**/
	public function get_tightbbox(renderer:Dynamic, ?for_layout_only:Dynamic):Dynamic;
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
	public function get_view_interval():Dynamic;
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
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Configure the grid lines.
		
		Parameters
		----------
		visible : bool or None
		    Whether to show the grid lines.  If any *kwargs* are supplied, it
		    is assumed you want the grid on and *visible* will be set to True.
		
		    If *visible* is *None* and there are no *kwargs*, this toggles the
		    visibility of the lines.
		
		which : {'major', 'minor', 'both'}
		    The grid lines to apply the changes on.
		
		**kwargs : `.Line2D` properties
		    Define the line properties of the grid, e.g.::
		
		        grid(color='r', linestyle='-', linewidth=2)
	**/
	public function grid(?visible:Dynamic, ?which:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return whether units are set on any axis.
	**/
	public function have_units():Dynamic;
	public var isDefault_majfmt : Dynamic;
	public var isDefault_majloc : Dynamic;
	public var isDefault_minfmt : Dynamic;
	public var isDefault_minloc : Dynamic;
	/**
		Return whether the Artist has an explicitly set transform.
		
		This is *True* after `.set_transform` has been called.
	**/
	public function is_transform_set():Dynamic;
	public function limit_range_for_scale(vmin:Dynamic, vmax:Dynamic):Dynamic;
	static public var majorTicks : Dynamic;
	static public var minorTicks : Dynamic;
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
		If minor ticker locations that overlap with major ticker locations should be trimmed.
	**/
	public var remove_overlapping_locs : Dynamic;
	/**
		Re-initialize the major and minor Tick lists.
		
		Each list starts with a single fresh Tick.
	**/
	public function reset_ticks():Dynamic;
	/**
		Set multiple properties at once.
		
		Supported properties are
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    data_interval: unknown
		    figure: `.Figure`
		    gid: str
		    in_layout: bool
		    inverted: unknown
		    label: object
		    label_coords: unknown
		    label_position: {'left', 'right'}
		    label_text: str
		    major_formatter: `~matplotlib.ticker.Formatter`, ``str``, or function
		    major_locator: `~matplotlib.ticker.Locator`
		    minor_formatter: `~matplotlib.ticker.Formatter`, ``str``, or function
		    minor_locator: `~matplotlib.ticker.Locator`
		    offset_position: {'left', 'right'}
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    pickradius:  float
		    rasterized: bool
		    remove_overlapping_locs: unknown
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    tick_params: unknown
		    ticklabels: sequence of str or of `.Text`\s
		    ticks: list of floats
		    ticks_position: {'left', 'right', 'both', 'default', 'none'}
		    transform: `.Transform`
		    units: units tag
		    url: str
		    view_interval: unknown
		    visible: bool
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?data_interval:Dynamic, ?gid:Dynamic, ?in_layout:Dynamic, ?inverted:Dynamic, ?label:Dynamic, ?label_coords:Dynamic, ?label_position:Dynamic, ?label_text:Dynamic, ?major_formatter:Dynamic, ?major_locator:Dynamic, ?minor_formatter:Dynamic, ?minor_locator:Dynamic, ?offset_position:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?pickradius:Dynamic, ?rasterized:Dynamic, ?remove_overlapping_locs:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?tick_params:Dynamic, ?ticklabels:Dynamic, ?ticks:Dynamic, ?ticks_position:Dynamic, ?transform:Dynamic, ?units:Dynamic, ?url:Dynamic, ?view_interval:Dynamic, ?visible:Dynamic, ?zorder:Dynamic):Dynamic;
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
	public function set_clip_path(clippath:Dynamic, ?transform:Dynamic):Dynamic;
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
		Set whether this Axis is oriented in the "inverse" direction.
		
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
		
		By default, the x coordinate of the y label and the y coordinate of the
		x label are determined by the tick label bounding boxes, but this can
		lead to poor alignment of multiple labels if there are multiple axes.
		
		You can also specify the coordinate system of the label with the
		transform.  If None, the default coordinate system will be the axes
		coordinate system: (0, 0) is bottom left, (0.5, 0.5) is center, etc.
	**/
	public function set_label_coords(x:Dynamic, y:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the label position (left or right)
		
		Parameters
		----------
		position : {'left', 'right'}
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
		
		In addition to a `~matplotlib.ticker.Formatter` instance,
		this also accepts a ``str`` or function.
		
		For a ``str`` a `~matplotlib.ticker.StrMethodFormatter` is used.
		The field used for the value must be labeled ``'x'`` and the field used
		for the position must be labeled ``'pos'``.
		See the  `~matplotlib.ticker.StrMethodFormatter` documentation for
		more information.
		
		For a function, a `~matplotlib.ticker.FuncFormatter` is used.
		The function must take two inputs (a tick value ``x`` and a
		position ``pos``), and return a string containing the corresponding
		tick label.
		See the  `~matplotlib.ticker.FuncFormatter` documentation for
		more information.
		
		Parameters
		----------
		formatter : `~matplotlib.ticker.Formatter`, ``str``, or function
	**/
	public function set_major_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the major ticker.
		
		Parameters
		----------
		locator : `~matplotlib.ticker.Locator`
	**/
	public function set_major_locator(locator:Dynamic):Dynamic;
	/**
		Set the formatter of the minor ticker.
		
		In addition to a `~matplotlib.ticker.Formatter` instance,
		this also accepts a ``str`` or function.
		See `.Axis.set_major_formatter` for more information.
		
		Parameters
		----------
		formatter : `~matplotlib.ticker.Formatter`, ``str``, or function
	**/
	public function set_minor_formatter(formatter:Dynamic):Dynamic;
	/**
		Set the locator of the minor ticker.
		
		Parameters
		----------
		locator : `~matplotlib.ticker.Locator`
	**/
	public function set_minor_locator(locator:Dynamic):Dynamic;
	/**
		Parameters
		----------
		position : {'left', 'right'}
	**/
	public function set_offset_position(position:Dynamic):Dynamic;
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
		Set the depth of the axis used by the picker.
		
		Parameters
		----------
		pickradius :  float
	**/
	public function set_pickradius(pickradius:Dynamic):Dynamic;
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
	public function set_remove_overlapping_locs(val:Dynamic):Dynamic;
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
		Set appearance parameters for ticks, ticklabels, and gridlines.
		
		For documentation of keyword arguments, see
		:meth:`matplotlib.axes.Axes.tick_params`.
	**/
	public function set_tick_params(?which:Dynamic, ?reset:Dynamic, ?kw:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the text values of the tick labels.
		
		.. admonition:: Discouraged
		
		    The use of this method is discouraged, because of the dependency
		    on tick positions. In most cases, you'll want to use
		    ``set_[x/y]ticks(positions, labels)`` instead.
		
		    If you are using this method, you should always fix the tick
		    positions before, e.g. by using `.Axis.set_ticks` or by explicitly
		    setting a `~.ticker.FixedLocator`. Otherwise, ticks are free to
		    move and the labels may end up in unexpected positions.
		
		Parameters
		----------
		ticklabels : sequence of str or of `.Text`\s
		    Texts for labeling each tick location in the sequence set by
		    `.Axis.set_ticks`; the number of labels must match the number of
		    locations.
		minor : bool
		    If True, set minor ticks instead of major ticks.
		**kwargs
		    Text properties.
		
		Returns
		-------
		list of `.Text`\s
		    For each tick, includes ``tick.label1`` if it is visible, then
		    ``tick.label2`` if it is visible, in that order.
	**/
	public function set_ticklabels(ticklabels:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set this Axis' tick locations and optionally labels.
		
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
	public function set_ticks(ticks:Dynamic, ?labels:Dynamic, ?minor:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the ticks position.
		
		Parameters
		----------
		position : {'left', 'right', 'both', 'default', 'none'}
		    'both' sets the ticks to appear on both positions, but does not
		    change the tick labels.  'default' resets the tick positions to
		    the default: ticks on both positions, labels at left.  'none'
		    can be used if you don't want any ticks. 'none' and 'both'
		    affect only the ticks, not the labels.
	**/
	public function set_ticks_position(position:Dynamic):Dynamic;
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
		
		Notes
		-----
		The units of any shared axis will also be updated.
	**/
	public function set_units(u:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
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
		Move ticks and ticklabels (if present) to the left of the axes.
	**/
	public function tick_left():Dynamic;
	/**
		Move ticks and ticklabels (if present) to the right of the axes.
	**/
	public function tick_right():Dynamic;
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
		Introspect *data* for units converter and update the
		axis.converter instance if necessary. Return *True*
		if *data* is registered for unit conversion.
	**/
	public function update_units(data:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}