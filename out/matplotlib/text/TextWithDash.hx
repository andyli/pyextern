/* This file is generated, do not edit! */
package matplotlib.text;
@:pythonImport("matplotlib.text", "TextWithDash") extern class TextWithDash {
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
		Create a `.Text` instance at *x*, *y* with string *text*.
		
		Valid kwargs are
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  animated: bool
		  backgroundcolor: color
		  bbox: dict with properties for `.patches.FancyBboxPatch`
		  clip_box: `matplotlib.transforms.Bbox`
		  clip_on: bool
		  clip_path: { (`.path.Path`, `.transforms.Transform`), `.patches.Patch`, None } 
		  color: color
		  contains: callable
		  figure: `.Figure`
		  fontfamily: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontname: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontproperties: `.font_manager.FontProperties`
		  fontsize: {size in points, 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		  fontstretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		  fontstyle: {'normal', 'italic', 'oblique'}
		  fontvariant: {'normal', 'small-caps'}
		  fontweight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		  gid: str
		  horizontalalignment: {'center', 'right', 'left'}
		  in_layout: bool
		  label: object
		  linespacing: float (multiple of font size)
		  multialignment: {'left', 'right', 'center'}
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: (float, float)
		  rasterized: bool or None
		  rotation: {angle in degrees, 'vertical', 'horizontal'}
		  rotation_mode: {None, 'default', 'anchor'}
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  text: string or object castable to string (but ``None`` becomes ``''``)
		  transform: `.Transform`
		  url: str
		  usetex: bool or None
		  verticalalignment: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		  visible: bool
		  wrap: bool
		  x: float
		  y: float
		  zorder: float
	**/
	@:native("__init__")
	public function ___init__(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?dashlength:Dynamic, ?dashdirection:Dynamic, ?dashrotation:Dynamic, ?dashpad:Dynamic, ?dashpush:Dynamic):Dynamic;
	/**
		Create a `.Text` instance at *x*, *y* with string *text*.
		
		Valid kwargs are
		  agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array 
		  alpha: float
		  animated: bool
		  backgroundcolor: color
		  bbox: dict with properties for `.patches.FancyBboxPatch`
		  clip_box: `matplotlib.transforms.Bbox`
		  clip_on: bool
		  clip_path: { (`.path.Path`, `.transforms.Transform`), `.patches.Patch`, None } 
		  color: color
		  contains: callable
		  figure: `.Figure`
		  fontfamily: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontname: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		  fontproperties: `.font_manager.FontProperties`
		  fontsize: {size in points, 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		  fontstretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		  fontstyle: {'normal', 'italic', 'oblique'}
		  fontvariant: {'normal', 'small-caps'}
		  fontweight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		  gid: str
		  horizontalalignment: {'center', 'right', 'left'}
		  in_layout: bool
		  label: object
		  linespacing: float (multiple of font size)
		  multialignment: {'left', 'right', 'center'}
		  path_effects: `.AbstractPathEffect`
		  picker: None or bool or float or callable
		  position: (float, float)
		  rasterized: bool or None
		  rotation: {angle in degrees, 'vertical', 'horizontal'}
		  rotation_mode: {None, 'default', 'anchor'}
		  sketch_params: (scale: float, length: float, randomness: float) 
		  snap: bool or None
		  text: string or object castable to string (but ``None`` becomes ``''``)
		  transform: `.Transform`
		  url: str
		  usetex: bool or None
		  verticalalignment: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		  visible: bool
		  wrap: bool
		  x: float
		  y: float
		  zorder: float
	**/
	public function new(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?dashlength:Dynamic, ?dashdirection:Dynamic, ?dashrotation:Dynamic, ?dashpad:Dynamic, ?dashpush:Dynamic):Void;
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
	static public var _cached : Dynamic;
	/**
		Update the location and size of the bbox (`.patches.FancyBboxPatch`),
		and draw.
	**/
	public function _draw_bbox(renderer:Dynamic, posx:Dynamic, posy:Dynamic):Dynamic;
	/**
		Return the distance from the given points to the boundaries of a
		rotated box, in pixels.
	**/
	public function _get_dist_to_box(rotation:Dynamic, x0:Dynamic, y0:Dynamic, figure_box:Dynamic):Dynamic;
	/**
		return the extent (bbox) of the text together with
		multiple-alignment information. Note that it returns an extent
		of a rotated text when necessary.
	**/
	public function _get_layout(renderer:Dynamic):Dynamic;
	public function _get_multialignment():Dynamic;
	/**
		Return the width of a given text string, in pixels.
	**/
	public function _get_rendered_text_width(text:Dynamic):Dynamic;
	/**
		Return the maximum line width for wrapping text based on the current
		orientation.
	**/
	public function _get_wrap_line_width():Dynamic;
	/**
		Return a copy of the text with new lines added, so that
		the text is wrapped relative to the parent figure.
	**/
	public function _get_wrapped_text():Dynamic;
	/**
		Get the (possibly unit converted) transformed x, y in display coords.
	**/
	public function _get_xy_display():Dynamic;
	static public var _prop_order : Dynamic;
	/**
		Set the clip properly for the gc
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _update_clip_properties():Dynamic;
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
		Test whether the mouse event occurred in the patch.
		
		In the case of text, a hit is true anywhere in the
		axis-aligned bounding-box containing the text.
		
		Returns
		-------
		bool : bool
	**/
	public function contains(mouseevent:Dynamic):Bool;
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
		Draw the :class:`TextWithDash` object to the given *renderer*.
	**/
	public function draw(renderer:Dynamic):Dynamic;
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
		Return filter function to be used for agg filter.
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
		Return the bbox Patch, or None if the `.patches.FancyBboxPatch`
		is not made.
	**/
	public function get_bbox_patch():Dynamic;
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
		Return the color of the text
	**/
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
		Get the direction dash.  1 is before the text and 0 is after.
	**/
	public function get_dashdirection():Dynamic;
	/**
		Get the length of the dash.
	**/
	public function get_dashlength():Dynamic;
	/**
		Get the extra spacing between the dash and the text, in canvas units.
	**/
	public function get_dashpad():Dynamic;
	/**
		Get the extra spacing between the dash and the specified text
		position, in canvas units.
	**/
	public function get_dashpush():Dynamic;
	/**
		Get the rotation of the dash in degrees.
	**/
	public function get_dashrotation():Dynamic;
	/**
		alias for `get_fontfamily`
	**/
	public function get_family(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		return the figure instance the artist belongs to
	**/
	public function get_figure():Dynamic;
	/**
		alias for `get_fontproperties`
	**/
	public function get_font_properties(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the list of font families used for font lookup
		
		See Also
		--------
		.font_manager.FontProperties.get_family
	**/
	public function get_fontfamily():Dynamic;
	/**
		Return the font name as string
		
		See Also
		--------
		.font_manager.FontProperties.get_name
	**/
	public function get_fontname():Dynamic;
	/**
		Return the `.font_manager.FontProperties` object
	**/
	public function get_fontproperties():Dynamic;
	/**
		Return the font size as integer
		
		See Also
		--------
		.font_manager.FontProperties.get_size_in_points
	**/
	public function get_fontsize():Dynamic;
	/**
		Return the font style as string
		
		See Also
		--------
		.font_manager.FontProperties.get_style
	**/
	public function get_fontstyle():Dynamic;
	/**
		Return the font variant as a string
		
		See Also
		--------
		.font_manager.FontProperties.get_variant
	**/
	public function get_fontvariant():Dynamic;
	/**
		Get the font weight as string or number
		
		See Also
		--------
		.font_manager.FontProperties.get_weight
	**/
	public function get_fontweight():Dynamic;
	/**
		Returns the group id.
	**/
	public function get_gid():Dynamic;
	/**
		alias for `get_horizontalalignment`
	**/
	public function get_ha(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the horizontal alignment as string.  Will be one of
		'left', 'center' or 'right'.
	**/
	public function get_horizontalalignment():Dynamic;
	/**
		Return boolean flag, ``True`` if artist is included in layout
		calculations.
		
		E.g. :doc:`/tutorials/intermediate/constrainedlayout_guide`,
		`.Figure.tight_layout()`, and
		``fig.savefig(fname, bbox_inches='tight')``.
	**/
	public function get_in_layout():Dynamic;
	/**
		Get the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		alias for `get_fontname`
	**/
	public function get_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	public function get_path_effects():Dynamic;
	/**
		Return the picker object used by this artist.
	**/
	public function get_picker():Dynamic;
	/**
		Return the position of the text as a tuple (*x*, *y*)
	**/
	public function get_position():Dynamic;
	/**
		Return a hashable tuple of properties.
		
		Not intended to be human readable, but useful for backends who
		want to cache derived information about text (e.g., layouts) and
		need to know if the text has changed.
	**/
	public function get_prop_tup(?renderer:Dynamic):Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Return the text angle as float in degrees.
	**/
	public function get_rotation():Dynamic;
	/**
		Get the text rotation mode.
	**/
	public function get_rotation_mode():Dynamic;
	/**
		alias for `get_fontsize`
	**/
	public function get_size(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Get the font stretch as a string or number
		
		See Also
		--------
		.font_manager.FontProperties.get_stretch
	**/
	public function get_stretch():Dynamic;
	/**
		alias for `get_fontstyle`
	**/
	public function get_style(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Get the text as string
	**/
	public function get_text():Dynamic;
	/**
		Like `Artist.get_window_extent`, but includes any clipping.
		
		Parameters
		----------
		renderer : `.RendererBase` instance
		    renderer that will be used to draw the figures (i.e.
		    ``fig.canvas.get_renderer()``)
		
		Returns
		-------
		bbox : `.BboxBase`
		    containing the bounding box (in figure pixel co-ordinates).
	**/
	public function get_tightbbox(renderer:Dynamic):Dynamic;
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
		Return the unitless position of the text as a tuple (*x*, *y*)
	**/
	public function get_unitless_position():Dynamic;
	/**
		Returns the url.
	**/
	public function get_url():Dynamic;
	/**
		Return whether this `Text` object uses TeX for rendering.
		
		If the user has not manually set this value, it defaults to
		:rc:`text.usetex`.
	**/
	public function get_usetex():Dynamic;
	/**
		alias for `get_verticalalignment`
	**/
	public function get_va(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		alias for `get_fontvariant`
	**/
	public function get_variant(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return the vertical alignment as string.  Will be one of
		'top', 'center', 'bottom' or 'baseline'.
	**/
	public function get_verticalalignment():Dynamic;
	/**
		Return the artist's visiblity
	**/
	public function get_visible():Dynamic;
	/**
		alias for `get_fontweight`
	**/
	public function get_weight(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Return a :class:`~matplotlib.transforms.Bbox` object bounding
		the text, in display units.
		
		In addition to being used internally, this is useful for
		specifying clickable regions in a png file on a web page.
		
		*renderer* defaults to the _renderer attribute of the text
		object.  This is not assigned until the first execution of
		:meth:`draw`, so you must use this kwarg if you want
		to call :meth:`get_window_extent` prior to the first
		:meth:`draw`.  For getting web page regions, it is
		simpler to call the method after saving the figure.
	**/
	public function get_window_extent(?renderer:Dynamic):Dynamic;
	/**
		Return the wrapping state for the text.
	**/
	public function get_wrap():Dynamic;
	/**
		Return the artist's zorder.
	**/
	public function get_zorder():Dynamic;
	/**
		Return *True* if units are set on the *x* or *y* axes
	**/
	public function have_units():Dynamic;
	/**
		.. deprecated:: 2.2
		    The hitlist function was deprecated in Matplotlib 2.2 and will be removed in 3.1.
		
		List the children of the artist which contain the mouse event *event*.
	**/
	public function hitlist(event:Dynamic):Dynamic;
	/**
		.. deprecated:: 2.2
		    artist.figure is not None
		
		Returns whether the artist is assigned to a `.Figure`.
	**/
	public function is_figure_set():Dynamic;
	/**
		Returns a cleaned string and a boolean flag.
		The flag indicates if the given string *s* contains any mathtext,
		determined by counting unescaped dollar signs. If no mathtext
		is present, the cleaned string has its dollar signs unescaped.
		If usetex is on, the flag always has the value "TeX".
	**/
	static public function is_math_text(s:Dynamic, ?usetex:Dynamic):Dynamic;
	/**
		Returns *True* if :class:`Artist` has a transform explicitly
		set.
	**/
	public function is_transform_set():Dynamic;
	public var mouseover : Dynamic;
	/**
		Fire an event when property changed, calling all of the
		registered callbacks.
	**/
	public function pchanged():Dynamic;
	/**
		Process pick event
		
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
		A property batch setter. Pass *kwargs* to set properties.
		        
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
		Set the background color of the text by updating the bbox.
		
		Parameters
		----------
		color : color
		
		See Also
		--------
		.set_bbox : To change the position of the bounding box
	**/
	public function set_backgroundcolor(color:Dynamic):Dynamic;
	/**
		Draw a bounding box around self.
		
		Parameters
		----------
		rectprops : dict with properties for `.patches.FancyBboxPatch`
		     The default boxstyle is 'square'. The mutation
		     scale of the `.patches.FancyBboxPatch` is set to the fontsize.
		
		Examples
		--------
		::
		
		    t.set_bbox(dict(facecolor='red', alpha=0.5))
	**/
	public function set_bbox(rectprops:Dynamic):Dynamic;
	/**
		Set the artist's clip `~.transforms.Bbox`.
		
		Parameters
		----------
		clipbox : `matplotlib.transforms.Bbox`
	**/
	public function set_clip_box(clipbox:Dynamic):Dynamic;
	/**
		Set whether artist uses clipping.
		
		When False, artists will be visible outside of the axes, which can lead
		to unexpected results.
		
		Parameters
		----------
		b : bool
	**/
	public function set_clip_on(b:Dynamic):Dynamic;
	/**
		Set the artist's clip path, which may be:
		
		  * a `~matplotlib.patches.Patch` (or subclass) instance
		
		  * a `~matplotlib.path.Path` instance, in which case
		     an optional `~matplotlib.transforms.Transform`
		     instance may be provided, which will be applied to the
		     path before using it for clipping.
		
		  * *None*, to remove the clipping path
		
		For efficiency, if the path happens to be an axis-aligned
		rectangle, this method will set the clipping box to the
		corresponding rectangle and set the clipping path to *None*.
		
		ACCEPTS: { (`.path.Path`, `.transforms.Transform`),
		          `.patches.Patch`, None }
	**/
	public function set_clip_path(path:Dynamic, ?transform:Dynamic):Dynamic;
	/**
		Set the foreground color of the text
		
		Parameters
		----------
		color : color
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
		
		Parameters
		----------
		picker : callable
	**/
	public function set_contains(picker:Dynamic):Dynamic;
	/**
		Set the direction of the dash following the text.  1 is before the text
		and 0 is after. The default is 0, which is what you'd want for the
		typical case of ticks below and on the left of the figure.
		
		Parameters
		----------
		dd : int (1 is before, 0 is after)
	**/
	public function set_dashdirection(dd:Dynamic):Dynamic;
	/**
		Set the length of the dash, in canvas units.
		
		Parameters
		----------
		dl : float
	**/
	public function set_dashlength(dl:Dynamic):Dynamic;
	/**
		Set the "pad" of the TextWithDash, which is the extra spacing
		between the dash and the text, in canvas units.
		
		Parameters
		----------
		dp : float
	**/
	public function set_dashpad(dp:Dynamic):Dynamic;
	/**
		Set the "push" of the TextWithDash, which is the extra spacing between
		the beginning of the dash and the specified position.
		
		Parameters
		----------
		dp : float
	**/
	public function set_dashpush(dp:Dynamic):Dynamic;
	/**
		Set the rotation of the dash, in degrees.
		
		Parameters
		----------
		dr : float
	**/
	public function set_dashrotation(dr:Dynamic):Dynamic;
	/**
		alias for `set_fontfamily`
	**/
	public function set_family(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the figure instance the artist belongs to.
		
		Parameters
		----------
		fig : matplotlib.figure.Figure
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		alias for `set_fontproperties`
	**/
	public function set_font_properties(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the font family.  May be either a single string, or a list of
		strings in decreasing priority.  Each string may be either a real font
		name or a generic font class name.  If the latter, the specific font
		names will be looked up in the corresponding rcParams.
		
		Parameters
		----------
		fontname : {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		
		See Also
		--------
		.font_manager.FontProperties.set_family
	**/
	public function set_fontfamily(fontname:Dynamic):Dynamic;
	/**
		alias for `.set_family`
		
		One-way alias only: the getter differs.
		
		Parameters
		----------
		fontname : {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		
		See Also
		--------
		.font_manager.FontProperties.set_family
	**/
	public function set_fontname(fontname:Dynamic):Dynamic;
	/**
		Set the font properties that control the text.
		
		Parameters
		----------
		fp : `.font_manager.FontProperties`
	**/
	public function set_fontproperties(fp:Dynamic):Dynamic;
	/**
		Set the font size.  May be either a size string, relative to
		the default font size, or an absolute font size in points.
		
		Parameters
		----------
		fontsize : {size in points, 'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		
		See Also
		--------
		.font_manager.FontProperties.set_size
	**/
	public function set_fontsize(fontsize:Dynamic):Dynamic;
	/**
		Set the font stretch (horizontal condensation or expansion).
		
		Parameters
		----------
		stretch : {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		
		See Also
		--------
		.font_manager.FontProperties.set_stretch
	**/
	public function set_fontstretch(stretch:Dynamic):Dynamic;
	/**
		Set the font style.
		
		Parameters
		----------
		fontstyle : {'normal', 'italic', 'oblique'}
		
		See Also
		--------
		.font_manager.FontProperties.set_style
	**/
	public function set_fontstyle(fontstyle:Dynamic):Dynamic;
	/**
		Set the font variant, either 'normal' or 'small-caps'.
		
		Parameters
		----------
		variant : {'normal', 'small-caps'}
		
		See Also
		--------
		.font_manager.FontProperties.set_variant
	**/
	public function set_fontvariant(variant:Dynamic):Dynamic;
	/**
		Set the font weight.
		
		Parameters
		----------
		weight : {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		
		See Also
		--------
		.font_manager.FontProperties.set_weight
	**/
	public function set_fontweight(weight:Dynamic):Dynamic;
	/**
		Sets the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		alias for `set_horizontalalignment`
	**/
	public function set_ha(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the horizontal alignment to one of
		
		Parameters
		----------
		align : {'center', 'right', 'left'}
	**/
	public function set_horizontalalignment(align:Dynamic):Dynamic;
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
		Set the label to *s* for auto legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the line spacing as a multiple of the font size.
		Default is 1.2.
		
		Parameters
		----------
		spacing : float (multiple of font size)
	**/
	public function set_linespacing(spacing:Dynamic):Dynamic;
	/**
		alias for `set_multialignment`
	**/
	public function set_ma(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the alignment for multiple lines layout.  The layout of the
		bounding box of all the lines is determined bu the horizontalalignment
		and verticalalignment properties, but the multiline text within that
		box can be
		
		Parameters
		----------
		align : {'left', 'right', 'center'}
	**/
	public function set_multialignment(align:Dynamic):Dynamic;
	/**
		alias for `set_fontname`
	**/
	public function set_name(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the path effects.
		
		Parameters
		----------
		path_effects : `.AbstractPathEffect`
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
		
		Parameters
		----------
		picker : None or bool or float or callable
	**/
	public function set_picker(picker:Dynamic):Dynamic;
	/**
		Set the (*x*, *y*) position of the :class:`TextWithDash`.
		
		Parameters
		----------
		xy : (float, float)
	**/
	public function set_position(xy:Dynamic):Dynamic;
	/**
		Force rasterized (bitmap) drawing in vector backend output.
		
		Defaults to None, which implies the backend's default behavior.
		
		Parameters
		----------
		rasterized : bool or None
	**/
	public function set_rasterized(rasterized:Dynamic):Dynamic;
	/**
		Set the rotation of the text.
		
		Parameters
		----------
		s : {angle in degrees, 'vertical', 'horizontal'}
	**/
	public function set_rotation(s:Dynamic):Dynamic;
	/**
		Set text rotation mode.
		
		Parameters
		----------
		m : {None, 'default', 'anchor'}
		    If ``None`` or ``"default"``, the text will be first rotated, then
		    aligned according to their horizontal and vertical alignments.  If
		    ``"anchor"``, then alignment occurs before rotation.
	**/
	public function set_rotation_mode(m:Dynamic):Dynamic;
	/**
		alias for `set_fontsize`
	**/
	public function set_size(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
		Sets the snap setting which may be:
		
		  * True: snap vertices to the nearest pixel center
		
		  * False: leave vertices as-is
		
		  * None: (auto) If the path contains only rectilinear line
		    segments, round to the nearest pixel center
		
		Only supported by the Agg and MacOSX backends.
		
		Parameters
		----------
		snap : bool or None
	**/
	public function set_snap(snap:Dynamic):Dynamic;
	/**
		alias for `set_fontstretch`
	**/
	public function set_stretch(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		alias for `set_fontstyle`
	**/
	public function set_style(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the text string *s*.
		
		It may contain newlines (``\n``) or math in LaTeX syntax.
		
		Parameters
		----------
		s : string or object castable to string (but ``None`` becomes ``''``)
	**/
	public function set_text(s:Dynamic):Dynamic;
	/**
		Set the :class:`matplotlib.transforms.Transform` instance used
		by this artist.
		
		Parameters
		----------
		t : matplotlib.transforms.Transform
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Sets the url for the artist.
		
		Parameters
		----------
		url : str
	**/
	public function set_url(url:Dynamic):Dynamic;
	/**
		Parameters
		----------
		usetex : bool or None
		    Whether to render using TeX, ``None`` means to use
		    :rc:`text.usetex`.
	**/
	public function set_usetex(usetex:Dynamic):Dynamic;
	/**
		alias for `set_verticalalignment`
	**/
	public function set_va(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		alias for `set_fontvariant`
	**/
	public function set_variant(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the vertical alignment
		
		Parameters
		----------
		align : {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
	**/
	public function set_verticalalignment(align:Dynamic):Dynamic;
	/**
		Set the artist's visibility.
		
		Parameters
		----------
		b : bool
	**/
	public function set_visible(b:Dynamic):Dynamic;
	/**
		alias for `set_fontweight`
	**/
	public function set_weight(?args:python.VarArgs<Dynamic>, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Set the wrapping state for the text.
		
		Parameters
		----------
		wrap : bool
	**/
	public function set_wrap(wrap:Dynamic):Dynamic;
	/**
		Set the *x* position of the :class:`TextWithDash`.
		
		Parameters
		----------
		x : float
	**/
	public function set_x(x:Dynamic):Dynamic;
	/**
		Set the *y* position of the :class:`TextWithDash`.
		
		Parameters
		----------
		y : float
	**/
	public function set_y(y:Dynamic):Dynamic;
	/**
		Set the zorder for the artist.  Artists with lower zorder
		values are drawn first.
		
		Parameters
		----------
		level : float
	**/
	public function set_zorder(level:Dynamic):Dynamic;
	/**
		If the artist is 'stale' and needs to be re-drawn for the output to
		match the internal state of the artist.
	**/
	public var stale : Dynamic;
	/**
		`x` and `y` sticky edge lists.
		
		When performing autoscaling, if a data limit coincides with a value in
		the corresponding sticky_edges list, then no margin will be added--the
		view limit "sticks" to the edge. A typical usecase is histograms,
		where one usually expects no margin on the bottom edge (0) of the
		histogram.
		
		This attribute cannot be assigned to; however, the `x` and `y` lists
		can be modified in place as needed.
		
		Examples
		--------
		
		>>> artist.sticky_edges.x[:] = (xmin, xmax)
		>>> artist.sticky_edges.y[:] = (ymin, ymax)
	**/
	public var sticky_edges : Dynamic;
	/**
		Update properties from a dictionary.
	**/
	public function update(kwargs:Dynamic):Dynamic;
	/**
		Update the location and the size of the bbox.
		
		This method should be used when the position and size of the bbox needs
		to be updated before actually drawing the bbox.
	**/
	public function update_bbox_position_size(renderer:Dynamic):Dynamic;
	/**
		Computes the actual *x*, *y* coordinates for text based on the
		input *x*, *y* and the *dashlength*. Since the rotation is
		with respect to the actual canvas's coordinates we need to map
		back and forth.
	**/
	public function update_coords(renderer:Dynamic):Dynamic;
	/**
		Copy properties from other to self.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}