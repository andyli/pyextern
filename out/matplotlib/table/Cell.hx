/* This file is generated, do not edit! */
package matplotlib.table;
@:pythonImport("matplotlib.table", "Cell") extern class Cell {
	static public var PAD : Dynamic;
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
		      *angle*
		        rotation in degrees (anti-clockwise)
		
		      *fill* is a boolean indicating whether to fill the rectangle
		
		      Valid kwargs are:
		        agg_filter: unknown
		alpha: float or None         
		animated: [True | False]         
		antialiased or aa: [True | False]  or None for default         
		axes: an :class:`~matplotlib.axes.Axes` instance         
		capstyle: ['butt' | 'round' | 'projecting']         
		clip_box: a :class:`matplotlib.transforms.Bbox` instance         
		clip_on: [True | False]         
		clip_path: [ (:class:`~matplotlib.path.Path`,         :class:`~matplotlib.transforms.Transform`) |         :class:`~matplotlib.patches.Patch` | None ]         
		color: matplotlib color spec
		contains: a callable function         
		edgecolor or ec: mpl color spec, or None for default, or 'none' for no color         
		facecolor or fc: mpl color spec, or None for default, or 'none' for no color         
		figure: a :class:`matplotlib.figure.Figure` instance         
		fill: [True | False]         
		gid: an id string         
		hatch: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']         
		joinstyle: ['miter' | 'round' | 'bevel']         
		label: string or anything printable with '%s' conversion.         
		linestyle or ls: ['solid' | 'dashed' | 'dashdot' | 'dotted']         
		linewidth or lw: float or None for default         
		lod: [True | False]         
		path_effects: unknown
		picker: [None|float|boolean|callable]         
		rasterized: [True | False | None]         
		sketch_params: unknown
		snap: unknown
		transform: :class:`~matplotlib.transforms.Transform` instance         
		url: a url string         
		visible: [True | False]         
		zorder: any number         
		      
	**/
	@:native("__init__")
	public function ___init__(xy:Dynamic, width:Dynamic, height:Dynamic, ?edgecolor:Dynamic, ?facecolor:Dynamic, ?fill:Dynamic, ?text:Dynamic, ?loc:Dynamic, ?fontproperties:Dynamic):Dynamic;
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
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	/**
		Set text up so it draws in the right place.
		
		Currently support 'left', 'center' and 'right'
	**/
	public function _set_text_position(renderer:Dynamic):Dynamic;
	/**
		NOTE: This cannot be called until after this has been added
		to an Axes, otherwise unit conversion will fail. This
		maxes it very important to call the accessor method and
		not directly access the transformation member variable.
	**/
	public function _update_patch_transform():Dynamic;
	/**
		Adds a callback function that will be called whenever one of
		the :class:`Artist`'s properties changes.
		
		Returns an *id* that is useful for removing the callback with
		:meth:`remove_callback` later.
	**/
	public function add_callback(func:Dynamic):Dynamic;
	static public var aname : Dynamic;
	/**
		Shrink font size until text fits. 
	**/
	public function auto_set_font_size(renderer:Dynamic):Dynamic;
	/**
		Test whether the mouse event occurred in the patch.
		
		Returns T/F, {}
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
	/**
		Returns *True* if the given point is inside the path
		(transformed with its transform attribute).
	**/
	public function contains_point(point:Dynamic, ?radius:Dynamic):Dynamic;
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
	public function draw(renderer:Dynamic, args:Dynamic, kwargs:Dynamic):Dynamic;
	/**
		return whether fill is set
	**/
	public var fill : Dynamic;
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
		Returns True if the :class:`Patch` is to be drawn with antialiasing.
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
	/**
		Returns True if the :class:`Patch` is to be drawn with antialiasing.
	**/
	public function get_antialiased():Dynamic;
	/**
		Return the :class:`~matplotlib.axes.Axes` instance the artist
		resides in, or *None*
	**/
	public function get_axes():Dynamic;
	public function get_bbox():Dynamic;
	/**
		Return the current capstyle
	**/
	public function get_capstyle():Dynamic;
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
	/**
		Return the _contains test used by the artist, or *None* for default.
	**/
	public function get_contains():Dynamic;
	/**
		Return the :class:`~matplotlib.transforms.Transform` instance which
		maps data coordinates to physical coordinates.
	**/
	public function get_data_transform():Dynamic;
	/**
		Return the edge color of the :class:`Patch`.
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
		Return the face color of the :class:`Patch`.
	**/
	public function get_fc():Dynamic;
	/**
		Return the :class:`~matplotlib.figure.Figure` instance the
		artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		return whether fill is set
	**/
	public function get_fill():Dynamic;
	/**
		Return the cell fontsize
	**/
	public function get_fontsize():Dynamic;
	/**
		Returns the group id
	**/
	public function get_gid():Dynamic;
	/**
		Return the current hatching pattern
	**/
	public function get_hatch():Dynamic;
	/**
		Return the height of the rectangle
	**/
	public function get_height():Dynamic;
	/**
		Return the current joinstyle
	**/
	public function get_joinstyle():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the linestyle.  Will be one of ['solid' | 'dashed' |
		'dashdot' | 'dotted']
	**/
	public function get_linestyle():Dynamic;
	/**
		Return the line width in points.
	**/
	public function get_linewidth():Dynamic;
	/**
		Return the linestyle.  Will be one of ['solid' | 'dashed' |
		'dashdot' | 'dotted']
	**/
	public function get_ls():Dynamic;
	/**
		Return the line width in points.
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
		Return the vertices of the rectangle
	**/
	public function get_path():Dynamic;
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
		Get width required for this cell. 
	**/
	public function get_required_width(renderer:Dynamic):Dynamic;
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
		Return the cell Text intance
	**/
	public function get_text():Dynamic;
	/**
		Get text bounds in axes co-ordinates. 
	**/
	public function get_text_bounds(renderer:Dynamic):Dynamic;
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
		Returns the url
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
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		Return the width of the  rectangle
	**/
	public function get_width():Dynamic;
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
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the left coord of the rectangle
	**/
	public function get_x():Dynamic;
	/**
		Return the left and bottom coords of the rectangle
	**/
	public function get_xy():Dynamic;
	/**
		Return the bottom coord of the rectangle
	**/
	public function get_y():Dynamic;
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
		alias for set_antialiased
	**/
	public function set_aa(aa:Dynamic):Dynamic;
	/**
		set agg_filter fuction.
	**/
	public function set_agg_filter(filter_func:Dynamic):Dynamic;
	/**
		Set the alpha tranparency of the patch.
		
		ACCEPTS: float or None
	**/
	public function set_alpha(alpha:Dynamic):Dynamic;
	/**
		Set the artist's animation state.
		
		ACCEPTS: [True | False]
	**/
	public function set_animated(b:Dynamic):Dynamic;
	/**
		Set whether to use antialiased rendering
		
		ACCEPTS: [True | False]  or None for default
	**/
	public function set_antialiased(aa:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.axes.Axes` instance in which the
		artist resides, if any.
		
		ACCEPTS: an :class:`~matplotlib.axes.Axes` instance
	**/
	public function set_axes(axes:Dynamic):Dynamic;
	/**
		Set the bounds of the rectangle: l,b,w,h
		
		ACCEPTS: (left, bottom, width, height)
	**/
	public function set_bounds(args:Dynamic):Dynamic;
	/**
		Set the patch capstyle
		
		ACCEPTS: ['butt' | 'round' | 'projecting']
	**/
	public function set_capstyle(s:Dynamic):Dynamic;
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
		Set both the edgecolor and the facecolor.
		
		ACCEPTS: matplotlib color spec
		
		.. seealso::
		
		    :meth:`set_facecolor`, :meth:`set_edgecolor`
		       For setting the edge or face color individually.
	**/
	public function set_color(c:Dynamic):Dynamic;
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
		alias for set_edgecolor
	**/
	public function set_ec(color:Dynamic):Dynamic;
	/**
		Set the patch edge color
		
		ACCEPTS: mpl color spec, or None for default, or 'none' for no color
	**/
	public function set_edgecolor(color:Dynamic):Dynamic;
	/**
		Set the patch face color
		
		ACCEPTS: mpl color spec, or None for default, or 'none' for no color
	**/
	public function set_facecolor(color:Dynamic):Dynamic;
	/**
		alias for set_facecolor
	**/
	public function set_fc(color:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.figure.Figure` instance the artist
		belongs to.
		
		ACCEPTS: a :class:`matplotlib.figure.Figure` instance
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Set whether to fill the patch
		
		ACCEPTS: [True | False]
	**/
	public function set_fill(b:Dynamic):Dynamic;
	public function set_fontsize(size:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist
		
		ACCEPTS: an id string
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
		
		ACCEPTS: ['/' | '\\' | '|' | '-' | '+' | 'x' | 'o' | 'O' | '.' | '*']
	**/
	public function set_hatch(hatch:Dynamic):Dynamic;
	/**
		Set the width rectangle
		
		ACCEPTS: float
	**/
	public function set_height(h:Dynamic):Dynamic;
	/**
		Set the patch joinstyle
		
		ACCEPTS: ['miter' | 'round' | 'bevel']
	**/
	public function set_joinstyle(s:Dynamic):Dynamic;
	/**
		Set the label to *s* for auto legend.
		
		ACCEPTS: string or anything printable with '%s' conversion.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the patch linestyle
		
		ACCEPTS: ['solid' | 'dashed' | 'dashdot' | 'dotted']
	**/
	public function set_linestyle(ls:Dynamic):Dynamic;
	/**
		Set the patch linewidth in points
		
		ACCEPTS: float or None for default
	**/
	public function set_linewidth(w:Dynamic):Dynamic;
	/**
		Set Level of Detail on or off.  If on, the artists may examine
		things like the pixel width of the axes and draw a subset of
		their contents accordingly
		
		ACCEPTS: [True | False]
	**/
	public function set_lod(on:Dynamic):Dynamic;
	/**
		alias for set_linestyle
	**/
	public function set_ls(ls:Dynamic):Dynamic;
	/**
		alias for set_linewidth
	**/
	public function set_lw(lw:Dynamic):Dynamic;
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
		update the text properties with kwargs
	**/
	public function set_text_props(kwargs:Dynamic):Dynamic;
	/**
		Set the :class:`~matplotlib.transforms.Transform` instance
		used by this artist.
		
		ACCEPTS: :class:`~matplotlib.transforms.Transform` instance
	**/
	public function set_transform(trans:Dynamic):Dynamic;
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
		Set the width rectangle
		
		ACCEPTS: float
	**/
	public function set_width(w:Dynamic):Dynamic;
	/**
		Set the left coord of the rectangle
		
		ACCEPTS: float
	**/
	public function set_x(x:Dynamic):Dynamic;
	/**
		Set the left and bottom coords of the rectangle
		
		ACCEPTS: 2-item sequence
	**/
	public function set_xy(xy:Dynamic):Dynamic;
	/**
		Set the bottom coord of the rectangle
		
		ACCEPTS: float
	**/
	public function set_y(y:Dynamic):Dynamic;
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
		Updates this :class:`Patch` from the properties of *other*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var validCap : Dynamic;
	static public var validJoin : Dynamic;
	/**
		Return the left and bottom coords of the rectangle
	**/
	public var xy : Dynamic;
	static public var zorder : Dynamic;
}