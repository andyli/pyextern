/* This file is generated, do not edit! */
package matplotlib.contour;
@:pythonImport("matplotlib.contour", "ClabelText") extern class ClabelText {
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
		Create a `.Text` instance at *x*, *y* with string *text*.
		
		Valid keyword arguments are:
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    backgroundcolor: color
		    bbox: dict with properties for `.patches.FancyBboxPatch`
		    clip_box: unknown
		    clip_on: unknown
		    clip_path: unknown
		    color or c: color
		    figure: `.Figure`
		    fontfamily or family: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		    fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
		    fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		    fontstyle or style: {'normal', 'italic', 'oblique'}
		    fontvariant or variant: {'normal', 'small-caps'}
		    fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		    gid: str
		    horizontalalignment or ha: {'center', 'right', 'left'}
		    in_layout: bool
		    label: object
		    linespacing: float (multiple of font size)
		    math_fontfamily: str
		    multialignment or ma: {'left', 'right', 'center'}
		    parse_math: bool
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    position: (float, float)
		    rasterized: bool
		    rotation: float or {'vertical', 'horizontal'}
		    rotation_mode: {None, 'default', 'anchor'}
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    text: object
		    transform: `.Transform`
		    transform_rotates_text: bool
		    url: str
		    usetex: bool or None
		    verticalalignment or va: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    visible: bool
		    wrap: bool
		    x: float
		    y: float
		    zorder: float
	**/
	@:native("__init__")
	public function ___init__(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?rotation_mode:Dynamic, ?usetex:Dynamic, ?wrap:Dynamic, ?transform_rotates_text:Dynamic, ?parse_math:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Dynamic;
	/**
		Create a `.Text` instance at *x*, *y* with string *text*.
		
		Valid keyword arguments are:
		
		Properties:
		    agg_filter: a filter function, which takes a (m, n, 3) float array and a dpi value, and returns a (m, n, 3) array
		    alpha: scalar or None
		    animated: bool
		    backgroundcolor: color
		    bbox: dict with properties for `.patches.FancyBboxPatch`
		    clip_box: unknown
		    clip_on: unknown
		    clip_path: unknown
		    color or c: color
		    figure: `.Figure`
		    fontfamily or family: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		    fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
		    fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		    fontstyle or style: {'normal', 'italic', 'oblique'}
		    fontvariant or variant: {'normal', 'small-caps'}
		    fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		    gid: str
		    horizontalalignment or ha: {'center', 'right', 'left'}
		    in_layout: bool
		    label: object
		    linespacing: float (multiple of font size)
		    math_fontfamily: str
		    multialignment or ma: {'left', 'right', 'center'}
		    parse_math: bool
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    position: (float, float)
		    rasterized: bool
		    rotation: float or {'vertical', 'horizontal'}
		    rotation_mode: {None, 'default', 'anchor'}
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    text: object
		    transform: `.Transform`
		    transform_rotates_text: bool
		    url: str
		    usetex: bool or None
		    verticalalignment or va: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    visible: bool
		    wrap: bool
		    x: float
		    y: float
		    zorder: float
	**/
	public function new(?x:Dynamic, ?y:Dynamic, ?text:Dynamic, ?color:Dynamic, ?verticalalignment:Dynamic, ?horizontalalignment:Dynamic, ?multialignment:Dynamic, ?fontproperties:Dynamic, ?rotation:Dynamic, ?linespacing:Dynamic, ?rotation_mode:Dynamic, ?usetex:Dynamic, ?wrap:Dynamic, ?transform_rotates_text:Dynamic, ?parse_math:Dynamic, ?kwargs:python.KwArgs<Dynamic>):Void;
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
	static public var _cached : Dynamic;
	/**
		`.Artist.set` context-manager that restores original values at exit.
	**/
	public function _cm_set(?kwargs:python.KwArgs<Dynamic>):Dynamic;
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
	/**
		Return a bbox with the extents of the intersection of the clip_path
		and clip_box for this artist, or None if both of these are
		None, or ``get_clip_on`` is False.
	**/
	public function _get_clipping_extent_bbox():Dynamic;
	/**
		Return the distance from the given points to the boundaries of a
		rotated box, in pixels.
	**/
	public function _get_dist_to_box(rotation:Dynamic, x0:Dynamic, y0:Dynamic, figure_box:Dynamic):Dynamic;
	/**
		Return the extent (bbox) of the text together with
		multiple-alignment information. Note that it returns an extent
		of a rotated text when necessary.
	**/
	public function _get_layout(renderer:Dynamic):Dynamic;
	/**
		Return a hashable tuple of properties that lets `_get_layout` know
		whether a previously computed layout can be reused.
	**/
	public function _get_layout_cache_key(?renderer:Dynamic):Dynamic;
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
		Return a copy of the text string with new lines added so that the text
		is wrapped relative to the parent figure (if `get_wrap` is True).
	**/
	public function _get_wrapped_text():Dynamic;
	/**
		Get the (possibly unit converted) transformed x, y in display coords.
	**/
	public function _get_xy_display():Dynamic;
	/**
		Return the string *s* after mathtext preprocessing, and the kind of
		mathtext support needed.
		
		- If *self* is configured to use TeX, return *s* unchanged except that
		  a single space gets escaped, and the flag "TeX".
		- Otherwise, if *s* is mathtext (has an even number of unescaped dollar
		  signs) and ``parse_math`` is not set to False, return *s* and the
		  flag True.
		- Otherwise, return *s* with dollar signs unescaped, and the flag
		  False.
	**/
	public function _preprocess_math(s:Dynamic):Dynamic;
	/**
		Set the alpha value used for blending - not supported on all backends.
		
		Parameters
		----------
		alpha : array-like or scalar or None
		    All values must be within the 0-1 range, inclusive.
		    Masked values and nans are not supported.
	**/
	public function _set_alpha_for_array(alpha:Dynamic):Dynamic;
	/**
		Set the clip properly for the gc.
	**/
	public function _set_gc_clip(gc:Dynamic):Dynamic;
	public function _update_clip_properties():Dynamic;
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
		Return whether the mouse event occurred inside the axis-aligned
		bounding-box of the text.
	**/
	public function contains(mouseevent:Dynamic):Dynamic;
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
		Return the bbox Patch, or None if the `.patches.FancyBboxPatch`
		is not made.
	**/
	public function get_bbox_patch():Dynamic;
	/**
		Alias for `get_color`.
	**/
	public function get_c():Dynamic;
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
		Return the color of the text.
	**/
	public function get_color():Dynamic;
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
		Alias for `get_fontfamily`.
	**/
	public function get_family():Dynamic;
	/**
		Return the `.Figure` instance the artist belongs to.
	**/
	public function get_figure():Dynamic;
	/**
		Alias for `get_fontproperties`.
	**/
	public function get_font():Dynamic;
	/**
		Alias for `get_fontproperties`.
	**/
	public function get_font_properties():Dynamic;
	/**
		Return the list of font families used for font lookup.
		
		See Also
		--------
		.font_manager.FontProperties.get_family
	**/
	public function get_fontfamily():Dynamic;
	/**
		Return the font name as a string.
		
		See Also
		--------
		.font_manager.FontProperties.get_name
	**/
	public function get_fontname():Dynamic;
	/**
		Return the `.font_manager.FontProperties`.
	**/
	public function get_fontproperties():Dynamic;
	/**
		Return the font size as an integer.
		
		See Also
		--------
		.font_manager.FontProperties.get_size_in_points
	**/
	public function get_fontsize():Dynamic;
	/**
		Return the font style as a string.
		
		See Also
		--------
		.font_manager.FontProperties.get_style
	**/
	public function get_fontstyle():Dynamic;
	/**
		Return the font variant as a string.
		
		See Also
		--------
		.font_manager.FontProperties.get_variant
	**/
	public function get_fontvariant():Dynamic;
	/**
		Return the font weight as a string or a number.
		
		See Also
		--------
		.font_manager.FontProperties.get_weight
	**/
	public function get_fontweight():Dynamic;
	/**
		Return the group id.
	**/
	public function get_gid():Dynamic;
	/**
		Alias for `get_horizontalalignment`.
	**/
	public function get_ha():Dynamic;
	/**
		Return the horizontal alignment as a string.  Will be one of
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
		Return the label used for this artist in the legend.
	**/
	public function get_label():Dynamic;
	/**
		Return the font family name for math text rendered by Matplotlib.
		
		The default value is :rc:`mathtext.fontset`.
		
		See Also
		--------
		set_math_fontfamily
	**/
	public function get_math_fontfamily():Dynamic;
	/**
		Alias for `get_fontname`.
	**/
	public function get_name():Dynamic;
	/**
		Return whether mathtext parsing is considered for this `Text`.
	**/
	public function get_parse_math():Dynamic;
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
		Return the (x, y) position of the text.
	**/
	public function get_position():Dynamic;
	/**
		[*Deprecated*] Return a hashable tuple of properties.
		
		Not intended to be human readable, but useful for backends who
		want to cache derived information about text (e.g., layouts) and
		need to know if the text has changed.
		
		Notes
		-----
		.. deprecated:: 3.5
		   
	**/
	public function get_prop_tup(?renderer:Dynamic):Dynamic;
	/**
		Return whether the artist is to be rasterized.
	**/
	public function get_rasterized():Dynamic;
	/**
		Return the text angle in degrees between 0 and 360.
	**/
	public function get_rotation():Dynamic;
	/**
		Return the text rotation mode.
	**/
	public function get_rotation_mode():Dynamic;
	/**
		Alias for `get_fontsize`.
	**/
	public function get_size():Dynamic;
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
		Return the font stretch as a string or a number.
		
		See Also
		--------
		.font_manager.FontProperties.get_stretch
	**/
	public function get_stretch():Dynamic;
	/**
		Alias for `get_fontstyle`.
	**/
	public function get_style():Dynamic;
	/**
		Return the text string.
	**/
	public function get_text():Dynamic;
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
		Return the `.Transform` instance used by this artist.
	**/
	public function get_transform():Dynamic;
	/**
		Return whether rotations of the transform affect the text direction.
	**/
	public function get_transform_rotates_text():Dynamic;
	/**
		Return the clip path with the non-affine part of its
		transformation applied, and the remaining affine part of its
		transformation.
	**/
	public function get_transformed_clip_path_and_affine():Dynamic;
	/**
		Return the (x, y) unitless position of the text.
	**/
	public function get_unitless_position():Dynamic;
	/**
		Return the url.
	**/
	public function get_url():Dynamic;
	/**
		Return whether this `Text` object uses TeX for rendering.
	**/
	public function get_usetex():Dynamic;
	/**
		Alias for `get_verticalalignment`.
	**/
	public function get_va():Dynamic;
	/**
		Alias for `get_fontvariant`.
	**/
	public function get_variant():Dynamic;
	/**
		Return the vertical alignment as a string.  Will be one of
		'top', 'center', 'bottom', 'baseline' or 'center_baseline'.
	**/
	public function get_verticalalignment():Dynamic;
	/**
		Return the visibility.
	**/
	public function get_visible():Dynamic;
	/**
		Alias for `get_fontweight`.
	**/
	public function get_weight():Dynamic;
	/**
		Return the `.Bbox` bounding the text, in display units.
		
		In addition to being used internally, this is useful for specifying
		clickable regions in a png file on a web page.
		
		Parameters
		----------
		renderer : Renderer, optional
		    A renderer is needed to compute the bounding box.  If the artist
		    has already been drawn, the renderer is cached; thus, it is only
		    necessary to pass this argument when calling `get_window_extent`
		    before the first `draw`.  In practice, it is usually easier to
		    trigger a draw first (e.g. by saving the figure).
		
		dpi : float, optional
		    The dpi value for computing the bbox, defaults to
		    ``self.figure.dpi`` (*not* the renderer dpi); should be set e.g. if
		    to match regions with a figure saved with a custom dpi value.
	**/
	public function get_window_extent(?renderer:Dynamic, ?dpi:Dynamic):Dynamic;
	/**
		Return whether the text can be wrapped.
	**/
	public function get_wrap():Dynamic;
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
		    backgroundcolor: color
		    bbox: dict with properties for `.patches.FancyBboxPatch`
		    clip_box: `.Bbox`
		    clip_on: bool
		    clip_path: Patch or (Path, Transform) or None
		    color or c: color
		    figure: `.Figure`
		    fontfamily or family: {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		    fontproperties or font or font_properties: `.font_manager.FontProperties` or `str` or `pathlib.Path`
		    fontsize or size: float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    fontstretch or stretch: {a numeric value in range 0-1000, 'ultra-condensed', 'extra-condensed', 'condensed', 'semi-condensed', 'normal', 'semi-expanded', 'expanded', 'extra-expanded', 'ultra-expanded'}
		    fontstyle or style: {'normal', 'italic', 'oblique'}
		    fontvariant or variant: {'normal', 'small-caps'}
		    fontweight or weight: {a numeric value in range 0-1000, 'ultralight', 'light', 'normal', 'regular', 'book', 'medium', 'roman', 'semibold', 'demibold', 'demi', 'bold', 'heavy', 'extra bold', 'black'}
		    gid: str
		    horizontalalignment or ha: {'center', 'right', 'left'}
		    in_layout: bool
		    label: object
		    linespacing: float (multiple of font size)
		    math_fontfamily: str
		    multialignment or ma: {'left', 'right', 'center'}
		    parse_math: bool
		    path_effects: `.AbstractPathEffect`
		    picker: None or bool or float or callable
		    position: (float, float)
		    rasterized: bool
		    rotation: float or {'vertical', 'horizontal'}
		    rotation_mode: {None, 'default', 'anchor'}
		    sketch_params: (scale: float, length: float, randomness: float)
		    snap: bool or None
		    text: object
		    transform: `.Transform`
		    transform_rotates_text: bool
		    url: str
		    usetex: bool or None
		    verticalalignment or va: {'center', 'top', 'bottom', 'baseline', 'center_baseline'}
		    visible: bool
		    wrap: bool
		    x: float
		    y: float
		    zorder: float
	**/
	public function set(?agg_filter:Dynamic, ?alpha:Dynamic, ?animated:Dynamic, ?backgroundcolor:Dynamic, ?bbox:Dynamic, ?clip_box:Dynamic, ?clip_on:Dynamic, ?clip_path:Dynamic, ?color:Dynamic, ?fontfamily:Dynamic, ?fontproperties:Dynamic, ?fontsize:Dynamic, ?fontstretch:Dynamic, ?fontstyle:Dynamic, ?fontvariant:Dynamic, ?fontweight:Dynamic, ?gid:Dynamic, ?horizontalalignment:Dynamic, ?in_layout:Dynamic, ?label:Dynamic, ?linespacing:Dynamic, ?math_fontfamily:Dynamic, ?multialignment:Dynamic, ?parse_math:Dynamic, ?path_effects:Dynamic, ?picker:Dynamic, ?position:Dynamic, ?rasterized:Dynamic, ?rotation:Dynamic, ?rotation_mode:Dynamic, ?sketch_params:Dynamic, ?snap:Dynamic, ?text:Dynamic, ?transform:Dynamic, ?transform_rotates_text:Dynamic, ?url:Dynamic, ?usetex:Dynamic, ?verticalalignment:Dynamic, ?visible:Dynamic, ?wrap:Dynamic, ?x:Dynamic, ?y:Dynamic, ?zorder:Dynamic):Dynamic;
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
		Alias for `set_color`.
	**/
	public function set_c(color:Dynamic):Dynamic;
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
		Set the foreground color of the text
		
		Parameters
		----------
		color : color
	**/
	public function set_color(color:Dynamic):Dynamic;
	/**
		Alias for `set_fontfamily`.
	**/
	public function set_family(fontname:Dynamic):Dynamic;
	/**
		Set the `.Figure` instance the artist belongs to.
		
		Parameters
		----------
		fig : `.Figure`
	**/
	public function set_figure(fig:Dynamic):Dynamic;
	/**
		Alias for `set_fontproperties`.
	**/
	public function set_font(fp:Dynamic):Dynamic;
	/**
		Alias for `set_fontproperties`.
	**/
	public function set_font_properties(fp:Dynamic):Dynamic;
	/**
		Set the font family.  May be either a single string, or a list of
		strings in decreasing priority.  Each string may be either a real font
		name or a generic font class name.  If the latter, the specific font
		names will be looked up in the corresponding rcParams.
		
		If a `Text` instance is constructed with ``fontfamily=None``, then the
		font is set to :rc:`font.family`, and the
		same is done when `set_fontfamily()` is called on an existing
		`Text` instance.
		
		Parameters
		----------
		fontname : {FONTNAME, 'serif', 'sans-serif', 'cursive', 'fantasy', 'monospace'}
		
		See Also
		--------
		.font_manager.FontProperties.set_family
	**/
	public function set_fontfamily(fontname:Dynamic):Dynamic;
	/**
		Alias for `set_family`.
		
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
		fp : `.font_manager.FontProperties` or `str` or `pathlib.Path`
		    If a `str`, it is interpreted as a fontconfig pattern parsed by
		    `.FontProperties`.  If a `pathlib.Path`, it is interpreted as the
		    absolute path to a font file.
	**/
	public function set_fontproperties(fp:Dynamic):Dynamic;
	/**
		Set the font size.
		
		Parameters
		----------
		fontsize : float or {'xx-small', 'x-small', 'small', 'medium', 'large', 'x-large', 'xx-large'}
		    If float, the fontsize in points. The string values denote sizes
		    relative to the default font size.
		
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
		Set the font variant.
		
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
		Set the (group) id for the artist.
		
		Parameters
		----------
		gid : str
	**/
	public function set_gid(gid:Dynamic):Dynamic;
	/**
		Alias for `set_horizontalalignment`.
	**/
	public function set_ha(align:Dynamic):Dynamic;
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
		Set a label that will be displayed in the legend.
		
		Parameters
		----------
		s : object
		    *s* will be converted to a string by calling `str`.
	**/
	public function set_label(s:Dynamic):Dynamic;
	/**
		Set the line spacing as a multiple of the font size.
		
		The default line spacing is 1.2.
		
		Parameters
		----------
		spacing : float (multiple of font size)
	**/
	public function set_linespacing(spacing:Dynamic):Dynamic;
	/**
		Alias for `set_multialignment`.
	**/
	public function set_ma(align:Dynamic):Dynamic;
	/**
		Set the font family for math text rendered by Matplotlib.
		
		This does only affect Matplotlib's own math renderer. It has no effect
		when rendering with TeX (``usetex=True``).
		
		Parameters
		----------
		fontfamily : str
		    The name of the font family.
		
		    Available font families are defined in the
		    :ref:`matplotlibrc.template file
		    <customizing-with-matplotlibrc-files>`.
		
		See Also
		--------
		get_math_fontfamily
	**/
	public function set_math_fontfamily(fontfamily:Dynamic):Dynamic;
	/**
		Set the text alignment for multiline texts.
		
		The layout of the bounding box of all the lines is determined by the
		horizontalalignment and verticalalignment properties. This property
		controls the alignment of the text lines within that box.
		
		Parameters
		----------
		align : {'left', 'right', 'center'}
	**/
	public function set_multialignment(align:Dynamic):Dynamic;
	/**
		Alias for `set_fontname`.
	**/
	public function set_name(fontname:Dynamic):Dynamic;
	/**
		Override switch to disable any mathtext parsing for this `Text`.
		
		Parameters
		----------
		parse_math : bool
		    If False, this `Text` will never use mathtext.  If True, mathtext
		    will be used if there is an even number of unescaped dollar signs.
	**/
	public function set_parse_math(parse_math:Dynamic):Dynamic;
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
		Set the (*x*, *y*) position of the text.
		
		Parameters
		----------
		xy : (float, float)
	**/
	public function set_position(xy:Dynamic):Dynamic;
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
		Set the rotation of the text.
		
		Parameters
		----------
		s : float or {'vertical', 'horizontal'}
		    The rotation angle in degrees in mathematically positive direction
		    (counterclockwise). 'horizontal' equals 0, 'vertical' equals 90.
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
		Alias for `set_fontsize`.
	**/
	public function set_size(fontsize:Dynamic):Dynamic;
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
		Alias for `set_fontstretch`.
	**/
	public function set_stretch(stretch:Dynamic):Dynamic;
	/**
		Alias for `set_fontstyle`.
	**/
	public function set_style(fontstyle:Dynamic):Dynamic;
	/**
		Set the text string *s*.
		
		It may contain newlines (``\n``) or math in LaTeX syntax.
		
		Parameters
		----------
		s : object
		    Any object gets converted to its `str` representation, except for
		    ``None`` which is converted to an empty string.
	**/
	public function set_text(s:Dynamic):Dynamic;
	/**
		Set the artist transform.
		
		Parameters
		----------
		t : `.Transform`
	**/
	public function set_transform(t:Dynamic):Dynamic;
	/**
		Whether rotations of the transform affect the text direction.
		
		Parameters
		----------
		t : bool
	**/
	public function set_transform_rotates_text(t:Dynamic):Dynamic;
	/**
		Set the url for the artist.
		
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
		Alias for `set_verticalalignment`.
	**/
	public function set_va(align:Dynamic):Dynamic;
	/**
		Alias for `set_fontvariant`.
	**/
	public function set_variant(variant:Dynamic):Dynamic;
	/**
		Set the vertical alignment.
		
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
		Alias for `set_fontweight`.
	**/
	public function set_weight(weight:Dynamic):Dynamic;
	/**
		Set whether the text can be wrapped.
		
		Parameters
		----------
		wrap : bool
		
		Notes
		-----
		Wrapping does not work together with
		``savefig(..., bbox_inches='tight')`` (which is also used internally
		by ``%matplotlib inline`` in IPython/Jupyter). The 'tight' setting
		rescales the canvas to accommodate all content and happens before
		wrapping.
	**/
	public function set_wrap(wrap:Dynamic):Dynamic;
	/**
		Set the *x* position of the text.
		
		Parameters
		----------
		x : float
	**/
	public function set_x(x:Dynamic):Dynamic;
	/**
		Set the *y* position of the text.
		
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
	public function update(kwargs:Dynamic):Dynamic;
	/**
		Update the location and the size of the bbox.
		
		This method should be used when the position and size of the bbox needs
		to be updated before actually drawing the bbox.
	**/
	public function update_bbox_position_size(renderer:Dynamic):Dynamic;
	/**
		Copy properties from *other* to *self*.
	**/
	public function update_from(other:Dynamic):Dynamic;
	static public var zorder : Dynamic;
}