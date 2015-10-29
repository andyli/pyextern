/* This file is generated, do not edit! */
package matplotlib.legend;
@:pythonImport("matplotlib.legend", "Legend") extern class Legend {
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
		- *parent*: the artist that contains the legend
		- *handles*: a list of artists (lines, patches) to be added to the
		              legend
		- *labels*: a list of strings to label the legend
		
		Optional keyword arguments:
		
		================   ====================================================
		Keyword            Description
		================   ====================================================
		loc                a location code
		prop               the font property
		fontsize           the font size (used only if prop is not specified)
		markerscale        the relative size of legend markers vs. original
		numpoints          the number of points in the legend for line
		scatterpoints      the number of points in the legend for scatter plot
		scatteryoffsets    a list of yoffsets for scatter symbols in legend
		frameon            if True, draw a frame around the legend.
		                   If None, use rc
		fancybox           if True, draw a frame with a round fancybox.
		                   If None, use rc
		shadow             if True, draw a shadow behind legend
		framealpha         If not None, alpha channel for the frame.
		ncol               number of columns
		borderpad          the fractional whitespace inside the legend border
		labelspacing       the vertical space between the legend entries
		handlelength       the length of the legend handles
		handleheight       the height of the legend handles
		handletextpad      the pad between the legend handle and text
		borderaxespad      the pad between the axes and legend border
		columnspacing      the spacing between columns
		title              the legend title
		bbox_to_anchor     the bbox that the legend will be anchored.
		bbox_transform     the transform for the bbox. transAxes if None.
		================   ====================================================
		
		
		The pad and spacing parameters are measured in font-size units.  e.g.,
		a fontsize of 10 points and a handlelength=5 implies a handlelength of
		50 points.  Values from rcParams will be used if None.
		
		Users can specify any arbitrary location for the legend using the
		*bbox_to_anchor* keyword argument. bbox_to_anchor can be an instance
		of BboxBase(or its derivatives) or a tuple of 2 or 4 floats.
		See :meth:`set_bbox_to_anchor` for more detail.
		
		The legend location can be specified by setting *loc* with a tuple of
		2 floats, which is interpreted as the lower-left corner of the legend
		in the normalized axes coordinate.
	**/
	public function __init__(parent:Dynamic, handles:Dynamic, labels:Dynamic, ?loc:Dynamic, ?numpoints:Dynamic, ?markerscale:Dynamic, ?scatterpoints:Dynamic, ?scatteryoffsets:Dynamic, ?prop:Dynamic, ?fontsize:Dynamic, ?borderpad:Dynamic, ?labelspacing:Dynamic, ?handlelength:Dynamic, ?handleheight:Dynamic, ?handletextpad:Dynamic, ?borderaxespad:Dynamic, ?columnspacing:Dynamic, ?ncol:Dynamic, ?mode:Dynamic, ?fancybox:Dynamic, ?shadow:Dynamic, ?title:Dynamic, ?framealpha:Dynamic, ?bbox_to_anchor:Dynamic, ?bbox_transform:Dynamic, ?frameon:Dynamic, ?handler_map:Dynamic):Dynamic;
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
	static public var __weakref__ : Dynamic;
	/**
		Return the approximate height of the text. This is used to place
		the legend handle.
	**/
	public function _approx_text_height(?renderer:Dynamic):Dynamic;
	/**
		Returns list of vertices and extents covered by the plot.
		
		Returns a two long list.
		
		First element is a list of (x, y) vertices (in
		display-coordinates) covered by all the lines and line
		collections, in the legend's handles.
		
		Second element is a list of bounding boxes for all the patches in
		the legend's handles.
	**/
	public function _auto_legend_data():Dynamic;
	static public var _default_handler_map : Dynamic;
	/**
		Determine the best location to place the legend.
		
		`consider` is a list of (x, y) pairs to consider as a potential
		lower-left corner of the legend. All are display coords.
	**/
	public function _find_best_position(width:Dynamic, height:Dynamic, renderer:Dynamic, ?consider:Dynamic):Dynamic;
	/**
		Helper function to locate the legend at its best position
	**/
	public function _findoffset_best(width:Dynamic, height:Dynamic, xdescent:Dynamic, ydescent:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Helper function to locate the legend using the location code
	**/
	public function _findoffset_loc(width:Dynamic, height:Dynamic, xdescent:Dynamic, ydescent:Dynamic, renderer:Dynamic):Dynamic;
	/**
		Place the *bbox* inside the *parentbbox* according to a given
		location code. Return the (x,y) coordinate of the bbox.
		
		- loc: a location code in range(1, 11).
		  This corresponds to the possible values for self._loc, excluding
		  "best".
		
		- bbox: bbox to be placed, display coodinate units.
		- parentbbox: a parent box which will contain the bbox. In
		    display coordinates.
	**/
	public function _get_anchored_bbox(loc:Dynamic, bbox:Dynamic, parentbbox:Dynamic, renderer:Dynamic):Dynamic;
	public function _get_loc():Dynamic;
	/**
		Initialize the legend_box. The legend_box is an instance of
		the OffsetBox, which is packed with legend handles and
		texts. Once packed, their location is calculated during the
		drawing time.
	**/
	public function _init_legend_box(handles:Dynamic, labels:Dynamic):Dynamic;
	static public var _loc : Dynamic;
	/**
		set the boilerplate props for artists added to axes
	**/
	public function _set_artist_props(a:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _set_loc(loc:Dynamic):Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	static public var aname : Dynamic;
	static public var codes : Dynamic;
	/**
		Test whether the artist contains the mouse event.
		
		Returns the truth value and a dictionary of artist specific details of
		selection, such as which points are contained in the pick radius.  See
		individual artists for details.
	**/
	public function contains(event:Dynamic):Dynamic;
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
		Set the draggable state -- if state is
		
		  * None : toggle the current state
		
		  * True : turn draggable on
		
		  * False : turn draggable off
		
		If draggable is on, you can drag the legend on the canvas with
		the mouse.  The DraggableLegend helper instance is returned if
		draggable is on.
		
		The update parameter control which parameter of the legend changes
		when dragged. If update is "loc", the *loc* paramter of the legend
		is changed. If "bbox", the *bbox_to_anchor* parameter is changed.
	**/
	public function draggable(?state:Dynamic, ?use_blit:Dynamic, ?update:Dynamic):Dynamic;
	/**
		Draw everything that belongs to the legend
	**/
	public function draw(renderer:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		b is a boolean.  Set draw frame to b
	**/
	public function draw_frame(b:Dynamic):Dynamic;
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
	/**
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*
	**/
	public function get_axes():Dynamic;
	/**
		return the bbox that the legend will be anchored
	**/
	public function get_bbox_to_anchor():Dynamic;
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
		A class method that returns the default handler map.
	**/
	static public function get_default_handler_map():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		return the Rectangle instance used to frame the legend
	**/
	public function get_frame():Dynamic;
	/**
		Get whether the legend box patch is drawn
	**/
	public function get_frame_on():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		return a legend handler from *legend_handler_map* that
		corresponds to *orig_handler*.
		
		*legend_handler_map* should be a dictionary object (that is
		returned by the get_legend_handler_map method).
		
		It first checks if the *orig_handle* itself is a key in the
		*legend_hanler_map* and return the associated value.
		Otherwise, it checks for each of the classes in its
		method-resolution-order. If no matching key is found, it
		returns None.
	**/
	static public function get_legend_handler(legend_handler_map:Dynamic, orig_handle:Dynamic):Dynamic;
	/**
		return the handler map.
	**/
	public function get_legend_handler_map():Dynamic;
	/**
		return a list of lines.Line2D instances in the legend
	**/
	public function get_lines():Dynamic;
	/**
		return a list of patch instances in the legend
	**/
	public function get_patches():Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist
	**/
	public function get_picker():Dynamic;
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
		return a list of text.Text instance in the legend
	**/
	public function get_texts():Dynamic;
	/**
		return Text instance for the legend title
	**/
	public function get_title():Dynamic;
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
		return a extent of the the legend
	**/
	public function get_window_extent(args:Dynamic, kwargs:Dynamic):Dynamic;
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
		A tkstyle set command, pass *kwargs* to set properties
	**/
	public function set(kwargs:Dynamic):Dynamic;
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
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		set the bbox that the legend will be anchored.
		
		*bbox* can be a BboxBase instance, a tuple of [left, bottom,
		width, height] in the given transform (normalized axes
		coordinate if None), or a tuple of [left, bottom] where the
		width and height will be assumed to be zero.
	**/
	public function set_bbox_to_anchor(bbox:Dynamic, ?transform:Dynamic):Dynamic;
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
		A class method to set the default handler map.
	**/
	static public function set_default_handler_map(handler_map:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether the legend box patch is drawn
		
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
		set the legend title. Fontproperties can be optionally set
		with *prop* parameter.
	**/
	public function set_title(title:Dynamic, ?prop:Dynamic):Dynamic;
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
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		ACCEPTS: any number
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		Update the properties of this :class:`Artist` from the
		dictionary *prop*.
	**/
	public function update(props:Dynamic):Dynamic;
	/**
		A class method to update the default handler map.
	**/
	static public function update_default_handler_map(handler_map:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}